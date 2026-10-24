# Complete source: GRWTSK.Analysis.Integration.Checks.Positive.ExponentialInterval

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37fff9bea15f3ed9bd962b81f4d930f72c6f9e3a` · SHA-256 `939b813b34a89b460dfd862d4397736a8a7976d2fd1ff7e1f6af9d7238d79819`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
