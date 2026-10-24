# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommMon.Variant1773067274926138418a0beff77222e03a30538fd7d2561741afe1ff3e04bb79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48f823a33d697a5f543af41dd85aeb731bc91df4` · SHA-256 `b4bef5a7a6259b010d9772fab2777ba1ce2ec5a9ae11e85d431512e409134c74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommMon.Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CommMon.Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"cb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/CommMon_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Braided
import Mathlib.CategoryTheory.Monoidal.Mon_


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommMon.Variantcb6f0c8dce6db99eb33320881515e82c885a1c5aafa4b2ab74badab2b1129af9

#align_import category_theory.monoidal.CommMon_ from "leanprover-community/mathlib"@"a836c6dba9bd1ee2a0cdc9af0006a596f243031c"

/-!
# The category of commutative monoids in a braided monoidal category.
-/


universe v₁ v₂ u₁ u₂ u

open CategoryTheory MonoidalCategory

variable (C : Type u₁) [Category.{v₁} C] [MonoidalCategory.{v₁} C] [BraidedCategory.{v₁} C]

/-- A commutative monoid object internal to a monoidal category.
-/
structure CommMon_ extends Mon_ C where
  mul_comm : (β_ _ _).hom ≫ mul = mul := by aesop_cat
set_option linter.uppercaseLean3 false in
#align CommMon_ CommMon_

attribute [reassoc (attr := simp)] CommMon_.mul_comm

namespace CommMon_

/-- The trivial commutative monoid object. We later show this is initial in `CommMon_ C`.
-/
@[simps!]
def trivial : CommMon_ C :=
  { Mon_.trivial C with mul_comm := by dsimp; rw [braiding_leftUnitor, unitors_equal] }
set_option linter.uppercaseLean3 false in
#align CommMon_.trivial CommMon_.trivial

instance : Inhabited (CommMon_ C) :=
  ⟨trivial C⟩

variable {C}
variable {M : CommMon_ C}

instance : Category (CommMon_ C) :=
  InducedCategory.category CommMon_.toMon_

@[simp]
theorem id_hom (A : CommMon_ C) : Mon_.Hom.hom (𝟙 A) = 𝟙 A.X :=
  rfl
set_option linter.uppercaseLean3 false in
#align CommMon_.id_hom CommMon_.id_hom

@[simp]
theorem comp_hom {R S T : CommMon_ C} (f : R ⟶ S) (g : S ⟶ T) :
    Mon_.Hom.hom (f ≫ g) = f.hom ≫ g.hom :=
  rfl
set_option linter.uppercaseLean3 false in
#align CommMon_.comp_hom CommMon_.comp_hom

-- porting note: added because `Mon_.Hom.ext` is not triggered automatically
-- for morphisms in `CommMon_ C`
-- See https://github.com/leanprover-community/mathlib4/issues/5229
@[ext]
lemma hom_ext {A B : CommMon_ C} (f g : A ⟶ B) (h : f.hom = g.hom) : f = g :=
  Mon_.Hom.ext _ _ h

-- porting note: the following two lemmas `id'` and `comp'` have been added to ease automation;
@[simp]
lemma id' (A : CommMon_ C) : (𝟙 A : A.toMon_ ⟶ A.toMon_) = 𝟙 (A.toMon_) := rfl

@[simp]
lemma comp' {A₁ A₂ A₃ : CommMon_ C} (f : A₁ ⟶ A₂) (g : A₂ ⟶ A₃) :
  ((f ≫ g : A₁ ⟶ A₃) : A₁.toMon_ ⟶ A₃.toMon_) = @CategoryStruct.comp (Mon_ C) _ _ _ _ f g := rfl

section

variable (C)

/-- The forgetful functor from commutative monoid objects to monoid objects. -/
def forget₂Mon_ : CommMon_ C ⥤ Mon_ C :=
  inducedFunctor CommMon_.toMon_
set_option linter.uppercaseLean3 false in
#align CommMon_.forget₂_Mon_ CommMon_.forget₂Mon_

-- Porting note: no delta derive handler, see https://github.com/leanprover-community/mathlib4/issues/5020
instance : Full (forget₂Mon_ C) := InducedCategory.full _
instance : Faithful (forget₂Mon_ C) := InducedCategory.faithful _

@[simp]
theorem forget₂_Mon_obj_one (A : CommMon_ C) : ((forget₂Mon_ C).obj A).one = A.one :=
  rfl
set_option linter.uppercaseLean3 false in
#align CommMon_.forget₂_Mon_obj_one CommMon_.forget₂_Mon_obj_one

@[simp]
theorem forget₂_Mon_obj_mul (A : CommMon_ C) : ((forget₂Mon_ C).obj A).mul = A.mul :=
  rfl
set_option linter.uppercaseLean3 false in
#align CommMon_.forget₂_Mon_obj_mul CommMon_.forget₂_Mon_obj_mul

@[simp]
theorem forget₂_Mon_map_hom {A B : CommMon_ C} (f : A ⟶ B) : ((forget₂Mon_ C).map f).hom = f.hom :=
  rfl
set_option linter.uppercaseLean3 false in
#align CommMon_.forget₂_Mon_map_hom CommMon_.forget₂_Mon_map_hom

end

instance uniqueHomFromTrivial (A : CommMon_ C) : Unique (trivial C ⟶ A) :=
  Mon_.uniqueHomFromTrivial A.toMon_
set_option linter.uppercaseLean3 false in
#align CommMon_.unique_hom_from_trivial CommMon_.uniqueHomFromTrivial

open CategoryTheory.Limits

instance : HasInitial (CommMon_ C) :=
  hasInitial_of_unique (trivial C)

end CommMon_

namespace CategoryTheory.LaxBraidedFunctor

variable {C} {D : Type u₂} [Category.{v₂} D] [MonoidalCategory.{v₂} D] [BraidedCategory.{v₂} D]

/-- A lax braided functor takes commutative monoid objects to commutative monoid objects.

That is, a lax braided functor `F : C ⥤ D` induces a functor `CommMon_ C ⥤ CommMon_ D`.
-/
@[simps!]
def mapCommMon (F : LaxBraidedFunctor C D) : CommMon_ C ⥤ CommMon_ D where
  obj A :=
    { F.toLaxMonoidalFunctor.mapMon.obj A.toMon_ with
      mul_comm := by
        dsimp
        have := F.braided
        slice_lhs 1 2 => rw [← this]
        slice_lhs 2 3 => rw [← CategoryTheory.Functor.map_comp, A.mul_comm] }
  map f := F.toLaxMonoidalFunctor.mapMon.map f
set_option linter.uppercaseLean3 false in
#align category_theory.lax_braided_functor.map_CommMon CategoryTheory.LaxBraidedFunctor.mapCommMon

variable (C) (D)

-- porting note: added @[simps] to ease automation
/-- `mapCommMon` is functorial in the lax braided functor. -/
@[simps]
def mapCommMonFunctor : LaxBraidedFunctor C D ⥤ CommMon_ C ⥤ CommMon_ D where
  obj := mapCommMon
  map α :=
    { app := fun A => { hom := α.app A.X }
      naturality := by intros; ext; simp }
set_option linter.uppercaseLean3 false in
#align category_theory.lax_braided_functor.map_CommMon_functor CategoryTheory.LaxBraidedFunctor.mapCommMonFunctor

end CategoryTheory.LaxBraidedFunctor

namespace CommMon_

open CategoryTheory.LaxBraidedFunctor

namespace EquivLaxBraidedFunctorPunit

/-- Implementation of `CommMon_.equivLaxBraidedFunctorPunit`. -/
@[simps]
def laxBraidedToCommMon : LaxBraidedFunctor (Discrete PUnit.{u + 1}) C ⥤ CommMon_ C where
  obj F := (F.mapCommMon : CommMon_ _ ⥤ CommMon_ C).obj (trivial (Discrete PUnit.{u+1}))
  map α := ((mapCommMonFunctor (Discrete PUnit.{u+1}) C).map α).app _
set_option linter.uppercaseLean3 false in
#align CommMon_.equiv_lax_braided_functor_punit.lax_braided_to_CommMon CommMon_.EquivLaxBraidedFunctorPunit.laxBraidedToCommMon

/-- Implementation of `CommMon_.equivLaxBraidedFunctorPunit`. -/
@[simps]
def commMonToLaxBraided : CommMon_ C ⥤ LaxBraidedFunctor (Discrete PUnit.{u + 1}) C where
  obj A :=
    { obj := fun _ => A.X
      map := fun _ => 𝟙 _
      ε := A.one
      μ := fun _ _ => A.mul
      map_id := fun _ => rfl
      map_comp := fun _ _ => (Category.id_comp (𝟙 A.X)).symm }
  map f :=
    { app := fun _ => f.hom
      naturality := fun _ _ _ => by dsimp; rw [Category.id_comp, Category.comp_id]
      unit := Mon_.Hom.one_hom f
      tensor := fun _ _ => Mon_.Hom.mul_hom f }
set_option linter.uppercaseLean3 false in
#align CommMon_.equiv_lax_braided_functor_punit.CommMon_to_lax_braided CommMon_.EquivLaxBraidedFunctorPunit.commMonToLaxBraided

/-- Implementation of `CommMon_.equivLaxBraidedFunctorPunit`. -/
@[simps!]
def unitIso :
    𝟭 (LaxBraidedFunctor (Discrete PUnit.{u + 1}) C) ≅
      laxBraidedToCommMon C ⋙ commMonToLaxBraided C :=
  NatIso.ofComponents
    (fun F =>
      LaxBraidedFunctor.mkIso
        (MonoidalNatIso.ofComponents
          (fun _ => F.toLaxMonoidalFunctor.toFunctor.mapIso (eqToIso (by ext)))
          (by rintro ⟨⟩ ⟨⟩ f; aesop_cat) (by aesop_cat) (by aesop_cat)))
set_option linter.uppercaseLean3 false in
#align CommMon_.equiv_lax_braided_functor_punit.unit_iso CommMon_.EquivLaxBraidedFunctorPunit.unitIso

/-- Implementation of `CommMon_.equivLaxBraidedFunctorPunit`. -/
@[simps!]
def counitIso : commMonToLaxBraided C ⋙ laxBraidedToCommMon C ≅ 𝟭 (CommMon_ C) :=
  NatIso.ofComponents
    (fun F =>
      { hom := { hom := 𝟙 _ }
        inv := { hom := 𝟙 _ } })
set_option linter.uppercaseLean3 false in
#align CommMon_.equiv_lax_braided_functor_punit.counit_iso CommMon_.EquivLaxBraidedFunctorPunit.counitIso

end EquivLaxBraidedFunctorPunit

open EquivLaxBraidedFunctorPunit

/-- Commutative monoid objects in `C` are "just" braided lax monoidal functors from the trivial
braided monoidal category to `C`.
-/
@[simps]
def equivLaxBraidedFunctorPunit : LaxBraidedFunctor (Discrete PUnit.{u + 1}) C ≌ CommMon_ C where
  functor := laxBraidedToCommMon C
  inverse := commMonToLaxBraided C
  unitIso := unitIso C
  counitIso := counitIso C
set_option linter.uppercaseLean3 false in
#align CommMon_.equiv_lax_braided_functor_punit CommMon_.equivLaxBraidedFunctorPunit

end CommMon_
```
