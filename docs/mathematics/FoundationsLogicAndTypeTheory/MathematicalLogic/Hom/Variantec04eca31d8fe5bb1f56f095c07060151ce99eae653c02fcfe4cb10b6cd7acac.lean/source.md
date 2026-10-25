# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Hom.Variantec04eca31d8fe5bb1f56f095c07060151ce99eae653c02fcfe4cb10b6cd7acac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c663c70437522e9604f7eb02b58fba5a454c3d5f` · SHA-256 `ec04eca31d8fe5bb1f56f095c07060151ce99eae653c02fcfe4cb10b6cd7acac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Alex J. Best, Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best, Yaël Dillies
-/
module

public import Mathlib.Algebra.Order.Archimedean.Basic
public import Mathlib.Algebra.Order.Hom.Ring

/-!
# Uniqueness of ring homomorphisms to archimedean fields

There is at most one ordered ring homomorphism from a linear ordered field to an archimedean linear
ordered field. Reciprocally, such an ordered ring homomorphism exists when the codomain is further
conditionally complete.
-/

public section

assert_not_exists Finset

variable {α β : Type*} [Field α] [LinearOrder α] [Field β] [LinearOrder β]

/-- There is at most one ordered ring homomorphism from a linear ordered field to an archimedean
linear ordered field. -/
instance OrderRingHom.subsingleton [IsStrictOrderedRing β] [Archimedean β] :
    Subsingleton (α →+*o β) :=
  ⟨fun f g => by
    ext x
    by_contra h' : f x ≠ g x
    wlog h : f x < g x with h₂
    · exact h₂ g f x (Ne.symm h') (h'.lt_or_gt.resolve_left h)
    obtain ⟨q, hf, hg⟩ := exists_rat_btwn h
    rw [← map_ratCast f] at hf
    rw [← map_ratCast g] at hg
    exact
      (lt_asymm ((OrderHomClass.mono g).reflect_lt hg) <|
          (OrderHomClass.mono f).reflect_lt hf).elim⟩

/-- There is at most one ordered ring isomorphism between a linear ordered field and an archimedean
linear ordered field. -/
instance OrderRingIso.subsingleton_right [IsStrictOrderedRing β] [Archimedean β] :
    Subsingleton (α ≃+*o β) :=
  OrderRingIso.toOrderRingHom_injective.subsingleton

/-- There is at most one ordered ring isomorphism between an archimedean linear ordered field and a
linear ordered field. -/
instance OrderRingIso.subsingleton_left [IsStrictOrderedRing α] [Archimedean α] :
    Subsingleton (α ≃+*o β) :=
  OrderRingIso.symm_bijective.injective.subsingleton

theorem OrderRingHom.eq_id [IsStrictOrderedRing α] [Archimedean α] (f : α →+*o α) : f = .id _ :=
  Subsingleton.elim ..

theorem OrderRingIso.eq_refl [IsStrictOrderedRing α] [Archimedean α] (f : α ≃+*o α) : f = .refl _ :=
  Subsingleton.elim ..

theorem OrderRingHom.apply_eq_self [IsStrictOrderedRing α] [Archimedean α] (f : α →+*o α) (x : α) :
    f x = x := by
  rw [f.eq_id]; rfl

theorem OrderRingIso.apply_eq_self [IsStrictOrderedRing α] [Archimedean α] (f : α ≃+*o α) (x : α) :
    f x = x :=
  f.toOrderRingHom.apply_eq_self x
```
