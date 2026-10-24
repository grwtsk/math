# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SafeShiftQuarticFactorizationControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fb9e42ae6e64d200a5ee9c450eaba52c8f6abed` · SHA-256 `5e2057595fc1082316d3bca368f77c321651a25d9baf8b03070c3720d3aad0d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticFactorization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftQuarticFactorizationControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem axial_coefficient_positive_semidefinite
    (z : ZeroPoint) (n : ℕ) :
    0 ≤ safeAxialQuarticCoefficient z n :=
  safeAxialQuarticCoefficient_nonnegative z n

theorem transverse_coefficient_positive_semidefinite
    (z : ZeroPoint) (n : ℕ) :
    0 ≤ safeTransverseQuarticCoefficient z n :=
  safeTransverseQuarticCoefficient_nonnegative z n

end GRWTSK.RiemannHypothesis.Checks.SafeShiftQuarticFactorizationControls
```
