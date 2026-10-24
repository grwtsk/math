import GRWTSK.NumberTheory.Moebius.DampedRecordingParseval
import Lean

open Lean Elab Command
open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PrimeProductDebt
open GRWTSK.NumberTheory.Moebius.DampedRecording

example {σ T : ℝ} (hT : 0 ≤ T) :
    (2 * Real.pi)⁻¹ *
        (∫ ξ : ℝ,
          ‖noteWindowLaplace wholePickup ((σ : ℂ) + (ξ : ℂ) * Complex.I) T‖ ^ 2) =
      ∫ u in Icc (0 : ℝ) T, Real.exp (-2 * σ * u) * wholePickup u ^ 2 :=
  verticalLine_parseval hT

example {σ T : ℝ} (hσ : 0 < σ) (hT : 0 ≤ T) :
    (2 * Real.pi)⁻¹ *
        (∫ ξ : ℝ,
          ‖(rawPrimeProduct ⌊Real.exp T⌋₊
                ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2) -
              cutoffCorrection ⌊Real.exp T⌋₊ T
                ((σ : ℂ) + (ξ : ℂ) * Complex.I)
                ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2)) /
            (((σ : ℂ) + (ξ : ℂ) * Complex.I) *
              ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2))‖ ^ 2) =
      ∫ u in Icc (0 : ℝ) T, Real.exp (-2 * σ * u) * wholePickup u ^ 2 :=
  completedNumerator_verticalLine_parseval hσ hT

elab "#audit_damped_recording_parseval" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.DampedRecordingParseval
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty damped-recording Parseval source family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"DAMPED_RECORDING_PARSEVAL_COUNT::{declarations.length}"

#audit_damped_recording_parseval
