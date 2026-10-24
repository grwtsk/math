# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfCommRing.Variantf6e0f0cbca6f281b150451e548555ec56051a281203ed28700484f64f161df6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73d181cabc70157501a7fe93fc7bcaec4340a0ae` · SHA-256 `4f9eae67b330c27ea101aec9da52b1f4ea87ddfd3c14f5c8583da69deb4f570c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresheafOfModulesOfCommRing.Variant3dcf65c44d43e8316da5eca4c4c04a1629185ab9c9989517035021c6115b74f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3dcf65c44d43e8316da5eca4c4c04a1629185ab9c9989517035021c6115b74f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PresheafOfModulesOfCommRing.Variant3dcf65c44d43e8316da5eca4c4c04a1629185ab9c9989517035021c6115b74f5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3dcf65c44d43e8316da5eca4c4c04a1629185ab9c9989517035021c6115b74f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/ModuleCat/Presheaf/OfCommRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Brian Nugent. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Brian Nugent
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Presheaf.Pullback

/-!
# Modules over presheaves of commutative rings

This file provides short names for categories and functors obtained from a presheaf of commutative
rings by forgetting to rings. In particular, these names reduce the need for
repeatedly writing the relevant forgetful functor.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresheafOfModulesOfCommRing.Variant3dcf65c44d43e8316da5eca4c4c04a1629185ab9c9989517035021c6115b74f5

@[expose] public section

universe v v₁ v₂ u₁ u₂ u

open CategoryTheory Functor Limits

/-- The category of presheaves of modules over a presheaf of commutative rings. -/
abbrev PresheafOfModulesOfCommRing {C : Type u₁} [Category.{v₁} C]
    (R : Cᵒᵖ ⥤ CommRingCat.{u}) :=
  PresheafOfModules.{v} (R ⋙ forget₂ _ _)

namespace PresheafOfModulesOfCommRing

section Basic

variable {C : Type u₁} [Category.{v₁} C] {R : Cᵒᵖ ⥤ CommRingCat.{u}}

/-- Construct a presheaf of modules over a presheaf of commutative rings. -/
abbrev mk (obj : ∀ (X : Cᵒᵖ), ModuleCat.{v} (R.obj X)) (map : ∀ {X Y : Cᵒᵖ} (f : X ⟶ Y),
      obj X ⟶ (ModuleCat.restrictScalars (R.map f).hom).obj (obj Y))
    (map_id : ∀ (X : Cᵒᵖ), map (𝟙 X) = (ModuleCat.restrictScalarsId' (R.map (𝟙 X)).hom
      (congrArg CommRingCat.Hom.hom (R.map_id X))).inv.app _ := by cat_disch)
    (map_comp : ∀ {X Y Z : Cᵒᵖ} (f : X ⟶ Y) (g : Y ⟶ Z),
      map (f ≫ g) = map f ≫ (ModuleCat.restrictScalars _).map (map g) ≫
        (ModuleCat.restrictScalarsComp' (R.map f).hom (R.map g).hom (R.map (f ≫ g)).hom
          (congrArg CommRingCat.Hom.hom <| R.map_comp f g)).inv.app _ := by cat_disch) :
    PresheafOfModulesOfCommRing.{v} R where
  obj := obj
  map := map
  map_id := map_id
  map_comp := map_comp

/-- Evaluate a presheaf of modules over a presheaf of commutative rings at an object. -/
abbrev obj (F : PresheafOfModulesOfCommRing.{v} R) (X : Cᵒᵖ) : ModuleCat.{v} (R.obj X) :=
  PresheafOfModules.obj F X

/-- The restriction map of a presheaf of modules over a presheaf of commutative rings. -/
abbrev map (F : PresheafOfModulesOfCommRing.{v} R) {X Y : Cᵒᵖ} (f : X ⟶ Y) :
    F.obj X ⟶ (ModuleCat.restrictScalars (R.map f).hom).obj (F.obj Y) :=
  PresheafOfModules.map _ _

/-- Construct a morphism of presheaves of modules over a presheaf of commutative rings. -/
abbrev homMk {M₁ M₂ : PresheafOfModulesOfCommRing.{v} R}
    (app : ∀ (X : Cᵒᵖ), M₁.obj X ⟶ M₂.obj X)
    (naturality : ∀ {X Y : Cᵒᵖ} (f : X ⟶ Y),
      M₁.map f ≫ (ModuleCat.restrictScalars (R.map f).hom).map (app Y) =
        app X ≫ M₂.map f := by cat_disch) : M₁ ⟶ M₂ where
  app := app
  naturality := naturality

/-- Construct an isomorphism of presheaves of modules over a presheaf of commutative rings. -/
abbrev isoMk {M₁ M₂ : PresheafOfModulesOfCommRing.{v} R}
    (app : ∀ (X : Cᵒᵖ), M₁.obj X ≅ M₂.obj X)
    (naturality : ∀ ⦃X Y : Cᵒᵖ⦄ (f : X ⟶ Y),
      M₁.map f ≫ (ModuleCat.restrictScalars (R.map f).hom).map (app Y).hom =
        (app X).hom ≫ M₂.map f := by cat_disch) : M₁ ≅ M₂ :=
  PresheafOfModules.isoMk app naturality

/-- a family of linear maps `M₁.obj X ⟶ M₂.obj X` for all `X`. -/
abbrev _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PresheafOfModulesOfCommRing.Variant3dcf65c44d43e8316da5eca4c4c04a1629185ab9c9989517035021c6115b74f5.PresheafOfModules.Hom.app' {M₁ M₂ : PresheafOfModulesOfCommRing.{v} R}
    (f : M₁ ⟶ M₂) (X : Cᵒᵖ) : M₁.obj X ⟶ M₂.obj X := f.app X

/-- The free presheaf of modules of rank one over a presheaf of commutative rings. -/
noncomputable abbrev unit (R : Cᵒᵖ ⥤ CommRingCat.{u}) :
    PresheafOfModulesOfCommRing.{u} R :=
  PresheafOfModules.unit (R ⋙ forget₂ _ _)

/-- Restriction of scalars along a morphism of presheaves of commutative rings. -/
noncomputable abbrev restrictScalars {S : Cᵒᵖ ⥤ CommRingCat.{u}} (φ : R ⟶ S) :
    PresheafOfModulesOfCommRing.{v} S ⥤ PresheafOfModulesOfCommRing.{v} R :=
  PresheafOfModules.restrictScalars (whiskerRight φ (forget₂ _ _))

lemma naturality_apply {M₁ M₂ : PresheafOfModulesOfCommRing.{v} R}
    (f : M₁ ⟶ M₂) {X Y : Cᵒᵖ} (g : X ⟶ Y) (x : M₁.obj X) :
    (f.app' Y) ((M₁.map g) x) = (M₂.map g) ((f.app' X) x) :=
  PresheafOfModules.naturality_apply _ _ _

end Basic

section PushforwardPullback

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]

/-- The pushforward functor along `F` for modules over a presheaf of commutative rings. -/
abbrev pushforward₀ (F : C ⥤ D) (R : Dᵒᵖ ⥤ CommRingCat.{u}) :
    PresheafOfModulesOfCommRing.{v} R ⥤
      PresheafOfModulesOfCommRing.{v} (F.op ⋙ R) :=
  PresheafOfModules.pushforward₀ F (R ⋙ forget₂ _ _)

variable {F : C ⥤ D} {R : Dᵒᵖ ⥤ CommRingCat.{u}}
  {S : Cᵒᵖ ⥤ CommRingCat.{u}} (φ : S ⟶ F.op ⋙ R)

/-- The pushforward functor induced by a morphism of presheaves of commutative rings. -/
noncomputable abbrev pushforward :
    PresheafOfModulesOfCommRing.{v} R ⥤ PresheafOfModulesOfCommRing.{v} S :=
  PresheafOfModules.pushforward (whiskerRight φ (forget₂ _ _))

/-- The pullback functor induced by a morphism of presheaves of commutative rings. -/
noncomputable abbrev pullback [(pushforward.{v} φ).IsRightAdjoint] :
    PresheafOfModulesOfCommRing.{v} S ⥤ PresheafOfModulesOfCommRing.{v} R :=
  PresheafOfModules.pullback (whiskerRight φ (forget₂ _ _))

/-- The adjunction between pullback and pushforward for modules over presheaves of
commutative rings. -/
noncomputable abbrev pullbackPushforwardAdjunction
    [(pushforward.{v} φ).IsRightAdjoint] :
    pullback.{v} φ ⊣ pushforward.{v} φ :=
  PresheafOfModules.pullbackPushforwardAdjunction _

end PushforwardPullback

end PresheafOfModulesOfCommRing
```
