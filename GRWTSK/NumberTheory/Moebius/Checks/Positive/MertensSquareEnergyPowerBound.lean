import GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy
open GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound

example {C β : ℝ} (hβ0 : 1 / 2 < β) (hβ1 : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    MertensSquareEnergyPowerSaving :=
  mertensSquareEnergyPowerSaving_of_mertensPowerBound hβ0 hβ1 hM

example {C β : ℝ} (hβ0 : 1 / 2 < β) (hβ1 : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_mertensPowerBound_viaSquareEnergy hβ0 hβ1 hM

elab "#audit_mertens_square_energy_power_bound" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty Mertens square-energy power-bound family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"MERTENS_SQUARE_ENERGY_POWER_BOUND_COUNT::{declarations.length}"

#audit_mertens_square_energy_power_bound
