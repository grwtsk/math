# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CanonicalPrimePowerPackingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea80d6dbed326f4ab462ef7e0f9b8192a6c164a1` · SHA-256 `5376c11c299dbb5a59b8e1d53d06252c45867238d5be4a5c427b593a8378f093`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.CanonicalPrimePowerPackingControls

open GRWTSK.RiemannHypothesis

theorem concrete_stage_nonnegative (n : ℕ) :
    0 ≤ canonicalPrimePowerPackingSequence.valueAt n :=
  canonicalPrimePowerPackingSequence.valueAt_nonnegative n

theorem concrete_schedule_strict (n : ℕ) :
    canonicalPrimePowerPackingSequence.source n <
      canonicalPrimePowerPackingSequence.source (n + 1) :=
  canonicalPrimePowerPackingSequence.source_strict n

end GRWTSK.RiemannHypothesis.Checks.CanonicalPrimePowerPackingControls
```
