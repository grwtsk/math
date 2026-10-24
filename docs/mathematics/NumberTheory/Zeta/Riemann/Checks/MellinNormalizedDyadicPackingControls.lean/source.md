# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.MellinNormalizedDyadicPackingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba2c52fdd438c118dc49f82a6686cce457a80802` · SHA-256 `e266c6606e189ee49eb3e606d49d3dec9f1b5cf4d9f7ede9bf3b851fac6175da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedDyadicPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.MellinNormalizedDyadicPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem normalized_action_is_uniformly_bounded
    (z : ZeroPoint) (j : ℕ) :
    ‖safePlusDyadicAction z j‖ ≤ safeChebyshevActionConstant z :=
  safePlusDyadicAction_norm_le z j

theorem normalized_quartic_is_positive
    (z : ZeroPoint) (j : ℕ) :
    0 ≤ safeQuarticDyadicActionValue z j :=
  safeQuarticDyadicActionValue_nonnegative z j

end GRWTSK.RiemannHypothesis.Checks.MellinNormalizedDyadicPackingControls
```
