# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicSafeShiftQuarticFactorizationControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `001c431945965c217d0257d92f67269025723aa6` · SHA-256 `918033b2ee1db09e833834d047d80801943ba4ea9fde31916a25a3ce29d114f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftQuarticFactorization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftQuarticFactorizationControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem dyadic_axial_coefficient_nonnegative (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeAxialDyadicQuarticCoefficient z j :=
  safeAxialDyadicQuarticCoefficient_nonnegative z j

theorem dyadic_transverse_coefficient_nonnegative (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeTransverseDyadicQuarticCoefficient z j :=
  safeTransverseDyadicQuarticCoefficient_nonnegative z j

end GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftQuarticFactorizationControls
```
