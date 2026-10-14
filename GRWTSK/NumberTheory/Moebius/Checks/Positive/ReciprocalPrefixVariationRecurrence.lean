import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence
import Lean

open Lean Elab Command
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationPowerSaving
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence

example (n : ℕ) :
    reciprocalPrefixVariationSquare n =
      reciprocalVariationCorrelation n + reciprocalVariationDiagonal n :=
  reciprocalPrefixVariationSquare_eq_correlation_add_diagonal n

example (n : ℕ) : reciprocalVariationDiagonal n ≤ 1 + Real.log n :=
  reciprocalVariationDiagonal_le_log n

example (h : ReciprocalMertensCorrelationPowerSaving) :
    ReciprocalVariationPowerSaving :=
  reciprocalVariationPowerSaving_of_mertensCorrelationPowerSaving h

example (h : ReciprocalMertensCorrelationPowerSaving) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_reciprocalMertensCorrelationPowerSaving h

elab "#audit_reciprocal_prefix_variation_recurrence" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationRecurrence
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty reciprocal-prefix variation recurrence family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"RECIPROCAL_PREFIX_VARIATION_RECURRENCE_COUNT::{declarations.length}"

#audit_reciprocal_prefix_variation_recurrence
