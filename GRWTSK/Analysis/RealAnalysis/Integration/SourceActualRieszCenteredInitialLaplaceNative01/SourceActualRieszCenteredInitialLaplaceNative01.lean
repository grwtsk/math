import SourceActualRieszInitialLaplace
import SourceActualRieszRealConstantCenter

/-!
The literal actual H primitive, centered by its authentic real limiting centers,
has the regularized transform only in the genuine initial Laplace domain.
The finite source center retains its explicit positive quadratic payment.
No critical-domain integral convergence or signed arithmetic cap is inferred.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszCenteredInitialLaplace
open Set Complex MeasureTheory
open SourceActualRieszCenteredReconstruction SourceActualRieszInitialLaplace
open SourceActualRieszCriticalCenter SourceActualRieszRealConstantCenter

private theorem time_weight_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => (t : ℂ) * Complex.exp (-z * (t : ℂ))) (Ioi 0) := by
  apply (actualSingleRieszRamp_integrable hz (a := 0) le_rfl).congr_fun _ measurableSet_Ioi
  intro t ht
  have htn : 0 ≤ t := (show 0 < t from ht).le
  simp only [sub_zero, max_eq_right htn]

private theorem time_weight_integral {z : ℂ} (hz : 0 < z.re) :
    (∫ t : ℝ in Ioi 0, (t : ℂ) * Complex.exp (-z * (t : ℂ))) = 1 / z^2 := by
  convert! actualSingleRieszRamp_integral hz (a := 0) le_rfl using 1
  · apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    have htn : 0 ≤ t := (show 0 < t from ht).le
    simp only [sub_zero, max_eq_right htn]
  · simp

private theorem centered_weight_eq (z : ℂ) (α b t : ℝ) :
    ((actualMangoldtRieszPrimitive t - α * t - b : ℝ) : ℂ) *
        Complex.exp (-z * (t : ℂ)) =
      (actualMangoldtRieszPrimitive t : ℂ) * Complex.exp (-z * (t : ℂ)) -
        (α : ℂ) * ((t : ℂ) * Complex.exp (-z * (t : ℂ))) -
        (b : ℂ) * Complex.exp (-z * (t : ℂ)) := by
  push_cast
  ring

private theorem centered_weight_integrable {z : ℂ} (hz : 1 / 2 < z.re) (α b : ℝ) :
    IntegrableOn (fun t : ℝ =>
      ((actualMangoldtRieszPrimitive t - α * t - b : ℝ) : ℂ) *
        Complex.exp (-z * (t : ℂ))) (Ioi 0) := by
  simp_rw [centered_weight_eq]
  exact ((actualMangoldtRieszLaplace_integrable hz).sub
    ((time_weight_integrable (by linarith : 0 < z.re)).const_mul (α : ℂ))).sub
    ((integrableOn_exp_mul_complex_Ioi (a := -z) (by simp; linarith) 0).const_mul (b : ℂ))

private theorem centered_weight_integral {z : ℂ} (hz : 1 / 2 < z.re) (α b : ℝ) :
    (∫ t : ℝ in Ioi 0,
      ((actualMangoldtRieszPrimitive t - α * t - b : ℝ) : ℂ) *
        Complex.exp (-z * (t : ℂ))) =
      actualMangoldtRieszLaplace z - (α : ℂ) / z^2 - (b : ℂ) / z := by
  have ht := time_weight_integrable (by linarith : 0 < z.re)
  have he := integrableOn_exp_mul_complex_Ioi (a := -z) (by simp; linarith) 0
  have hsplit1 := integral_sub ((actualMangoldtRieszLaplace_integrable hz).sub
    (ht.const_mul (α : ℂ))) (he.const_mul (b : ℂ))
  have hsplit2 := integral_sub (actualMangoldtRieszLaplace_integrable hz)
    (ht.const_mul (α : ℂ))
  simp only [Pi.sub_apply] at hsplit1 hsplit2
  simp_rw [centered_weight_eq]
  rw [hsplit1, hsplit2, integral_const_mul, integral_const_mul,
    time_weight_integral (by linarith : 0 < z.re),
    integral_exp_mul_complex_Ioi (by simp; linarith)]
  simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero, neg_div, div_neg, neg_neg]
  rfl

private theorem numerator_initial {z : ℂ} (hz : 1 / 2 < z.re) :
    actualMangoldtRieszLaplace z = actualRieszCriticalNumerator z / z^2 := by
  rw [actualMangoldtRieszLaplace_eq_logDeriv hz]
  unfold actualRieszCriticalNumerator
  rw [add_comm (1 / 2 : ℂ) z]

private theorem centered_scalar_identity {z : ℂ} (hz : z ≠ 0) (N α b : ℂ) :
    N / z^2 - α / z^2 - b / z = (N - α - b * z) / z^2 := by
  field_simp [hz]
  ring

/-- Literal actual limiting-centered improper transform, independently defined by H. -/
def actualFixedCenteredRieszLaplace (z : ℂ) : ℂ :=
  ∫ t : ℝ in Ioi 0,
    ((actualMangoldtRieszPrimitive t - actualRieszLimitingLinearCenter * t -
      actualRieszRealConstantCenter : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))

/-- Literal finite-source centered transform preserves the actual rational center. -/
def actualFiniteCenteredRieszLaplace (A : ℝ) (z : ℂ) : ℂ :=
  ∫ t : ℝ in Ioi 0, (actualCenteredMangoldtRieszPrimitive A actualRieszRealConstantCenter t : ℂ) *
    Complex.exp (-z * (t : ℂ))

/-- Both genuine limiting centers are Laplace-integrable in the initial domain. -/
theorem actualFixedCenteredRieszLaplace_integrable {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ =>
      ((actualMangoldtRieszPrimitive t - actualRieszLimitingLinearCenter * t -
        actualRieszRealConstantCenter : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) (Ioi 0) :=
  centered_weight_integrable hz _ _

/-- The authentic local regularization agrees with the actual INITIAL centered transform. -/
theorem actualFixedCenteredRieszLaplace_eq_regularization {z : ℂ} (hz : 1 / 2 < z.re) :
    actualFixedCenteredRieszLaplace z = actualRieszCriticalRegularization z := by
  have hzn : z ≠ 0 := by intro h; norm_num [h] at hz
  unfold actualFixedCenteredRieszLaplace
  rw [centered_weight_integral hz, numerator_initial hz,
    actualRieszCriticalRegularization_eq_real_centers hzn]
  exact centered_scalar_identity hzn _ _ _

/-- Every actual finite-source center has genuine initial L1, without an input field. -/
theorem actualFiniteCenteredRieszLaplace_integrable (A : ℝ) {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ =>
      (actualCenteredMangoldtRieszPrimitive A actualRieszRealConstantCenter t : ℂ) *
        Complex.exp (-z * (t : ℂ))) (Ioi 0) := by
  unfold actualCenteredMangoldtRieszPrimitive
  exact centered_weight_integrable hz _ _

/-- The finite-vs-limiting center payment survives exactly in the actual transform. -/
theorem actualFiniteCenteredRieszLaplace_eq_fixed_add_payment (A : ℝ) {z : ℂ}
    (hz : 1 / 2 < z.re) :
    actualFiniteCenteredRieszLaplace A z = actualFixedCenteredRieszLaplace z +
      ((actualRieszLimitingLinearCenter - actualRieszLinearCenter A : ℝ) : ℂ) / z^2 := by
  unfold actualFiniteCenteredRieszLaplace actualFixedCenteredRieszLaplace
    actualCenteredMangoldtRieszPrimitive
  rw [centered_weight_integral hz, centered_weight_integral hz]
  push_cast
  ring

/-- The same actual source retains its explicit positive finite correction to regularization. -/
theorem actualFiniteCenteredRieszLaplace_eq_regularization_add_payment (A : ℝ) {z : ℂ}
    (hz : 1 / 2 < z.re) :
    actualFiniteCenteredRieszLaplace A z = actualRieszCriticalRegularization z +
      ((2 - actualRieszContinuousMagnitude A : ℝ) : ℂ) / z^2 := by
  rw [actualFiniteCenteredRieszLaplace_eq_fixed_add_payment A hz,
    actualFixedCenteredRieszLaplace_eq_regularization hz, actualRiesz_finite_center_payment]

/-- The genuine finite-center transform discrepancy has its quadratic initial-domain budget. -/
theorem actualFiniteCenteredRieszLaplace_difference_bound {A : ℝ} (hA : 0 < A)
    {z : ℂ} (hz : 1 / 2 < z.re) :
    ‖actualFiniteCenteredRieszLaplace A z - actualFixedCenteredRieszLaplace z‖ ≤
      56 / (A^2 * ‖z‖^2) := by
  have hp := actualRiesz_finite_center_payment_bound hA
  rw [actualFiniteCenteredRieszLaplace_eq_fixed_add_payment A hz, add_sub_cancel_left,
    norm_div, norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hp.1]
  calc
    _ ≤ (56 / A^2) / ‖z‖^2 := div_le_div_of_nonneg_right hp.2 (sq_nonneg _)
    _ = _ := div_div _ _ _

end FormalResearch.RiemannHypothesis.SourceActualRieszCenteredInitialLaplace
