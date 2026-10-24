# Complete source: GRWTSK.NumberTheory.FirstPrime

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb8fb85c1d6a7d74aded94f1127cd5af8420dce5` · SHA-256 `436e96d07490a3251683045a1f4929a1df5eca692fb411c87fe527d71b2a0d9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Nat.Prime.Basic

namespace GRWTSK.NumberTheory

-- Prepared user-supplied fixture only; not an accepted or freshly replayed artifact.
theorem two_is_first_prime :
    Nat.Prime 2 ∧
    ∀ p : ℕ, Nat.Prime p → 2 ≤ p := by
  exact ⟨Nat.prime_two, fun _ hp => hp.two_le⟩

end GRWTSK.NumberTheory
```
