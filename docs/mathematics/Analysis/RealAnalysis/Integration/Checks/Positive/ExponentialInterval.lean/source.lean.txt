import GRWTSK.Analysis.Integration.ExponentialInterval
import Lean

open Lean Elab Command
open GRWTSK.Analysis.Integration.ExponentialInterval

example {a : ℝ} (ha : a ≠ 0) (b c : ℝ) :
    (∫ u in b..c, Real.exp (-a * u)) =
      (Real.exp (-a * b) - Real.exp (-a * c)) / a :=
  integral_exp_neg_mul ha b c

example {a : ℝ} (ha : a ≠ 0) (b c : ℝ) :
    (∫ u in b..c, Real.exp (a * u)) =
      (Real.exp (a * c) - Real.exp (a * b)) / a :=
  integral_exp_mul ha b c

elab "#audit_exponential_interval" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.Analysis.Integration.ExponentialInterval
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty exponential-interval source family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"EXPONENTIAL_INTERVAL_COUNT::{declarations.length}"

#audit_exponential_interval
