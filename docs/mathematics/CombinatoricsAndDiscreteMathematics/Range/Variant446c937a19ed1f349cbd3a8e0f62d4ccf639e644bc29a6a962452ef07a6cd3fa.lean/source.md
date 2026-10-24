# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variant446c937a19ed1f349cbd3a8e0f62d4ccf639e644bc29a6a962452ef07a6cd3fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d66687e8c2b20d4a0e4cc34da3d6770c604ddce` · SHA-256 `446c937a19ed1f349cbd3a8e0f62d4ccf639e644bc29a6a962452ef07a6cd3fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Minchao Wu, Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.Embedding
public import Mathlib.Algebra.Group.Nat.Defs
public import Mathlib.Data.Finset.Image

/-!
# `Finset.range` and addition of natural numbers
-/

public section
assert_not_exists MonoidWithZero MulAction IsOrderedMonoid

variable {α β : Type*}

namespace Finset

theorem disjoint_range_addLeftEmbedding (a : ℕ) (s : Finset ℕ) :
    Disjoint (range a) (map (addLeftEmbedding a) s) := by
  simp_rw [disjoint_left, mem_map, mem_range, addLeftEmbedding_apply]
  rintro _ h ⟨l, -, rfl⟩
  lia

theorem disjoint_range_addRightEmbedding (a : ℕ) (s : Finset ℕ) :
    Disjoint (range a) (map (addRightEmbedding a) s) := by
  rw [← addLeftEmbedding_eq_addRightEmbedding]
  apply disjoint_range_addLeftEmbedding

theorem range_add (a b : ℕ) : range (a + b) = range a ∪ (range b).map (addLeftEmbedding a) := by
  rw [← val_inj, union_val]
  exact Multiset.range_add_eq_union a b

end Finset
```
