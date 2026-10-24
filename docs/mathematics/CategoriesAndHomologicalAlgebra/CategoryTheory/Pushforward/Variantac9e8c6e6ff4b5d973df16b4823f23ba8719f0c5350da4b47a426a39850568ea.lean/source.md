# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pushforward.Variantac9e8c6e6ff4b5d973df16b4823f23ba8719f0c5350da4b47a426a39850568ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afa05991b275802592b66e0d91ee87b4241a53cf` · SHA-256 `51d4c7c796b0583ca75431cfc789a5d5f40b382fb42099eb25cfaa0fdf3e2c47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PushforwardObj.Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PushforwardObj.Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Presheaf/Pushforward.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.Presheaf.ChangeOfRings

/-!
# Pushforward of presheaves of modules

If `F : C ⥤ D`, the precomposition `F.op ⋙ _` induces a functor from presheaves
over `D` to presheaves over `C`. When `R : Dᵒᵖ ⥤ RingCat`, we define the
induced functor `pushforward₀ : PresheafOfModules.{v} R ⥤ PresheafOfModules.{v} (F.op ⋙ R)`
on presheaves of modules.

In case we have a morphism of presheaves of rings `S ⟶ F.op ⋙ R`, we also construct
a functor `pushforward : PresheafOfModules.{v} R ⥤ PresheafOfModules.{v} S`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PushforwardObj.Variant175dd7d0b129d812d0c1c06b50fe252d40ba8b7e0997ea863a0863be22ec0b69

universe v v₁ v₂ u₁ u₂ u

open CategoryTheory

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]

namespace PresheafOfModules

variable (F : C ⥤ D)

/-- Implementation of `pushforward₀`. -/
@[simps]
def pushforward₀_obj (R : Dᵒᵖ ⥤ RingCat.{u}) (M : PresheafOfModules R) :
    PresheafOfModules (F.op ⋙ R) :=
  { obj X := ModuleCat.of _ (M.obj (F.op.obj X))
    map {X Y} f := M.map (F.op.map f)
    map_id X := by
      refine ModuleCat.hom_ext
        -- Work around an instance diamond for `restrictScalarsId'`
        (@LinearMap.ext _ _ _ _ _ _ _ _ (_) (_) _ _ _ (fun x => ?_))
      exact (M.congr_map_apply (F.op.map_id X) x).trans (by simp)
    map_comp := fun f g ↦ by
      refine ModuleCat.hom_ext
        -- Work around an instance diamond for `restrictScalarsId'`
        (@LinearMap.ext _ _ _ _ _ _ _ _ (_) (_) _ _ _ (fun x => ?_))
      exact (M.congr_map_apply (F.op.map_comp f g) x).trans (by simp) }

/-- The pushforward functor on presheaves of modules for a functor `F : C ⥤ D` and
`R : Dᵒᵖ ⥤ RingCat`. On the underlying presheaves of abelian groups, it is induced
by the precomposition with `F.op`. -/
def pushforward₀ (R : Dᵒᵖ ⥤ RingCat.{u}) :
    PresheafOfModules.{v} R ⥤ PresheafOfModules.{v} (F.op ⋙ R) where
  obj M := pushforward₀_obj F R M
  map {M₁ M₂} φ := { app X := φ.app _ }

/-- The pushforward of presheaves of modules commutes with the forgetful functor
to presheaves of abelian groups. -/
noncomputable def pushforward₀CompToPresheaf (R : Dᵒᵖ ⥤ RingCat.{u}) :
    pushforward₀.{v} F R ⋙ toPresheaf _ ≅ toPresheaf _ ⋙ (whiskeringLeft _ _ _).obj F.op :=
  Iso.refl _

variable {F}
variable {R : Dᵒᵖ ⥤ RingCat.{u}} {S : Cᵒᵖ ⥤ RingCat.{u}} (φ : S ⟶ F.op ⋙ R)

attribute [local simp] pushforward₀ in
/-- The pushforward functor `PresheafOfModules R ⥤ PresheafOfModules S` induced by
a morphism of presheaves of rings `S ⟶ F.op ⋙ R`. -/
@[simps! obj_obj]
noncomputable def pushforward : PresheafOfModules.{v} R ⥤ PresheafOfModules.{v} S :=
  pushforward₀ F R ⋙ restrictScalars φ

/-- The pushforward of presheaves of modules commutes with the forgetful functor
to presheaves of abelian groups. -/
noncomputable def pushforwardCompToPresheaf :
    pushforward.{v} φ ⋙ toPresheaf _ ≅ toPresheaf _ ⋙ (whiskeringLeft _ _ _).obj F.op :=
  Iso.refl _

lemma pushforward_obj_map_apply (M : PresheafOfModules.{v} R) {X Y : Cᵒᵖ} (f : X ⟶ Y)
    (m : (ModuleCat.restrictScalars (φ.app X).hom).obj (M.obj (Opposite.op (F.obj X.unop)))) :
      (((pushforward φ).obj M).map f).hom m = M.map (F.map f.unop).op m := rfl

/-- `@[simp]`-normal form of `pushforward_obj_map_apply`. -/
@[simp]
lemma pushforward_obj_map_apply' (M : PresheafOfModules.{v} R) {X Y : Cᵒᵖ} (f : X ⟶ Y)
    (m : (ModuleCat.restrictScalars (φ.app X).hom).obj (M.obj (Opposite.op (F.obj X.unop)))) :
      DFunLike.coe
        (F := ↑((ModuleCat.restrictScalars _).obj _) →ₗ[_]
          ↑((ModuleCat.restrictScalars (S.map f).hom).obj ((ModuleCat.restrictScalars _).obj _)))
        (((pushforward φ).obj M).map f).hom m = M.map (F.map f.unop).op m := rfl

lemma pushforward_map_app_apply {M N : PresheafOfModules.{v} R} (α : M ⟶ N) (X : Cᵒᵖ)
    (m : (ModuleCat.restrictScalars (φ.app X).hom).obj (M.obj (Opposite.op (F.obj X.unop)))) :
    (((pushforward φ).map α).app X).hom m = α.app (Opposite.op (F.obj X.unop)) m := rfl

/-- `@[simp]`-normal form of `pushforward_map_app_apply`. -/
@[simp]
lemma pushforward_map_app_apply' {M N : PresheafOfModules.{v} R} (α : M ⟶ N) (X : Cᵒᵖ)
    (m : (ModuleCat.restrictScalars (φ.app X).hom).obj (M.obj (Opposite.op (F.obj X.unop)))) :
    DFunLike.coe
      (F := ↑((ModuleCat.restrictScalars _).obj _) →ₗ[_] ↑((ModuleCat.restrictScalars _).obj _))
      (((pushforward φ).map α).app X).hom m = α.app (Opposite.op (F.obj X.unop)) m := rfl

end PresheafOfModules
```
