/- Synthetic absence checks; no environment values are printed or retained. -/
import Lean

#eval do
  for name in ["OPENAI_API_KEY", "GH_TOKEN", "GITHUB_TOKEN", "AWS_SECRET_ACCESS_KEY", "SSH_AUTH_SOCK"] do
    if (← IO.getEnv name).isSome then
      throw (IO.userError "qualification inherited environment boundary failed")
