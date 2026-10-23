/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTwoBoundary
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicTwoBoundaryControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["endpoint-aware predecessor formula is source-proved",
   "unit change support is contained in {2X+1, m+1 mod 4X}",
   "change support cardinality is at most two",
   "CyclicSharpUnitTranslationBoundClaim is discharged",
   "CyclicSharpTranslationCardinalityClaim is discharged",
   "universal cyclic smoothing combinatorics are source-complete"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicTwoBoundaryControls
