# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicSafeShiftEnvelopeControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfbd1403a646cdb4138f0f5cf9bf5c84b8eba07d` · SHA-256 `5651f977aa24f446f55049f720ca675359e935c31ae83c2bf33972e77cb1ec3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftEnvelope
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftEnvelopeControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem plus_block_has_source_envelope (z : ZeroPoint) (j : ℕ) :
    ‖safePlusDyadicBlock z j‖ ≤ safeDyadicEnergyEnvelope z j :=
  safePlusDyadicBlock_norm_le z j

theorem minus_block_has_source_envelope (z : ZeroPoint) (j : ℕ) :
    ‖safeMinusDyadicBlock z j‖ ≤ safeDyadicEnergyEnvelope z j :=
  safeMinusDyadicBlock_norm_le z j

end GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftEnvelopeControls
```
