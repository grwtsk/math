# Complete source: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variantdf5faf6e1ac0c72c6d01c423e1b7862ee6f28bfa5afc0e3693b439b10bf6a4fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `238d86c6b5d94c309f0c33385fb6cba9aa18f351` · SHA-256 `df5faf6e1ac0c72c6d01c423e1b7862ee6f28bfa5afc0e3693b439b10bf6a4fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
module

public import Mathlib.Algebra.Order.Monoid.Unbundled.WithTop
public import Mathlib.Algebra.Order.Monoid.Canonical.Defs

/-! # Adjoining top/bottom elements to ordered monoids.
-/

public section

universe u

variable {α : Type u}

namespace WithTop

@[to_dual]
instance [AddCommMonoid α] [PartialOrder α] [IsOrderedAddMonoid α] :
    IsOrderedAddMonoid (WithTop α) where
  add_le_add_left _ _ := add_le_add_left
  add_le_add_right _ _ := add_le_add_right

instance canonicallyOrderedAdd [Add α] [Preorder α] [CanonicallyOrderedAdd α] :
    CanonicallyOrderedAdd (WithTop α) where
  le_self_add
  | ⊤, _ => le_rfl
  | (a : α), ⊤ => le_top
  | (a : α), (b : α) => WithTop.coe_le_coe.2 le_self_add
  le_add_self
  | ⊤, ⊤ | ⊤, (b : α) => le_rfl
  | (a : α), ⊤ => le_top
  | (a : α), (b : α) => WithTop.coe_le_coe.2 le_add_self

end WithTop

namespace WithBot

protected theorem le_self_add [Add α] [LE α] [CanonicallyOrderedAdd α]
    {x : WithBot α} (hx : x ≠ ⊥) (y : WithBot α) :
    y ≤ y + x := by
  induction x
  · simp at hx
  induction y
  · simp
  · rw [← WithBot.coe_add, WithBot.coe_le_coe]
    exact le_self_add

protected theorem le_add_self [AddCommMagma α] [LE α] [CanonicallyOrderedAdd α]
    {x : WithBot α} (hx : x ≠ ⊥) (y : WithBot α) :
    y ≤ x + y := by
  induction x
  · simp at hx
  induction y
  · simp
  · rw [← WithBot.coe_add, WithBot.coe_le_coe]
    exact le_add_self

@[simp]
protected theorem top_add_of_ne_bot [PartialOrder α] [OrderTop α] [Add α] [CanonicallyOrderedAdd α]
    {a : WithBot α} (h : a ≠ ⊥) : ⊤ + a = ⊤ := by
  lift a to α using h
  exact WithBot.coe_inj.mpr (by simp [eq_top_iff])

@[simp]
protected theorem add_top_of_ne_bot [PartialOrder α] [OrderTop α] [Add α] [CanonicallyOrderedAdd α]
    {a : WithBot α} (h : a ≠ ⊥) : a + ⊤ = ⊤ := by
  lift a to α using h
  exact WithBot.coe_inj.mpr (by simp [eq_top_iff])

lemma lt_zero_iff_eq_bot {α : Type*} [AddMonoid α] [Preorder α] [CanonicallyOrderedAdd α]
    (a : WithBot α) : a < 0 ↔ a = ⊥ := by
  induction a <;> simp

end WithBot
```
