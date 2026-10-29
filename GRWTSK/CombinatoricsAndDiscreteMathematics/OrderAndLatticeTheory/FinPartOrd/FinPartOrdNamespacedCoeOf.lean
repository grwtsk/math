-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinPartOrd.Variantd5ca80ad849d22e7a59b7c3effd0db5a1b9f27ad00cc1bdbb1c8d3062cf55cae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5ca80ad849d22e7a59b7c3effd0db5a1b9f27ad00cc1bdbb1c8d3062cf55cae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.FinPartOrd.Variantd5ca80ad849d22e7a59b7c3effd0db5a1b9f27ad00cc1bdbb1c8d3062cf55cae","mathematical_subject":"Algebra.OrderTheory","original_sha256":"d5ca80ad849d22e7a59b7c3effd0db5a1b9f27ad00cc1bdbb1c8d3062cf55cae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Category/FinPartOrd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.CategoryTheory.FintypeCat
import Mathlib.Order.Category.PartOrdCat


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinPartOrd.Variantd5ca80ad849d22e7a59b7c3effd0db5a1b9f27ad00cc1bdbb1c8d3062cf55cae

#align_import order.category.FinPartOrd from "leanprover-community/mathlib"@"937b1c59c58710ef8ed91f8727ef402d49d621a2"

/-!
# The category of finite partial orders

This defines `FinPartOrd`, the category of finite partial orders.

Note: `FinPartOrd` is *not* a subcategory of `BddOrd` because finite orders are not necessarily
bounded.

## TODO

`FinPartOrd` is equivalent to a small category.
-/


universe u v

open CategoryTheory

set_option linter.uppercaseLean3 false -- `FinPartOrd`

/-- The category of finite partial orders with monotone functions. -/
structure FinPartOrd where
  toPartOrdCat : PartOrdCat
  [isFintype : Fintype toPartOrdCat]
#align FinPartOrd FinPartOrd

namespace FinPartOrd

instance : CoeSort FinPartOrd (Type*) :=
  ⟨fun X => X.toPartOrdCat⟩

instance (X : FinPartOrd) : PartialOrder X :=
  X.toPartOrdCat.str

attribute [instance] FinPartOrd.isFintype

-- synTaut
#noalign FinPartOrd.coe_to_PartOrd

/-- Construct a bundled `FinPartOrd` from `PartialOrder` + `Fintype`. -/
def of (α : Type*) [PartialOrder α] [Fintype α] : FinPartOrd :=
  ⟨⟨α, inferInstance⟩⟩
#align FinPartOrd.of FinPartOrd.of

@[simp]
theorem coe_of (α : Type*) [PartialOrder α] [Fintype α] : ↥(of α) = α := rfl
#align FinPartOrd.coe_of FinPartOrd.coe_of

instance : Inhabited FinPartOrd :=
  ⟨of PUnit⟩

instance largeCategory : LargeCategory FinPartOrd :=
  InducedCategory.category FinPartOrd.toPartOrdCat
#align FinPartOrd.large_category FinPartOrd.largeCategory

instance concreteCategory : ConcreteCategory FinPartOrd :=
  InducedCategory.concreteCategory FinPartOrd.toPartOrdCat
#align FinPartOrd.concrete_category FinPartOrd.concreteCategory

instance hasForgetToPartOrdCat : HasForget₂ FinPartOrd PartOrdCat :=
  InducedCategory.hasForget₂ FinPartOrd.toPartOrdCat
#align FinPartOrd.has_forget_to_PartOrd FinPartOrd.hasForgetToPartOrdCat

instance hasForgetToFintype : HasForget₂ FinPartOrd FintypeCat where
  forget₂ :=
    { obj := fun X => ⟨X, inferInstance⟩
      -- Porting note: Originally `map := fun X Y => coeFn`
      map := fun {X Y} (f : OrderHom X Y) => ⇑f }
#align FinPartOrd.has_forget_to_Fintype FinPartOrd.hasForgetToFintype

/-- Constructs an isomorphism of finite partial orders from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : FinPartOrd.{u}} (e : α ≃o β) : α ≅ β where
  hom := (e : OrderHom _ _)
  inv := (e.symm : OrderHom _ _)
  hom_inv_id := by
    ext
    exact e.symm_apply_apply _
  inv_hom_id := by
    ext
    exact e.apply_symm_apply _
#align FinPartOrd.iso.mk FinPartOrd.Iso.mk

/-- `OrderDual` as a functor. -/
@[simps]
def dual : FinPartOrd ⥤ FinPartOrd where
  obj X := of Xᵒᵈ
  map {X Y} := OrderHom.dual
#align FinPartOrd.dual FinPartOrd.dual

/-- The equivalence between `FinPartOrd` and itself induced by `OrderDual` both ways. -/
@[simps! functor inverse]
def dualEquiv : FinPartOrd ≌ FinPartOrd :=
  CategoryTheory.Equivalence.mk dual dual
    (NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X)
    (NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X)
#align FinPartOrd.dual_equiv FinPartOrd.dualEquiv

end FinPartOrd

theorem FinPartOrd_dual_comp_forget_to_partOrdCat :
    FinPartOrd.dual ⋙ forget₂ FinPartOrd PartOrdCat =
      forget₂ FinPartOrd PartOrdCat ⋙ PartOrdCat.dual := rfl
#align FinPartOrd_dual_comp_forget_to_PartOrd FinPartOrd_dual_comp_forget_to_partOrdCat
