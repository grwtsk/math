/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicConvexContraction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicConvexContractionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["range-form kernel mass one is transferred to the ZMod Fintype sum",
   "shifted kernel mass is exactly one",
   "kernel nonnegativity gives a pointwise convex-combination error bound",
   "full L1 contraction is reduced to one double-sum reindexing identity",
   "interval translation cardinality remains separately open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicConvexContractionControls
