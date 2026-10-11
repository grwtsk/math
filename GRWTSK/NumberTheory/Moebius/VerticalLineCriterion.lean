/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.DampedRecordingParseval
import GRWTSK.NumberTheory.Moebius.EnergyAbscissa

/-!
# The completed vertical-line criterion

The uniform finite-recording bound for the exact completed prime-product
quotient is equivalent to the existing every-positive-damping pickup-energy
criterion.  Thus the transform formulation loses no endpoint or limit debt,
but it also does not evade the signed arithmetic obstruction.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.Moebius.VerticalLineCriterion

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PrimeProductDebt
open GRWTSK.NumberTheory.Moebius.DampedRecording

/-- Angular-frequency mass of the literal finite Laplace recording. -/
def verticalLineMass (σ T : ℝ) : ℝ :=
  (2 * Real.pi)⁻¹ *
    ∫ ξ : ℝ,
      ‖noteWindowLaplace wholePickup ((σ : ℂ) + (ξ : ℂ) * Complex.I) T‖ ^ 2

theorem verticalLineMass_eq_weightedWindow {σ T : ℝ} (hT : 0 ≤ T) :
    verticalLineMass σ T =
      ∫ u in Icc (0 : ℝ) T, Real.exp (-2 * σ * u) * wholePickup u ^ 2 := by
  exact verticalLine_parseval hT

/-- The named mass is exactly the full prime-product/debt quotient. -/
theorem verticalLineMass_eq_completed {σ T : ℝ} (hσ : 0 < σ) (hT : 0 ≤ T) :
    verticalLineMass σ T =
      (2 * Real.pi)⁻¹ *
        (∫ ξ : ℝ,
          ‖(rawPrimeProduct ⌊Real.exp T⌋₊
                ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2) -
              cutoffCorrection ⌊Real.exp T⌋₊ T
                ((σ : ℂ) + (ξ : ℂ) * Complex.I)
                ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2)) /
            (((σ : ℂ) + (ξ : ℂ) * Complex.I) *
              ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2))‖ ^ 2) := by
  exact (verticalLineMass_eq_weightedWindow hT).trans
    (completedNumerator_verticalLine_parseval hσ hT).symm

/-- The exact arithmetic obligation: at each positive vertical line, one
constant bounds every finite recording horizon. -/
def CompletedVerticalLineUniform : Prop :=
  ∀ σ : ℝ, 0 < σ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ T : ℝ, 0 ≤ T → verticalLineMass σ T ≤ C

/-- Removing the damping on a finite window costs exactly its endpoint
exponential. -/
theorem pickupEnergy_le_exp_mul_weightedWindow {σ T : ℝ}
    (hσ : 0 ≤ σ) (hT : 0 ≤ T) :
    pickupEnergy T ≤ Real.exp (2 * σ * T) * verticalLineMass σ T := by
  have hc : Continuous (fun u : ℝ => Real.exp (2 * σ * T) *
      (Real.exp (-2 * σ * u) * wholePickup u ^ 2)) :=
    continuous_const.mul
      ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
        (wholePickup_continuous.pow 2))
  have hp : (∫ u in Icc (0 : ℝ) T, wholePickup u ^ 2) ≤
      ∫ u in Icc (0 : ℝ) T,
        Real.exp (2 * σ * T) *
          (Real.exp (-2 * σ * u) * wholePickup u ^ 2) := by
    apply setIntegral_mono_on (wholePickup_continuous.pow 2).integrableOn_Icc
      hc.integrableOn_Icc measurableSet_Icc
    intro u hu
    have he : 1 ≤ Real.exp (2 * σ * T) * Real.exp (-2 * σ * u) := by
      rw [← Real.exp_add, ← Real.exp_zero]
      exact Real.exp_le_exp.mpr (by nlinarith [hu.2])
    change wholePickup u ^ 2 ≤ Real.exp (2 * σ * T) *
      (Real.exp (-2 * σ * u) * wholePickup u ^ 2)
    simpa only [one_mul, mul_assoc] using
      mul_le_mul_of_nonneg_right he (sq_nonneg (wholePickup u))
  rw [pickupEnergy, intervalIntegral.integral_of_le hT,
    ← integral_Icc_eq_integral_Ioc, verticalLineMass_eq_weightedWindow hT]
  simpa only [integral_const_mul] using hp

theorem verticalLineMass_uniform_of_integrable {σ : ℝ}
    (hi : IntegrableOn
      (fun u => Real.exp (-2 * σ * u) * wholePickup u ^ 2) (Ici 0)) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T → verticalLineMass σ T ≤ C := by
  refine ⟨∫ u in Ici (0 : ℝ), Real.exp (-2 * σ * u) * wholePickup u ^ 2,
    integral_nonneg (fun _ => mul_nonneg (Real.exp_pos _).le (sq_nonneg _)), ?_⟩
  intro T hT
  rw [verticalLineMass_eq_weightedWindow hT]
  apply setIntegral_mono_set hi
    (ae_of_all _ (fun u => mul_nonneg (Real.exp_pos _).le (sq_nonneg _)))
  exact ae_of_all _ (fun _ hu => hu.1)

theorem completedVerticalLineUniform_of_weightedEnergyAll
    (hw : PickupWeightedEnergyAll) : CompletedVerticalLineUniform := by
  intro σ hσ
  have hi : IntegrableOn
      (fun u => Real.exp (-2 * σ * u) * wholePickup u ^ 2) (Ici 0) := by
    simpa only [neg_mul, mul_assoc] using hw (2 * σ) (by positivity)
  exact verticalLineMass_uniform_of_integrable hi

/-- The unconditional elementary energy estimate already bounds the complete
vertical-line quotient strictly to the right of `σ = 1/2`.  The unresolved
extension is the interval of positive lines at or left of that threshold. -/
theorem verticalLineMass_uniform_above_half {σ : ℝ} (hσ : 1 / 2 < σ) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T → verticalLineMass σ T ≤ C := by
  have hi : IntegrableOn
      (fun u => Real.exp (-2 * σ * u) * wholePickup u ^ 2) (Ici 0) := by
    simpa only [neg_mul, mul_assoc] using
      pickup_weighted_energy_integrable_initial (show 1 < 2 * σ by linarith)
  exact verticalLineMass_uniform_of_integrable hi

theorem pickupEnergySubexp_of_completedVerticalLineUniform
    (hV : CompletedVerticalLineUniform) : PickupEnergySubexp := by
  intro ε hε
  obtain ⟨C, hC, hbound⟩ := hV (ε / 2) (by linarith)
  refine ⟨C, hC, ?_⟩
  intro T hT
  calc
    pickupEnergy T ≤ Real.exp (2 * (ε / 2) * T) * verticalLineMass (ε / 2) T :=
      pickupEnergy_le_exp_mul_weightedWindow (by linarith) hT
    _ ≤ Real.exp (2 * (ε / 2) * T) * C :=
      mul_le_mul_of_nonneg_left (hbound T hT) (Real.exp_pos _).le
    _ = C * Real.exp (ε * T) := by ring_nf

/-- Uniform control of the completed vertical-line expression is exactly the
existing all-positive-damping energy criterion. -/
theorem completedVerticalLineUniform_iff_weightedEnergyAll :
    CompletedVerticalLineUniform ↔ PickupWeightedEnergyAll := by
  constructor
  · intro hV
    exact pickupWeightedEnergyAll_of_subexp
      (pickupEnergySubexp_of_completedVerticalLineUniform hV)
  · exact completedVerticalLineUniform_of_weightedEnergyAll

theorem completedVerticalLineUniform_iff_energyAbscissa_zero :
    CompletedVerticalLineUniform ↔ pickupEnergyAbscissa = 0 :=
  completedVerticalLineUniform_iff_weightedEnergyAll.trans
    pickupEnergyAbscissa_zero_iff_weightedEnergyAll.symm

/-- Conditional terminal return.  Its sole unpaid premise is the explicit
uniform completed vertical-line bound above. -/
theorem riemannHypothesis_of_completedVerticalLineUniform
    (hV : CompletedVerticalLineUniform) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupWeightedEnergyAll
    (completedVerticalLineUniform_iff_weightedEnergyAll.mp hV)

end GRWTSK.NumberTheory.Moebius.VerticalLineCriterion

#print axioms GRWTSK.NumberTheory.Moebius.VerticalLineCriterion.verticalLineMass_eq_completed
#print axioms GRWTSK.NumberTheory.Moebius.VerticalLineCriterion.verticalLineMass_uniform_above_half
#print axioms GRWTSK.NumberTheory.Moebius.VerticalLineCriterion.pickupEnergySubexp_of_completedVerticalLineUniform
#print axioms GRWTSK.NumberTheory.Moebius.VerticalLineCriterion.completedVerticalLineUniform_iff_weightedEnergyAll
#print axioms GRWTSK.NumberTheory.Moebius.VerticalLineCriterion.riemannHypothesis_of_completedVerticalLineUniform
