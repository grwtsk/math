/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyNecessaryCancellation
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyNecessaryCancellationControls

def hardPrimeChannels : List String :=
  ["sum log(p)/p - log 2",
   "(theta(2X)-theta(X))/X - 1",
   "k=-1 prime weighted DFT coordinate",
   "k=+1 prime weighted DFT coordinate"]

end GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyNecessaryCancellationControls
