/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularHarmonicTail
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularHarmonicTailControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["triangular tail modeled by pointwise leakage O((X/N)/d)",
   "summing over lattice distance costs harmonic(X)",
   "harmonic(X) <= 1+log X",
   "balanced N~X^(1/3) keeps tail power at 2/3 up to logs",
   "actual pointwise kernel leakage theorem remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularHarmonicTailControls
