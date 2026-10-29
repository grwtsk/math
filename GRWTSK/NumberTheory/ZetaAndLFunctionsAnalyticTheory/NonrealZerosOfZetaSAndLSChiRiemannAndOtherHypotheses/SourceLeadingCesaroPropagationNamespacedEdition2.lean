-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLeadingUpperOfResidualUpper.Variant15e0591279e37fa4860c3b40add8405c2dd7ec77dce9e20cc82effc280257b37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15e0591279e37fa4860c3b40add8405c2dd7ec77dce9e20cc82effc280257b37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualLeadingUpperOfResidualUpper.Variant15e0591279e37fa4860c3b40add8405c2dd7ec77dce9e20cc82effc280257b37","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"15e0591279e37fa4860c3b40add8405c2dd7ec77dce9e20cc82effc280257b37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791323927811298000/SourceLeadingCesaroPropagation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFiveCesaroPrimitiveConsumer
import SourceCesaroSignedPairingConsumer
import SourceLeadingTailQuantitative

/-!
Native follow-through of the sharper actual Cesaro alternatives to the unchanged
leading signed readout. Every arithmetic upper witness remains an explicit input.
This comparison keeps both original routes: the radius-91 consumer remains the
direct return to the original estimate. Direction: grwtsk contributors.
Formal construction and local verification: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLeadingUpperOfResidualUpper.Variant15e0591279e37fa4860c3b40add8405c2dd7ec77dce9e20cc82effc280257b37

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceLeadingCesaroPropagation
open SourceLeadingTailQuantitative SourceLeadingTailBudget SourceLeadingFullKappaReduction SourcePairing
open RH16ResumeApplication RH16ResumeBudget RH16FiveCesaroConsumer
open RH16CesaroPrimitive RH16CesaroSignedPairing SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual
noncomputable section

/-- Transport a supplied residual upper bound through the actual sharp calibration. -/
theorem actual_leading_upper_of_residual_upper (A B : ℝ) (hA : 25600 ≤ A)
    (hB : mertensResidual A ≤ B) :
    actualLeadingRenormalizedTail A ≤ B - (riemannZeta (1 / 2)).re + 3103 / 50 := by
  have he := (abs_lt.mp (residual_sub_actual_leading_sub_zeta_abs_lt_sharp hA)).1
  linarith

/-- The checked 522/91 primitive route now supplies a native leading bound, conditionally. -/
theorem actual_leading_upper_of_five_cesaro (M A : ℝ) (hM : 0 ≤ M)
    (hA : 25600 ≤ A)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    actualLeadingRenormalizedTail A ≤
      (522 / 91 : ℝ) * M - 3 / 8 + criticalBaselineCorrection 91 -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ hA
  exact residual_upper_of_remaining_signed_lower ((522 / 91 : ℝ) * M) 91 A
    (by norm_num) (by linarith)
    (remainingAtomWork_lower_of_five_cesaro M A hM (by linarith) hG)

/-- The weaker joint signed pairing route does not require a global absolute primitive bound. -/
theorem actual_leading_upper_of_signed_cesaro (J A : ℝ) (hA : 25600 ≤ A)
    (hJ : -J ≤ signedCesaroPairing A) :
    actualLeadingRenormalizedTail A ≤ J - 3 / 8 + criticalBaselineCorrection 91 -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ hA
  exact residual_upper_of_remaining_signed_lower J 91 A (by norm_num) (by linarith)
    (remainingAtomWork_lower_of_signed_pairing J A (by linarith) hJ)

end
end FormalResearch.RiemannHypothesis.SourceLeadingCesaroPropagation
