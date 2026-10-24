# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceGammaRetainedMomentConsequences.Variantaf2fb57313cd2aa1b094900f6e4a8496dcd2dac7a71b00dbb8d48798015d47d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b580a9952f778b55720faa64f441ae32f6262db1` · SHA-256 `af2fb57313cd2aa1b094900f6e4a8496dcd2dac7a71b00dbb8d48798015d47d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualSmoothingArithmeticAttempt

/-!
Retain the actual positive gamma boundary in the signed moment consumer.
The supplied fixed real J remains unrestricted. The original real prefix
and the actual common radius are preserved, without any additional cost.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceGammaRetainedMomentConsequences
open SourceActualSmoothingArithmeticAttempt SourceActualClosedXiSignedMoment
open SourceLeadingCesaroPropagation SourceLeadingTailBudget RH16ResumeBudget
open RH16ResumeApplication SourcePositiveSampling SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization

/-- The full gamma boundary improves the prior source residual budget by seven-sixteenths. -/
theorem residual_upper_of_closed_moment (J R A : ℝ) (hR : 91 ≤ R) (hRA : R ≤ A)
    (hmoment : actualClosedXiSignedMoment A ≤ J) :
    mertensResidual A ≤ J - 13 / 16 + criticalBaselineCorrection R := by
  have hm := (actual_moment_residual_comparison A (by linarith : 40 ≤ A)).1
  have hb := criticalBaselineCorrection_antitone R A (by linarith) hRA
  linarith only [hm, hb, hmoment]

/-- Keep the actual finite prefix at the supplied real radius R. -/
theorem all_real_lower_of_closed_moment (J R : ℝ) (hR : 91 ≤ R)
    (hmoment : ∀ A : ℝ, R ≤ A → actualClosedXiSignedMoment A ≤ J) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (J - 13 / 16 + criticalBaselineCorrection R)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail
    (J - 13 / 16 + criticalBaselineCorrection R) R (by linarith)
  intro A hRA
  exact residual_upper_of_closed_moment J R A hR hRA (hmoment A hRA)

/-- Instantiate the same explicit original-prefix minimum. -/
theorem estimate_of_closed_moment (J R : ℝ) (hR : 91 ≤ R)
    (hmoment : ∀ A : ℝ, R ≤ A → actualClosedXiSignedMoment A ≤ J) :
    CorrelationAssembly.EstimateObligation :=
  ⟨min (originalPrefixLower R)
      (archimedeanMultiplier 0 - 2 * (J - 13 / 16 + criticalBaselineCorrection R)),
    all_real_lower_of_closed_moment J R hR hmoment⟩

/-- The actual sharp leading transfer introduces no extra smoothing charge. -/
theorem leading_upper_of_closed_moment (J R A : ℝ) (hR : 91 ≤ R)
    (hA : max 25600 R ≤ A) (hmoment : actualClosedXiSignedMoment A ≤ J) :
    actualLeadingRenormalizedTail A ≤ J - 13 / 16 + criticalBaselineCorrection R -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  exact residual_upper_of_closed_moment J R A hR
    ((le_max_right _ _).trans hA) hmoment

theorem leading_tail_of_closed_moment (J R : ℝ) (hR : 91 ≤ R)
    (hmoment : ∀ A : ℝ, R ≤ A → actualClosedXiSignedMoment A ≤ J) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ J - 13 / 16 + criticalBaselineCorrection R -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  exact leading_upper_of_closed_moment J R A hR hA
    (hmoment A ((le_max_right _ _).trans hA))

end FormalResearch.RiemannHypothesis.SourceGammaRetainedMomentConsequences
```
