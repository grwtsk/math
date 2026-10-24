/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.VerticalLineCriterion

/-!
# Monotonicity and a countable completed vertical-line criterion

The finite completed vertical-line mass decreases as the damping increases.
Consequently it is enough to prove uniform bounds on the countable cofinal
family `σ = 1/(n+1)`, `n ≥ 1`.  The excluded `n = 0` line is already covered
by the unconditional `σ > 1/2` theorem.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.VerticalLineCriterion

/-- Increasing the positive damping can only decrease the completed finite
vertical-line mass.  The statement itself needs only ordered real rates. -/
theorem verticalLineMass_antitone {σ τ T : ℝ} (hστ : σ ≤ τ) (hT : 0 ≤ T) :
    verticalLineMass τ T ≤ verticalLineMass σ T := by
  rw [verticalLineMass_eq_weightedWindow hT,
    verticalLineMass_eq_weightedWindow hT]
  have hτc : Continuous (fun u : ℝ =>
      Real.exp (-2 * τ * u) * wholePickup u ^ 2) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (wholePickup_continuous.pow 2)
  have hσc : Continuous (fun u : ℝ =>
      Real.exp (-2 * σ * u) * wholePickup u ^ 2) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (wholePickup_continuous.pow 2)
  apply setIntegral_mono_on hτc.integrableOn_Icc hσc.integrableOn_Icc
    measurableSet_Icc
  intro u hu
  apply mul_le_mul_of_nonneg_right _ (sq_nonneg (wholePickup u))
  exact Real.exp_le_exp.mpr (by nlinarith [hu.1])

/-- Only the reciprocal lines at and left of the boundary `σ = 1/2`.
Each line has its own constant, but that constant is uniform in the horizon. -/
def CriticalReciprocalVerticalLineUniform : Prop :=
  ∀ n : ℕ, 1 ≤ n → ∃ C : ℝ, 0 ≤ C ∧
    ∀ T : ℝ, 0 ≤ T →
      verticalLineMass (1 / ((n + 1 : ℕ) : ℝ)) T ≤ C

theorem criticalReciprocal_of_completedVerticalLineUniform
    (hV : CompletedVerticalLineUniform) : CriticalReciprocalVerticalLineUniform := by
  intro n _hn
  exact hV (1 / ((n + 1 : ℕ) : ℝ)) (by positivity)

theorem completedVerticalLineUniform_of_criticalReciprocal
    (hR : CriticalReciprocalVerticalLineUniform) : CompletedVerticalLineUniform := by
  intro σ hσ
  obtain ⟨n, hn⟩ := exists_nat_gt (1 / σ)
  have hnpos : 1 ≤ n := by
    have hone : 0 < 1 / σ := one_div_pos.mpr hσ
    exact_mod_cast (show (0 : ℝ) < n by linarith)
  obtain ⟨C, hC, hbound⟩ := hR n hnpos
  refine ⟨C, hC, ?_⟩
  intro T hT
  have hden : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  have hn' : 1 / σ < ((n + 1 : ℕ) : ℝ) := by
    exact hn.trans (by exact_mod_cast Nat.lt_succ_self n)
  have hmul : 1 < ((n + 1 : ℕ) : ℝ) * σ :=
    (div_lt_iff₀ hσ).mp hn'
  have hrσ : 1 / ((n + 1 : ℕ) : ℝ) < σ :=
    (div_lt_iff₀ hden).2 (by simpa only [mul_comm] using hmul)
  exact (verticalLineMass_antitone hrσ.le hT).trans (hbound T hT)

/-- The all-positive-line criterion is equivalent to the countable family of
critical reciprocal lines. -/
theorem criticalReciprocal_iff_completedVerticalLineUniform :
    CriticalReciprocalVerticalLineUniform ↔ CompletedVerticalLineUniform :=
  ⟨completedVerticalLineUniform_of_criticalReciprocal,
    criticalReciprocal_of_completedVerticalLineUniform⟩

theorem criticalReciprocal_iff_weightedEnergyAll :
    CriticalReciprocalVerticalLineUniform ↔ PickupWeightedEnergyAll :=
  criticalReciprocal_iff_completedVerticalLineUniform.trans
    completedVerticalLineUniform_iff_weightedEnergyAll

theorem criticalReciprocal_iff_energyAbscissa_zero :
    CriticalReciprocalVerticalLineUniform ↔ pickupEnergyAbscissa = 0 :=
  criticalReciprocal_iff_completedVerticalLineUniform.trans
    completedVerticalLineUniform_iff_energyAbscissa_zero

theorem riemannHypothesis_of_criticalReciprocal
    (hR : CriticalReciprocalVerticalLineUniform) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_completedVerticalLineUniform
    (completedVerticalLineUniform_of_criticalReciprocal hR)

end GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity

#print axioms GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity.verticalLineMass_antitone
#print axioms GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity.criticalReciprocal_iff_completedVerticalLineUniform
#print axioms GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity.riemannHypothesis_of_criticalReciprocal
