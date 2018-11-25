Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :ingredients
  resources :cocktails do
    resources :doses
  end
  resources :doses, only: [:destroy, :index]
end
