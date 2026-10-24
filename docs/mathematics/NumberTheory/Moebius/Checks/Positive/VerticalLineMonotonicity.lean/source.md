# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.VerticalLineMonotonicity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `753a9d40fb56e5e990cfa90a8fcf316655b85d16` · SHA-256 `6c723fd31bb76795af58d0248d4f1d4c34a85bfb2dcbc436040e0b7dc03b57cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.VerticalLineCriterion
open GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity

example {σ τ T : ℝ} (hστ : σ ≤ τ) (hT : 0 ≤ T) :
    verticalLineMass τ T ≤ verticalLineMass σ T :=
  verticalLineMass_antitone hστ hT

example : CriticalReciprocalVerticalLineUniform ↔ CompletedVerticalLineUniform :=
  criticalReciprocal_iff_completedVerticalLineUniform

example : CriticalReciprocalVerticalLineUniform ↔ PickupWeightedEnergyAll :=
  criticalReciprocal_iff_weightedEnergyAll

example (h : CriticalReciprocalVerticalLineUniform) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_criticalReciprocal h

elab "#audit_vertical_line_monotonicity" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty vertical-line monotonicity source family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"VERTICAL_LINE_MONOTONICITY_COUNT::{declarations.length}"

#audit_vertical_line_monotonicity
```
