/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenCoordinateNecessaryDecay
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenCoordinateNecessaryDecayControls

open GRWTSK.RiemannHypothesis

def firstNecessaryChannels : List String :=
  ["mass0", "mass1", "k=-1 weighted DFT", "k=+1 weighted DFT"]

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenCoordinateNecessaryDecayControls
