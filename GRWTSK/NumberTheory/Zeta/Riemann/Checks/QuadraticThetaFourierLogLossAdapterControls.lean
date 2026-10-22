/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierLogLossAdapter
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaFourierLogLossAdapterControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["fixed log^2 maximal loss is absorbed by eta-slack",
   "only the power exponent matters for the graded recurrence",
   "at rho=7/8 it suffices to prove X^(3/4)*(log X)^2 oscillation",
   "no logarithmic-loss maximal estimate is supplied"]

example :
    quadraticThreshold ((7 : ℝ) / 8) = (3 : ℝ) / 4 :=
  sevenEighths_logSqOscillation_power

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaFourierLogLossAdapterControls
