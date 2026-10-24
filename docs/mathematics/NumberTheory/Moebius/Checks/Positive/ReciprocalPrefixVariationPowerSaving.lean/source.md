# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.ReciprocalPrefixVariationPowerSaving

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15307766c590865caf5a76c00ae6006684d4751b` · SHA-256 `a8f3890863b963e26f0917f00a76613b3e4eed4df84aad04828ac0ce217c7712`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving
import Lean

open Lean Elab Command
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationSummability
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving

example (n : ℕ) : reciprocalPrefixVariationSquare n ≤ 4 * n :=
  reciprocalPrefixVariationSquare_le_four_mul n

example (hV : ReciprocalVariationPowerSaving) :
    ReciprocalLogVariationSummable :=
  reciprocalLogVariationSummable_of_powerSaving hV

example (hV : ReciprocalVariationPowerSaving) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_reciprocalPrefixVariationPowerSaving hV

elab "#audit_reciprocal_prefix_variation_power_saving" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty reciprocal-prefix variation power-saving family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"RECIPROCAL_PREFIX_VARIATION_POWER_SAVING_COUNT::{declarations.length}"

#audit_reciprocal_prefix_variation_power_saving
```
