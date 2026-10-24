# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiPrimitiveConsequences.Variant9cefd6eca651c2f2718c9689f734928abe5beaa8692829ce4e718075beb19f39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `903fb762db3d66b330728cf1bf61ede572178c27` · SHA-256 `9cefd6eca651c2f2718c9689f734928abe5beaa8692829ce4e718075beb19f39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualXiPrimitiveTransport
import SourceLaterRadiusPropagation

/-!
Apply the actual signed-primitive sufficient bound to the unchanged original
source consumers. The arithmetic primitive bound remains an explicit input.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualXiPrimitiveConsequences
open MeasureTheory SourceActualXiPrimitiveTransport SourceLaterRadiusPropagation
open SourcePositiveSampling SourcePairing RH16ActualPsiNegativeBlock
open SourceFirstAtomSignedWork RH16ResumeBudget RH16ResumeApplication
open SourceLeadingTailBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

theorem contracted_lower_of_actual_primitive (H A : ℝ) (hA : 91 ≤ A)
    (hF : ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H) :
    -((11 / 2 : ℝ) * H) ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  have hH : 0 ≤ H := by
    simpa only [actualXiLogPrimitive_at_anchor, abs_zero] using hF (Real.log 2) le_rfl
  exact contracted_lower_of_actual_primitive_bound H A hH hA hF

theorem residual_upper_of_actual_primitive (H R A : ℝ) (hR : 91 ≤ R) (hA : R ≤ A)
    (hF : ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H) :
    mertensResidual A ≤ (11 / 2 : ℝ) * H - 3 / 8 + criticalBaselineCorrection R := by
  exact residual_upper_of_contracted_Xi_at_radius ((11 / 2 : ℝ) * H) R A hR hA
    (contracted_lower_of_actual_primitive H A (hR.trans hA) hF)

theorem all_real_lower_of_actual_primitive (H R : ℝ) (hR : 91 ≤ R)
    (hF : ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 -
          2 * ((11 / 2 : ℝ) * H - 3 / 8 + criticalBaselineCorrection R)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_lower_of_contracted_Xi_at_radius ((11 / 2 : ℝ) * H) R hR
  intro A hA
  exact contracted_lower_of_actual_primitive H A (hR.trans hA) hF

theorem estimate_of_actual_primitive (H R : ℝ) (hR : 91 ≤ R)
    (hF : ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H) :
    CorrelationAssembly.EstimateObligation := by
  exact estimate_of_contracted_Xi_at_radius ((11 / 2 : ℝ) * H) R hR
    (fun A hA => contracted_lower_of_actual_primitive H A (hR.trans hA) hF)

theorem leading_upper_of_actual_primitive (H R A : ℝ) (hR : 91 ≤ R)
    (hA : max 25600 R ≤ A)
    (hF : ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H) :
    actualLeadingRenormalizedTail A ≤ (11 / 2 : ℝ) * H - 3 / 8 +
      criticalBaselineCorrection R - (riemannZeta (1 / 2)).re + 3103 / 50 := by
  exact leading_upper_of_contracted_Xi_at_radius ((11 / 2 : ℝ) * H) R A hR hA
    (contracted_lower_of_actual_primitive H A
      (hR.trans ((le_max_right _ _).trans hA)) hF)

end FormalResearch.RiemannHypothesis.SourceActualXiPrimitiveConsequences
```
