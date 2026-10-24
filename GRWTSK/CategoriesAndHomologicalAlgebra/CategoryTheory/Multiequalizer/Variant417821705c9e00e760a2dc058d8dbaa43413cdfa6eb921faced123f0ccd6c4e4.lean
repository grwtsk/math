-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MulticospanIndexMap.Variant33ca9d3fe8af7191de2fc6eed818faa11fe974635d0ab558e31e88477dc27759","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33ca9d3fe8af7191de2fc6eed818faa11fe974635d0ab558e31e88477dc27759","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MulticospanIndexMap.Variant33ca9d3fe8af7191de2fc6eed818faa11fe974635d0ab558e31e88477dc27759","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"33ca9d3fe8af7191de2fc6eed818faa11fe974635d0ab558e31e88477dc27759","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Preserves/Shapes/Multiequalizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer

/-!
# Preservation of multicoequalizers

Let `J : MultispanShape` and `d : MultispanIndex J C`.
If `F : C ⥤ D`, we define `d.map F : MultispanIndex J D` and
an isomorphism of functors `(d.map F).multispan ≅ d.multispan ⋙ F`
(see `MultispanIndex.multispanMapIso`).
If `c : Multicofork d`, we define `c.map F : Multicofork (d.map F)` and
obtain a bijection `IsColimit (F.mapCocone c) ≃ IsColimit (c.map F)`
(see `Multicofork.isColimitMapEquiv`). As a result, if `F` preserves
the colimit of `d.multispan`, we deduce that if `c` is a colimit,
then `c.map F` also is (see `Multicofork.isColimitMapOfPreserves`).

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MulticospanIndexMap.Variant33ca9d3fe8af7191de2fc6eed818faa11fe974635d0ab558e31e88477dc27759

@[expose] public section

universe w w' v u

namespace CategoryTheory

variable {C D : Type*} [Category* C] [Category* D]

namespace Limits

section Multifork

variable {J : MulticospanShape.{w, w'}} (d : MulticospanIndex J C)
  (c : Multifork d) (F : C ⥤ D)

/-- The multicospan index obtained by applying a functor. -/
@[simps]
def MulticospanIndex.map : MulticospanIndex J D where
  left i := F.obj (d.left i)
  right i := F.obj (d.right i)
  fst i := F.map (d.fst i)
  snd i := F.map (d.snd i)

set_option backward.defeqAttrib.useBackward true in
/-- If `d : MulticospanIndex J C` and `F : C ⥤ D`, this is the obvious isomorphism
`(d.map F).multicospan ≅ d.multicospan ⋙ F`. -/
@[simps!]
def MulticospanIndex.multicospanMapIso : (d.map F).multicospan ≅ d.multicospan ⋙ F :=
  NatIso.ofComponents
    (fun i ↦ match i with
      | .left _ => Iso.refl _
      | .right _ => Iso.refl _)
    (by rintro a b (_ | _) <;> simp)

variable {d}

set_option backward.defeqAttrib.useBackward true in
/-- If `d : MulticospanIndex J C`, `c : Multifork d` and `F : C ⥤ D`,
this is the induced multifork of `d.map F`. -/
@[simps!]
def Multifork.map : Multifork (d.map F) :=
  Multifork.ofι _ (F.obj c.pt) (fun i ↦ F.map (c.ι i)) (fun j ↦ by
    dsimp
    rw [← F.map_comp, ← F.map_comp, condition])

set_option backward.defeqAttrib.useBackward true in
/-- If `d : MulticospanIndex J C`, `c : Multifork d` and `F : C ⥤ D`,
the cone `F.mapCone c` is limiting iff the multifork `c.map F` is. -/
def Multifork.isLimitMapEquiv :
    IsLimit (F.mapCone c) ≃ IsLimit (c.map F) :=
  Equiv.trans (IsLimit.postcomposeInvEquiv (d.multicospanMapIso F) (F.mapCone c)).symm
    (IsLimit.equivIsoLimit
      (Multifork.ext (Iso.refl _) (fun i ↦ by dsimp only [Multifork.ι]; simp)))

/-- If `d : MulticospanIndex J C`, `c : Multifork d` is a limit multifork,
and `F : C ⥤ D` is a functor which preserves the limit of `d.multicospan`,
then the multifork `c.map F` is limiting. -/
noncomputable def Multifork.isLimitMapOfPreserves
    [PreservesLimit d.multicospan F] (hc : IsLimit c) : IsLimit (c.map F) :=
  (isLimitMapEquiv c F) (isLimitOfPreserves F hc)

end Multifork

section Multicofork

variable {J : MultispanShape.{w, w'}} (d : MultispanIndex J C)
  (c : Multicofork d) (F : C ⥤ D)

/-- The multispan index obtained by applying a functor. -/
@[simps]
def MultispanIndex.map : MultispanIndex J D where
  left i := F.obj (d.left i)
  right i := F.obj (d.right i)
  fst i := F.map (d.fst i)
  snd i := F.map (d.snd i)

set_option backward.defeqAttrib.useBackward true in
/-- If `d : MultispanIndex J C` and `F : C ⥤ D`, this is the obvious isomorphism
`(d.map F).multispan ≅ d.multispan ⋙ F`. -/
@[simps!]
def MultispanIndex.multispanMapIso : (d.map F).multispan ≅ d.multispan ⋙ F :=
  NatIso.ofComponents
    (fun i ↦ match i with
      | .left _ => Iso.refl _
      | .right _ => Iso.refl _)
    (by rintro _ _ (_ | _) <;> simp)

variable {d}

set_option backward.defeqAttrib.useBackward true in
/-- If `d : MultispanIndex J C`, `c : Multicofork d` and `F : C ⥤ D`,
this is the induced multicofork of `d.map F`. -/
@[simps!]
def Multicofork.map : Multicofork (d.map F) :=
  Multicofork.ofπ _ (F.obj c.pt) (fun i ↦ F.map (c.π i)) (fun j ↦ by
    dsimp
    rw [← F.map_comp, ← F.map_comp, condition])

set_option backward.defeqAttrib.useBackward true in
/-- If `d : MultispanIndex J C`, `c : Multicofork d` and `F : C ⥤ D`,
the cocone `F.mapCocone c` is colimit iff the multicofork `c.map F` is. -/
def Multicofork.isColimitMapEquiv :
    IsColimit (F.mapCocone c) ≃ IsColimit (c.map F) :=
  (IsColimit.precomposeInvEquiv (d.multispanMapIso F).symm (F.mapCocone c)).symm.trans
    (IsColimit.equivIsoColimit
      (Multicofork.ext (Iso.refl _) (fun i ↦ by dsimp only [Multicofork.π]; simp)))

/-- If `d : MultispanIndex J C`, `c : Multicofork d` is a colimit multicofork,
and `F : C ⥤ D` is a functor which preserves the colimit of `d.multispan`,
then the multicofork `c.map F` is colimit. -/
noncomputable def Multicofork.isColimitMapOfPreserves
    [PreservesColimit d.multispan F] (hc : IsColimit c) : IsColimit (c.map F) :=
  (isColimitMapEquiv c F) (isColimitOfPreserves F hc)

end Multicofork

end Limits

end CategoryTheory
