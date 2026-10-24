# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.WeightedMertensSquareCorrelation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51d13af0f4a82071180580272104cab5fbb4e571` · SHA-256 `df111ec127e434178b6df98649377ddf07bf1a994e4c20cb046bd2162a53da90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation
import Lean

open Lean Elab Command
open GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation

example (ε : ℝ) (N : ℕ) :
    weightedMertensSquarePartial ε N =
      weightedMertensCorrelation ε N + weightedMertensDiagonal ε N :=
  weightedMertensSquarePartial_eq_correlation_add_diagonal ε N

elab "#audit_weighted_mertens_square_correlation" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty weighted Mertens-square correlation family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"WEIGHTED_MERTENS_SQUARE_CORRELATION_COUNT::{declarations.length}"

#audit_weighted_mertens_square_correlation
```
