# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SafeShiftedVonMangoldtPackingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3095dbb329bf64010b21d25d716c3a4bc22090a8` · SHA-256 `f1b2e277d032a25129f925669e2c26c5bf30e55d252aafc7196a7140707b5a08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftedVonMangoldtPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftedVonMangoldtPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem safe_plus_stays_right_of_one (z : ZeroPoint) :
    1 < (safeShiftPlus z.1).re :=
  safeShiftPlus_one_lt_re z

theorem safe_minus_stays_right_of_one (z : ZeroPoint) :
    1 < (safeShiftMinus z.1).re :=
  safeShiftMinus_one_lt_re z

theorem safe_shift_packing_positive (z : ZeroPoint) (n : ℕ) :
    0 ≤ (safeShiftPackingSequence z).valueAt n :=
  safeShiftPackingSequence_valueAt_nonnegative z n

end GRWTSK.RiemannHypothesis.Checks.SafeShiftedVonMangoldtPackingControls
```
