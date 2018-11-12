# Dummy external API
class MoviesController < ApplicationController
  # For purpose of demo I'm returning the same data for any ID in 1.100
  def show
    if (1..100).include?(params[:id].to_i)
      render json: {
        plot: 'Blah blah blah',
        rating: 5,
        poster_url: 'https://pairguru-api.herokuapp.com/godfather.jpg'
      }
    else
      render json: nil, status: 404
    end
  end
end
