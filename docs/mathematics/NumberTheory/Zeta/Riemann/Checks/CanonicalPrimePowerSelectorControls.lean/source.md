# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CanonicalPrimePowerSelectorControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6a0d5fe090af8d85f31f7e0cdf986ad6de5ae57` · SHA-256 `cecae641b93de4a98093f0c886adb54f5dc75caa6467e93265c609c0d2e074ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerSelector
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.CanonicalPrimePowerSelectorControls

open GRWTSK.RiemannHypothesis

/-- The first canonical event is at least two and is an actual prime power. -/
theorem first_event_is_prime_power :
    IsPrimePow (canonicalPrimePowerValueSequence 0) :=
  canonicalPrimePowerValueSequence_isPrimePow 0

/-- Every adjacent pair is strictly increasing. -/
theorem selector_never_repeats (n : ℕ) :
    canonicalPrimePowerValueSequence n ≠
      canonicalPrimePowerValueSequence (n + 1) :=
  ne_of_lt (canonicalPrimePowerValueSequence_strict n)

/-- A hypothetical prime power between adjacent selected values cannot lie
strictly below the successor. -/
theorem selector_has_no_skipped_value
    (n q : ℕ)
    (hl : canonicalPrimePowerValueSequence n < q)
    (hq : IsPrimePow q) :
    canonicalPrimePowerValueSequence (n + 1) ≤ q :=
  canonicalPrimePowerValueSequence_next_le n q hl hq

end GRWTSK.RiemannHypothesis.Checks.CanonicalPrimePowerSelectorControls
```
