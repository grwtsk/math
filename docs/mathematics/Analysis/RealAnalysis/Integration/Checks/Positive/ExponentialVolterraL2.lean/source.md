# Complete source: GRWTSK.Analysis.Integration.Checks.Positive.ExponentialVolterraL2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `018ae312da4efb150d6302796eda8ebe413d8fb9` · SHA-256 `83168a5c6f10946e5c2dac506f35931c18a0118d763cddbff0aaa22ac668fece`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Integration.ExponentialVolterraL2
import Lean

open MeasureTheory
open Lean Elab Command
open GRWTSK.Analysis.Integration.ExponentialVolterraL2

example {σ T : ℝ} {F : ℝ → ℝ}
    (hσ : 0 < σ) (hT : 0 ≤ T)
    (hF : IntervalIntegrable F volume 0 T)
    (hF2 : IntervalIntegrable (fun t : ℝ => F t ^ 2) volume 0 T) :
    (∫ t in (0 : ℝ)..T, exponentialVolterra σ F t ^ 2) ≤
      (∫ t in (0 : ℝ)..T, F t ^ 2) / σ ^ 2 :=
  exponentialVolterra_sq_integral_le hσ hT hF hF2

elab "#audit_exponential_volterra_l2" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.Analysis.Integration.ExponentialVolterraL2
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty exponential-Volterra source family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"EXPONENTIAL_VOLTERRA_L2_COUNT::{declarations.length}"

#audit_exponential_volterra_l2
```
