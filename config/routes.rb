Rails.application.routes.draw do
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  devise_for :admins, path: 'admins', controllers: { sessions: 'admins/sessions' }
  devise_for :users, path: 'users', controllers: { sessions: 'users/sessions' }

  resources :main_page
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
