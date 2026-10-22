/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerSampleNonnegative
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerSampleNonnegativeControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["autocorrelation identity makes the triangular kernel globally real/nonnegative",
   "period-4X signed lattice samples are nonnegative at every residue",
   "zero residue requires no special off-boundary argument",
   "PeriodFourXSampledKernelNonnegativeClaim is discharged",
   "discrete reproduction is reduced to mass-one only"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerSampleNonnegativeControls
