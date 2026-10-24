# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SemilatCat.Variantf4150144eca6c79b51dc1135289adbc5646bd3d5788ca1c4bef986bd0dc1e1ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39c9d27a31023fb9134faa49f8bf9969e6d5f7f8` · SHA-256 `10f58e559be3eb1bd4465205f24cef8e669870288ca51c97b79800a10f00b5ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SemilatSupCat.Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.SemilatSupCat.Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164","mathematical_subject":"Algebra.OrderTheory","original_sha256":"181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Category/SemilatCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.Category.PartOrdCat
import Mathlib.Order.Hom.Lattice


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SemilatSupCat.Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164

#align_import order.category.Semilat from "leanprover-community/mathlib"@"e8ac6315bcfcbaf2d19a046719c3b553206dac75"

/-!
# The categories of semilattices

This defines `SemilatSupCat` and `SemilatInfCat`, the categories of sup-semilattices with a bottom
element and inf-semilattices with a top element.

## References

* [nLab, *semilattice*](https://ncatlab.org/nlab/show/semilattice)
-/

set_option linter.uppercaseLean3 false

universe u

open CategoryTheory

/-- The category of sup-semilattices with a bottom element. -/
structure SemilatSupCat : Type (u + 1) where
  protected X : Type u
  [isSemilatticeSup : SemilatticeSup X]
  [isOrderBot : OrderBot.{u} X]
#align SemilatSup SemilatSupCat

/-- The category of inf-semilattices with a top element. -/
structure SemilatInfCat : Type (u + 1) where
  protected X : Type u
  [isSemilatticeInf : SemilatticeInf X]
  [isOrderTop : OrderTop.{u} X]
#align SemilatInf SemilatInfCat

namespace SemilatSupCat

instance : CoeSort SemilatSupCat (Type*) :=
  ⟨SemilatSupCat.X⟩

attribute [instance] isSemilatticeSup isOrderBot

/-- Construct a bundled `SemilatSupCat` from a `SemilatticeSup`. -/
def of (α : Type*) [SemilatticeSup α] [OrderBot α] : SemilatSupCat :=
  ⟨α⟩
#align SemilatSup.of SemilatSupCat.of

@[simp]
theorem coe_of (α : Type*) [SemilatticeSup α] [OrderBot α] : ↥(of α) = α :=
  rfl
#align SemilatSup.coe_of SemilatSupCat.coe_of

instance : Inhabited SemilatSupCat :=
  ⟨of PUnit⟩

instance : LargeCategory.{u} SemilatSupCat where
  Hom X Y := SupBotHom X Y
  id X := SupBotHom.id X
  comp f g := g.comp f
  id_comp := SupBotHom.comp_id
  comp_id := SupBotHom.id_comp
  assoc _ _ _ := SupBotHom.comp_assoc _ _ _

-- Porting note: added
-- see https://github.com/leanprover-community/mathlib4/issues/5017
instance instFunLike (X Y : SemilatSupCat) : FunLike (X ⟶ Y) X (fun _ => Y) :=
  show FunLike (SupBotHom X Y) X (fun _ => Y) from inferInstance

instance : ConcreteCategory SemilatSupCat where
  forget :=
    { obj := SemilatSupCat.X
      map := FunLike.coe }
  forget_faithful := ⟨(FunLike.coe_injective ·)⟩

instance hasForgetToPartOrd : HasForget₂ SemilatSupCat PartOrdCat where
  forget₂ :=
    -- Porting note: was ⟨X⟩, see https://github.com/leanprover-community/mathlib4/issues/4998
    { obj := fun X => {α := X}
      -- Porting note: was `map := fun f => f`
      map := fun f => ⟨f.toSupHom, OrderHomClass.mono f.toSupHom⟩ }
#align SemilatSup.has_forget_to_PartOrd SemilatSupCat.hasForgetToPartOrd

@[simp]
theorem coe_forget_to_partOrdCat (X : SemilatSupCat) :
    ↥((forget₂ SemilatSupCat PartOrdCat).obj X) = ↥X :=
  rfl
#align SemilatSup.coe_forget_to_PartOrd SemilatSupCat.coe_forget_to_partOrdCat

end SemilatSupCat

namespace SemilatInfCat

instance : CoeSort SemilatInfCat (Type*) :=
  ⟨SemilatInfCat.X⟩

attribute [instance] isSemilatticeInf isOrderTop

/-- Construct a bundled `SemilatInfCat` from a `SemilatticeInf`. -/
def of (α : Type*) [SemilatticeInf α] [OrderTop α] : SemilatInfCat :=
  ⟨α⟩
#align SemilatInf.of SemilatInfCat.of

@[simp]
theorem coe_of (α : Type*) [SemilatticeInf α] [OrderTop α] : ↥(of α) = α :=
  rfl
#align SemilatInf.coe_of SemilatInfCat.coe_of

instance : Inhabited SemilatInfCat :=
  ⟨of PUnit⟩

instance : LargeCategory.{u} SemilatInfCat where
  Hom X Y := InfTopHom X Y
  id X := InfTopHom.id X
  comp f g := g.comp f
  id_comp := InfTopHom.comp_id
  comp_id := InfTopHom.id_comp
  assoc _ _ _ := InfTopHom.comp_assoc _ _ _

-- Porting note: added
instance instFunLike (X Y : SemilatInfCat) : FunLike (X ⟶ Y) X (fun _ => Y) :=
  show FunLike (InfTopHom X Y) X (fun _ => Y) from inferInstance

instance : ConcreteCategory SemilatInfCat where
  forget :=
    { obj := SemilatInfCat.X
      map := FunLike.coe }
  forget_faithful := ⟨(FunLike.coe_injective ·)⟩

instance hasForgetToPartOrd : HasForget₂ SemilatInfCat PartOrdCat where
  forget₂ :=
    { obj := fun X => ⟨X, inferInstance⟩
      -- Porting note: was `map := fun f => f`
      map := fun f => ⟨f.toInfHom, OrderHomClass.mono f.toInfHom⟩ }
#align SemilatInf.has_forget_to_PartOrd SemilatInfCat.hasForgetToPartOrd

@[simp]
theorem coe_forget_to_partOrdCat (X : SemilatInfCat) :
    ↥((forget₂ SemilatInfCat PartOrdCat).obj X) = ↥X :=
  rfl
#align SemilatInf.coe_forget_to_PartOrd SemilatInfCat.coe_forget_to_partOrdCat

end SemilatInfCat

/-! ### Order dual -/

namespace SemilatSupCat

/-- Constructs an isomorphism of lattices from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : SemilatSupCat.{u}} (e : α ≃o β) : α ≅ β where
  hom := (e : SupBotHom _ _)
  inv := (e.symm : SupBotHom _ _)
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _
#align SemilatSup.iso.mk SemilatSupCat.Iso.mk

/-- `OrderDual` as a functor. -/
@[simps]
def dual : SemilatSupCat ⥤ SemilatInfCat where
  obj X := SemilatInfCat.of Xᵒᵈ
  map {X Y} := SupBotHom.dual
#align SemilatSup.dual SemilatSupCat.dual

end SemilatSupCat

namespace SemilatInfCat

/-- Constructs an isomorphism of lattices from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : SemilatInfCat.{u}} (e : α ≃o β) : α ≅ β where
  hom := (e : InfTopHom _ _)
  inv := (e.symm :  InfTopHom _ _)
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _
#align SemilatInf.iso.mk SemilatInfCat.Iso.mk

/-- `OrderDual` as a functor. -/
@[simps]
def dual : SemilatInfCat ⥤ SemilatSupCat where
  obj X := SemilatSupCat.of Xᵒᵈ
  map {X Y} := InfTopHom.dual
#align SemilatInf.dual SemilatInfCat.dual

end SemilatInfCat

/-- The equivalence between `SemilatSupCat` and `SemilatInfCat` induced by `OrderDual` both ways. -/
@[simps functor inverse]
def SemilatSupCatEquivSemilatInfCat : SemilatSupCat ≌ SemilatInfCat where
  functor := SemilatSupCat.dual
  inverse := SemilatInfCat.dual
  unitIso := NatIso.ofComponents fun X => SemilatSupCat.Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => SemilatInfCat.Iso.mk <| OrderIso.dualDual X
#align SemilatSup_equiv_SemilatInf SemilatSupCatEquivSemilatInfCat

theorem SemilatSupCat_dual_comp_forget_to_partOrdCat :
    SemilatSupCat.dual ⋙ forget₂ SemilatInfCat PartOrdCat =
      forget₂ SemilatSupCat PartOrdCat ⋙ PartOrdCat.dual :=
  rfl
#align SemilatSup_dual_comp_forget_to_PartOrd SemilatSupCat_dual_comp_forget_to_partOrdCat

theorem SemilatInfCat_dual_comp_forget_to_partOrdCat :
    SemilatInfCat.dual ⋙ forget₂ SemilatSupCat PartOrdCat =
      forget₂ SemilatInfCat PartOrdCat ⋙ PartOrdCat.dual :=
  rfl
#align SemilatInf_dual_comp_forget_to_PartOrd SemilatInfCat_dual_comp_forget_to_partOrdCat
```
