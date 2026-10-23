/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFiniteDistanceRegrouping
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFiniteDistanceRegroupingControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["residue sum is regrouped exactly by cyclic distance",
   "each distance fiber contributes at most four d times the norm sample",
   "zero-distance term vanishes",
   "grouped Icc[0,2X] sum equals the factor-four positive first moment",
   "CyclicDistanceWeightedKernelPairingClaim is discharged",
   "corrected factor-four L1 and arithmetic Fejer comparisons are source-proved"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFiniteDistanceRegroupingControls
