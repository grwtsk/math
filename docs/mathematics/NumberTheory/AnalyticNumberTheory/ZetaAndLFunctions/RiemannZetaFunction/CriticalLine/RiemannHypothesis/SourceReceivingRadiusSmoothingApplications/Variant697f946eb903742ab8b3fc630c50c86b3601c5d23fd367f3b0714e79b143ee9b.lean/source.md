# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceReceivingRadiusSmoothingApplications.Variant697f946eb903742ab8b3fc630c50c86b3601c5d23fd367f3b0714e79b143ee9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1123d906319dfbe88f9bb9c00a9a2ed528179417` · SHA-256 `ecf99738c238d3a536721da2f7a799653071c03886ea262f2a1e5c443efaaee5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointBudgetAtLeadingRadius.Variant712248634cbc4b2dd24b6c2ab2e24bf91f5b5a41f8484945b9939fa95ccad68c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"712248634cbc4b2dd24b6c2ab2e24bf91f5b5a41f8484945b9939fa95ccad68c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EndpointBudgetAtLeadingRadius.Variant712248634cbc4b2dd24b6c2ab2e24bf91f5b5a41f8484945b9939fa95ccad68c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"712248634cbc4b2dd24b6c2ab2e24bf91f5b5a41f8484945b9939fa95ccad68c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/root/independent-SourceReceivingRadiusSmoothingApplications-1791329313640315000/SourceReceivingRadiusSmoothingApplications.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceEndpointRadiusTriangularFollowthrough
import SourceLeadingCesaroPropagation

/-!
# Endpoint and source smoothing at the sharp-leading receiving radius

The actual endpoint budget is recomputed at max(25600,R). The matched finite
comparison pays one half; the separately truncated comparison pays one and
retains its independent truncation premise. Every ledger constant is selected
before quantifying the later real scale. Research direction: grwtsk contributors.
Formal construction and local verification: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointBudgetAtLeadingRadius.Variant712248634cbc4b2dd24b6c2ab2e24bf91f5b5a41f8484945b9939fa95ccad68c

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceReceivingRadiusSmoothingApplications

open SourceEndpointRadiusTriangularFollowthrough SourceAdaptiveTriangularConsumer
open SourceEndpointRadiusConsumer SourceStrictColumnInterior RH16EndpointRadius
open SourceLeadingCesaroPropagation SourceLeadingTailBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

noncomputable section

theorem endpoint_budget_at_leading_radius (R : ℝ) :
    endpointBudget (max 25600 R) =
      2 * (max 25600 R) ^ 3 * Real.exp (-(max 25600 R)) := by
  apply endpointBudget_eq_of_three_le
  exact le_trans (by norm_num : (3 : ℝ) ≤ 25600) (le_max_left _ _)

/-- A strict-column witness pays its endpoint only at the receiving radius. -/
theorem leading_of_strict_column_at_receiving_radius (D R : ℝ) (hR : 1 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ D + endpointBudget (max 25600 R) + C_F -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_strictColumnInterior_tail
    D (max 25600 R) (hR.trans (le_max_right _ _))
    (fun A hA ↦ hS A ((le_max_right _ _).trans hA))
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  exact actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA) (hF A hA)

/-- The actual matched finite triangular comparison pays one half exactly once. -/
theorem leading_of_triangular_at_receiving_radius (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ K) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ K + endpointBudget (max 25600 R) + C_F -
        (riemannZeta (1 / 2)).re + 1564 / 25 := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_triangular_upper
    K (max 25600 R) (hR.trans (le_max_right _ _))
    (fun A hA ↦ hG A ((le_max_right _ _).trans hA))
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  have h := actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA) (hF A hA)
  linarith

/-- The separate analytic truncation premise is kept in the one-unit route. -/
theorem leading_of_truncated_at_receiving_radius (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → smoothedInterior A ≤ K)
    (hTrunc : ∀ A : ℝ, R ≤ A → TruncationDiscrepancy A) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ K + endpointBudget (max 25600 R) + C_F -
        (riemannZeta (1 / 2)).re + 3153 / 50 := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_truncated_smoothing_upper
    K (max 25600 R) (hR.trans (le_max_right _ _))
    (fun A hA ↦ hG A ((le_max_right _ _).trans hA))
    (fun A hA ↦ hTrunc A ((le_max_right _ _).trans hA))
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  have h := actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA) (hF A hA)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceReceivingRadiusSmoothingApplications
```
