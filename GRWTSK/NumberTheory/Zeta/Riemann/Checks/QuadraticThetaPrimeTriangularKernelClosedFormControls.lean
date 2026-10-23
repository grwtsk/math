/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularKernelClosedForm
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularKernelClosedFormControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["unit exponential phase cancels with its conjugate",
   "off-boundary geometric-block sine-norm claim is discharged",
   "symmetric triangular kernel sine-squared closed form is discharged",
   "explicit 1/(4*N*t^2) pointwise decay claim is discharged",
   "next frontier is propagation from kernel decay to the prime-prefix smoothing/tail claim"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularKernelClosedFormControls
