/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFirstMomentHarmonic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFirstMomentHarmonicControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["finite reciprocal sum is identified exactly with harmonic(2X)",
   "harmonic_le_one_add_log closes the logarithmic summation loss",
   "NonAliasingFejerFirstMomentHarmonicBoundClaim is discharged",
   "full first-moment budget has X/N times two logarithmic factors",
   "remaining theorem is only the sharp-step convolution comparison"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFirstMomentHarmonicControls
