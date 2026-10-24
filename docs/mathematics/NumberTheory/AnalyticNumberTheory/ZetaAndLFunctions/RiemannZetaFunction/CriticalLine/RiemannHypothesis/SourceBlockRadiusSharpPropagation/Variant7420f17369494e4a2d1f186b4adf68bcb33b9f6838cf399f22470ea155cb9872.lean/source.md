# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceBlockRadiusSharpPropagation.Variant7420f17369494e4a2d1f186b4adf68bcb33b9f6838cf399f22470ea155cb9872

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c8bf482b4cdaea190f58e52b2531e22e1349b8f` · SHA-256 `7420f17369494e4a2d1f186b4adf68bcb33b9f6838cf399f22470ea155cb9872`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceRawXiBlockGain
import SourceLaterRadiusPropagation

/-!
Combine the actual block margin with the supplied later-radius signed consumer.
The complete complement input stays open. The radius R supplies both the exact
finite prefix and the antitone correction b(R); the margin is paid once.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

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
