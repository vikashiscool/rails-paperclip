class Recipe < ActiveRecord::Base
  has_attached_file :preview, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment :preview,
  :content_type => { :content_type => "image/jpeg", :content_type => "image/png" },
  :size => { :in => 0..120.megabytes }

end
