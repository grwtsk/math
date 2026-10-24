/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerOffDiagonalReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerOffDiagonalReductionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["the cyclic sharp indicator lies in the unit interval",
   "the nonnegative mass-one period-4X Fejer smoothing lies in the unit interval",
   "the arithmetic Fejer prefix weight lies in the unit interval",
   "each weighted prime-discrepancy atom is bounded by 1+log(4X)",
   "the diagonal correlation is bounded by 2X(1+log(4X))^2",
   "on dyadic scales the diagonal is at most 200 X^(3/2) log(X)^4",
   "the exact correlation is diagonal plus signed off-diagonal",
   "absolute off-diagonal control is sufficient but stronger than required",
   "a signed off-diagonal X^(3/2) log(X)^4 upper bound implies the exact correlation theorem",
   "the signed off-diagonal theorem then implies the seven-eighths partial-prime target",
   "the signed off-diagonal arithmetic bound remains open",
   "no threshold descent or Riemann Hypothesis result is supplied"]

theorem diagonalTargetClosed
    (j m : ℕ)
    (hm0 : 2 * GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy.dyadicScale j ≤ m)
    (hm1 : m ≤ 4 * GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy.dyadicScale j) :
    nonAliasingFejerQuadraticDiagonal
        (GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy.dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m
      ≤
    200 *
      Real.rpow
        (GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy.dyadicScale j : ℝ)
        ((3 : ℝ) / 2) *
      (Real.log
        (GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy.dyadicScale j : ℝ))^4 :=
  sevenEighthsBoundaryMinimalFejerQuadraticDiagonal_le_exactTarget
    j m hm0 hm1

theorem signedOffDiagonalSuffices :
    SevenEighthsBoundaryMinimalExactOffDiagonalBound →
      SevenEighthsBoundaryMinimalExactCorrelationBound :=
  signedOffDiagonalBound_to_exactCorrelationBound

def remainingArithmeticFrontier : Prop :=
  SevenEighthsBoundaryMinimalExactOffDiagonalBound

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerOffDiagonalReductionControls
