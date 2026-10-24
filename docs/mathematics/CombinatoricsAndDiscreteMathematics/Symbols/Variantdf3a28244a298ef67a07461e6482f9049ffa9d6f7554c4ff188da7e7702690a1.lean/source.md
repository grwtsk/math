# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Symbols.Variantdf3a28244a298ef67a07461e6482f9049ffa9d6f7554c4ff188da7e7702690a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc928d6b13444ba8023a135a91ad5804215dfe18` · SHA-256 `df3a28244a298ef67a07461e6482f9049ffa9d6f7554c4ff188da7e7702690a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Hannah Fechtner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Hannah Fechtner
-/

import Mathlib.Algebra.FreeMonoid.Basic
import Mathlib.Data.Finset.Lattice.Lemmas

/-!
# The finite set of symbols in a FreeMonoid element

This is separated from the main FreeMonoid file, as it imports the finiteness hierarchy
-/

variable {α : Type*} [DecidableEq α]

namespace FreeMonoid

/-- the set of unique symbols in a free monoid element -/
@[to_additive "The set of unique symbols in an additive free monoid element"]
def symbols (a : FreeMonoid α) : Finset α := List.toFinset a

@[to_additive (attr := simp)]
theorem symbols_one : symbols (1 : FreeMonoid α) = ∅ := rfl

@[to_additive (attr := simp)]
theorem symbols_of {m : α} : symbols (of m) = {m} := rfl

@[to_additive (attr := simp)]
theorem symbols_mul {a b : FreeMonoid α} : symbols (a * b) = symbols a ∪ symbols b := by
  simp only [symbols, List.mem_toFinset, Finset.mem_union]
  apply List.toFinset_append

@[to_additive (attr := simp)]
theorem mem_symbols {m : α} {a : FreeMonoid α} : m ∈ symbols a ↔ m ∈ a :=
  List.mem_toFinset

end FreeMonoid
```
