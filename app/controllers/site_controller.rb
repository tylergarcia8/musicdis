class SiteController < ApplicationController
	def search
  term = params[:term]
  return if term.blank? # matches nil and ""

  @results = []
  [Artist, Album, Label].each do |model|
    @results += model.search term
  end
end
end
