# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceBlockRadiusSharpPropagation.Variantd6d0b864cbf7fa638b92dedced7aaf107a34b3058c74adcf843e27220b3818bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77028640a29560569c8a7dd6a43ad29178a0d80e` · SHA-256 `1bdcee15bc1ec3c13bca49cd1e93fa9b3b7a8d327da5d85abb99cbf1e9071ca7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperOfCompleteComplementAtRadius.Variant93f19645db61dc6c5bddac8242d7b5da4682235d1bc0d4424fe19ff52e24cab4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93f19645db61dc6c5bddac8242d7b5da4682235d1bc0d4424fe19ff52e24cab4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ResidualUpperOfCompleteComplementAtRadius.Variant93f19645db61dc6c5bddac8242d7b5da4682235d1bc0d4424fe19ff52e24cab4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"93f19645db61dc6c5bddac8242d7b5da4682235d1bc0d4424fe19ff52e24cab4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791327317033948000/SourceBlockRadiusSharpPropagation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceRawXiBlockGain
import SourceLaterRadiusPropagation

/-!
Combine the actual block margin with the supplied later-radius signed consumer.
The complete complement input stays open. The radius R supplies both the exact
finite prefix and the antitone correction b(R); the margin is paid once.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperOfCompleteComplementAtRadius.Variant93f19645db61dc6c5bddac8242d7b5da4682235d1bc0d4424fe19ff52e24cab4

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceBlockRadiusSharpPropagation
open MeasureTheory
open SourceRawXiBlockGain SourceLaterRadiusPropagation SourceLeadingTailBudget
open RH16ActualXiPositiveBlock RH16CompleteXiComplement RH16ResumeBudget
open SourceFirstAtomSignedWork SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization
noncomputable section

theorem residual_upper_of_complete_complement_at_radius (K R A : ℝ) (hR : 91 ≤ R)
    (hA : R ≤ A) (hcomp : -K ≤ completeXiComplement A) :
    mertensResidual A ≤ K - blockMargin - 3 / 8 + criticalBaselineCorrection R := by
  apply residual_upper_of_contracted_Xi_at_radius (K - blockMargin) R A hR hA
  exact contracted_pairing_lower_of_complement_raw K A (by linarith) hcomp

theorem all_real_lower_of_complete_complement_at_radius (K R : ℝ) (hR : 91 ≤ R)
    (hcomp : ∀ A : ℝ, R ≤ A → -K ≤ completeXiComplement A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (K - blockMargin - 3 / 8 +
          criticalBaselineCorrection R)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_lower_of_contracted_Xi_at_radius (K - blockMargin) R hR
  intro A hA
  exact contracted_pairing_lower_of_complement_raw K A (by linarith) (hcomp A hA)

theorem estimate_of_complete_complement_at_radius (K R : ℝ) (hR : 91 ≤ R)
    (hcomp : ∀ A : ℝ, R ≤ A → -K ≤ completeXiComplement A) :
    CorrelationAssembly.EstimateObligation := by
  exact ⟨_, all_real_lower_of_complete_complement_at_radius K R hR hcomp⟩

theorem leading_upper_of_complete_complement_at_radius (K R A : ℝ) (hR : 91 ≤ R)
    (hA : max 25600 R ≤ A) (hcomp : -K ≤ completeXiComplement A) :
    actualLeadingRenormalizedTail A ≤ K - blockMargin - 3 / 8 +
      criticalBaselineCorrection R - (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply leading_upper_of_contracted_Xi_at_radius (K - blockMargin) R A hR hA
  exact contracted_pairing_lower_of_complement_raw K A
    (by have h := (le_max_left (25600 : ℝ) R).trans hA; linarith) hcomp

end
end FormalResearch.RiemannHypothesis.SourceBlockRadiusSharpPropagation
```
