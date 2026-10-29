-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.CubicLogModelDerivativeMeasurable.Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.CubicLogModelDerivativeMeasurable.Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/2aa8fdb5244382d8e8e1-SourceActualCubicCenteredRows.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCubicUpperLogMoments
import SourceCubicSamplingRemainder

/-!
# Actual cubic centered rows and the complete short divisor error inventory

AI attribution: OpenAI Codex. This is the actual logProfile derivative minus
its independently specified cubic model on u>1, multiplied by fract(u)-1/2.
Measurability and integrability are proved for that literal source difference.
Every divisor in 1..U is summed; the complementary U<d<=N row is retained
explicitly in a separate exact split. No positive-axis quadrature, fractional
Abel convention identification or complete Omega reconstruction is asserted.
-/


namespace GRWTSK.Analysis.MeasureTheory.CubicLogModelDerivativeMeasurable.Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualCubicCenteredRows

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourcePositiveSampling SourceCubicCorrelationTaylor SourceCubicSamplingRemainder
open SourceCubicUpperLogMoments
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel

noncomputable section

/-- The derivative of the independently specified cubic polynomial is an actual measurable model. -/
theorem cubicLogModelDerivative_measurable (A k : ℝ) :
    Measurable (cubicLogModelDerivative A k) := by
  have hd (u : ℝ) : deriv (cubicCorrelationJet A (Real.log k)) (Real.log u) =
      deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) +
        Real.log u * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log k) +
        (Real.log u) ^ 2 / 2 *
          deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) (Real.log k) :=
    (cubicCorrelationJet_hasDerivAt A (Real.log k) (Real.log u)).deriv
  unfold cubicLogModelDerivative
  simp_rw [hd]
  unfold cubicCorrelationJet
  fun_prop

/-- The genuine actual derivative error is bounded by the proved integrable envelope. -/
theorem actual_cubic_log_derivative_error_le_majorant {A k u : ℝ} (hA : 91 ≤ A)
    (hk : 0 < k) (hu : 1 < u) :
    |deriv (logProfile A k) u - cubicLogModelDerivative A k u| ≤
      cubicUpperMajorant A k u := by
  have hb := cubic_log_derivative_difference_abs_le hA hk hu.le
  convert hb using 1
  unfold cubicUpperMajorant upperLogWeight
  ring

/-- Integrability belongs to the actual signed source difference on the entire upper interval. -/
theorem actual_cubic_log_derivative_error_integrable {A k : ℝ} (hA : 91 ≤ A) (hk : 0 < k) :
    IntegrableOn (fun u => deriv (logProfile A k) u - cubicLogModelDerivative A k u)
      (Ioi (1 : ℝ)) := by
  apply (cubicUpperMajorant_integrable A k).mono'
  · exact ((logProfile_contDiff (by linarith : 0 < A) k).continuous_deriv_one.measurable.sub
      (cubicLogModelDerivative_measurable A k)).aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs]
    exact actual_cubic_log_derivative_error_le_majorant hA hk hu

/-- Independent literal centered cubic error row; no sampling sum is substituted for it. -/
def cubicCenteredLogErrorRow (A k : ℝ) : ℝ :=
  ∫ u in Ioi (1 : ℝ), centeredSawtooth u *
    (deriv (logProfile A k) u - cubicLogModelDerivative A k u)

theorem actual_cubic_centered_row_integrable {A k : ℝ} (hA : 91 ≤ A) (hk : 0 < k) :
    IntegrableOn (fun u => centeredSawtooth u *
      (deriv (logProfile A k) u - cubicLogModelDerivative A k u)) (Ioi (1 : ℝ)) := by
  apply centered_cubic_row_integrable_of_bound A k
  · exact (actual_cubic_log_derivative_error_integrable hA hk).aestronglyMeasurable
  · exact fun u hu => actual_cubic_log_derivative_error_le_majorant hA hk hu

/-- The actual centered row keeps the exact half factor and both upper logarithmic moments. -/
theorem actual_cubic_centered_row_abs_le {A k : ℝ} (hA : 91 ≤ A) (hk : 0 < k) :
    |cubicCenteredLogErrorRow A k| ≤ 160 * 67 / (A ^ 4 * Real.sqrt k) := by
  unfold cubicCenteredLogErrorRow
  apply centered_cubic_row_abs_le_of_bound A k
  exact fun u hu => actual_cubic_log_derivative_error_le_majorant hA hk hu

/-- Every actual short divisor row is retained in this cubic error estimate. -/
theorem actual_cubic_short_divisor_sum_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)| ≤ 320 * 67 / A ^ 3 := by
  apply full_short_divisor_row_sum_abs_le A (by linarith)
    (fun d => cubicCenteredLogErrorRow A (d : ℝ))
  intro d hd
  have hd0 : 0 < (d : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
  exact actual_cubic_centered_row_abs_le hA hd0

/-- Exact full finite cutoff split leaves every complementary divisor explicit. -/
theorem actual_cubic_full_divisor_sum_eq_short_add_complement (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)) =
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)) +
    (∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)) := by
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hu : Finset.Icc 1 (vaughanCutoff A) ∪
      Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A) =
        Finset.Icc 1 (sourceKernelCutoff A) := by
    ext d
    simp only [Finset.mem_union, Finset.mem_Icc, Finset.mem_Ioc]
    omega
  have hd : Disjoint (Finset.Icc 1 (vaughanCutoff A))
      (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)) := by
    rw [Finset.disjoint_left]
    intro d h1 h2
    have hb1 := Finset.mem_Icc.mp h1
    have hb2 := Finset.mem_Ioc.mp h2
    omega
  rw [← hu, Finset.sum_union hd]

/-- The proved short bound does not discard or estimate the actual complementary rows. -/
theorem actual_cubic_full_divisor_sum_abs_le_short_budget_add_complement (A : ℝ) (hA : 91 ≤ A) :
    |∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)| ≤ 320 * 67 / A ^ 3 +
    |∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)| := by
  rw [actual_cubic_full_divisor_sum_eq_short_add_complement A (by linarith)]
  exact (abs_add_le _ _).trans
    (add_le_add (actual_cubic_short_divisor_sum_abs_le A hA) le_rfl)

end
end FormalResearch.RiemannHypothesis.SourceActualCubicCenteredRows
