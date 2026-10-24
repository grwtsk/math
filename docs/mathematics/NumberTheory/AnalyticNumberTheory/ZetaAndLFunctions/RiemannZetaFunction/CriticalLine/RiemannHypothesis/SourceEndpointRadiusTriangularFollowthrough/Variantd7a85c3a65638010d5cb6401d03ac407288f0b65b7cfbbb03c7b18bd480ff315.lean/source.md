# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEndpointRadiusTriangularFollowthrough.Variantd7a85c3a65638010d5cb6401d03ac407288f0b65b7cfbbb03c7b18bd480ff315

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f433b0024ff6e08a9f8508394f11d0802396d2d9` · SHA-256 `9cbaa736696651d7e52d96245a0421c75ad5234207722cad4a76aa1178ed73f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StrictUpperOfTriangularUpper.Variant9eae59011ce21d5a19a97712c28fc7979ac521375eac6680909c6931bb1c325c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9eae59011ce21d5a19a97712c28fc7979ac521375eac6680909c6931bb1c325c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.StrictUpperOfTriangularUpper.Variant9eae59011ce21d5a19a97712c28fc7979ac521375eac6680909c6931bb1c325c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9eae59011ce21d5a19a97712c28fc7979ac521375eac6680909c6931bb1c325c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791324179156848000/SourceEndpointRadiusTriangularFollowthrough.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveTriangularConsumer
import SourceEndpointRadiusConsumer

/-!
Distinct followthrough of the source-matched radius endpoint consumer to the
actual signed finite triangular and explicitly conditional truncated branches.
The already proved radius envelope is reused. All source compensations remain
inside the unchanged strict/triangular/smoothed interior definitions.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StrictUpperOfTriangularUpper.Variant9eae59011ce21d5a19a97712c28fc7979ac521375eac6680909c6931bb1c325c

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceEndpointRadiusTriangularFollowthrough
open MeasureTheory
open SourceAdaptiveTriangularConsumer SourceStrictColumnInterior
open RH16EndpointRadius
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual
noncomputable section

theorem strict_upper_of_triangular_upper (K A : ℝ) (hA : 1 ≤ A)
    (hG : triangularInterior A ≤ K) : strictColumnInterior A ≤ K + 1 / 2 := by
  have he := (abs_le.mp (strictInterior_triangular_discrepancy A hA)).2
  linarith

/-- The endpoint radius budget and one-half attenuation budget are each paid once. -/
theorem residual_tail_of_triangular_upper (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ K) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ K + 1 / 2 + endpointBudget R + C_F := by
  apply SourceEndpointRadiusConsumer.residual_tail_of_strictColumnInterior_tail
    (K + 1 / 2) R hR
  intro A hRA
  exact strict_upper_of_triangular_upper K A (hR.trans hRA) (hG A hRA)

/-- Negative K is allowed; the all-real consumer receives max(0,K+1/2). -/
theorem estimate_of_triangular_upper (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply SourceEndpointRadiusConsumer.estimate_of_strictColumnInterior_tail
    (max 0 (K + 1 / 2)) R (le_max_left _ _) hR
  intro A hRA
  exact (strict_upper_of_triangular_upper K A (hR.trans hRA) (hG A hRA)).trans
    (le_max_right _ _)

/-- This is the remaining explicit analytic discrepancy, not a proved truncation estimate. -/
def TruncationDiscrepancy (A : ℝ) : Prop :=
  |triangularPairing A - (1 / (2 * Real.pi)) * (∫ ξ : ℝ,
    (SourceVaughanHankelFourier.mangoldtPolynomial A ξ *
      SourceVaughanHankelFourier.centeredBetaPolynomial A ξ).re * truncatedDensity A ξ)| ≤
        4 * B0 A / (Real.pi * bandwidth A * truncation A)

theorem strict_upper_of_truncated_smoothing_upper (K A : ℝ) (hA : 1 ≤ A)
    (hG : smoothedInterior A ≤ K) (hTrunc : TruncationDiscrepancy A) :
    strictColumnInterior A ≤ K + 1 := by
  have hfinite := (abs_le.mp (sourcePairing_triangular_discrepancy A hA)).2
  have htrunc := (abs_le.mp hTrunc).2
  have hbudget := adaptive_budget A hA
  rw [strictInterior_eq_pairing A hA]
  unfold smoothedInterior at hG
  unfold discrepancy at hbudget
  linarith

/-- The conditional analytic branch has one unit smoothing loss and the same radius endpoint. -/
theorem residual_tail_of_truncated_smoothing_upper (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → smoothedInterior A ≤ K)
    (hTrunc : ∀ A : ℝ, R ≤ A → TruncationDiscrepancy A) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ K + 1 + endpointBudget R + C_F := by
  apply SourceEndpointRadiusConsumer.residual_tail_of_strictColumnInterior_tail (K + 1) R hR
  intro A hRA
  exact strict_upper_of_truncated_smoothing_upper K A (hR.trans hRA)
    (hG A hRA) (hTrunc A hRA)

theorem estimate_of_truncated_smoothing_upper (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → smoothedInterior A ≤ K)
    (hTrunc : ∀ A : ℝ, R ≤ A → TruncationDiscrepancy A) :
    CorrelationAssembly.EstimateObligation := by
  apply SourceEndpointRadiusConsumer.estimate_of_strictColumnInterior_tail
    (max 0 (K + 1)) R (le_max_left _ _) hR
  intro A hRA
  exact (strict_upper_of_truncated_smoothing_upper K A (hR.trans hRA)
    (hG A hRA) (hTrunc A hRA)).trans (le_max_right _ _)

end
end FormalResearch.RiemannHypothesis.SourceEndpointRadiusTriangularFollowthrough
```
