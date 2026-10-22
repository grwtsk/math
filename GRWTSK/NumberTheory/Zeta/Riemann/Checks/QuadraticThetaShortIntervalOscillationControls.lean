/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShortIntervalOscillation
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaShortIntervalOscillationControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["uniform shell cancellation equals control of thetaError(2u) over [2X,4X]",
   "short-interval oscillation plus anchor cancellation implies recurrence",
   "monotonicity and Chebyshev upper bounds give only O(X) oscillation",
   "at rho=7/8 the target is X^(3/4+eta/2), sublinear for eta<1/2"]

example {η : ℝ} (hη : η < (1 : ℝ) / 2) :
    quadraticThreshold ((7 : ℝ) / 8) + η / 2 < 1 :=
  sevenEighths_oscillation_exponent_lt_one hη

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaShortIntervalOscillationControls
