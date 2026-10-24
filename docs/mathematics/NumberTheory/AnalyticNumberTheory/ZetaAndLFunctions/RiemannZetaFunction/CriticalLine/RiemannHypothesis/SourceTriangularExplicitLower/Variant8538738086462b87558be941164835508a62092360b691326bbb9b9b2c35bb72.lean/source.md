# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceTriangularExplicitLower.Variant8538738086462b87558be941164835508a62092360b691326bbb9b9b2c35bb72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `331015ee76f4926808214fbbd4ccab6940ec7441` · SHA-256 `d2469ce6dafc528b144ce7a3404e13eff22a05af67f82ab3722eb9254858bb99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AllRealLowerOfTriangularUpper.Variant7a17313ab62b0c09131cf8489594d71ef57939a2554ca778ab352dbec6810fe3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a17313ab62b0c09131cf8489594d71ef57939a2554ca778ab352dbec6810fe3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.AllRealLowerOfTriangularUpper.Variant7a17313ab62b0c09131cf8489594d71ef57939a2554ca778ab352dbec6810fe3","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7a17313ab62b0c09131cf8489594d71ef57939a2554ca778ab352dbec6810fe3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791324422955258000/SourceTriangularExplicitLower.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceEndpointRadiusTriangularFollowthrough
import SourceResidualBudget

/-!
Explicit all-real original lower constants for the actual signed triangular
and conditional truncated branches. The original real finite-prefix consumer
is reused; no positivity assumption on the supplied signed K is introduced.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AllRealLowerOfTriangularUpper.Variant7a17313ab62b0c09131cf8489594d71ef57939a2554ca778ab352dbec6810fe3

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceTriangularExplicitLower
open SourceEndpointRadiusTriangularFollowthrough SourceAdaptiveTriangularConsumer
open RH16ResumeBudget RH16EndpointRadius
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

/-- The raw signed upper witness yields an explicit original lower constant at the same R. -/
theorem all_real_lower_of_triangular_upper (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ K) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (K + 1 / 2 + endpointBudget R + C_F)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_triangular_upper K R hR hG
  exact ⟨C_F, hF0, all_real_source_lower_of_residual_tail
    (K + 1 / 2 + endpointBudget R + C_F) R hR hF⟩

/-- The analytic truncation premise remains explicit and contributes a total one-unit loss. -/
theorem all_real_lower_of_truncated_smoothing_upper (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → smoothedInterior A ≤ K)
    (hTrunc : ∀ A : ℝ, R ≤ A → TruncationDiscrepancy A) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (K + 1 + endpointBudget R + C_F)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_truncated_smoothing_upper K R hR hG hTrunc
  exact ⟨C_F, hF0, all_real_source_lower_of_residual_tail
    (K + 1 + endpointBudget R + C_F) R hR hF⟩

/-- The original source multiplier doubles the half-unit loss exactly once. -/
theorem triangular_tail_lower_budget (K R C_F : ℝ) :
    archimedeanMultiplier 0 - 2 * (K + 1 / 2 + endpointBudget R + C_F) =
      archimedeanMultiplier 0 - 2 * K - 1 - 2 * endpointBudget R - 2 * C_F := by
  ring

end
end FormalResearch.RiemannHypothesis.SourceTriangularExplicitLower
```
