import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy
import Lean

open Lean Elab Command
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy

example (n : ℕ) :
    reciprocalPrefixVariationSquare n = mertensSquareEnergy n :=
  reciprocalPrefixVariationSquare_eq_mertensSquareEnergy n

example {n : ℕ} (hn : 1 ≤ n) :
    GRWTSK.RiemannHypothesis.CCC.pickupMertensPrefix n ^ 2 ≤
      (n : ℝ) * reciprocalPrefixVariationSquare n :=
  pickupMertensPrefix_sq_le_mul_variation hn

example :
    ReciprocalVariationPowerSaving ↔ MertensSquareEnergyPowerSaving :=
  reciprocalVariationPowerSaving_iff_mertensSquareEnergyPowerSaving

example (h : MertensSquareEnergyPowerSaving) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_mertensSquareEnergyPowerSaving h

elab "#audit_reciprocal_prefix_variation_mertens_energy" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty reciprocal-prefix Mertens-energy family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"RECIPROCAL_PREFIX_VARIATION_MERTENS_ENERGY_COUNT::{declarations.length}"

#audit_reciprocal_prefix_variation_mertens_energy
