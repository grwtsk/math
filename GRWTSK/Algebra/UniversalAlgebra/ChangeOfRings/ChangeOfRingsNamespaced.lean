-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.RestrictScalarsObj.Variantf9cbc8f5fe7d029d8f324fd6fa3856f524d3719653bb7daa03131a990a086337","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9cbc8f5fe7d029d8f324fd6fa3856f524d3719653bb7daa03131a990a086337","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.RestrictScalarsObj.Variantf9cbc8f5fe7d029d8f324fd6fa3856f524d3719653bb7daa03131a990a086337","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"f9cbc8f5fe7d029d8f324fd6fa3856f524d3719653bb7daa03131a990a086337","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Presheaf/ChangeOfRings.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.ChangeOfRings
import Mathlib.Algebra.Category.ModuleCat.Presheaf

/-!
# Change of presheaf of rings

In this file, we define the restriction of scalars functor
`restrictScalars α : PresheafOfModules.{v} R' ⥤ PresheafOfModules.{v} R`
attached to a morphism of presheaves of rings `α : R ⟶ R'`.

-/


namespace GRWTSK.Algebra.UniversalAlgebra.RestrictScalarsObj.Variantf9cbc8f5fe7d029d8f324fd6fa3856f524d3719653bb7daa03131a990a086337

universe v v' u u'

open CategoryTheory

namespace PresheafOfModules

variable {C : Type u'} [Category.{v'} C] {R R' : Cᵒᵖ ⥤ RingCat.{u}}

/-- The restriction of scalars of presheaves of modules, on objects. -/
@[simps]
noncomputable def restrictScalarsObj (M' : PresheafOfModules.{v} R') (α : R ⟶ R') :
    PresheafOfModules R where
  obj := fun X ↦ (ModuleCat.restrictScalars (α.app X).hom).obj (M'.obj X)
  -- TODO: after https://github.com/leanprover-community/mathlib4/pull/19511 we need to hint `(X := ...)` and `(Y := ...)`.
  -- This suggests `restrictScalars` needs to be redesigned.
  map := fun {X Y} f ↦ ModuleCat.ofHom
      (X := (ModuleCat.restrictScalars (α.app X).hom).obj (M'.obj X))
      (Y := (ModuleCat.restrictScalars (R.map f).hom).obj
        ((ModuleCat.restrictScalars (α.app Y).hom).obj (M'.obj Y)))
    { toFun := M'.map f
      map_add' := map_add _
      map_smul' := fun r x ↦ (M'.map_smul f (α.app _ r) x).trans (by
        have eq := RingHom.congr_fun (congrArg RingCat.Hom.hom <| α.naturality f) r
        dsimp at eq
        rw [← eq]
        rfl ) }

/-- The restriction of scalars functor `PresheafOfModules R' ⥤ PresheafOfModules R`
induced by a morphism of presheaves of rings `R ⟶ R'`. -/
@[simps]
noncomputable def restrictScalars (α : R ⟶ R') :
    PresheafOfModules.{v} R' ⥤ PresheafOfModules.{v} R where
  obj M' := M'.restrictScalarsObj α
  map φ' :=
    { app := fun X ↦ (ModuleCat.restrictScalars (α.app X).hom).map (Hom.app φ' X)
      naturality := fun {X Y} f ↦ by
        ext x
        exact naturality_apply φ' f x }

instance (α : R ⟶ R') : (restrictScalars.{v} α).Additive where

instance : (restrictScalars (𝟙 R)).Full := inferInstanceAs (𝟭 _).Full

instance (α : R ⟶ R') : (restrictScalars α).Faithful where
  map_injective h := (toPresheaf R').map_injective ((toPresheaf R).congr_map h)

/-- The isomorphism `restrictScalars α ⋙ toPresheaf R ≅ toPresheaf R'` for any
morphism of presheaves of rings `α : R ⟶ R'`. -/
noncomputable def restrictScalarsCompToPresheaf (α : R ⟶ R') :
    restrictScalars.{v} α ⋙ toPresheaf R ≅ toPresheaf R' := Iso.refl _

end PresheafOfModules
