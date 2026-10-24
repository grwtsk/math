# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceTriangularExplicitLower.Variante3498a534e4eb8d6a33a5c023f4e0f70849f0752f322c29c05fe18d836404ddf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddc40f02caaa78b409c3382c13ea6024ca5356e5` · SHA-256 `6a3747b9764e6caa1424b6fa94cce37375cb78fa2a61cc4c6b9eb6e5ff7c06c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AllRealLowerOfTriangularUpper.Variant04142282aa5bb040a35e90e22c479a15323f13bd5c884a02391eee0c7a3974d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04142282aa5bb040a35e90e22c479a15323f13bd5c884a02391eee0c7a3974d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.AllRealLowerOfTriangularUpper.Variant04142282aa5bb040a35e90e22c479a15323f13bd5c884a02391eee0c7a3974d8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"04142282aa5bb040a35e90e22c479a15323f13bd5c884a02391eee0c7a3974d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791324503717225000/SourceTriangularExplicitLower.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceEndpointRadiusTriangularFollowthrough
import SourceResidualBudget

/-!
Explicit all-real original lower constants for the actual signed triangular
and conditional truncated branches. The original real finite-prefix consumer
is reused; no positivity assumption on the supplied signed K is introduced.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AllRealLowerOfTriangularUpper.Variant04142282aa5bb040a35e90e22c479a15323f13bd5c884a02391eee0c7a3974d8

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceTriangularExplicitLower
open SourceEndpointRadiusTriangularFollowthrough SourceAdaptiveTriangularConsumer
open SourcePairing
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
