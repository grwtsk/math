# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BoolRingCat.Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8906c365cf1b2b38748009ff9e30f4fcc3e0f0f` · SHA-256 `5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Category.Ring.Basic
import Mathlib.Algebra.Ring.BooleanRing
import Mathlib.Order.Category.BoolAlgCat

#align_import algebra.category.BoolRing from "leanprover-community/mathlib"@"67779f73e572fd1fec2218648b2078d167d16c0a"

/-!
# The category of Boolean rings

This file defines `BoolRingCat`, the category of Boolean rings.

## TODO

Finish the equivalence with `BoolAlgCat`.
-/

set_option linter.uppercaseLean3 false

universe u

open CategoryTheory Order

/-- The category of Boolean rings. -/
def BoolRingCat :=
  Bundled BooleanRing
#align BoolRing BoolRingCat

namespace BoolRingCat

instance : CoeSort BoolRingCat (Type*) :=
  Bundled.coeSort

instance (X : BoolRingCat) : BooleanRing X :=
  X.str

/-- Construct a bundled `BoolRingCat` from a `BooleanRing`. -/
def of (α : Type*) [BooleanRing α] : BoolRingCat :=
  Bundled.of α
#align BoolRing.of BoolRingCat.of

@[simp]
theorem coe_of (α : Type*) [BooleanRing α] : ↥(of α) = α :=
  rfl
#align BoolRing.coe_of BoolRingCat.coe_of

instance : Inhabited BoolRingCat :=
  ⟨of PUnit⟩

instance : BundledHom.ParentProjection @BooleanRing.toCommRing :=
  ⟨⟩

-- Porting note: `deriving` `ConcreteCategory` failed, added it manually
-- see https://github.com/leanprover-community/mathlib4/issues/5020
deriving instance LargeCategory for BoolRingCat

instance : ConcreteCategory BoolRingCat := by
  dsimp [BoolRingCat]
  infer_instance

-- Porting note: disabled `simps`
--   Invalid simp lemma BoolRingCat.hasForgetToCommRing_forget₂_obj_str_add.
--   The given definition is not a constructor application:
--     inferInstance.1
-- @[simps]
instance hasForgetToCommRing : HasForget₂ BoolRingCat CommRingCat :=
  BundledHom.forget₂ _ _
#align BoolRing.has_forget_to_CommRing BoolRingCat.hasForgetToCommRing

/-- Constructs an isomorphism of Boolean rings from a ring isomorphism between them. -/
@[simps]
def Iso.mk {α β : BoolRingCat.{u}} (e : α ≃+* β) : α ≅ β where
  hom := (e : RingHom _ _)
  inv := (e.symm : RingHom _ _)
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _
#align BoolRing.iso.mk BoolRingCat.Iso.mk

end BoolRingCat

/-! ### Equivalence between `BoolAlgCat` and `BoolRingCat` -/

@[simps]
instance BoolRingCat.hasForgetToBoolAlgCat : HasForget₂ BoolRingCat BoolAlgCat where
  forget₂ :=
    { obj := fun X => BoolAlgCat.of (AsBoolAlg X)
      map := fun {X Y} => RingHom.asBoolAlg }
#align BoolRing.has_forget_to_BoolAlg BoolRingCat.hasForgetToBoolAlgCat

-- Porting note: Added. somehow it does not find this instance.
instance {X : BoolAlgCat} :
    BooleanAlgebra ↑(BddDistLatCat.toBddLat (X.toBddDistLatCat)).toLat :=
  BoolAlgCat.instBooleanAlgebra _

@[simps]
instance BoolAlgCat.hasForgetToBoolRingCat : HasForget₂ BoolAlgCat BoolRingCat where
  forget₂ :=
    { obj := fun X => BoolRingCat.of (AsBoolRing X)
      map := fun {X Y} => BoundedLatticeHom.asBoolRing }
#align BoolAlg.has_forget_to_BoolRingCat BoolAlgCat.hasForgetToBoolRingCat

/-- The equivalence between Boolean rings and Boolean algebras. This is actually an isomorphism. -/
@[simps functor inverse]
def boolRingCatEquivBoolAlgCat : BoolRingCat ≌ BoolAlgCat where
  functor := forget₂ BoolRingCat BoolAlgCat
  inverse := forget₂ BoolAlgCat BoolRingCat
  unitIso := NatIso.ofComponents (fun X => BoolRingCat.Iso.mk <|
    (RingEquiv.asBoolRingAsBoolAlg X).symm) fun {X Y} f => rfl
  counitIso := NatIso.ofComponents (fun X => BoolAlgCat.Iso.mk <|
    OrderIso.asBoolAlgAsBoolRing X) fun {X Y} f => rfl
#align BoolRing_equiv_BoolAlg boolRingCatEquivBoolAlgCat
```
