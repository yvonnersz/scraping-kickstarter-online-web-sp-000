<<<<<<< HEAD
require 'nokogiri'
require 'pry'

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# location: project.css("ul.project-meta span.location-name").text
# percent_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
=======
require "nokogiri"
require "pry"
>>>>>>> f9928926e39b1c0bf06ae189537685dfc12bcf95

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
<<<<<<< HEAD

  projects = {}

  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {
      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      :description => project.css("p.bbcard_blurb").text,
      :location => project.css("ul.project-meta span.location-name").text,
      :percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
    }
  end

  # return the projects hash
  projects
end
=======
  binding.pry
end

create_project_hash
# projects: kickstarter.css("li.project.grid_4").first
# title: project.css("h2.bbcard_name strong a").text
# image: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# location: project.css("h2.bbcard_name strong a href")
>>>>>>> f9928926e39b1c0bf06ae189537685dfc12bcf95
