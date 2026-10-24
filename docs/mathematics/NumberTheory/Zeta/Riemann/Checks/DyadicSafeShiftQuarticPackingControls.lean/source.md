# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicSafeShiftQuarticPackingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b42273b69990ba21391cc23a5d6f2d89ccc890f` · SHA-256 `500d708dc8ccf6f75613c048501e8a3f5d9ed89b62e0277b675e7f1c69291285`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftQuarticPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftQuarticPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem dyadic_quartic_positive (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeQuarticDyadicPackingValue z j :=
  safeQuarticDyadicPackingValue_nonnegative z j

theorem dyadic_quartic_has_green_envelope (z : ZeroPoint) (j : ℕ) :
    safeQuarticDyadicPackingValue z j ≤
      148 * safeDyadicEnvelopePairProduct z j :=
  safeQuarticDyadicPackingValue_le_greenEnvelope z j

end GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftQuarticPackingControls
```
