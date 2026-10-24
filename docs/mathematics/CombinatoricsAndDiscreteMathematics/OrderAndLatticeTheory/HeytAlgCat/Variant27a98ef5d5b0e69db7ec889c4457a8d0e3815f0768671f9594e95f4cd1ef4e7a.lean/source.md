# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.HeytAlgCat.Variant27a98ef5d5b0e69db7ec889c4457a8d0e3815f0768671f9594e95f4cd1ef4e7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `236043eb7b093547a1277f59c68f015c020bc949` · SHA-256 `27a98ef5d5b0e69db7ec889c4457a8d0e3815f0768671f9594e95f4cd1ef4e7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.Category.BddDistLatCat
import Mathlib.Order.Heyting.Hom

#align_import order.category.HeytAlg from "leanprover-community/mathlib"@"e8ac6315bcfcbaf2d19a046719c3b553206dac75"

/-!
# The category of Heyting algebras

This file defines `HeytAlg`, the category of Heyting algebras.
-/

set_option linter.uppercaseLean3 false

universe u

open CategoryTheory Opposite Order

/-- The category of Heyting algebras. -/
def HeytAlgCat :=
  Bundled HeytingAlgebra
#align HeytAlg HeytAlgCat

namespace HeytAlgCat

instance : CoeSort HeytAlgCat (Type*) :=
  Bundled.coeSort

instance (X : HeytAlgCat) : HeytingAlgebra X :=
  X.str

/-- Construct a bundled `HeytAlgCat` from a `HeytingAlgebra`. -/
def of (α : Type*) [HeytingAlgebra α] : HeytAlgCat :=
  Bundled.of α
#align HeytAlg.of HeytAlgCat.of

@[simp]
theorem coe_of (α : Type*) [HeytingAlgebra α] : ↥(of α) = α :=
  rfl
#align HeytAlg.coe_of HeytAlgCat.coe_of

instance : Inhabited HeytAlgCat :=
  ⟨of PUnit⟩

instance bundledHom : BundledHom HeytingHom where
  toFun α β [HeytingAlgebra α] [HeytingAlgebra β] := (FunLike.coe : HeytingHom α β → α → β)
  id := @HeytingHom.id
  comp := @HeytingHom.comp
  hom_ext α β [HeytingAlgebra α] [HeytingAlgebra β] := FunLike.coe_injective
#align HeytAlg.bundled_hom HeytAlgCat.bundledHom

deriving instance LargeCategory for HeytAlgCat

-- Porting note: deriving failed.
-- see https://github.com/leanprover-community/mathlib4/issues/5020
instance : ConcreteCategory HeytAlgCat := by
  dsimp [HeytAlgCat]
  infer_instance

-- Porting note: No idea why it does not find this instance...
instance {X Y : HeytAlgCat.{u}} : HeytingHomClass (X ⟶ Y) ↑X ↑Y :=
  HeytingHom.instHeytingHomClass

@[simps]
instance hasForgetToLat : HasForget₂ HeytAlgCat BddDistLatCat where
  forget₂ :=
    { obj := fun X => BddDistLatCat.of X
      map := fun {X Y} f => (f : BoundedLatticeHom X Y) }
#align HeytAlg.has_forget_to_Lat HeytAlgCat.hasForgetToLat

/-- Constructs an isomorphism of Heyting algebras from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : HeytAlgCat.{u}} (e : α ≃o β) : α ≅ β where
  hom := (e : HeytingHom _ _)
  inv := (e.symm : HeytingHom _ _)
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _
#align HeytAlg.iso.mk HeytAlgCat.Iso.mk

end HeytAlgCat
```
