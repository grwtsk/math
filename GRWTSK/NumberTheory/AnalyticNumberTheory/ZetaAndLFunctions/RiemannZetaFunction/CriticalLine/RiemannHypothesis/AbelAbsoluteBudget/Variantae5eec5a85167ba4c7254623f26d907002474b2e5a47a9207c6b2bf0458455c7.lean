import FormalResearch.RiemannHypothesis.Conversation.AbelWindowObstruction
import FormalResearch.RiemannHypothesis.Conversation.ArithmeticPrimitive

/-!
# An absolute profile cap pays the actual finite second-Abel window

The next LT03-12 consumer retains both derivatives of the unchanged source
correlation and the entire window. A supplied absolute profile cap pays the
explicit coefficient 5+10/A at every A>=200. The signed arithmetic profile
still needs its own absolute estimate; a one-sided upper cap does not supply
this premise. A continuous profile makes its interval pairing integrable.

Human source/payment direction: grwtsk contributors. Local actual-kernel norm
budget and finite-window consumer: OpenAI Codex. Mathlib interval integration
and the existing checked source derivative estimates retain their identities.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.AbelAbsoluteBudget
open MeasureTheory Set NegativeAbelKernel
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive
open FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
noncomputable section

theorem actual_kernel_absolute_cap {A : ℝ} (hA : 200 ≤ A) (t : ℝ) :
    |actualKernel A t| ≤ 5 / A ^ 2 + 5 / (2 * A) := by
  have hp : 0 < A := by linarith
  have h1 : 1 ≤ A := by linarith
  have hc := sourceCorrelation_second_deriv_abs_le_five hA t
  have hd := sourceCorrelation_deriv_abs_le_five_div h1 t
  unfold actualKernel
  have he : |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| =
      |deriv (sourceCorrelation explicitSecondDerivative A) t| / 2 := by
    rw [abs_div]; norm_num
  have hd2 : |deriv (sourceCorrelation explicitSecondDerivative A) t| / 2 ≤ 5 / (2 * A) := by
    calc
      _ ≤ (5 / A) / 2 := div_le_div_of_nonneg_right hd (by norm_num)
      _ = _ := by field_simp [hp.ne']
  calc
    _ ≤ |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| := by
      simpa only [Real.norm_eq_abs] using norm_sub_le
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t)
        (deriv (sourceCorrelation explicitSecondDerivative A) t / 2)
    _ ≤ 5 / A ^ 2 + 5 / (2 * A) := by rw [he]; exact add_le_add hc hd2

theorem absolute_cap_pays_actual_window {A B : ℝ} (hA : 200 ≤ A) (hB : 0 ≤ B)
    (F : ℝ → ℝ) (hcap : ∀ t ∈ Icc 0 (2 * A), |F t| ≤ B) :
    |∫ t in 0..2 * A, F t * actualKernel A t| ≤ B * (5 + 10 / A) := by
  have hp : 0 < A := by linarith
  have hnorm : ∀ t ∈ uIoc (0 : ℝ) (2 * A),
      ‖F t * actualKernel A t‖ ≤ B * (5 / A ^ 2 + 5 / (2 * A)) := by
    intro t ht
    have ht' : t ∈ Icc 0 (2 * A) := by
      rw [uIoc_of_le (by linarith : (0 : ℝ) ≤ 2 * A)] at ht
      exact ⟨ht.1.le, ht.2⟩
    rw [Real.norm_eq_abs, abs_mul]
    exact mul_le_mul (hcap t ht') (actual_kernel_absolute_cap hA t) (abs_nonneg _) hB
  have h := intervalIntegral.norm_integral_le_of_norm_le_const hnorm
  rw [Real.norm_eq_abs, sub_zero, abs_of_pos (by linarith : 0 < 2 * A)] at h
  have he : B * (5 / A ^ 2 + 5 / (2 * A)) * (2 * A) = B * (5 + 10 / A) := by
    field_simp [hp.ne']; ring
  simpa only [he] using h

theorem continuous_profile_has_integrable_actual_window {A : ℝ} (hA : 0 < A)
    {F : ℝ → ℝ} (hF : Continuous F) :
    IntervalIntegrable (fun t ↦ F t * actualKernel A t) volume 0 (2 * A) :=
  (hF.mul (actual_kernel_continuous hA)).intervalIntegrable _ _

theorem actual_log_primitive_continuous :
    Continuous (fun t : ℝ ↦ ArithmeticPrimitive.actualPrimitive (Real.exp t)) := by
  apply continuous_iff_continuousAt.mpr
  intro t
  exact (ArithmeticPrimitive.actualPrimitive_continuousAt (Real.exp_pos t)).comp
    Real.continuous_exp.continuousAt

theorem actual_log_primitive_has_integrable_window {A : ℝ} (hA : 0 < A) :
    IntervalIntegrable (fun t ↦ ArithmeticPrimitive.actualPrimitive (Real.exp t) * actualKernel A t)
      volume 0 (2 * A) :=
  continuous_profile_has_integrable_actual_window hA actual_log_primitive_continuous

theorem actual_log_primitive_absolute_cap_consumer {A B : ℝ} (hA : 200 ≤ A) (hB : 0 ≤ B)
    (hcap : ∀ t ∈ Icc 0 (2 * A), |ArithmeticPrimitive.actualPrimitive (Real.exp t)| ≤ B) :
    |∫ t in 0..2 * A, ArithmeticPrimitive.actualPrimitive (Real.exp t) * actualKernel A t| ≤
      B * (5 + 10 / A) :=
  absolute_cap_pays_actual_window hA hB _ hcap

end
end GRWTSK.RiemannHypothesis.Conversation.AbelAbsoluteBudget
