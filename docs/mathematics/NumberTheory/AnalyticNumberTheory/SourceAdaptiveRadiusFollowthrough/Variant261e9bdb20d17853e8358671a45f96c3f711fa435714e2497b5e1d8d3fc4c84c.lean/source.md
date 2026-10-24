# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceAdaptiveRadiusFollowthrough.Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4133179390da606d4781d086820764f73d4f496` · SHA-256 `261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceAdaptiveTriangularConsumer
import SourceEndpointRadiusConsumer

/-! Fixed-radius application of the literal finite triangular half-unit adapter.
The truncated Fourier smoothing contract retains its additional analytic premise.
Research direction: grwtsk contributors. Formal follow-through: OpenAI Codex. -/
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
```
