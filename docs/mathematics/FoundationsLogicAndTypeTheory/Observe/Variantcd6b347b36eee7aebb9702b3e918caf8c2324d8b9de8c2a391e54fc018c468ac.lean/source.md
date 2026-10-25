# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Observe.Variantcd6b347b36eee7aebb9702b3e918caf8c2324d8b9de8c2a391e54fc018c468ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf78313b4ea412104507de469713c34f415b3fe2` · SHA-256 `cd6b347b36eee7aebb9702b3e918caf8c2324d8b9de8c2a391e54fc018c468ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Nat.Prime.Factorial
import Mathlib.Data.Nat.Factorial.Basic

open Nat

set_option maxHeartbeats 7000 in
theorem euclid (n : ℕ) : ∃ N, n < N ∧ N.Prime := by
  let N := n.factorial + 1
  let p := minFac N
  use p
  have prime : p.Prime := by
    apply minFac_prime
    observe : n.factorial > 0
    omega
  constructor
  · by_contra!
    observe : p ∣ n.factorial
    observe : p ∣ N
    observe : p ∣ 1
    observe : ¬ p ∣ 1
    contradiction
  · exact prime
```
