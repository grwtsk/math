# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant0929a115e5dd395dd2906ca5cee582f5ff924bc18c0e32c5186d9a5b01667eef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e608d780ef6964b026b11db56b4a32c73095090` · SHA-256 `0929a115e5dd395dd2906ca5cee582f5ff924bc18c0e32c5186d9a5b01667eef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.TypeTags.Basic
public import Mathlib.Basic.Finite.Defs
public import Mathlib.Data.Fintype.Card

/-!
# `Finite`, `Infinite` and `Fintype` are preserved by `Additive` and `Multiplicative`.
-/

public section

assert_not_exists MonoidWithZero MulAction

universe u

variable {α : Type u}

instance [Finite α] : Finite (Additive α) :=
  Finite.of_equiv α (by rfl)

instance [Finite α] : Finite (Multiplicative α) :=
  Finite.of_equiv α (by rfl)

instance [h : Infinite α] : Infinite (Additive α) := h

instance [h : Infinite α] : Infinite (Multiplicative α) := h

instance Additive.fintype : ∀ [Fintype α], Fintype (Additive α) :=
  Fintype.ofEquiv α Additive.ofMul

instance Multiplicative.fintype : ∀ [Fintype α], Fintype (Multiplicative α) :=
  Fintype.ofEquiv α Multiplicative.ofAdd

@[simp] lemma Fintype.card_multiplicative (α : Type*) [Fintype α] :
    card (Multiplicative α) = card α := Finset.card_map _

@[simp] lemma Fintype.card_additive (α : Type*) [Fintype α] : card (Additive α) = card α :=
  Finset.card_map _
```
