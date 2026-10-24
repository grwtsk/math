# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeFrequency.Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `659cd2eb2dc2a953e6afb9a0153a773be555475c` · SHA-256 `3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Card
import Noeoueue.Memory.TypeGraph

namespace Noeoueue.TypeMemory

inductive FrequencyStatus | exact | rounded | residual | unknown
  deriving DecidableEq, Repr

/-- `type-memory://noeoueue/prime-frequency@1` -/
def incidenceCount {alpha} [DecidableEq alpha] (edges : Finset (TheoremHyperedge alpha))
    (t : alpha) : Nat := (edges.filter fun h => t ∈ h.statementSupport).card

def exactAt (theoremCount assignedPrime observed : Nat) : Prop :=
  assignedPrime * observed = theoremCount

theorem failed_target_is_residual {n p c : Nat} (h : p * c ≠ n) : Not (exactAt n p c) := h

end Noeoueue.TypeMemory
```
