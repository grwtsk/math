# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variantda1ad9f889299c84b690e7cee0058d5e7636f888a8ba3d11116344838192c2ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `196f10527e77824330cbd1c126df7a79602b4e3f` · SHA-256 `da1ad9f889299c84b690e7cee0058d5e7636f888a8ba3d11116344838192c2ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Minchao Wu, Mario Carneiro
-/
import Mathlib.Algebra.Group.Embedding
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Data.Finset.Image

/-!
# `Finset.range` and addition of natural numbers
-/
assert_not_exists MonoidWithZero MulAction OrderedCommMonoid

variable {α β γ : Type*}

namespace Finset

theorem disjoint_range_addLeftEmbedding (a : ℕ) (s : Finset ℕ) :
    Disjoint (range a) (map (addLeftEmbedding a) s) := by
  simp_rw [disjoint_left, mem_map, mem_range, addLeftEmbedding_apply]
  rintro _ h ⟨l, -, rfl⟩
  omega

theorem disjoint_range_addRightEmbedding (a : ℕ) (s : Finset ℕ) :
    Disjoint (range a) (map (addRightEmbedding a) s) := by
  rw [← addLeftEmbedding_eq_addRightEmbedding]
  apply disjoint_range_addLeftEmbedding

theorem range_add (a b : ℕ) : range (a + b) = range a ∪ (range b).map (addLeftEmbedding a) := by
  rw [← val_inj, union_val]
  exact Multiset.range_add_eq_union a b

end Finset
```
