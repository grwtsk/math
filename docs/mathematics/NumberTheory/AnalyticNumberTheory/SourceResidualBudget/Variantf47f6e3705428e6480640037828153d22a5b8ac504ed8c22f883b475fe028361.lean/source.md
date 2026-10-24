# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceResidualBudget.Variantf47f6e3705428e6480640037828153d22a5b8ac504ed8c22f883b475fe028361

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `812f3a5ea64673208389ace825ca8c389700ca6d` · SHA-256 `f47f6e3705428e6480640037828153d22a5b8ac504ed8c22f883b475fe028361`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
Exact source residual budgets through the original finite prime prefix.
The prime-two and smooth terms cancel by the proved exact prime moment identity.
No residual bound witness is supplied. Research direction: grwtsk contributors.
Formal construction and mathematical challenge: OpenAI Codex.
-/

set_option autoImplicit false

namespace RH16ResumeBudget

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimateTailReduction

noncomputable section

theorem sourceQuadraticValue_eq_archimedean_sub_two_residual
    (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A - 2 * mertensResidual A := by
  unfold sourceQuadraticValue
  rw [EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA,
    ← mertensResidual_eq_closedPrimeMoment A hA]

theorem source_lower_of_residual_upper (A M : ℝ) (hA : 1 ≤ A)
    (hres : mertensResidual A ≤ M) :
    archimedeanMultiplier 0 - 2 * M ≤ sourceQuadraticValue explicitSecondDerivative A := by
  rw [sourceQuadraticValue_eq_archimedean_sub_two_residual A hA]
  have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
  linarith

/-- The finite prefix is the literal strict prime inventory; no continuity is assumed. -/
def originalPrefixLower (R : ℝ) : ℝ :=
  archimedeanMultiplier 0 -
    2 * ∑ n ∈ primeIndices R, |ArithmeticFunction.vonMangoldt n / Real.sqrt n|

theorem originalPrefixLower_le_source (R A : ℝ) (hA : 1 ≤ A) (hAR : A ≤ R) :
    originalPrefixLower R ≤ sourceQuadraticValue explicitSecondDerivative A := by
  have hp := prime_contribution_le_finite_budget A R hA hAR
  have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
  unfold originalPrefixLower sourceQuadraticValue
  linarith

/-- The stated minimum is an explicit all-real witness conditional on the supplied tail. -/
theorem all_real_source_lower_of_residual_tail (M R : ℝ) (_hR : 1 ≤ R)
    (hres : ∀ A : ℝ, R ≤ A → mertensResidual A ≤ M) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R) (archimedeanMultiplier 0 - 2 * M) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · exact (min_le_right _ _).trans (source_lower_of_residual_upper A M hA (hres A hRA))
  · exact (min_le_left _ _).trans
      (originalPrefixLower_le_source R A hA (le_of_lt (lt_of_not_ge hRA)))

theorem estimate_of_residual_tail_direct (M R : ℝ) (hR : 1 ≤ R)
    (hres : ∀ A : ℝ, R ≤ A → mertensResidual A ≤ M) :
    CorrelationAssembly.EstimateObligation :=
  ⟨min (originalPrefixLower R) (archimedeanMultiplier 0 - 2 * M),
    all_real_source_lower_of_residual_tail M R hR hres⟩

end
end RH16ResumeBudget
```
