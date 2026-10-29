-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.StrictUpperOfTriangularTail.Variant2bbe22f8a07831cb8e64f8bad8bfc460df044c758a9657fc29110f6dff05c063","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2bbe22f8a07831cb8e64f8bad8bfc460df044c758a9657fc29110f6dff05c063","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.StrictUpperOfTriangularTail.Variant2bbe22f8a07831cb8e64f8bad8bfc460df044c758a9657fc29110f6dff05c063","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"2bbe22f8a07831cb8e64f8bad8bfc460df044c758a9657fc29110f6dff05c063","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-followthrough-20261006-curvature/SourceAdaptiveRadiusFollowthrough.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveTriangularConsumer
import SourceEndpointRadiusConsumer

/-! Fixed-radius application of the literal finite triangular half-unit adapter.
The truncated Fourier smoothing contract retains its additional analytic premise.
Research direction: grwtsk contributors. Formal follow-through: OpenAI Codex. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.StrictUpperOfTriangularTail.Variant2bbe22f8a07831cb8e64f8bad8bfc460df044c758a9657fc29110f6dff05c063

set_option autoImplicit false
namespace RH16AdaptiveRadiusFollowthrough
noncomputable section
open FormalResearch.RiemannHypothesis
open SourceAdaptiveTriangularConsumer SourceEndpointRadiusConsumer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

private theorem strict_upper_of_triangular_tail (D R A : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ D) (hRA : R ≤ A) :
    SourceStrictColumnInterior.strictColumnInterior A ≤ D + 1 / 2 := by
  have he := (abs_le.mp (strictInterior_triangular_discrepancy A (hR.trans hRA))).2
  linarith [hG A hRA]

theorem residual_tail_of_finite_triangular_tail (D R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + 1 / 2 + RH16EndpointRadius.endpointBudget R + C_F := by
  exact SourceEndpointRadiusConsumer.residual_tail_of_strictColumnInterior_tail
    (D + 1 / 2) R hR (fun A hRA => strict_upper_of_triangular_tail D R A hR hG hRA)

theorem estimate_of_finite_triangular_tail (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  exact SourceEndpointRadiusConsumer.estimate_of_strictColumnInterior_tail
    (D + 1 / 2) R (by linarith) hR
    (fun A hRA => strict_upper_of_triangular_tail D R A hR hG hRA)

private theorem strict_upper_of_truncated_smoothing_tail (D R A : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → smoothedInterior A ≤ D)
    (hTrunc : ∀ A : ℝ, R ≤ A →
      |triangularPairing A - (1 / (2 * Real.pi)) * (∫ ξ : ℝ,
        (SourceVaughanHankelFourier.mangoldtPolynomial A ξ *
          SourceVaughanHankelFourier.centeredBetaPolynomial A ξ).re *
            truncatedDensity A ξ)| ≤ 4 * B0 A /
              (Real.pi * bandwidth A * truncation A)) (hRA : R ≤ A) :
    SourceStrictColumnInterior.strictColumnInterior A ≤ D + 1 := by
  have hA := hR.trans hRA
  have hf := (abs_le.mp (sourcePairing_triangular_discrepancy A hA)).2
  have ht := (abs_le.mp (hTrunc A hRA)).2
  have hb := adaptive_budget A hA
  have hg := hG A hRA
  rw [strictInterior_eq_pairing A hA]
  unfold smoothedInterior at hg
  unfold discrepancy at hb
  linarith

theorem residual_tail_of_truncated_smoothing_tail (D R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → smoothedInterior A ≤ D)
    (hTrunc : ∀ A : ℝ, R ≤ A →
      |triangularPairing A - (1 / (2 * Real.pi)) * (∫ ξ : ℝ,
        (SourceVaughanHankelFourier.mangoldtPolynomial A ξ *
          SourceVaughanHankelFourier.centeredBetaPolynomial A ξ).re *
            truncatedDensity A ξ)| ≤ 4 * B0 A /
              (Real.pi * bandwidth A * truncation A)) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + 1 + RH16EndpointRadius.endpointBudget R + C_F := by
  exact SourceEndpointRadiusConsumer.residual_tail_of_strictColumnInterior_tail
    (D + 1) R hR
    (fun A hRA => strict_upper_of_truncated_smoothing_tail D R A hR hG hTrunc hRA)

theorem estimate_of_truncated_smoothing_tail (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → smoothedInterior A ≤ D)
    (hTrunc : ∀ A : ℝ, R ≤ A →
      |triangularPairing A - (1 / (2 * Real.pi)) * (∫ ξ : ℝ,
        (SourceVaughanHankelFourier.mangoldtPolynomial A ξ *
          SourceVaughanHankelFourier.centeredBetaPolynomial A ξ).re *
            truncatedDensity A ξ)| ≤ 4 * B0 A /
              (Real.pi * bandwidth A * truncation A)) :
    CorrelationAssembly.EstimateObligation := by
  exact SourceEndpointRadiusConsumer.estimate_of_strictColumnInterior_tail
    (D + 1) R (by linarith) hR
    (fun A hRA => strict_upper_of_truncated_smoothing_tail D R A hR hG hTrunc hRA)
end
end RH16AdaptiveRadiusFollowthrough
