# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Units.Variant7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e6c91bdca5e28fb08fd8d6071e3a6fd30e746bf` · SHA-256 `7544665221c2192105811cd509bf18ef3581a2b98e22be006a93ad205257d1b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Order.Hom.Basic
import Mathlib.Order.MinMax
import Mathlib.Algebra.Group.Units.Defs

/-!
# Units in ordered monoids
-/

namespace Units

variable {α : Type*}

@[to_additive]
instance [Monoid α] [Preorder α] : Preorder αˣ :=
  Preorder.lift val

@[to_additive (attr := simp, norm_cast)]
theorem val_le_val [Monoid α] [Preorder α] {a b : αˣ} : (a : α) ≤ b ↔ a ≤ b :=
  Iff.rfl

@[to_additive (attr := simp, norm_cast)]
theorem val_lt_val [Monoid α] [Preorder α] {a b : αˣ} : (a : α) < b ↔ a < b :=
  Iff.rfl

@[to_additive]
instance instPartialOrderUnits [Monoid α] [PartialOrder α] : PartialOrder αˣ :=
  PartialOrder.lift val Units.ext

@[to_additive]
instance [Monoid α] [LinearOrder α] : LinearOrder αˣ :=
  LinearOrder.lift' val Units.ext

/-- `val : αˣ → α` as an order embedding. -/
@[to_additive (attr := simps -fullyApplied)
  "`val : add_units α → α` as an order embedding."]
def orderEmbeddingVal [Monoid α] [LinearOrder α] : αˣ ↪o α :=
  ⟨⟨val, ext⟩, Iff.rfl⟩

@[to_additive (attr := simp, norm_cast)]
theorem max_val [Monoid α] [LinearOrder α] {a b : αˣ} : (max a b).val = max a.val b.val :=
  Monotone.map_max orderEmbeddingVal.monotone

@[to_additive (attr := simp, norm_cast)]
theorem min_val [Monoid α] [LinearOrder α] {a b : αˣ} : (min a b).val = min a.val b.val :=
  Monotone.map_min orderEmbeddingVal.monotone

end Units
```
