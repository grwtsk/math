-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PrincipalSegCocone.Variantfd5c6827a64117a4bad90d2d75fbeef37ad2653d7a11dabf33d5d42173520d97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd5c6827a64117a4bad90d2d75fbeef37ad2653d7a11dabf33d5d42173520d97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PrincipalSegCocone.Variantfd5c6827a64117a4bad90d2d75fbeef37ad2653d7a11dabf33d5d42173520d97","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"fd5c6827a64117a4bad90d2d75fbeef37ad2653d7a11dabf33d5d42173520d97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Shapes/Preorder/PrincipalSeg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Order.InitialSeg
public import Mathlib.CategoryTheory.Category.Preorder
public import Mathlib.CategoryTheory.Limits.Cones

/-!
# Cocones associated to principal segments

If `f : α <i β` is a principal segment and `F : β ⥤ C`,
there is a cocone for `f.monotone.functor ⋙ F : α ⥤ C`
the point of which is `F.obj f.top`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PrincipalSegCocone.Variantfd5c6827a64117a4bad90d2d75fbeef37ad2653d7a11dabf33d5d42173520d97

@[expose] public section

open CategoryTheory Category Limits

/-- When `f : α <i β` and a functor `F : β ⥤ C`, this is the cocone
for `f.monotone.functor ⋙ F : α ⥤ C` whose point is `F.obj f.top`. -/
@[implicit_reducible, simps]
def PrincipalSeg.cocone {α β : Type*} [PartialOrder α] [PartialOrder β]
    (f : α <i β) {C : Type*} [Category* C] (F : β ⥤ C) : Cocone (f.monotone.functor ⋙ F) where
  pt := F.obj f.top
  ι :=
    { app i := F.map (homOfLE (f.lt_top i).le)
      naturality i j f := by
        dsimp
        rw [← F.map_comp, comp_id]
        rfl }
