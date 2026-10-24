# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.WeightedMertensSquareCorrelationBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ea28b4b1f719eeeead00a2cdef4efab57df6ca9` · SHA-256 `9281026174e5b81691d4f7a0b0b1bc4c5b5cdf11c80dbaf4ba4c62d0ae86dfed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelationBound
import Lean

open Lean Elab Command
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare
open GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelationBound

example {ε : ℝ} (hε : 0 < ε) :
    WeightedMertensCorrelationUniform ε ↔
      CriticalWeightedMertensSquareSummable ε :=
  correlationUniform_iff_weightedMertensSquareSummable hε

example {ε : ℝ} (hε0 : 0 < ε) (hε1 : ε < 1)
    (hC : WeightedMertensCorrelationUniform ε) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_weightedMertensCorrelationUniform hε0 hε1 hC

elab "#audit_weighted_mertens_square_correlation_bound" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner :=
    `GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelationBound
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then
    throwError "empty weighted Mertens-square correlation-bound family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"WEIGHTED_MERTENS_SQUARE_CORRELATION_BOUND_COUNT::{declarations.length}"

#audit_weighted_mertens_square_correlation_bound
```
