import LeanMatcherFamily
open Lean Elab Command

namespace LeanMatcherFamily.Controls
def walk : Nat → Nat
  | 0 => 0
  | n + 1 => walk n
def plain (n : Nat) := n + 1
end LeanMatcherFamily.Controls

elab "#matcher_family_controls" : command => liftTermElabM do
  let candidates := #[`LeanMatcherFamily.Controls.walk.match_1,
    `LeanMatcherFamily.Controls.walk, `LeanMatcherFamily.Controls.plain,
    `LeanMatcherFamily.Controls.missing, Name.str .anonymous "LeanMatcherFamily.Controls.walk.match_1"]
  let first ← LeanMatcherFamily.observe candidates
  let repeated ← LeanMatcherFamily.observe candidates
  let equationsOnly ← LeanMatcherFamily.observe #[`LeanMatcherFamily.Controls.walk.match_1] false
  let output ← liftM <| IO.getEnv "NOE_MATCHER_CONTROL_OUTPUT"
  let some output := output | throwError "CONTROL_OUTPUT_REQUIRED"
  liftM <| IO.FS.writeFile output ((Json.mkObj [
    ("first", first), ("repeat", repeated), ("equations_only", equationsOnly)]).compress ++ "\n")

#matcher_family_controls
