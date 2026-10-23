/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicConvolutionModel
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicConvolutionModelControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["residue zero is explicitly identified with arithmetic endpoint 4X",
   "cyclic sharp prefix indicator is defined exactly on ZMod(4X)",
   "period-4X Fejer convolution is defined on the full cyclic group",
   "full-cycle L1 error and translation L1 error are explicit",
   "remaining proof splits into arithmetic restriction, convex-combination reduction, and interval translation count"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicConvolutionModelControls
