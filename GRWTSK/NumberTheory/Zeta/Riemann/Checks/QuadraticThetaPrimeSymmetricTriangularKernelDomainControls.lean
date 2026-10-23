/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernelDomain
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeSymmetricTriangularKernelDomainControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["global t!=0 closed-form domain is stronger than the downstream route needs",
   "correct domain is 0<|t|<=1/2",
   "Jordan inequality proves denominator nonzero on that domain",
   "off-boundary closed form still implies the full pointwise decay claim",
   "sine conversion interface is corrected to the same domain"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeSymmetricTriangularKernelDomainControls
