# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Semilat.Variant41192f042c4bc8b20811d3387a976493d3b34e7dd40d47412e12d9b31002dd80

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `392c83b403efb5972b65a3654ae3cfc976c5bf88` · SHA-256 `a3a4f4a5008f94b3e7823297d79885e22b6ac562badff239db7170de0d518d5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SemilatSupCat.Variantb521c654daff6edacf46cdf7337c3fd330681a301682cff1746eb7ade4223059","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b521c654daff6edacf46cdf7337c3fd330681a301682cff1746eb7ade4223059","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.SemilatSupCat.Variantb521c654daff6edacf46cdf7337c3fd330681a301682cff1746eb7ade4223059","mathematical_subject":"Algebra.OrderTheory","original_sha256":"b521c654daff6edacf46cdf7337c3fd330681a301682cff1746eb7ade4223059","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Category/Semilat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Order.Category.PartOrd
public import Mathlib.Order.Hom.BoundedLattice

/-!
# The categories of semilattices

This defines `SemilatSupCat` and `SemilatInfCat`, the categories of sup-semilattices with a bottom
element and inf-semilattices with a top element.

## References

* [nLab, *semilattice*](https://ncatlab.org/nlab/show/semilattice)
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SemilatSupCat.Variantb521c654daff6edacf46cdf7337c3fd330681a301682cff1746eb7ade4223059

@[expose] public section


universe u

open CategoryTheory

/-- The category of sup-semilattices with a bottom element. -/
structure SemilatSupCat : Type (u + 1) where
  /-- Construct a bundled `SemilatSupCat` from a `SemilatticeSup`. -/
  of ::
  /-- The underlying type of a sup-semilattice with a bottom element. -/
  protected X : Type u
  [isSemilatticeSup : SemilatticeSup X]
  [isOrderBot : OrderBot.{u} X]

/-- The category of inf-semilattices with a top element. -/
structure SemilatInfCat : Type (u + 1) where
  /-- Construct a bundled `SemilatInfCat` from a `SemilatticeInf`. -/
  of ::
  /-- The underlying type of an inf-semilattice with a top element. -/
  protected X : Type u
  [isSemilatticeInf : SemilatticeInf X]
  [isOrderTop : OrderTop.{u} X]

namespace SemilatSupCat

open Lean.PrettyPrinter.Delaborator in
/-- This prints `SemilatSupCat.of X` as `↧X`. -/
@[app_delab SemilatSupCat.of]
meta def delabOf : Delab := CategoryTheory.delabOf

instance : CoeSort SemilatSupCat Type* :=
  ⟨SemilatSupCat.X⟩

attribute [instance] isSemilatticeSup isOrderBot

theorem coe_of (α : Type*) [SemilatticeSup α] [OrderBot α] : ↥(of α) = α :=
  rfl

instance : Inhabited SemilatSupCat :=
  ⟨of PUnit⟩

instance : LargeCategory.{u} SemilatSupCat where
  Hom X Y := SupBotHom X Y
  id X := SupBotHom.id X
  comp f g := g.comp f
  id_comp := SupBotHom.comp_id
  comp_id := SupBotHom.id_comp
  assoc _ _ _ := SupBotHom.comp_assoc _ _ _

instance : ConcreteCategory SemilatSupCat (SupBotHom · ·) where
  hom f := f
  ofHom f := f

instance hasForgetToPartOrd : HasForget₂ SemilatSupCat PartOrd where
  forget₂.obj X := ↧X
  forget₂.map f := PartOrd.ofHom ⟨f.toSupHom, OrderHomClass.mono f.toSupHom⟩

@[simp]
theorem coe_forget_to_partOrd (X : SemilatSupCat) :
    ↥((forget₂ SemilatSupCat PartOrd).obj X) = ↥X :=
  rfl

end SemilatSupCat

namespace SemilatInfCat

open Lean.PrettyPrinter.Delaborator in
/-- This prints `SemilatInfCat.of X` as `↧X`. -/
@[app_delab SemilatInfCat.of]
meta def delabOf : Delab := CategoryTheory.delabOf

instance : CoeSort SemilatInfCat Type* :=
  ⟨SemilatInfCat.X⟩

attribute [instance] isSemilatticeInf isOrderTop

theorem coe_of (α : Type*) [SemilatticeInf α] [OrderTop α] : ↥(of α) = α :=
  rfl

instance : Inhabited SemilatInfCat :=
  ⟨of PUnit⟩

instance : LargeCategory.{u} SemilatInfCat where
  Hom X Y := InfTopHom X Y
  id X := InfTopHom.id X
  comp f g := g.comp f
  id_comp := InfTopHom.comp_id
  comp_id := InfTopHom.id_comp
  assoc _ _ _ := InfTopHom.comp_assoc _ _ _

instance : ConcreteCategory SemilatInfCat (InfTopHom · ·) where
  hom f := f
  ofHom f := f

instance hasForgetToPartOrd : HasForget₂ SemilatInfCat PartOrd where
  forget₂.obj X := ↧X
  forget₂.map f := PartOrd.ofHom ⟨f.toInfHom, OrderHomClass.mono f.toInfHom⟩

@[simp]
theorem coe_forget_to_partOrd (X : SemilatInfCat) :
    ↥((forget₂ SemilatInfCat PartOrd).obj X) = ↥X :=
  rfl

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

/-- `OrderDual` as a functor. -/
@[simps map]
def dual : SemilatSupCat ⥤ SemilatInfCat where
  obj X := ↧Xᵒᵈ
  map {_ _} := SupBotHom.dual

end SemilatSupCat

namespace SemilatInfCat

/-- Constructs an isomorphism of lattices from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : SemilatInfCat.{u}} (e : α ≃o β) : α ≅ β where
  hom := (e : InfTopHom _ _)
  inv := (e.symm : InfTopHom _ _)
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _

/-- `OrderDual` as a functor. -/
@[simps]
def dual : SemilatInfCat ⥤ SemilatSupCat where
  obj X := ↧Xᵒᵈ
  map {_ _} := InfTopHom.dual

end SemilatInfCat

/-- The equivalence between `SemilatSupCat` and `SemilatInfCat` induced by `OrderDual` both ways. -/
@[simps functor inverse]
def SemilatSupCatEquivSemilatInfCat : SemilatSupCat ≌ SemilatInfCat where
  functor := SemilatSupCat.dual
  inverse := SemilatInfCat.dual
  unitIso := NatIso.ofComponents fun X => SemilatSupCat.Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => SemilatInfCat.Iso.mk <| OrderIso.dualDual X

theorem SemilatSupCat_dual_comp_forget_to_partOrd :
    SemilatSupCat.dual ⋙ forget₂ SemilatInfCat PartOrd =
      forget₂ SemilatSupCat PartOrd ⋙ PartOrd.dual :=
  rfl

theorem SemilatInfCat_dual_comp_forget_to_partOrd :
    SemilatInfCat.dual ⋙ forget₂ SemilatSupCat PartOrd =
      forget₂ SemilatInfCat PartOrd ⋙ PartOrd.dual :=
  rfl
```
