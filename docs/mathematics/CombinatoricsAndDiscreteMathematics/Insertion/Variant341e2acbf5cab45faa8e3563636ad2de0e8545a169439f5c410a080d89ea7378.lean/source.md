# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Insertion.Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2383114b7a26d538f551ce33a06e2c37392a07c5` · SHA-256 `341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Cut

/-!
# One-prime insertion primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure PrimeInsertionEdge
    (U : FinitePrimeHorizon) where
  source : PrimeCut U
  prime : U.Prime
  prime_not_mem : prime ∉ source

def PrimeInsertionEdge.target
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    PrimeCut U :=
  insert e.prime e.source

theorem PrimeInsertionEdge.source_subset_target
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    e.source ⊆ e.target := by
  intro p hp
  exact Finset.mem_insert_of_mem hp

@[simp]
theorem PrimeInsertionEdge.prime_mem_target
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    e.prime ∈ e.target := by
  simp [PrimeInsertionEdge.target]

@[simp]
theorem PrimeInsertionEdge.target_card
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    e.target.card = e.source.card + 1 := by
  simp [
    PrimeInsertionEdge.target,
    e.prime_not_mem
  ]

end Mathematics.SemiLocalDefect.SoninCore
```
