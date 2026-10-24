# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCompensatedRadiusConsumer.Variant1c84972b38a5b83d2c2e265c448eba37b726176c51c102940b59e9cdf33f08a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc5bd1c46c88f632147257102173ef39572fc89b` · SHA-256 `1c6c38c2d81afe470565d649270d56c3383f3c69ba22b758e7c800316f455ea6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualTailOfCompensatedJointWorkTail.Variant3b31540006797f7b35a076e09135d080f2b8c24161f17bd8e22ceb8d8192c9c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b31540006797f7b35a076e09135d080f2b8c24161f17bd8e22ceb8d8192c9c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ResidualTailOfCompensatedJointWorkTail.Variant3b31540006797f7b35a076e09135d080f2b8c24161f17bd8e22ceb8d8192c9c8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3b31540006797f7b35a076e09135d080f2b8c24161f17bd8e22ceb8d8192c9c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-followthrough-20261006/dependencies/independent-endpoint-replay/SourceCompensatedRadiusConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceEndpointRadiusConsumer
import SourceCompensatedBilinearConsumer

/-! Fixed-radius endpoint application to the complete signed Abel and bilinear
energies. Every boundary, physical diagonal and independent main term remains.
Local candidate. Research direction: grwtsk contributors. AI: OpenAI Codex. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualTailOfCompensatedJointWorkTail.Variant3b31540006797f7b35a076e09135d080f2b8c24161f17bd8e22ceb8d8192c9c8

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceCompensatedRadiusConsumer
noncomputable section
open RH16EndpointRadius SourceEndpointRadiusConsumer SourceJointWorkConsumer
open SourceCompensatedBilinearConsumer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

theorem residual_tail_of_compensatedJointWork_tail (D R : ℝ) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedJointWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + endpointBudget R + C_F := by
  apply SourceEndpointRadiusConsumer.residual_tail_of_strictColumnInterior_tail D R hR
  intro A hRA
  rw [← compensatedJointWork_eq_strictColumnInterior A (hR.trans hRA)]
  exact hwork A hRA

theorem estimate_of_compensatedJointWork_tail (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedJointWork A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  apply SourceEndpointRadiusConsumer.estimate_of_strictColumnInterior_tail D R hD hR
  intro A hRA
  rw [← compensatedJointWork_eq_strictColumnInterior A (hR.trans hRA)]
  exact hwork A hRA

theorem residual_tail_of_compensatedBilinearWork_tail (D R : ℝ) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedBilinearWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + endpointBudget R + C_F := by
  apply residual_tail_of_compensatedJointWork_tail D R hR
  intro A hRA
  rw [← compensatedBilinearWork_eq_compensatedJointWork A (hR.trans hRA)]
  exact hwork A hRA

theorem estimate_of_compensatedBilinearWork_tail (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedBilinearWork A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_compensatedJointWork_tail D R hD hR
  intro A hRA
  rw [← compensatedBilinearWork_eq_compensatedJointWork A (hR.trans hRA)]
  exact hwork A hRA

end
end FormalResearch.RiemannHypothesis.SourceCompensatedRadiusConsumer
```
