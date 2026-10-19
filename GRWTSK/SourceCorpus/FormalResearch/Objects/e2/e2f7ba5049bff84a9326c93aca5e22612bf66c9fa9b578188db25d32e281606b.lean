import FormalResearch.RiemannHypothesis.Conversation.ActualWeightedNormBarrier

/-!
# Continuous positive-domain inputs approach the exact native transform price

The comparison input replaces the kernel sign by C/(|C|+epsilon), retaining
the full actual source correlation, weight and window. Every positive-domain
input is continuous and remains in the same magnitude class. The complete
integral error pays at most epsilon times the full exponential window mass.
Human exact input-class and unchanged-source direction: grwtsk contributors.
Local continuous comparison and budget consumer: OpenAI Codex. This is a
comparison input, without identification with the actual arithmetic probe.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualContinuousTransformInput
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ActualWeightedTransformNorm CorrelationRegularity MeasureTheory Set
noncomputable section
local notation "C" => sourceCorrelation Realization.explicitSecondDerivative

def continuousInput (A a ε x : ℝ) : ℝ :=
  x ^ a * (C A (Real.log x) / (|C A (Real.log x)| + ε))
def exponentialWindowMass (A θ : ℝ) : ℝ :=
  ∫ u in (-2 * A)..(2 * A), Real.exp (θ * u)

theorem complete_regularized_sign_error (t : ℝ) {ε : ℝ} (hε : 0 < ε) :
    0 ≤ |t| - t ^ 2 / (|t| + ε) ∧ |t| - t ^ 2 / (|t| + ε) ≤ ε := by
  have hd : 0 < |t| + ε := by positivity
  have heq : |t| - t ^ 2 / (|t| + ε) = ε * |t| / (|t| + ε) := by
    field_simp [hd.ne']
    nlinarith [sq_abs t]
  rw [heq]
  constructor
  · positivity
  · apply (div_le_iff₀ hd).mpr
    nlinarith [sq_nonneg ε]

theorem continuous_input_retains_magnitude_class (A a : ℝ) {ε : ℝ} (hε : 0 < ε)
    {x : ℝ} (hx : 0 < x) : |continuousInput A a ε x| ≤ x ^ a := by
  have hp := Real.rpow_pos_of_pos hx a
  have hd : 0 < |C A (Real.log x)| + ε := by positivity
  have hr : |C A (Real.log x) / (|C A (Real.log x)| + ε)| ≤ 1 := by
    rw [abs_div, abs_of_pos hd]
    apply (div_le_one hd).mpr
    linarith
  rw [continuousInput, abs_mul, abs_of_pos hp]
  exact mul_le_of_le_one_right hp.le hr

theorem actual_comparison_input_continuousOn {A a ε : ℝ}
    (hA : 1 ≤ A) (hε : 0 < ε) : ContinuousOn (continuousInput A a ε) (Ioi 0) := by
  intro x hx
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous.continuousAt.comp
    (Real.continuousAt_log hx.ne')
  have hd : |C A (Real.log x)| + ε ≠ 0 := by positivity
  exact ((Real.continuousAt_rpow_const x a (.inl hx.ne')).mul
    (hc.div (hc.abs.add continuousAt_const) hd)).continuousWithinAt

theorem exact_continuous_comparison_integrand (A a ε u : ℝ) :
    C A u * Real.exp (3 * u / 16) * continuousInput A a ε (Real.exp u) =
      (C A u ^ 2 / (|C A u| + ε)) * Real.exp ((a + 3 / 16) * u) := by
  rw [continuousInput, Real.log_exp, ← Real.exp_mul]
  have he : Real.exp (3 * u / 16) * Real.exp (u * a) =
      Real.exp ((a + 3 / 16) * u) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    _ = (C A u ^ 2 / (|C A u| + ε)) *
        (Real.exp (3 * u / 16) * Real.exp (u * a)) := by ring
    _ = _ := by rw [he]

theorem continuous_comparison_product_intervalIntegrable {A a ε : ℝ}
    (hA : 1 ≤ A) (hε : 0 < ε) :
    IntervalIntegrable (fun u ↦ C A u * Real.exp (3 * u / 16) *
      continuousInput A a ε (Real.exp u)) volume (-2 * A) (2 * A) := by
  simp_rw [exact_continuous_comparison_integrand]
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  exact (((hc.pow 2).div (hc.abs.add continuous_const)
    (fun u ↦ (add_pos_of_nonneg_of_pos (abs_nonneg (C A u)) hε).ne')).mul
    (Real.continuous_exp.comp (continuous_const.mul continuous_id))).intervalIntegrable _ _

theorem continuous_input_complete_error_payment {A a ε : ℝ}
    (hA : 1 ≤ A) (hε : 0 < ε) :
    normPrice A (a + 3 / 16) - transform A (continuousInput A a ε) ≤
      ε * exponentialWindowMass A (a + 3 / 16) := by
  unfold normPrice transform
  rw [← intervalIntegral.integral_sub
    (full_weighted_norm_integrand_intervalIntegrable hA _)
    (continuous_comparison_product_intervalIntegrable hA hε)]
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have hg : Continuous (fun u ↦ |C A u| * Real.exp ((a + 3 / 16) * u) -
      C A u * Real.exp (3 * u / 16) * continuousInput A a ε (Real.exp u)) := by
    simp_rw [exact_continuous_comparison_integrand]
    exact (hc.abs.mul (Real.continuous_exp.comp (continuous_const.mul continuous_id))).sub
      (((hc.pow 2).div (hc.abs.add continuous_const) (fun u ↦ (add_pos_of_nonneg_of_pos (abs_nonneg (C A u)) hε).ne')).mul
        (Real.continuous_exp.comp (continuous_const.mul continuous_id)))
  have hb := intervalIntegral.integral_mono_on (μ := volume) (by linarith : -2 * A ≤ 2 * A)
    (hg.intervalIntegrable _ _)
    (((Real.continuous_exp.comp (continuous_const.mul continuous_id)).const_mul ε).intervalIntegrable _ _)
    (fun u _ ↦ by
      rw [exact_continuous_comparison_integrand, ← sub_mul]
      exact mul_le_mul_of_nonneg_right (complete_regularized_sign_error (C A u) hε).2
        (Real.exp_pos _).le)
  rw [intervalIntegral.integral_const_mul] at hb
  exact hb

theorem exponential_window_mass_nonnegative {A : ℝ} (hA : 1 ≤ A) (θ : ℝ) :
    0 ≤ exponentialWindowMass A θ := by
  exact intervalIntegral.integral_nonneg (by linarith : -2 * A ≤ 2 * A)
    (fun u _ ↦ (Real.exp_pos _).le)

theorem continuous_inputs_approach_native_price {A a : ℝ} (hA : 1 ≤ A)
    {δ : ℝ} (hδ : 0 < δ) :
    ∃ J : ℝ → ℝ, ContinuousOn J (Ioi 0) ∧
      (∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) ∧
      normPrice A (a + 3 / 16) - transform A J < δ := by
  let K := exponentialWindowMass A (a + 3 / 16)
  have hK : 0 ≤ K := exponential_window_mass_nonnegative hA _
  let ε := δ / (K + 1)
  have hε : 0 < ε := div_pos hδ (by linarith)
  refine ⟨continuousInput A a ε, actual_comparison_input_continuousOn hA hε,
    fun x hx ↦ continuous_input_retains_magnitude_class A a hε hx, ?_⟩
  have hp := continuous_input_complete_error_payment (a := a) hA hε
  have hcost : ε * K < δ := by
    dsimp only [ε]
    rw [div_mul_eq_mul_div]
    apply (div_lt_iff₀ (by linarith : 0 < K + 1)).mpr
    nlinarith
  exact hp.trans_lt hcost

theorem exact_complete_continuous_input_budget {A a B : ℝ} (hA : 1 ≤ A) :
    (∀ J : ℝ → ℝ, ContinuousOn J (Ioi 0) →
      (∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) → |transform A J| ≤ B) ↔
      normPrice A (a + 3 / 16) ≤ B := by
  constructor
  · intro h
    apply le_of_forall_pos_le_add
    intro δ hδ
    obtain ⟨J, hcont, hclass, hnear⟩ := continuous_inputs_approach_native_price hA hδ
    have hbudget := h J hcont hclass
    have hsigned := (le_abs_self (transform A J)).trans hbudget
    linarith
  · intro h J _hcont hclass
    exact (actual_native_transform_triangle_bound hA J hclass).trans h

theorem every_polynomial_continuous_input_budget_fails {a : ℝ}
    (ha : 0 < a + 3 / 16) :
    ¬ ∃ m : ℕ, ∃ D R : ℝ, 0 ≤ D ∧ 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → ∀ J : ℝ → ℝ, ContinuousOn J (Ioi 0) →
        (∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) → |transform A J| ≤ D * A ^ m := by
  rintro ⟨m, D, R, hD, hR, hcap⟩
  apply ActualWeightedNormBarrier.actual_weighted_norm_has_no_eventual_polynomial_upper ha
  refine ⟨m, D, R, hD, hR, ?_⟩
  intro A hAR
  exact (exact_complete_continuous_input_budget (hR.trans hAR)).mp (hcap A hAR)

end
end GRWTSK.RiemannHypothesis.Conversation.ActualContinuousTransformInput
