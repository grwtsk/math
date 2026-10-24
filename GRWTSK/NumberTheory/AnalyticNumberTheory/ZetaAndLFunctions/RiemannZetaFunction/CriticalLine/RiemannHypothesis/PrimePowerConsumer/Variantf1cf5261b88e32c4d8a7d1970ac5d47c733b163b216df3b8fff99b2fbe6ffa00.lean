import FormalResearch.RiemannHypothesis.SourcePrimePowerPartition
import FormalResearch.RiemannHypothesis.SourceHigherPrimePowerStorage
import FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction

/-!
# Polynomial source control retains the square main term

The existing exact prime-power partition is consumed directly. Its uniformly
bounded replacement error permits polynomial transfer in both directions;
the actual signed first-prime term plus the square main term is retained.
No bound on that signed term is supplied.

Source: audited RH conversation Batches 01, 04 and 25. Human programme and
direction: grwtsk contributors. Local consumer implementation: OpenAI Codex.
Existing formal declarations retain their qualified repository identities.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.PrimePowerConsumer

open FormalResearch.RiemannHypothesis.SourcePrimePowerPartition
open FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimatePrimeSmoothDefect EstimateMertensResidual PolynomialMertensReduction

noncomputable section

/-- The first prime with square main in this module, with the following exact parameterization.

def firstPrimeWithSquareMain (A : ℝ) : ℝ := firstPrimeMoment A + diagonalMainCoefficient A * A
-/
def firstPrimeWithSquareMain (A : ℝ) : ℝ :=
  firstPrimeMoment A + diagonalMainCoefficient A * A

/-- A constant error is an admissible linear error on the original domain. -/
theorem polynomial_upper_iff_of_bounded_error {f g : ℝ → ℝ} {E : ℝ}
    (hE : 0 ≤ E) (herr : ∀ A : ℝ, 1 ≤ A → |f A - g A| ≤ E) :
    EventuallyPolynomialUpper f ↔ EventuallyPolynomialUpper g := by
  have hlin (A : ℝ) (hA : 1 ≤ A) : E ≤ E * A := by nlinarith
  constructor
  · apply polynomial_upper_transfer hE
    intro A hA
    have h := (abs_le.mp (herr A hA)).1
    linarith [hlin A hA]
  · apply polynomial_upper_transfer hE
    intro A hA
    have h := (abs_le.mp (herr A hA)).2
    linarith [hlin A hA]

/-- Exact partition and existing uniform replacement estimates identify the
remaining signed polynomial target. This is an equivalence, not its proof. -/
theorem source_polynomial_iff_firstPrimeWithSquareMain :
    EventuallyPolynomialUpper closedPrimeMoment ↔
      EventuallyPolynomialUpper firstPrimeWithSquareMain := by
  obtain ⟨E, hE, herr⟩ := residual_firstPrime_uniform_replacement_error
  apply polynomial_upper_iff_of_bounded_error hE
  intro A hA
  simpa only [firstPrimeWithSquareMain, mertensResidual_eq_closedPrimeMoment A hA]
    using herr A hA

/-- The signed Mertens integral and the retained first-prime/square target
are two exact access routes to the same eventual polynomial obligation. -/
theorem signedMertens_iff_firstPrimeWithSquareMain :
    EventuallyPolynomialUpper actualMertensIntegral ↔
      EventuallyPolynomialUpper firstPrimeWithSquareMain :=
  source_polynomial_upper_iff_mertens.symm.trans
    source_polynomial_iff_firstPrimeWithSquareMain

end
end GRWTSK.RiemannHypothesis.Conversation.PrimePowerConsumer
