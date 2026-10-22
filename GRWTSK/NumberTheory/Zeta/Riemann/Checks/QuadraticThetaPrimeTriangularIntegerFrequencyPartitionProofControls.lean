/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProof
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProofControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["Icc(-N,N) support partition is source-proved",
   "assembled frequency sum equals symmetric triangular kernel",
   "symmetric triangular kernel autocorrelation claim is discharged",
   "remaining kernel frontier is off-boundary sine conversion"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProofControls
