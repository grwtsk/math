-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceSlopeBoundExists.Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceSlopeBoundExists.Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147","mathematical_subject":"Analysis.Integration","original_sha256":"36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedBetaVariation

/-!
# Finite source regularity and the unbalanced deterministic block budget

The regularity bound is a proved source-calculus witness, not an arithmetic
hypothesis. Exponential growth below belongs only to the resulting scalar budget.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceSlopeBoundExists.Variant36b7b96dba933dc7ff56151b33a626d2445e4584e49a18025c5c9900ba1eb147

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateWeightedBetaScale

open MeasureTheory Set ArithmeticFunction
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity EstimateCorrelation EstimateSourceMobiusDerivative
open EstimateWeightedBetaKernel EstimateWeightedBetaAbel EstimateWeightedBetaInventory
open EstimateWeightedBetaVariation EstimateBetaCentering EstimateTypeTwoLogBlocks
open EstimateVaughanSource EstimateBetaSourceRecombination

noncomputable section

/-- A finite source regularity witness exists at each scale; no uniform-in-A claim is made. -/
theorem sourceSlopeBound_exists (A : ℝ) (hA : 1 ≤ A) :
    ∃ K : ℝ, 1 ≤ K ∧ ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K := by
  have hA0 : 0 < A := by linarith
  have hC := sourceCorrelation_contDiff A hA0
  have hc : Continuous (fun t ↦ |correlationSlope A t|) :=
    ((hC.continuous_deriv (by norm_num)).sub (hC.continuous.div_const 2)).abs
  obtain ⟨B,hB⟩ := ((isCompact_Icc : IsCompact (Icc (0 : ℝ) (2*A))).image hc).bddAbove
  refine ⟨max 1 B, le_max_left _ _, ?_⟩
  intro t ht
  by_cases hu : t ≤ 2*A
  · exact (hB ⟨t, ⟨ht,hu⟩, rfl⟩).trans (le_max_right _ _)
  · have he := sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA0
      (by rw [abs_of_nonneg ht]; linarith)
    have hd := sourceCorrelation_deriv_zero_of_two_mul_le A t hA0 (by linarith)
    simp only [correlationSlope, hd, he, zero_div, sub_self, abs_zero]
    exact zero_le_one.trans (le_max_left _ _)

/-- Elementary primitive of the exact reciprocal square-root derivative weight. -/
theorem invSqrtPrimitive_hasDerivAt (x : ℝ) (hx : 0 < x) :
    HasDerivAt (fun y : ℝ ↦ -2/Real.sqrt y) (1/(x*Real.sqrt x)) x := by
  have h := ((Real.hasDerivAt_sqrt hx.ne').inv (Real.sqrt_ne_zero'.mpr hx)).const_mul (-2)
  have he : (-2 : ℝ) * (-(1/(2*Real.sqrt x))/(Real.sqrt x)^2) =
      1/(x*Real.sqrt x) := by
    field_simp [Real.sqrt_ne_zero'.mpr hx, hx.ne']
    nlinarith [Real.sq_sqrt hx.le]
  rw [he] at h
  apply h.congr_of_eventuallyEq
  filter_upwards [] with y
  change -2/Real.sqrt y = -2*(Real.sqrt y)⁻¹
  ring

/-- Exact finite reciprocal-weight integral; both positive endpoints are retained. -/
theorem reciprocalWeight_integral (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    (∫ x in Ioc a b, 1/(x*Real.sqrt x)) = 2*(1/Real.sqrt a-1/Real.sqrt b) := by
  have hc : ContinuousOn (fun x : ℝ ↦ 1/(x*Real.sqrt x)) (Ioi 0) := by
    apply continuousOn_const.div (continuousOn_id.mul Real.continuous_sqrt.continuousOn)
    intro x hx
    exact (mul_pos hx (Real.sqrt_pos.2 hx)).ne'
  have hi : IntegrableOn (fun x : ℝ ↦ 1/(x*Real.sqrt x)) (Icc a b) :=
    (hc.mono (fun x hx ↦ ha.trans_le hx.1)).integrableOn_Icc
  have hs := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx ↦ invSqrtPrimitive_hasDerivAt x (ha.trans_le ((uIcc_of_le hab) ▸ hx).1))
    ((intervalIntegrable_iff_integrableOn_Icc_of_le hab).2 hi)
  rw [intervalIntegral.integral_of_le hab] at hs
  exact hs.trans (by ring)

/-- Pure source variation bound supplied by a proved regularity witness. -/
theorem sourceVariationCost_le (A K : ℝ) (m L H : ℕ) (hA : 1 ≤ A)
    (hm : 1 ≤ m) (hL : 1 ≤ L) (hLH : L ≤ H) (hK : 0 ≤ K)
    (hSlope : ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K) :
    sourceVariationCost A m L H ≤ (1+2*K)/Real.sqrt (L : ℝ) := by
  have hL0 : 0 < (L : ℝ) := by exact_mod_cast (by omega : 0 < L)
  have hHR : (L : ℝ) ≤ H := by exact_mod_cast hLH
  have hH0 : 0 < (H : ℝ) := hL0.trans_le hHR
  have hmR : (1 : ℝ) ≤ m := by exact_mod_cast hm
  have hLR : (1 : ℝ) ≤ L := by exact_mod_cast hL
  have hc := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hG : Continuous (correlationSlope A) := by
    exact (hc.continuous_deriv (by norm_num)).sub (hc.continuous.div_const 2)
  have hiG : IntegrableOn
      (fun x : ℝ ↦ |correlationSlope A (Real.log ((m : ℝ)*x))|/(x*Real.sqrt x))
      (Icc (L : ℝ) (H : ℝ)) := by
    apply ContinuousOn.integrableOn_Icc
    apply (hG.abs.continuousOn.comp
      ((continuousOn_const.mul continuousOn_id).log (by
        intro x hx; exact (mul_pos (by positivity) (hL0.trans_le hx.1)).ne'))
      (fun _ _ ↦ mem_univ _)).div
      (continuousOn_id.mul Real.continuous_sqrt.continuousOn)
    intro x hx
    exact (mul_pos (hL0.trans_le hx.1) (Real.sqrt_pos.2 (hL0.trans_le hx.1))).ne'
  have hiR : IntegrableOn (fun x : ℝ ↦ K/(x*Real.sqrt x))
      (Icc (L : ℝ) (H : ℝ)) := by
    apply ContinuousOn.integrableOn_Icc
    apply continuousOn_const.div (continuousOn_id.mul Real.continuous_sqrt.continuousOn)
    intro x hx
    exact (mul_pos (hL0.trans_le hx.1) (Real.sqrt_pos.2 (hL0.trans_le hx.1))).ne'
  have hi : (∫ x in Ioc (L : ℝ) (H : ℝ),
      |correlationSlope A (Real.log ((m : ℝ)*x))|/(x*Real.sqrt x)) ≤
      2*K*(1/Real.sqrt (L : ℝ)-1/Real.sqrt (H : ℝ)) := by
    calc
      _ ≤ ∫ x in Ioc (L : ℝ) (H : ℝ), K/(x*Real.sqrt x) := by
        apply integral_mono_ae (hiG.mono_set Ioc_subset_Icc_self)
          (hiR.mono_set Ioc_subset_Icc_self)
        filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
        apply div_le_div_of_nonneg_right
        · exact hSlope _ (Real.log_nonneg (by nlinarith [hLR.trans hx.1.le]))
        · exact mul_nonneg (hL0.trans hx.1).le (Real.sqrt_nonneg x)
      _ = _ := by
        simp_rw [div_eq_mul_inv]
        rw [integral_const_mul]
        have hr := reciprocalWeight_integral (L : ℝ) H hL0 hHR
        simp only [one_div] at hr
        rw [hr]
        ring
  have he := div_le_div_of_nonneg_right
    (actual_correlation_abs_le_one A (Real.log ((m : ℝ)*(H : ℝ))) hA)
    (Real.sqrt_nonneg (H : ℝ))
  have hs : 1/Real.sqrt (H : ℝ) ≤ 1/Real.sqrt (L : ℝ) := by
    exact one_div_le_one_div_of_le (Real.sqrt_pos.2 hL0) (Real.sqrt_le_sqrt hHR)
  unfold sourceVariationCost
  simp only [div_eq_mul_inv] at he hs hi ⊢
  nlinarith [inv_nonneg.mpr (Real.sqrt_nonneg (H : ℝ))]

end
end EstimateWeightedBetaScale
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
