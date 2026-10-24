# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.CriticalWeightedMertensSquare

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b92f21943ac3df09015c72cc89136c6dd58218f` · SHA-256 `7cb291998e6881f2bdde2336c8d2b2aac9a8fb215360175f5d75841f09cbaca8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare
import Lean

open Lean Elab Command
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
open GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare
open GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare

example {n : ℕ} (hn : 1 ≤ n) :
    criticalEndpointGap n ^ 2 ≤
      1 / ((n : ℝ) * ((n + 1 : ℕ) : ℝ) ^ 2) :=
  criticalEndpointGap_sq_le_inv_mul_succ_sq hn

example {ε : ℝ} (hε0 : 0 < ε) (hε1 : ε < 1)
    (hs : CriticalWeightedMertensSquareSummable ε) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_weightedMertensSquare hε0 hε1 hs

elab "#audit_critical_weighted_mertens_square" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty critical weighted Mertens-square family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"CRITICAL_WEIGHTED_MERTENS_SQUARE_COUNT::{declarations.length}"

#audit_critical_weighted_mertens_square
```
