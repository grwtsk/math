# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicGreenCoordinateNecessaryDecayControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83c2b9780f7fc8f1778194a23e7e996c4f27ac84` · SHA-256 `3b131e5bcab145cd4e8ef9f8143850fc0831a03622595d8781492dcfcf814f21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenCoordinateNecessaryDecay
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenCoordinateNecessaryDecayControls

open GRWTSK.RiemannHypothesis

def firstNecessaryChannels : List String :=
  ["mass0", "mass1", "k=-1 weighted DFT", "k=+1 weighted DFT"]

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenCoordinateNecessaryDecayControls
```
