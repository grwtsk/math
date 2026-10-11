import GRWTSK.NumberTheory.Moebius.VerticalLineCriterion
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.VerticalLineCriterion

example : CompletedVerticalLineUniform ↔ PickupWeightedEnergyAll :=
  completedVerticalLineUniform_iff_weightedEnergyAll

example : CompletedVerticalLineUniform ↔ pickupEnergyAbscissa = 0 :=
  completedVerticalLineUniform_iff_energyAbscissa_zero

example {σ : ℝ} (hσ : 1 / 2 < σ) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T → verticalLineMass σ T ≤ C :=
  verticalLineMass_uniform_above_half hσ

example (h : CompletedVerticalLineUniform) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_completedVerticalLineUniform h

elab "#audit_vertical_line_criterion" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.VerticalLineCriterion
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty vertical-line criterion source family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"VERTICAL_LINE_CRITERION_COUNT::{declarations.length}"

#audit_vertical_line_criterion
