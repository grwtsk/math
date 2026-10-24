import ActualCriticalPrimitive
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy

/-!
Actual-source challenge and tighter conditional primitive budget for #321.
All scales are real and at least one. The arithmetic primitive is unchanged;
its absolute budget remains an explicit hypothesis, with no witness supplied.
The sign-change assertion concerns the actual source derivative kernel. It
does not assert that the independently defined arithmetic primitive can be
chosen arbitrarily. AI attribution: OpenAI Codex independent challenge.
-/

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open MeasureTheory Set
open scoped Interval
open FormalResearch.RiemannHypothesis
open SourcePairing SourceFirstPrimeAbel SourceCorrelationCurvature SourceCorrelationEnergy
open SourceContinuousHalfEnergy Research.ActualCriticalPrimitive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation EstimateMertensResidual

noncomputable section

/-- Evenness and the actual unit normalization fix this lower boundary. -/
theorem actual_criticalKernel_at_zero (A : ℝ) (hA : 1 ≤ A) :
    criticalKernel A 0 = 1 / 2 := by
  have hp : 0 < A := by linarith
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hp)).1 0).hasDerivAt
  have hcn : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-(0 : ℝ)) := by
    simpa only [neg_zero] using hc
  have hn : HasDerivAt (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u))
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hcn.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  rw [he] at hn
  have hd : deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
    have hh := hc.unique hn
    linarith
  simp only [criticalKernel, hd, actual_correlation_at_zero A hA, zero_add]

/-- The exact test falls from one to zero, so its actual kernel becomes negative. -/
theorem actual_criticalKernel_negative_at_interior (A : ℝ) (hA : 1 ≤ A) :
    ∃ t ∈ Ioo (0 : ℝ) (2 * A), criticalKernel A t < 0 := by
  have hp : 0 < A := by linarith
  have hf := criticalPrimeTest_contDiff A hp
  obtain ⟨t, ht, hd⟩ := exists_deriv_eq_slope (criticalPrimeTest A)
    (by linarith : (0 : ℝ) < 2 * A) hf.continuous.continuousOn
    (hf.differentiable (by norm_num)).differentiableOn
  rw [criticalPrimeTest_at_upper A hp, criticalPrimeTest_at_zero A hA] at hd
  have hneg : deriv (criticalPrimeTest A) t < 0 := by
    rw [hd]
    exact div_neg_of_neg_of_pos (by norm_num) (by linarith)
  rw [criticalPrimeTest_deriv A t hp] at hneg
  have hnegk : Real.exp (t / 2) * criticalKernel A t < 0 := by
    simpa only [criticalKernel, add_comm] using hneg
  refine ⟨t, ht, ?_⟩
  nlinarith [Real.exp_pos (t / 2), hnegk]

/-- The actual primitive work kernel has both signs at interior points at every scale. -/
theorem actual_criticalKernel_deriv_both_signs (A : ℝ) (hA : 1 ≤ A) :
    (∃ t ∈ Ioo (0 : ℝ) (2 * A), deriv (criticalKernel A) t < 0) ∧
      (∃ t ∈ Ioo (0 : ℝ) (2 * A), 0 < deriv (criticalKernel A) t) := by
  have hp : 0 < A := by linarith
  obtain ⟨s, hs, hks⟩ := actual_criticalKernel_negative_at_interior A hA
  have hk := criticalKernel_contDiff A hp
  obtain ⟨t, ht, hd⟩ := exists_deriv_eq_slope (criticalKernel A) hs.1
    hk.continuous.continuousOn (hk.differentiable (by norm_num)).differentiableOn
  obtain ⟨u, hu, he⟩ := exists_deriv_eq_slope (criticalKernel A) hs.2
    hk.continuous.continuousOn (hk.differentiable (by norm_num)).differentiableOn
  constructor
  · refine ⟨t, ⟨ht.1, ht.2.trans hs.2⟩, ?_⟩
    rw [hd, actual_criticalKernel_at_zero A hA]
    exact div_neg_of_neg_of_pos (by linarith) (by linarith [hs.1])
  · refine ⟨u, ⟨hs.1.trans hu.1, hu.2⟩, ?_⟩
    rw [he, criticalKernel_at_upper A hA]
    exact div_pos (by linarith) (sub_pos.mpr hs.2)

/-- Retain the exact proved energy coefficient instead of its coarse 65/3 bound. -/
theorem actual_criticalKernel_deriv_sharp_bound (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (criticalKernel A) t| ≤
      (162826 / 7623 : ℝ) / A ^ 2 +
        Real.sqrt (162826 / 7623 : ℝ) / (2 * A) := by
  rw [criticalKernel_deriv A t (by linarith)]
  apply (abs_add_le _ _).trans
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  have h1 := sourceCorrelation_deriv_abs_le_coefficient hA t
  have h2 := sourceCorrelation_second_deriv_abs_le_coefficient hA t
  have hh := div_le_div_of_nonneg_right h1 (by norm_num : (0 : ℝ) ≤ 2)
  calc
    _ ≤ 162826 / (7623 * A ^ 2) + (Real.sqrt (162826 / 7623 : ℝ) / A) / 2 :=
      add_le_add h2 hh
    _ = _ := by ring

/-- Quantitative work bound for the independently specified actual arithmetic primitive. -/
theorem actual_primitive_sharp_work_bound (M : ℝ) (hM : 0 ≤ M)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ M)
    (A : ℝ) (hA : 1 ≤ A) :
    |∫ t in 0..2 * A, criticalPrimitive t * deriv (criticalKernel A) t| ≤
      M * (2 * (162826 / 7623 : ℝ) / A + Real.sqrt (162826 / 7623 : ℝ)) := by
  have hpoint (t : ℝ) (ht : t ∈ Ι (0 : ℝ) (2 * A)) :
      ‖criticalPrimitive t * deriv (criticalKernel A) t‖ ≤
        M * ((162826 / 7623 : ℝ) / A ^ 2 +
          Real.sqrt (162826 / 7623 : ℝ) / (2 * A)) := by
    rw [Real.norm_eq_abs, abs_mul]
    have ht0 : 0 ≤ t := ((uIoc_of_le (by linarith : (0 : ℝ) ≤ 2 * A)) ▸ ht).1.le
    exact mul_le_mul (hF t ht0) (actual_criticalKernel_deriv_sharp_bound A t hA)
      (abs_nonneg _) hM
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const hpoint
  simp only [Real.norm_eq_abs, sub_zero, abs_of_pos (by positivity : 0 < 2 * A)] at hb
  convert hb using 1
  field_simp <;> ring

/-- The exact actual continuous half is negative; the earlier +2 allowance disappears. -/
theorem actual_residual_upper_sharp_primitive_budget (M : ℝ) (hM : 0 ≤ M)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ M)
    (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A < -Real.eulerMascheroniConstant +
      M * (2 * (162826 / 7623 : ℝ) / A + Real.sqrt (162826 / 7623 : ℝ)) := by
  rw [actual_residual_primitive_reconstruction A hA]
  have hw := (abs_le.mp (actual_primitive_sharp_work_bound M hM hF A hA)).2
  have hc := criticalContinuousMoment_lt_zero hA
  linarith

end
end RH16IndependentChallengeNext
