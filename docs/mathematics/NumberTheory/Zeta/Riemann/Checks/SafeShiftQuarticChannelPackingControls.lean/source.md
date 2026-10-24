# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SafeShiftQuarticChannelPackingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36beae081b577ed237deb69ce176dfa3fa00c398` · SHA-256 `c61747b3f9b17c143c152edba0055e0790518f667a798156f6beb99e1058e3e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticChannelPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftQuarticChannelPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem structured_source_is_positive (z : ZeroPoint) (n : ℕ) :
    0 ≤ safeQuarticStructuredPackingValue z n :=
  safeQuarticStructuredPackingValue_nonnegative z n

theorem transverse_channel_dies_at_zero_height
    (z : ZeroPoint) (n : ℕ) (ht : z.1.im = 0) :
    (safeTransversePackingSequence z).valueAt n = 0 :=
  safeTransversePacking_valueAt_eq_zero_of_im_zero z n ht

end GRWTSK.RiemannHypothesis.Checks.SafeShiftQuarticChannelPackingControls
```
