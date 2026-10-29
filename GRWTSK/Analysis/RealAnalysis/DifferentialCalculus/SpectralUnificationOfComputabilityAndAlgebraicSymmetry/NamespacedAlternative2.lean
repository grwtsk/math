-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceLogKernelDerivEqSample.Variante4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourceLogKernelDerivEqSample.Variante4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd","mathematical_subject":"Analysis.Calculus","original_sha256":"e4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/e4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceKernelLogProfile
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceCorrelationDerivative

/-!
# Scale-sensitive variation of the actual source kernel

Apply the proved two-moment sampler to the derivative of the actual correlation.
The resulting bound preserves the half-weight cancellation and gives a total
variation bound independent of every real source scale in the stated domain.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceLogKernelDerivEqSample.Variante4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceKernelDerivative

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateSourceMobiusKernel EstimateActualSourceKernelBound EstimateSourceKernelLogProfile
open EstimateSourceCorrelationDerivative EstimateTwoMomentSamplingBound
open EstimateTwoMomentSampling EstimateLogSampling Realization

noncomputable section

/-- The fixed-inventory derivative is the normalized two-moment sample of `C_A'`. -/
theorem sourceLogKernel_deriv_eq_sample (A s : ℝ) (hA : 1 ≤ A) :
    deriv (sourceLogKernel A) s = Real.exp (s / 2) *
      leftSampleSum (logSamplingTerm (deriv (sourceCorrelation explicitSecondDerivative A))
        (Real.exp s)) (sourceKernelCutoff A) := by
  rw [sourceLogKernel_deriv_eq_sum A s (by linarith), exp_half_mul_leftSampleSum]

/-- The requested scale-sensitive derivative bound for the unchanged source. -/
theorem sourceLogKernel_deriv_abs_le (A s : ℝ) (hA : 1 ≤ A) (hs : 0 ≤ s) :
    |deriv (sourceLogKernel A) s| ≤ 40 / A + 260 / (3 * A ^ 2) := by
  have h := two_moment_sampling_bound_sqrt
    (sourceCorrelation_deriv_contDiff A hA) (sourceCorrelation_deriv_twoMomentProfile A hA)
    (Real.exp_pos s) (sourceCorrelation_deriv_profileSupBounds A hA)
    (sourceKernelCutoff A)
    (sourceCorrelation_deriv_samplingTailZero A (Real.exp s) hA (Real.one_le_exp_iff.mpr hs))
  have hm := mul_le_mul_of_nonneg_left h (Real.exp_pos (s / 2)).le
  have he : Real.exp (s / 2) *
      ((8 * (5 / A) + 4 * (65 / (3 * A ^ 2))) / Real.sqrt (Real.exp s)) =
        40 / A + 260 / (3 * A ^ 2) := by
    rw [← Real.exp_half]
    field_simp
    ring
  rw [he] at hm
  simpa only [sourceLogKernel_deriv_eq_sample A s hA, abs_mul,
    abs_of_pos (Real.exp_pos (s / 2))] using hm

/-- Every nonnegative logarithmic interval has a scale-sensitive variation envelope. -/
theorem sourceLogKernel_variation_interval_le (A u v : ℝ) (hA : 1 ≤ A)
    (hu : 0 ≤ u) (huv : u ≤ v) :
    (∫ s in u..v, |deriv (sourceLogKernel A) s|) ≤
      (v - u) * (40 / A + 260 / (3 * A ^ 2)) := by
  have hc : Continuous (deriv (sourceLogKernel A)) :=
    (sourceLogKernel_contDiff A (by linarith)).continuous_deriv (by norm_num)
  have h := intervalIntegral.integral_mono_on huv (hc.abs.intervalIntegrable u v)
    (continuous_const.intervalIntegrable u v : IntervalIntegrable
      (fun _ : ℝ ↦ 40 / A + 260 / (3 * A ^ 2)) volume u v)
    (fun s hs ↦ sourceLogKernel_deriv_abs_le A s hA (hu.trans hs.1))
  simpa only [intervalIntegral.integral_const, smul_eq_mul] using h

/-- Total variation on the full source interval is bounded independently of its length. -/
theorem sourceLogKernel_variation_le (A : ℝ) (hA : 1 ≤ A) :
    (∫ s in (0 : ℝ)..(2 * A), |deriv (sourceLogKernel A) s|) ≤
      80 + 520 / (3 * A) := by
  have h := sourceLogKernel_variation_interval_le A 0 (2 * A) hA le_rfl (by linarith)
  have he : (2 * A - 0) * (40 / A + 260 / (3 * A ^ 2)) = 80 + 520 / (3 * A) := by
    have hAn : A ≠ 0 := by linarith
    field_simp
    ring
  rwa [he] at h

/-- One numerical total-variation constant works for every real source scale `A ≥ 1`. -/
theorem sourceLogKernel_variation_le_uniform (A : ℝ) (hA : 1 ≤ A) :
    (∫ s in (0 : ℝ)..(2 * A), |deriv (sourceLogKernel A) s|) ≤ (760 : ℝ) / 3 := by
  have hdiv : 520 / (3 * A) ≤ (520 : ℝ) / 3 :=
    (div_le_iff₀ (by positivity : 0 < 3 * A)).2 (by linarith)
  exact (sourceLogKernel_variation_le A hA).trans (by linarith)

/-- The Euler derivative bound retains the cancellation of the original half weight. -/
theorem sourceMobiusKernel_euler_deriv_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    |x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2| ≤
      (40 / A + 260 / (3 * A ^ 2)) / Real.sqrt x := by
  have hx0 : 0 < x := by linarith
  have h := sourceLogKernel_deriv_abs_le A (Real.log x) hA (Real.log_nonneg hx)
  rw [sourceLogKernel_deriv_log A x (by linarith) hx0, abs_mul,
    abs_of_pos (Real.sqrt_pos.2 hx0)] at h
  exact (le_div_iff₀ (Real.sqrt_pos.2 hx0)).2 (by simpa only [mul_comm] using h)

/-- A real-axis derivative envelope, obtained after retaining the Euler cancellation. -/
theorem sourceMobiusKernel_deriv_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    |deriv (sourceMobiusKernel A) x| ≤
      (4 + 50 / A + 260 / (3 * A ^ 2)) / (x * Real.sqrt x) := by
  have hx0 : 0 < x := by linarith
  have hE := sourceMobiusKernel_euler_deriv_abs_le A x hA hx
  have hK := sourceMobiusKernel_abs_le A x hA hx
  have he : x * deriv (sourceMobiusKernel A) x =
      (x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2) -
        sourceMobiusKernel A x / 2 := by ring
  have h : |(x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2) -
      sourceMobiusKernel A x / 2| ≤
      |x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2| +
        |sourceMobiusKernel A x / 2| := by
    simpa only [sub_eq_add_neg, abs_neg] using
      abs_add_le (x * deriv (sourceMobiusKernel A) x + sourceMobiusKernel A x / 2)
        (-(sourceMobiusKernel A x / 2))
  rw [← he, abs_mul, abs_of_pos hx0, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at h
  have hr : (40 / A + 260 / (3 * A ^ 2)) / Real.sqrt x +
      ((8 + 20 / A) / Real.sqrt x) / 2 =
      (4 + 50 / A + 260 / (3 * A ^ 2)) / Real.sqrt x := by ring
  have hb : x * |deriv (sourceMobiusKernel A) x| ≤
      (4 + 50 / A + 260 / (3 * A ^ 2)) / Real.sqrt x := by
    rw [← hr]
    linarith
  apply (le_div_iff₀ (mul_pos hx0 (Real.sqrt_pos.2 hx0))).2
  have hm := mul_le_mul_of_nonneg_right hb (Real.sqrt_nonneg x)
  simpa only [div_mul_cancel₀ _ (Real.sqrt_pos.2 hx0).ne', mul_assoc, mul_comm x] using hm

/-- The same derivative envelope with the conventional power `x^(3/2)`. -/
theorem sourceMobiusKernel_deriv_abs_le_rpow (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    |deriv (sourceMobiusKernel A) x| ≤
      (4 + 50 / A + 260 / (3 * A ^ 2)) / x ^ ((3 : ℝ) / 2) := by
  have hp : x ^ ((3 : ℝ) / 2) = x * Real.sqrt x := by
    rw [show (3 : ℝ) / 2 = 1 + 1 / 2 by norm_num,
      Real.rpow_add (by linarith : 0 < x), Real.rpow_one, ← Real.sqrt_eq_rpow]
  rw [hp]
  exact sourceMobiusKernel_deriv_abs_le A x hA hx

end
end EstimateSourceKernelDerivative
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
