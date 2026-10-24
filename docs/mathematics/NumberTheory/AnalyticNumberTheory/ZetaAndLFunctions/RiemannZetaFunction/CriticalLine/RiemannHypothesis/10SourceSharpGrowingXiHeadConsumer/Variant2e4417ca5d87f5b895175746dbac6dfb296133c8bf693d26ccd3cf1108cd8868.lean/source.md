# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.10SourceSharpGrowingXiHeadConsumer.Variant2e4417ca5d87f5b895175746dbac6dfb296133c8bf693d26ccd3cf1108cd8868

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1deb462b0f729dcc72cc9d131e0fdca2b5e977b` · SHA-256 `2e4417ca5d87f5b895175746dbac6dfb296133c8bf693d26ccd3cf1108cd8868`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceSharpXiHeadEnvelope
import SourceExactHeadTailConsumer

/-! Complete original source consequences of the improved actual head cost.
Direction and conceptual origin: grwtsk contributors.
Source consequence composition and formalization: OpenAI Codex assistance.
The original remaining seven-anchored signed tail still needs a uniform witness. -/
set_option autoImplicit false
noncomputable section
namespace RH16SharpGrowingXiHeadConsumer
open RH16SharpXiHeadEnvelope RH16ExactHeadTail RH16GrowingXiHead
open RH16CompleteXiTail RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourceLeadingCesaroPropagation
open FormalResearch.RiemannHypothesis.SourceLeadingTailBudget
open FormalResearch.RiemannHypothesis SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

theorem residual_upper_of_sharp_growing_tail (K Q A : ℝ) (hQ : 91 ≤ Q) (hA : Q ≤ A)
    (htail : -K ≤ growingXiTail A) :
    mertensResidual A ≤ exactHeadResidualBudget (K + sharpGrowingXiHeadCost Q) Q :=
  residual_upper_of_exact_head_tail _ Q A hQ hA
    (RH16SharpXiHeadEnvelope.completeXiTail_lower_of_growing_tail hQ hA htail)

theorem all_real_lower_of_sharp_growing_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ growingXiTail A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower Q)
        (archimedeanMultiplier 0 -
          2 * exactHeadResidualBudget (K + sharpGrowingXiHeadCost Q) Q) ≤
            sourceQuadraticValue explicitSecondDerivative A :=
  all_real_lower_of_exact_head_tail _ Q hQ
    (fun A hA => RH16SharpXiHeadEnvelope.completeXiTail_lower_of_growing_tail hQ hA (htail A hA))

theorem estimate_of_sharp_growing_tail (K Q : ℝ) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ growingXiTail A) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, all_real_lower_of_sharp_growing_tail K Q hQ htail⟩

theorem leading_upper_of_sharp_growing_tail (K Q A : ℝ) (hQ : 91 ≤ Q)
    (hA : max 25600 Q ≤ A) (htail : -K ≤ growingXiTail A) :
    actualLeadingRenormalizedTail A ≤
      exactHeadResidualBudget (K + sharpGrowingXiHeadCost Q) Q -
        (riemannZeta (1 / 2)).re + 3103 / 50 :=
  leading_upper_of_exact_head_tail _ Q A hQ hA
    (RH16SharpXiHeadEnvelope.completeXiTail_lower_of_growing_tail hQ
      ((le_max_right _ _).trans hA) htail)

end RH16SharpGrowingXiHeadConsumer
```
