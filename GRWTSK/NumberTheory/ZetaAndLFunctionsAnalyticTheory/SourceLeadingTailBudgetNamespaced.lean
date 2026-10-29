-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLeadingRenormalizedTail.Variantca8886586e4f11872858e8e2043562eb9bee8371c6e53a63232b432157442657","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca8886586e4f11872858e8e2043562eb9bee8371c6e53a63232b432157442657","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualLeadingRenormalizedTail.Variantca8886586e4f11872858e8e2043562eb9bee8371c6e53a63232b432157442657","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ca8886586e4f11872858e8e2043562eb9bee8371c6e53a63232b432157442657","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/ca8886586e4f11872858-SourceLeadingTailBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceLeadingFullKappaReduction
import SourceRenormalizedActualSignedTail

/-!
The actual signed leading arithmetic expression has the original all-real
consumer through a fixed, explicit full-kappa error budget. The leading
Moebius sum is kept joined to the genuine complementary tail. No witness for
their uniform upper bound is constructed here.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLeadingRenormalizedTail.Variantca8886586e4f11872858e8e2043562eb9bee8371c6e53a63232b432157442657

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceLeadingTailBudget

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourceFullPositiveKappa SourceLeadingFullKappaReduction
open SourceRenormalizedActualSignedTail SourceSignedTailLinearConsumer
open SourceStrictComplementaryLocalization SourceCorrectedOmegaPeanoTaylor
open SourceCompleteCorrectedAbelPairing SourceUnconditionalCorrectedCalibration
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMertensAbel EstimateMertensResidual

noncomputable section

/-- Independently specified actual leading signed arithmetic tail and linear subtraction. -/
def actualLeadingRenormalizedTail (A : ℝ) : ℝ :=
  fullPositiveKappa 1 *
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ)) +
    complementarySignedTail A - A

/-- Finite constants are actual positive-axis fractional-part integrals. -/
def leadingFixedErrorBudget : ℝ :=
  20 * |fullPositiveKappa 1| + 40 * |fullPositiveKappa 2| +
    20 * |fullPositiveKappa 3| + (67 / 3 : ℝ) * |fullPositiveKappa 4|

theorem leadingFixedErrorBudget_nonneg : 0 ≤ leadingFixedErrorBudget := by
  unfold leadingFixedErrorBudget
  positivity

/-- The genuine floor logarithm admits the fixed-budget comparisons at the head radius. -/
theorem actual_cutoff_logs_le_scale {A : ℝ} (hA : 25600 ≤ A) :
    (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ A ∧
      Real.log (vaughanCutoff A : ℝ) ≤ A ∧
      Real.log (vaughanCutoff A : ℝ) ≤ A ^ 3 := by
  have hA1 : 1 ≤ A := by linarith
  have hs : 160 ≤ Real.sqrt A := by
    apply Real.le_sqrt_of_sq_le
    norm_num
    exact hA
  have hss := Real.sq_sqrt (show 0 ≤ A by linarith)
  have hlog := RH16IndependentChallengeNext.actualCutoff_log_sq_le_sqrt hA1
  have ht0 : 0 ≤ Real.log (vaughanCutoff A : ℝ) :=
    Real.log_nonneg (actual_cutoff_order A hA1).1
  have hl2 : (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ A := by nlinarith
  have hl : Real.log (vaughanCutoff A : ℝ) ≤ A := by nlinarith
  have hAc : A ≤ A ^ 3 := by nlinarith [sq_nonneg (A - 1)]
  exact ⟨hl2, hl, hl.trans hAc⟩

/-- The complete four-jet error has a fixed genuine coefficient budget. -/
theorem fullKappaShortBudget_le_fixed {A : ℝ} (hA : 25600 ≤ A) :
    fullKappaShortBudget A ≤ leadingFixedErrorBudget := by
  have hp : 0 < A := by linarith
  have hs := actual_cutoff_logs_le_scale hA
  rw [fullKappaShortBudget_eq hp]
  unfold leadingFixedErrorBudget
  calc
    _ ≤ (20 * |fullPositiveKappa 1| * A + 40 * |fullPositiveKappa 2| * A +
        20 * |fullPositiveKappa 3| * A) / A +
        (67 / 3 : ℝ) * |fullPositiveKappa 4| * A ^ 3 / A ^ 3 := by
      apply add_le_add
      · apply div_le_div_of_nonneg_right _ hp.le
        apply add_le_add
        · apply add_le_add
          · exact mul_le_mul_of_nonneg_left hs.1 (by positivity)
          · exact mul_le_mul_of_nonneg_left hs.2.1 (by positivity)
        · simpa only [mul_one] using
            mul_le_mul_of_nonneg_left (show 1 ≤ A by linarith)
              (show 0 ≤ 20 * |fullPositiveKappa 3| by positivity)
      · exact div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left hs.2.2 (by positivity)) (by positivity)
    _ = _ := by field_simp

/-- No signed row or tail disappears in the leading approximation. -/
theorem renormalized_tail_sub_actual_leading_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |renormalizedActualSignedTail A - actualLeadingRenormalizedTail A| ≤
      fullKappaShortBudget A := by
  rw [renormalized_tail_eq_signed_short_and_tail_sub_scale]
  unfold signedShortAndComplementaryTail actualLeadingRenormalizedTail
  convert actualFullKappaShort_sub_leading_abs_le hA using 1
  unfold actualFullKappaShortSector actualWeightedMoebiusHalfSum
  congr 1
  ring

/-- The actual leading expression differs from the complete source by a fixed error. -/
theorem renormalized_tail_sub_actual_leading_abs_le_fixed {A : ℝ} (hA : 25600 ≤ A) :
    |renormalizedActualSignedTail A - actualLeadingRenormalizedTail A| ≤
      leadingFixedErrorBudget :=
  (renormalized_tail_sub_actual_leading_abs_le (by linarith : 91 ≤ A)).trans
    (fullKappaShortBudget_le_fixed hA)

/-- Same-radius uniform bounds preserve the actual signed leading sum and tail together. -/
theorem actual_leading_upper_iff_renormalized_upper_at_radius
    (R : ℝ) (hR : 25600 ≤ R) :
    (∃ K : ℝ, ∀ A : ℝ, R ≤ A → actualLeadingRenormalizedTail A ≤ K) ↔
      (∃ K : ℝ, ∀ A : ℝ, R ≤ A → renormalizedActualSignedTail A ≤ K) := by
  constructor
  · rintro ⟨K, hK⟩
    refine ⟨K + leadingFixedErrorBudget, ?_⟩
    intro A hRA
    have he := (abs_le.mp (renormalized_tail_sub_actual_leading_abs_le_fixed (hR.trans hRA))).2
    have hk := hK A hRA
    linarith
  · rintro ⟨K, hK⟩
    refine ⟨K + leadingFixedErrorBudget, ?_⟩
    intro A hRA
    have he := (abs_le.mp (renormalized_tail_sub_actual_leading_abs_le_fixed (hR.trans hRA))).1
    have hk := hK A hRA
    linarith

/-- Original all-real target from the sole remaining genuine leading signed witness. -/
theorem estimate_of_actual_leading_signed_tail {K R : ℝ} (hR : 25600 ≤ R)
    (htail : ∀ A : ℝ, R ≤ A → actualLeadingRenormalizedTail A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_renormalized_actual_signed_tail (K := K + leadingFixedErrorBudget) hR
  intro A hRA
  have he := (abs_le.mp (renormalized_tail_sub_actual_leading_abs_le_fixed (hR.trans hRA))).2
  have ht := htail A hRA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceLeadingTailBudget
