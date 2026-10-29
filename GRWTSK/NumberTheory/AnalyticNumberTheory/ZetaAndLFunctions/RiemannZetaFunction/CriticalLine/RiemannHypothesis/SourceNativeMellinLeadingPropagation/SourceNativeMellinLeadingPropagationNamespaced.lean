-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LeadingTailOfNativeSignedHead.Variant260fbf234651648fa8611d4ea1f15e07d19afdaf89b6cbd86b807c989ab7cc3d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"260fbf234651648fa8611d4ea1f15e07d19afdaf89b6cbd86b807c989ab7cc3d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.LeadingTailOfNativeSignedHead.Variant260fbf234651648fa8611d4ea1f15e07d19afdaf89b6cbd86b807c989ab7cc3d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"260fbf234651648fa8611d4ea1f15e07d19afdaf89b6cbd86b807c989ab7cc3d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791328291728908000/SourceNativeMellinLeadingPropagation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceNativeConstantCompensation
import SourceLeadingCesaroPropagation

/-!
Native leading-tail propagation of the literal c=2 growing head and the full
compensated angular contour. Their signed arithmetic upper bounds remain inputs.
The real radius and all native analytic constants are retained.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LeadingTailOfNativeSignedHead.Variant260fbf234651648fa8611d4ea1f15e07d19afdaf89b6cbd86b807c989ab7cc3d

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceNativeMellinLeadingPropagation
open SourceNativeAngularTail SourceNativeMertensTransfer SourceNativeConstantCompensation
open SourceNativeDirichlet SourceLeadingCesaroPropagation SourceLeadingTailBudget
noncomputable section

/-- The actual growing-height signed head pays its native K2/R^9 tail budget exactly once. -/
theorem leading_tail_of_native_signed_head (K R : ℝ) (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (angularHead A (growingHeight A)).re ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ K + twoLineTailConstant / R ^ 9 -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  exact mertensResidual_upper_of_signed_head hR hhead A ((le_max_right _ _).trans hA)

/-- The actual full compensated contour pays only its exact constant D2 before calibration. -/
theorem leading_tail_of_native_compensated_contour (K R : ℝ) (hR : 1 ≤ R)
    (hcomp : ∀ A : ℝ, R ≤ A → (compensatedAngularContour A).re ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ rightLineMajorant 2 + K -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  exact mertensResidual_upper_of_compensated hR hcomp A ((le_max_right _ _).trans hA)

end
end FormalResearch.RiemannHypothesis.SourceNativeMellinLeadingPropagation
