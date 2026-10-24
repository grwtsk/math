-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualZeroSevenCriticalWork.Variantc21e63ff6736cee51af56acdd007581aff4e5b02009a44a744bb93d7613c62fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c21e63ff6736cee51af56acdd007581aff4e5b02009a44a744bb93d7613c62fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualZeroSevenCriticalWork.Variantc21e63ff6736cee51af56acdd007581aff4e5b02009a44a744bb93d7613c62fa","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"c21e63ff6736cee51af56acdd007581aff4e5b02009a44a744bb93d7613c62fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T035142Z-1791345102744195000/SourceActualCriticalCovarianceResidual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCriticalDeltaReturn

/-!
The literal full Mangoldt work returns to the actual covariance with the whole
zero-to-seven source head and the authentic unit gamma trace retained.
Only a genuine signed lower covariance witness yields the unchanged estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualZeroSevenCriticalWork.Variantc21e63ff6736cee51af56acdd007581aff4e5b02009a44a744bb93d7613c62fa

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualCriticalCovarianceResidual
open MeasureTheory Set
open scoped Interval
open SourceMangoldtAbel SourceFirstPrimeAbel SourceActualXiErrorConvolution
open SourceActualXiErrorConvolutionKernel SourceActualCriticalCovarianceOrdinarySplit
open ActualCriticalDeltaReturn SourceFiveCancelledFactorialBudget SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimateCorrelation
noncomputable section

/-- The independent actual source work on the entire zero-to-seven logarithmic head. -/
def actualZeroSevenCriticalWork (A : ℝ) : ℝ :=
  ∫ t in 0..Real.log 7, actualCenteredMangoldtLogError t * deriv (criticalPrimeTest A) t

/-- A fixed actual elementary budget; no arithmetic cancellation is assumed. -/
def actualZeroSevenCriticalBudget : ℝ :=
  (Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|) *
    (1 + 10 * Real.log 7) * Real.sqrt 7

private theorem error_deriv_integrable {A l b : ℝ} (hA : 0 < A) (hlb : l ≤ b) :
    IntervalIntegrable (fun t => actualCenteredMangoldtLogError t *
      deriv (criticalPrimeTest A) t) volume l b := by
  exact (mangoldtLogError_mul_deriv_intervalIntegrable l b hlb
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A hA)).add
      (((criticalPrimeTest_contDiff A hA).continuous_deriv_one.intervalIntegrable l b).const_mul
        Real.eulerMascheroniConstant) |>.congr (fun t _ => by
          unfold actualCenteredMangoldtLogError
          ring)

/-- The literal covariance is one half of the true late Mangoldt derivative work. -/
theorem actualCriticalErrorCovariance_eq_half_derivative_work {A : ℝ} (hA : 91 ≤ A) :
    actualCriticalErrorCovariance A = (1 / 2 : ℝ) *
      ∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t *
        deriv (criticalPrimeTest A) t := by
  rw [← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro t _
  unfold actualCriticalErrorCovariance actualCriticalErrorDensity
  rw [criticalPrimeTest_deriv A t (by linarith)]
  ring

/-- Full finite source splitting and FTC retain the independent unit gamma trace. -/
theorem criticalMangoldtWork_eq_actual_covariance_and_full_head {A : ℝ} (hA : 91 ≤ A) :
    criticalMangoldtWork A = 2 * actualCriticalErrorCovariance A +
      actualZeroSevenCriticalWork A + Real.eulerMascheroniConstant := by
  have hp : 0 < A := by linarith
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hab : Real.log (7 : ℝ) ≤ 2 * A := by
    have := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
    linarith
  have hF := criticalPrimeTest_contDiff A hp
  have hd : (∫ t in 0..2 * A, deriv (criticalPrimeTest A) t) = -1 := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ => ((contDiff_one_iff_deriv.mp hF).1 t).hasDerivAt)
      (hF.continuous_deriv_one.intervalIntegrable _ _),
      criticalPrimeTest_at_upper A hp, criticalPrimeTest_at_zero A (by linarith)]
    norm_num
  have hiE := criticalMangoldtWork_intervalIntegrable A hp
  have hiγ := (hF.continuous_deriv_one.intervalIntegrable 0 (2 * A)).const_mul
    Real.eulerMascheroniConstant
  have hfull : (∫ t in 0..2 * A, actualCenteredMangoldtLogError t *
      deriv (criticalPrimeTest A) t) = criticalMangoldtWork A -
        Real.eulerMascheroniConstant := by
    simp_rw [actualCenteredMangoldtLogError, add_mul]
    rw [intervalIntegral.integral_add hiE hiγ, intervalIntegral.integral_const_mul, hd]
    rfl
  have hs := intervalIntegral.integral_add_adjacent_intervals
    (error_deriv_integrable hp ha) (error_deriv_integrable hp hab)
  have hc := actualCriticalErrorCovariance_eq_half_derivative_work hA
  unfold actualZeroSevenCriticalWork
  linarith

/-- The unchanged residual keeps the full head, gamma and the correct signed covariance. -/
theorem mertensResidual_eq_actual_covariance_and_full_head {A : ℝ} (hA : 91 ≤ A) :
    mertensResidual A = criticalContinuousMoment A - 2 * actualCriticalErrorCovariance A -
      actualZeroSevenCriticalWork A - Real.eulerMascheroniConstant := by
  rw [mertensResidual_eq_continuous_sub_Mangoldt_work A (by linarith),
    criticalMangoldtWork_eq_actual_covariance_and_full_head hA]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualCriticalCovarianceResidual
