/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFiniteOrthogonality
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFiniteOrthogonalityControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["period-4X mode ratio has full-period power one",
   "nonzero mode modulo 4X gives ratio not equal to one",
   "lattice Fourier mode equals a geometric power",
   "finite geometric sum proves nonzero mode orthogonality",
   "PeriodFourXSampledKernelMassOneClaim is discharged",
   "discrete reproduction prerequisites are now complete",
   "remaining supplier is sharp-step convolution comparison"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFiniteOrthogonalityControls
