/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicPrefixReindexing
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicPrefixReindexingControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["endpoint-aware representative recasts to the original ZMod residue",
   "sharp cyclic residues are equivalent to arithmetic q in (2X,m]",
   "cyclic convolution reindexes exactly through that equivalence",
   "ArithmeticCyclicPrefixReindexingClaim is discharged",
   "ArithmeticPrefixWeightEqualsCyclicConvolutionClaim is discharged",
   "remaining work is universal L1 contraction and translation counting"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicPrefixReindexingControls
