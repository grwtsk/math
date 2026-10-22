/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerArithmeticReductionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["sharp and smoothed discrepancies use the same arithmetic atom",
   "exact sharp-minus-smoothed error is an atom times weight-error sum",
   "safe atom envelope is 1+log(4X)",
   "arithmetic error reduces to universal L1 step-smoothing error",
   "remaining supplier is purely combinatorial L1 first-moment bound"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerArithmeticReductionControls
