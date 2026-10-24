# Complete source: GRWTSK.NumberTheory.Prime.Checks.Negative.LowerBoundFalse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa0dac6721444a77cd16724f6e4e0e8c1ccb2bb1` · SHA-256 `34fc91e2097ff9a73b355041b23469fdaaa350b28106bebc5c0e20eee1672c6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.FirstPrime
example : ∀ p : ℕ, Nat.Prime p → 3 ≤ p := by
  intro p hp
  exact GRWTSK.NumberTheory.two_is_first_prime.2 p hp
```
