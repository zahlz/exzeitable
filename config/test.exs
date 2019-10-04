use Mix.Config

# Configure your database
config :exzeitable, PhoenixWeb.Repo,
  username: "postgres",
  password: "postgres",
  database: "exzeitable_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :exzeitable, ecto_repos: [PhoenixWeb.Repo]

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :exzeitable, PhoenixWeb.Endpoint,
  secret_key_base: "PuPVb+cWuZmcKPrLR+Cydi2BhbQ+Q+hOqN1cOKYC3QnTzUTWb0HLyfx1enJVot6r",
  render_errors: [view: PhoenixWeb.ErrorView, accepts: ~w(html json)],
  http: [port: 4002],
  server: false

config :exzeitable, PhoenixWeb.Endpoint,
  live_view: [
    signing_salt: "`mix phx.gen.secret 32`"
  ]

config :exzeitable, env: :test
config :phoenix, :json_library, Jason

# Print only warnings and errors during test
config :logger, level: :warn
