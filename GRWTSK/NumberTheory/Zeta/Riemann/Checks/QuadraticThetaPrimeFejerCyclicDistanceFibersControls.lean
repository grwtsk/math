/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDistanceFibers
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDistanceFibersControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["every cyclic distance modulo 4X is at most 2X",
   "a fixed distance d has only the two candidate residues d and 4X-d",
   "every cyclic-distance fiber has cardinality at most two",
   "finite pairing multiplicity is source-closed",
   "remaining pairing work is pointwise signed-kernel to norm-sample comparison plus finite regrouping"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDistanceFibersControls
