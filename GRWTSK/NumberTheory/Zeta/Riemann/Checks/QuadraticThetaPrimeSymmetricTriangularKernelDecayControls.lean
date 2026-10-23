/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernelDecay
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeSymmetricTriangularKernelDecayControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["Jordan inequality gives |sin(pi t)| >= 2|t| on |t|<=1/2",
   "closed sine-squared kernel form implies O(1/(N t^2)) decay",
   "pointwise decay is therefore not independent once closed form is proved",
   "remaining analytic theorem is the finite symmetric-sum closed form"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeSymmetricTriangularKernelDecayControls
