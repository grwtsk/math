# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLat.Variant23d483a09857e73083f321d35190c032d0d70060732a3cf6f11b9ec5989fef42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bdbae6c01df8fa1a2d6e2b74b9cb8c52deceb82` · SHA-256 `23d483a09857e73083f321d35190c032d0d70060732a3cf6f11b9ec5989fef42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.Category.BddLat
import Mathlib.Order.Hom.CompleteLattice

/-!
# The category of complete lattices

This file defines `CompleteLat`, the category of complete lattices.
-/


universe u

open CategoryTheory

/-- The category of complete lattices. -/
structure CompleteLat where
  /-- The underlying lattice. -/
  (carrier : Type*)
  [str : CompleteLattice carrier]

attribute [instance] CompleteLat.str

initialize_simps_projections CompleteLat (carrier → coe, -str)

namespace CompleteLat

instance : CoeSort CompleteLat (Type _) :=
  ⟨CompleteLat.carrier⟩

attribute [coe] CompleteLat.carrier

/-- Construct a bundled `CompleteLat` from the underlying type and typeclass. -/
abbrev of (X : Type*) [CompleteLattice X] : CompleteLat := ⟨X⟩

theorem coe_of (α : Type*) [CompleteLattice α] : ↥(of α) = α :=
  rfl

instance : Inhabited CompleteLat :=
  ⟨of PUnit⟩

instance : LargeCategory.{u} CompleteLat where
  Hom X Y := CompleteLatticeHom X Y
  id X := CompleteLatticeHom.id X
  comp f g := g.comp f

instance : ConcreteCategory CompleteLat (CompleteLatticeHom · ·) where
  hom f := f
  ofHom f := f

instance hasForgetToBddLat : HasForget₂ CompleteLat BddLat where
  forget₂.obj X := .of X
  forget₂.map f := BddLat.ofHom (CompleteLatticeHom.toBoundedLatticeHom f)

/-- Constructs an isomorphism of complete lattices from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : CompleteLat.{u}} (e : α ≃o β) : α ≅ β where
  hom := ConcreteCategory.ofHom e
  inv := ConcreteCategory.ofHom e.symm
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _

/-- `OrderDual` as a functor. -/
@[simps map]
def dual : CompleteLat ⥤ CompleteLat where
  obj X := of Xᵒᵈ
  map {_ _} := CompleteLatticeHom.dual

/-- The equivalence between `CompleteLat` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : CompleteLat ≌ CompleteLat where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X

end CompleteLat

theorem completeLat_dual_comp_forget_to_bddLat :
    CompleteLat.dual ⋙ forget₂ CompleteLat BddLat =
    forget₂ CompleteLat BddLat ⋙ BddLat.dual :=
  rfl
```
