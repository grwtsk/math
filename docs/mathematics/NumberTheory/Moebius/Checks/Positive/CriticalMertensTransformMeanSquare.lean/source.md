# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.CriticalMertensTransformMeanSquare

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86f5a951ad5894d958507dc867dfcc39e877fdab` · SHA-256 `107f7353be2a5f2ad52eea3467aa7411a5df3fa768ebe43db7c900efd3b487cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare
import Lean

open Lean Elab Command
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence
open GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare

example {ε : ℝ} (hε0 : 0 < ε) (hε1 : ε ≤ 1) (n : ℕ) :
    criticalMertensTransform n ^ 2 ≤
      criticalMertensIncrementSquare ε n * ((n : ℝ) ^ ε / ε) :=
  criticalMertensTransform_sq_le_meanSquare hε0 hε1 n

example {ε : ℝ} (hε0 : 0 < ε) (hε1 : ε < 1)
    (hs : CriticalMertensIncrementMeanSquare ε) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_incrementMeanSquare hε0 hε1 hs

elab "#audit_critical_mertens_transform_mean_square" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty critical Mertens mean-square family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"CRITICAL_MERTENS_TRANSFORM_MEAN_SQUARE_COUNT::{declarations.length}"

#audit_critical_mertens_transform_mean_square
```
