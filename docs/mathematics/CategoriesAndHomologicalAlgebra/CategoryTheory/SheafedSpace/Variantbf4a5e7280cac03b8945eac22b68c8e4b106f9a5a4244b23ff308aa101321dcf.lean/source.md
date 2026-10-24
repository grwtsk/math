# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafedSpace.Variantbf4a5e7280cac03b8945eac22b68c8e4b106f9a5a4244b23ff308aa101321dcf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e3c689beafe4f85f197dd992d3c91d23c456ecb` · SHA-256 `ddc0c3c4330182e9af36bc656e24acdcfbb421b54ac6130002125cea391c0dcf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafedSpace.Variantb4b5dff4f14b04110e8a082a7665df4ba7c197aa1d061d5002cea6efdd5e42f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4b5dff4f14b04110e8a082a7665df4ba7c197aa1d061d5002cea6efdd5e42f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SheafedSpace.Variantb4b5dff4f14b04110e8a082a7665df4ba7c197aa1d061d5002cea6efdd5e42f9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b4b5dff4f14b04110e8a082a7665df4ba7c197aa1d061d5002cea6efdd5e42f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Geometry/RingedSpace/SheafedSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Geometry.RingedSpace.PresheafedSpace.HasColimits
public import Mathlib.Geometry.RingedSpace.Stalks
public import Mathlib.Topology.Sheaves.Functors

/-!
# Sheafed spaces

Introduces the category of topological spaces equipped with a sheaf (taking values in an
arbitrary target category `C`).

We further describe how to apply functors and natural transformations to the values of the
presheaves.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafedSpace.Variantb4b5dff4f14b04110e8a082a7665df4ba7c197aa1d061d5002cea6efdd5e42f9

@[expose] public section

open CategoryTheory TopCat TopologicalSpace Opposite CategoryTheory.Limits CategoryTheory.Category
  CategoryTheory.Functor Topology

universe u v w' w

variable (C : Type u) [Category.{v} C]


-- We could enable the following line:
-- attribute [local aesop safe cases (rule_sets := [CategoryTheory])] Opposite
-- but may need
-- https://github.com/leanprover-community/aesop/issues/59

namespace AlgebraicGeometry

/-- A `SheafedSpace C` is a topological space equipped with a sheaf of `C`s. -/
structure SheafedSpace extends PresheafedSpace C where
  /-- A sheafed space is a presheafed space which happens to be a sheaf. -/
  IsSheaf : presheaf.IsSheaf

variable {C}

namespace SheafedSpace

instance coeCarrier : CoeOut (SheafedSpace C) TopCat where coe X := X.carrier

instance coeSort : CoeSort (SheafedSpace C) Type* where
  coe X := X.1

/-- Extract the `sheaf C (X : Top)` from a `SheafedSpace C`. -/
def sheaf (X : SheafedSpace C) : Sheaf C (X : TopCat) :=
  ⟨X.presheaf, X.IsSheaf⟩

/-- Not `@[simp]` since it already reduces to `carrier = carrier`. -/
theorem mk_coe (carrier) (presheaf) (h) :
    (({ carrier
        presheaf
        IsSheaf := h } : SheafedSpace C) : TopCat) = carrier :=
  rfl

instance (X : SheafedSpace C) : TopologicalSpace X :=
  X.carrier.str

/-- The trivial `unit`-valued sheaf on any topological space. -/
def unit (X : TopCat) : SheafedSpace (Discrete Unit) :=
  { @PresheafedSpace.const (Discrete Unit) _ X ⟨⟨⟩⟩ with IsSheaf := Presheaf.isSheaf_unit _ }

instance : Inhabited (SheafedSpace (Discrete Unit)) :=
  ⟨unit ↧PEmpty⟩

instance : Category (SheafedSpace C) :=
  inferInstanceAs <| Category (InducedCategory (PresheafedSpace C) SheafedSpace.toPresheafedSpace)

@[ext (iff := false)]
theorem ext {X Y : SheafedSpace C} (α β : X ⟶ Y) (w : α.hom.base = β.hom.base)
    (h : α.hom.c ≫ whiskerRight (eqToHom (by rw [w])) _ = β.hom.c) : α = β :=
  InducedCategory.hom_ext (PresheafedSpace.ext _ _ w h)

/-- Constructor for isomorphisms in the category `SheafedSpace C`. -/
@[simps]
def isoMk {X Y : SheafedSpace C} (e : X.toPresheafedSpace ≅ Y.toPresheafedSpace) : X ≅ Y where
  hom := InducedCategory.homMk e.hom
  inv := InducedCategory.homMk e.inv
  hom_inv_id := InducedCategory.hom_ext e.hom_inv_id
  inv_hom_id := InducedCategory.hom_ext e.inv_hom_id

/-- Forgetting the sheaf condition is a functor from `SheafedSpace C` to `PresheafedSpace C`. -/
@[simps! obj map]
def forgetToPresheafedSpace : SheafedSpace C ⥤ PresheafedSpace C :=
  inducedFunctor _
-- The `Full, Faithful` instances should be constructed by a deriving handler.
-- https://github.com/leanprover-community/mathlib4/issues/380

/-- The functor `forgetToPresheafedSpace : SheafedSpace C ⥤ PresheafedSpace C`
is fully faithful. -/
def fullyFaithfulForgetToPresheafedSpace :
    (forgetToPresheafedSpace (C := C)).FullyFaithful where
  preimage f := InducedCategory.homMk f

@[simp]
lemma fullyFaithfulForgetToPresheafedSpace_preimage_hom {X Y : SheafedSpace C}
    (f : forgetToPresheafedSpace.obj X ⟶ forgetToPresheafedSpace.obj Y) :
    (fullyFaithfulForgetToPresheafedSpace.preimage f).hom = f := rfl

instance forgetToPresheafedSpace_full : (forgetToPresheafedSpace (C := C)).Full :=
  fullyFaithfulForgetToPresheafedSpace.full

instance forgetToPresheafedSpace_faithful : (forgetToPresheafedSpace (C := C)).Faithful :=
  fullyFaithfulForgetToPresheafedSpace.faithful

instance is_presheafedSpace_iso {X Y : SheafedSpace C} (f : X ⟶ Y) [IsIso f] :
    IsIso f.hom :=
  SheafedSpace.forgetToPresheafedSpace.map_isIso f

section

attribute [local simp] id comp

@[simp]
theorem id_hom (X : SheafedSpace C) : (𝟙 X : X ⟶ X).hom = 𝟙 X.toPresheafedSpace :=
  rfl

@[simp]
theorem id_hom_base (X : SheafedSpace C) : (𝟙 X : X ⟶ X).hom.base = 𝟙 (X : TopCat) :=
  rfl

theorem id_hom_c (X : SheafedSpace C) :
    (𝟙 X : X ⟶ X).hom.c = eqToHom (Presheaf.Pushforward.id_eq X.presheaf).symm :=
  rfl

theorem id_hom_c_app (X : SheafedSpace C) (U) :
    (𝟙 X : X ⟶ X).hom.c.app U = 𝟙 _ := rfl

@[simp]
theorem comp_hom_base {X Y Z : SheafedSpace C} (f : X ⟶ Y) (g : Y ⟶ Z) :
    (f ≫ g).hom.base = f.hom.base ≫ g.hom.base :=
  rfl

@[simp]
theorem comp_hom_c_app {X Y Z : SheafedSpace C} (α : X ⟶ Y) (β : Y ⟶ Z) (U) :
    (α ≫ β).hom.c.app U =
      β.hom.c.app U ≫ α.hom.c.app (op ((Opens.map β.hom.base).obj (unop U))) :=
  rfl

theorem comp_hom_c_app' {X Y Z : SheafedSpace C} (α : X ⟶ Y) (β : Y ⟶ Z) (U) :
    (α ≫ β).hom.c.app (op U) =
      β.hom.c.app (op U) ≫ α.hom.c.app (op ((Opens.map β.hom.base).obj U)) :=
  rfl

theorem congr_hom_app {X Y : SheafedSpace C} {α β : X ⟶ Y} (h : α = β) (U) :
    α.hom.c.app U = β.hom.c.app U ≫ X.presheaf.map (eqToHom (by subst h; rfl)) :=
  (PresheafedSpace.congr_app (by rw [h]) U)

variable (C)

/-- The forgetful functor from `SheafedSpace` to `Top`. -/
def forget : SheafedSpace C ⥤ TopCat where
  obj X := (X : TopCat)
  map {_ _} f := f.hom.base

end

open TopCat.Presheaf

/-- The restriction of a sheafed space along an open embedding into the space.
-/
def restrict {U : TopCat} (X : SheafedSpace C) {f : U ⟶ (X : TopCat)} (h : IsOpenEmbedding f) :
    SheafedSpace C :=
  { X.toPresheafedSpace.restrict h with IsSheaf := isSheaf_of_isOpenEmbedding h X.IsSheaf }

/-- The map from the restriction of a presheafed space.
-/
@[simps!]
def ofRestrict {U : TopCat} (X : SheafedSpace C) {f : U ⟶ (X : TopCat)}
    (h : IsOpenEmbedding f) : X.restrict h ⟶ X :=
  InducedCategory.homMk (X.toPresheafedSpace.ofRestrict h)

/-- The restriction of a sheafed space `X` to the top subspace is isomorphic to `X` itself.
-/
@[simps! hom inv]
def restrictTopIso (X : SheafedSpace C) : X.restrict (Opens.isOpenEmbedding ⊤) ≅ X :=
  isoMk (X.toPresheafedSpace.restrictTopIso)

/-- The global sections, notated Gamma.
-/
def Γ : (SheafedSpace C)ᵒᵖ ⥤ C :=
  forgetToPresheafedSpace.op ⋙ PresheafedSpace.Γ

theorem Γ_def : (Γ : _ ⥤ C) = forgetToPresheafedSpace.op ⋙ PresheafedSpace.Γ :=
  rfl

@[simp]
theorem Γ_obj (X : (SheafedSpace C)ᵒᵖ) : Γ.obj X = (unop X).presheaf.obj (op ⊤) :=
  rfl

theorem Γ_obj_op (X : SheafedSpace C) : Γ.obj (op X) = X.presheaf.obj (op ⊤) :=
  rfl

@[simp]
theorem Γ_map {X Y : (SheafedSpace C)ᵒᵖ} (f : X ⟶ Y) : Γ.map f = f.unop.hom.c.app (op ⊤) :=
  rfl

theorem Γ_map_op {X Y : SheafedSpace C} (f : X ⟶ Y) : Γ.map f.op = f.hom.c.app (op ⊤) :=
  rfl

noncomputable instance (J : Type w) [Category.{w'} J] [Small.{v} J] [HasLimitsOfShape Jᵒᵖ C] :
    CreatesColimitsOfShape J (forgetToPresheafedSpace : SheafedSpace.{_, _, v} C ⥤ _) :=
  ⟨fun {K} =>
    createsColimitOfFullyFaithfulOfIso
      ⟨(PresheafedSpace.colimitCocone (K ⋙ forgetToPresheafedSpace)).pt,
        limit_isSheaf _ fun j ↦ Sheaf.pushforward_sheaf_of_sheaf _ (K.obj (unop j)).2⟩
      (colimit.isoColimitCocone ⟨_, PresheafedSpace.colimitCoconeIsColimit _⟩).symm⟩

noncomputable instance [HasLimits C] :
    CreatesColimits (forgetToPresheafedSpace : SheafedSpace C ⥤ _) where

instance (J : Type w) [Category.{w'} J] [Small.{v} J] [HasLimitsOfShape Jᵒᵖ C] :
    HasColimitsOfShape J (SheafedSpace.{_, _, v} C) :=
  hasColimitsOfShape_of_hasColimitsOfShape_createsColimitsOfShape forgetToPresheafedSpace

instance [HasLimits C] : HasColimits.{v} (SheafedSpace C) where

instance (J : Type w) [Category.{w'} J] [Small.{v} J] [HasLimitsOfShape Jᵒᵖ C] :
    PreservesColimitsOfShape J (forget.{_, _, v} C) :=
  Limits.comp_preservesColimitsOfShape forgetToPresheafedSpace (PresheafedSpace.forget C)

noncomputable instance [HasLimits C] : PreservesColimits (forget.{_, _, v} C) where

section ConcreteCategory

variable {FC : C → C → Type*} {CC : C → Type v} [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)]
variable [instCC : ConcreteCategory.{v} C FC] [HasColimits C] [HasLimits C]
variable [PreservesLimits (CategoryTheory.forget C)]
variable [PreservesFilteredColimits (CategoryTheory.forget C)]
variable [(CategoryTheory.forget C).ReflectsIsomorphisms]

set_option backward.isDefEq.respectTransparency.types false in
attribute [local ext] DFunLike.ext in
include instCC in
lemma hom_stalk_ext {X Y : SheafedSpace C} (f g : X ⟶ Y) (h : f.hom.base = g.hom.base)
    (h' : ∀ x, f.hom.stalkMap x = (Y.presheaf.stalkCongr (h ▸ rfl)).hom ≫ g.hom.stalkMap x) :
    f = g := by
  obtain ⟨f, fc⟩ := f
  obtain ⟨g, gc⟩ := g
  obtain rfl : f = g := h
  congr
  ext U s
  refine section_ext X.sheaf _ _ _ fun x hx ↦
    show X.presheaf.germ _ x _ _ = X.presheaf.germ _ x _ _ from ?_
  erw [← PresheafedSpace.stalkMap_germ_apply ⟨f, fc⟩, ← PresheafedSpace.stalkMap_germ_apply ⟨f, gc⟩]
  simp [h']

attribute [local ext] DFunLike.ext in
include instCC in
lemma mono_of_base_injective_of_stalk_epi {X Y : SheafedSpace C} (f : X ⟶ Y)
    (h₁ : Function.Injective f.hom.base)
    (h₂ : ∀ x, Epi (f.hom.stalkMap x)) : Mono f := by
  constructor
  intro Z ⟨g, gc⟩ ⟨h, hc⟩ e
  obtain rfl : g = h := ConcreteCategory.hom_ext _ _ fun x ↦ h₁ congr(($e).hom.base x)
  refine SheafedSpace.hom_stalk_ext ⟨g, gc⟩ ⟨g, hc⟩ rfl fun x ↦ ?_
  rw [← cancel_epi (f.hom.stalkMap (g x)), stalkCongr_hom, stalkSpecializes_refl, Category.id_comp,
    ← PresheafedSpace.stalkMap.comp ⟨g, gc⟩ f.hom, ← PresheafedSpace.stalkMap.comp ⟨g, hc⟩ f.hom]
  replace e := congr_arg InducedCategory.Hom.hom e
  congr 1

attribute [local ext] DFunLike.ext in
include instCC in
lemma epi_of_base_surjective_of_stalk_mono {X Y : SheafedSpace C} (f : X ⟶ Y)
    (h₁ : Function.Surjective f.hom.base)
    (h₂ : ∀ x, Mono (f.hom.stalkMap x)) : Epi f := by
  constructor
  intro Z ⟨g, gc⟩ ⟨h, hc⟩ e
  apply_fun InducedCategory.Hom.hom at e
  obtain rfl : g = h := ConcreteCategory.hom_ext _ _ fun y ↦ by
    rw [← (h₁ y).choose_spec]
    simpa using congr(($e).base.hom (h₁ y).choose)
  refine SheafedSpace.hom_stalk_ext ⟨g, gc⟩ ⟨g, hc⟩ rfl fun y ↦ ?_
  rw [← (h₁ y).choose_spec, ← cancel_mono (f.hom.stalkMap (h₁ y).choose), stalkCongr_hom,
    stalkSpecializes_refl, Category.id_comp, ← PresheafedSpace.stalkMap.comp f.hom ⟨g, gc⟩,
    ← PresheafedSpace.stalkMap.comp f.hom ⟨g, hc⟩]
  congr 1

end ConcreteCategory

end SheafedSpace

end AlgebraicGeometry
```
