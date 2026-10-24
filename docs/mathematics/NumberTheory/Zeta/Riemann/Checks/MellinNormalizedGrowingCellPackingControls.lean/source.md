# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.MellinNormalizedGrowingCellPackingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82b35bd9073a033f7092897816856457861953a2` · SHA-256 `a46b2f671cd933c5bc3e81deb82e6ec02c33c29d2fac588dcb838c899bb04370`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedGrowingCellPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.MellinNormalizedGrowingCellPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem growing_stage_nonnegative (z : ZeroPoint) (N : ℕ) :
    0 ≤ safeActionCumulativeValue z N :=
  safeActionCumulativeValue_nonnegative z N

theorem growing_stage_monotone (z : ZeroPoint) :
    Monotone (safeActionCumulativeValue z) :=
  safeActionCumulativeValue_mono z

end GRWTSK.RiemannHypothesis.Checks.MellinNormalizedGrowingCellPackingControls
```
