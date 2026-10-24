# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeDFTSmoothingPacketControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `854ab021f4543443dedacd04d574f0435086ec0f` · SHA-256 `83edeee72841451251cddd2046e607eaa272e4214e7346356b6d03e9bb1a6bd2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
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
```
