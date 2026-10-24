# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEndpointRadiusTriangularFollowthrough.Variant2befa36cc365d1778797a082bfdb01118abe3ca141c3d79b02f4ae0827a6812d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `474072eec585c8f4a4aaffef00ce633f85c54c7a` · SHA-256 `2befa36cc365d1778797a082bfdb01118abe3ca141c3d79b02f4ae0827a6812d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceAdaptiveTriangularConsumer
import SourceEndpointRadiusConsumer

/-!
Distinct followthrough of the source-matched radius endpoint consumer to the
actual signed finite triangular and explicitly conditional truncated branches.
The already proved radius envelope is reused. All source compensations remain
inside the unchanged strict/triangular/smoothed interior definitions.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

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
