/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularSampledKernel
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularSampledKernelControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["explicit non-existential 1/(4*N*t^2) kernel decay is exposed",
   "sampled kernel uses natural 1/X convolution normalization",
   "for 1<=d<=X/2 sampled kernel is <= X/(4*N*d^2)",
   "square-decay is stronger than the earlier harmonic-tail heuristic",
   "remaining arithmetic step is identification of prime-prefix smoothing error with sampled-kernel tail"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularSampledKernelControls
