/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeDFTSmoothingPacket
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeDFTSmoothingPacketControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["explicit smoothing packet requires finite cutoff",
   "coefficient L2 budget is at most linear in cutoff",
   "boundary width budget is at most inverse cutoff",
   "cutoff exponent must lie in [1/4,1/2] for the 3/4 target",
   "balanced exponent 1/3 leaves both schematic costs at 2/3",
   "constructing the actual source-faithful packet remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeDFTSmoothingPacketControls
