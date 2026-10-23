/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernel
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeSymmetricTriangularKernelControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["correct Fejer-type profile is symmetric in integer frequencies",
   "weight is 1-|k|/N for |k|<N and zero outside",
   "the previous one-sided profile is the nonnegative restriction",
   "explicit symmetric trigonometric polynomial is now defined",
   "closed form and off-boundary decay remain open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeSymmetricTriangularKernelControls
