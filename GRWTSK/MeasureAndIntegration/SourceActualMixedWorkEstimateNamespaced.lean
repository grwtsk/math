-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMixedKernelAbsLe.Variantcce39da1155b21c4fabe409ce05ec236c3ba6a38f08d1f35346a27c35ef4ecdd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cce39da1155b21c4fabe409ce05ec236c3ba6a38f08d1f35346a27c35ef4ecdd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualMixedKernelAbsLe.Variantcce39da1155b21c4fabe409ce05ec236c3ba6a38f08d1f35346a27c35ef4ecdd","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"cce39da1155b21c4fabe409ce05ec236c3ba6a38f08d1f35346a27c35ef4ecdd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/cce39da1155b21c4fabe-SourceActualMixedWorkEstimate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualMixedWorkFubini
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-!
# Quantitative envelope for the unchanged actual mixed density

AI attribution: OpenAI Codex. These are absolute envelope estimates, not an
all-radius signed work certificate. The original source and arithmetic error
remain fixed, and no compensated counterterm is removed.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMixedKernelAbsLe.Variantcce39da1155b21c4fabe409ce05ec236c3ba6a38f08d1f35346a27c35ef4ecdd

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualMixedWorkEstimate

open MeasureTheory Set
open scoped Interval
open SourcePairing SourceMangoldtAbel SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateCorrelation EstimateVaughanSource EstimateSourceMobiusKernel

/-- Exact inherited derivative energy and unit normalization bound the actual kernel. -/
theorem actual_mixed_kernel_abs_le (A s : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) s -
        sourceCorrelation explicitSecondDerivative A s / 4| ≤
      162826 / (7623 * A ^ 2) + 1 / 4 := by
  calc
    _ ≤ |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) s| +
        |sourceCorrelation explicitSecondDerivative A s / 4| := by
      rw [sub_eq_add_neg]
      exact (abs_add_le _ _).trans_eq (by rw [abs_neg])
    _ ≤ _ := add_le_add (sourceCorrelation_second_deriv_abs_le_coefficient hA s) (by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)]
      exact div_le_div_of_nonneg_right (actual_correlation_abs_le_one A s hA) (by norm_num))

/-- The positive cell denominator is retained in the actual time-error density bound. -/
theorem actual_error_mixed_density_abs_le (A t u : ℝ) (hA : 1 ≤ A)
    (ht : 0 ≤ t) (hu : 0 < u) :
    |mangoldtLogError t * (Real.exp (t / 2) / (u * Real.sqrt u)) *
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u) -
          sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 4)| ≤
      (Real.log 4 + 4 + Real.log 2) * (Real.exp (t / 2) / (u * Real.sqrt u)) *
        (162826 / (7623 * A ^ 2) + 1 / 4) := by
  have hpos : 0 ≤ Real.exp (t / 2) / (u * Real.sqrt u) := by positivity
  have hcoef : 0 ≤ 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ) := by positivity
  rw [abs_mul, abs_mul, abs_of_nonneg hpos]
  exact mul_le_mul
    (mul_le_mul_of_nonneg_right (mangoldtLogError_abs_le t ht) hpos)
    (actual_mixed_kernel_abs_le A (t + Real.log u) hA) (abs_nonneg _) (by positivity)

noncomputable section

/-- Actual logarithmic-error exponential mass on the unchanged cutoff window. -/
def actualErrorExpMass (A : ℝ) : ℝ :=
  ∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    |mangoldtLogError t| * Real.exp (t / 2)

private theorem exp_half_antiderivative (t : ℝ) :
    HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2)) (Real.exp (t / 2)) t := by
  have h := (((hasDerivAt_id t).div_const 2).exp).const_mul 2
  simp only [id_eq] at h
  convert h using 1 <;> first | rfl | ring

/-- The literal actual error mass has a genuine, but exponentially growing, upper budget. -/
theorem actualErrorExpMass_le (A : ℝ) (hA : 1 ≤ A) :
    actualErrorExpMass A ≤
      2 * (Real.log 4 + 4 + Real.log 2) * Real.exp A := by
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let l := Real.log (U : ℝ)
  let b := Real.log (N : ℝ)
  let Ce := Real.log 4 + 4 + Real.log 2
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hUN : U ≤ N := vaughanCutoff_le_sourceKernelCutoff A hA
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hN0 : 0 < (N : ℝ) := by exact_mod_cast (by omega : 0 < N)
  have hl0 : 0 ≤ l := Real.log_nonneg (by exact_mod_cast hU)
  have hlb : l ≤ b := Real.log_le_log hU0 (by exact_mod_cast hUN)
  have he : IntervalIntegrable (fun t => mangoldtLogError t * Real.exp (t / 2))
      volume l b := by
    have hd (t : ℝ) : deriv (fun t : ℝ => 2 * Real.exp (t / 2)) t =
        Real.exp (t / 2) := (exp_half_antiderivative t).deriv
    have hc : ContDiff ℝ 1 (fun t : ℝ => 2 * Real.exp (t / 2)) := by fun_prop
    simpa only [hd] using mangoldtLogError_mul_deriv_intervalIntegrable l b hlb _ hc
  have hea : IntervalIntegrable (fun t => |mangoldtLogError t| * Real.exp (t / 2))
      volume l b := by
    apply he.abs.congr
    intro t _
    change |mangoldtLogError t * Real.exp (t / 2)| =
      |mangoldtLogError t| * Real.exp (t / 2)
    rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  have hexp : IntervalIntegrable (fun t : ℝ => Real.exp (t / 2)) volume l b := by
    have hc : Continuous (fun t : ℝ => Real.exp (t / 2)) := by fun_prop
    exact hc.intervalIntegrable l b
  have hCe : 0 ≤ Ce := by
    dsimp only [Ce]
    positivity
  have hle : (∫ t in l..b, |mangoldtLogError t| * Real.exp (t / 2)) ≤
      ∫ t in l..b, Ce * Real.exp (t / 2) := by
    apply intervalIntegral.integral_mono_on hlb hea (hexp.const_mul Ce)
    intro t ht
    exact mul_le_mul_of_nonneg_right (mangoldtLogError_abs_le t (hl0.trans ht.1))
      (Real.exp_pos _).le
  have hi : (∫ t in l..b, Real.exp (t / 2)) =
      2 * Real.exp (b / 2) - 2 * Real.exp (l / 2) := by
    exact intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun t _ => exp_half_antiderivative t) hexp
  have hNb : (N : ℝ) ≤ Real.exp (2 * A) := by
    exact Nat.floor_le (Real.exp_pos _).le
  have hb : b ≤ 2 * A := by
    have h := Real.log_le_log hN0 hNb
    simpa only [Real.log_exp] using h
  have heb : Real.exp (b / 2) ≤ Real.exp A :=
    Real.exp_le_exp.mpr (by linarith)
  change (∫ t in l..b, |mangoldtLogError t| * Real.exp (t / 2)) ≤ _
  rw [intervalIntegral.integral_const_mul, hi] at hle
  nlinarith [Real.exp_pos (l / 2)]

end
end FormalResearch.RiemannHypothesis.SourceActualMixedWorkEstimate
