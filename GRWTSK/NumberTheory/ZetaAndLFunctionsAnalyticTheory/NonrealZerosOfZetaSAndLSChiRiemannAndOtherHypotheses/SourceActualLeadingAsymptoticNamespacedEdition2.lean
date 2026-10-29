-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualLeadingResidualEnvelope.Variantd5a7aa1f0ef294b7c0a24e857f84f26905846ed437ea0d1d4a514edfc5540991","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5a7aa1f0ef294b7c0a24e857f84f26905846ed437ea0d1d4a514edfc5540991","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualLeadingResidualEnvelope.Variantd5a7aa1f0ef294b7c0a24e857f84f26905846ed437ea0d1d4a514edfc5540991","mathematical_subject":"Topology.GeneralTopology","original_sha256":"d5a7aa1f0ef294b7c0a24e857f84f26905846ed437ea0d1d4a514edfc5540991","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T192534Z-1791314734894123000/SourceActualLeadingAsymptotic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceLeadingTailDecay
import SourceActualEarlyFractionalZeta

/-!
The actual closed-floor leading signed source differs from the original
residual by a vanishing quantitative envelope on the full real scale domain.
The independently recovered Euler identity cancels the retained head constant.
No uniform signed arithmetic witness follows from this analytic equivalence.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.Topology.GeneralTopology.ActualLeadingResidualEnvelope.Variantd5a7aa1f0ef294b7c0a24e857f84f26905846ed437ea0d1d4a514edfc5540991

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualLeadingAsymptotic

open Filter
open scoped Topology
open SourceLeadingTailDecay SourceLeadingTailBudget SourceRenormalizedActualSignedTail
open SourceActualEarlyFractionalLimit SourceActualEarlyFractionalZeta
open SourceUnconditionalCorrectedCalibration SourceCompleteCorrectedAbelPairing
open ContinuousResearch.ActualIntegerInventory ContinuousResearch.ActualArithmeticCalibration
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

noncomputable section

/-- Quantitative genuine residual reconstruction plus the two proved analytic errors. -/
def actualLeadingResidualEnvelope (A : ℝ) : ℝ :=
  260 / A ^ 2 + 960 * 67 / A ^ 3 + logarithmicLeadingErrorEnvelope A +
    actualHeadFractionalEnvelope A

/-- Complete signed pairing retains the independently calibrated integer source. -/
theorem residual_sub_pairing_sub_zeta_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2 : ℂ)).re| ≤ 260 / A ^ 2 + 960 * 67 / A ^ 3 := by
  have hc := actual_calibration_260 (by linarith : 1 ≤ A)
  have hi := integerJ_sub_complete_pairing_abs_le A hA
  have ht := abs_add_le
    (mertensResidual A - integerJ A - (riemannZeta (1 / 2 : ℂ)).re)
    (integerJ A - completeCorrectedAbelPairing A)
  have he : mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2 : ℂ)).re =
      (mertensResidual A - integerJ A - (riemannZeta (1 / 2 : ℂ)).re) +
        (integerJ A - completeCorrectedAbelPairing A) := by ring
  rw [← he] at ht
  linarith

/-- Every real scale keeps actual Moebius signs, the full tail and all head errors. -/
theorem residual_sub_actual_leading_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |mertensResidual A - actualLeadingRenormalizedTail A| ≤
      actualLeadingResidualEnvelope A := by
  have hc := residual_sub_pairing_sub_zeta_abs_le hA
  have hs := (renormalized_tail_sub_actual_leading_abs_le hA).trans
    (fullKappaShortBudget_le_logarithmic_envelope hA)
  have hh := actualEarly_add_scale_zeta_abs_le hA
  have hp := complete_pairing_eq_renormalized_tail_add_actual_head A
    (by linarith : 1 ≤ A)
  have ht := (abs_add_le
    ((mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2 : ℂ)).re) +
      (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A))
    (SourceStrictComplementaryLocalization.complementaryEarlyBaseline A + A +
      (riemannZeta (1 / 2 : ℂ)).re)).trans
      (add_le_add_right (abs_add_le _ _) _)
  have he : ((mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2 : ℂ)).re) +
      (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A)) +
      (SourceStrictComplementaryLocalization.complementaryEarlyBaseline A + A +
        (riemannZeta (1 / 2 : ℂ)).re) =
      mertensResidual A - actualLeadingRenormalizedTail A := by rw [hp]; ring
  rw [he] at ht
  unfold actualLeadingResidualEnvelope
  linarith

/-- All quantitative reconstruction errors vanish along real atTop. -/
theorem actualLeadingResidualEnvelope_tendsto_zero :
    Tendsto actualLeadingResidualEnvelope atTop (𝓝 (0 : ℝ)) := by
  have h0 : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_div] using tendsto_inv_atTop_zero
  have h2 : Tendsto (fun A : ℝ => 260 / A ^ 2) atTop (𝓝 (0 : ℝ)) := by
    simpa only [div_eq_mul_inv, one_mul, inv_pow, zero_pow, mul_zero] using
      (h0.pow 2).const_mul 260
  have h3 : Tendsto (fun A : ℝ => 960 * 67 / A ^ 3) atTop (𝓝 (0 : ℝ)) := by
    simpa only [div_eq_mul_inv, one_mul, inv_pow, zero_pow, mul_zero] using
      (h0.pow 3).const_mul (960 * 67)
  have hh := ((h2.add h3).add logarithmicLeadingErrorEnvelope_tendsto_zero).add
    actualHeadFractionalEnvelope_tendsto_zero
  simpa only [actualLeadingResidualEnvelope, add_zero] using hh

/-- The exact actual residual and the genuine leading signed source are asymptotic. -/
theorem residual_sub_actual_leading_tendsto_zero :
    Tendsto (fun A : ℝ => mertensResidual A - actualLeadingRenormalizedTail A)
      atTop (𝓝 (0 : ℝ)) := by
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _
    actualLeadingResidualEnvelope_tendsto_zero
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  exact residual_sub_actual_leading_abs_le hA

end
end FormalResearch.RiemannHypothesis.SourceActualLeadingAsymptotic
