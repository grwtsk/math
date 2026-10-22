/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerShiftCorrelationReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerShiftCorrelationReductionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["the signed off-diagonal is exactly the sum over ordered unequal octave pairs",
   "coordinate swap makes the lower and upper triangular pair sums equal",
   "the off-diagonal is twice the upper-triangular pair correlation",
   "upper-triangular pairs are partitioned by positive lag h=q-n",
   "the admissible lag range is 1 through 2X-1",
   "each lag fiber is equivalent to left endpoints n with 2X<n<=4X-h",
   "the lag correlation is an explicit Fejer-weighted centered prime-pair sum",
   "the signed off-diagonal is twice the aggregate positive-shift correlation",
   "absolute aggregate shift control is stronger than required",
   "pointwise X^(1/2) log^4 upper control at each shift is sufficient",
   "O(X) shifts times X^(1/2) gives the target X^(3/2) exponent",
   "the target remains a half-power below trivial X^2 pair counting",
   "the exact aggregate shifted prime-pair bound remains open",
   "no threshold descent or Riemann Hypothesis result is supplied"]

def remainingArithmeticFrontier : Prop :=
  SevenEighthsBoundaryMinimalExactShiftCorrelationBound

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerShiftCorrelationReductionControls
