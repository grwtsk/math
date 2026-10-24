# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Groupoid.Variant3688045701cf3921e29d6da77e9c31385d3e9681cb1c0bff3bdd7a956f64a432

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e20267846ec40d371efade4d846b7a33a5621dc` · SHA-256 `07d106d6a555c46e761b4f2b6fc3dc3ce437743b3d1ea8c2cbfd8d63bc2a32e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ClosedIhom.Variantef5ba33386a882e9711f6baa584cade52f8bbd6d3126d32b17790c1b6835b153","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef5ba33386a882e9711f6baa584cade52f8bbd6d3126d32b17790c1b6835b153","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ClosedIhom.Variantef5ba33386a882e9711f6baa584cade52f8bbd6d3126d32b17790c1b6835b153","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ef5ba33386a882e9711f6baa584cade52f8bbd6d3126d32b17790c1b6835b153","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Closed/FunctorCategory/Groupoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Antoine Labelle. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Labelle
-/
module

public import Mathlib.CategoryTheory.Monoidal.Closed.Basic
public import Mathlib.CategoryTheory.Functor.Currying
public import Mathlib.CategoryTheory.Monoidal.FunctorCategory

/-!
# Functors from a groupoid into a monoidal closed category form a monoidal closed category.

(Using the pointwise monoidal structure on the functor category.)
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ClosedIhom.Variantef5ba33386a882e9711f6baa584cade52f8bbd6d3126d32b17790c1b6835b153

set_option backward.defeqAttrib.useBackward true

@[expose] public section

universe v u

noncomputable section

open CategoryTheory CategoryTheory.MonoidalCategory CategoryTheory.MonoidalClosed

namespace CategoryTheory.Functor

variable {D : Type u} {C : Type*} [Groupoid.{v} D] [Category* C]
  [MonoidalCategory C] [MonoidalClosed C]

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- Auxiliary definition for `CategoryTheory.Functor.closed`.
The internal hom functor `F ⟶[C] -` -/
@[simps!]
def closedIhom (F : D ⥤ C) : (D ⥤ C) ⥤ D ⥤ C :=
  ((whiskeringRight₂ D Cᵒᵖ C C).obj internalHom).obj
    ((Groupoid.invEquivalence D).functor ⋙ F.op)

set_option backward.defeqAttrib.useBackward true in
/-- Auxiliary definition for `CategoryTheory.Functor.closed`.
The unit for the adjunction `(tensorLeft F) ⊣ (ihom F)`. -/
@[simps]
def closedUnit (F : D ⥤ C) : 𝟭 (D ⥤ C) ⟶ tensorLeft F ⋙ closedIhom F where
  app G :=
  { app := fun X => (ihom.coev (F.obj X)).app (G.obj X)
    naturality := by
      intro X Y f
      dsimp
      simp only [ihom.coev_naturality, closedIhom_obj_map, Monoidal.tensorObj_map]
      dsimp
      rw [coev_app_comp_pre_app_assoc, ← Functor.map_comp, tensorHom_def]
      simp }

set_option backward.defeqAttrib.useBackward true in
/-- Auxiliary definition for `CategoryTheory.Functor.closed`.
The counit for the adjunction `(tensorLeft F) ⊣ (ihom F)`. -/
@[simps]
def closedCounit (F : D ⥤ C) : closedIhom F ⋙ tensorLeft F ⟶ 𝟭 (D ⥤ C) where
  app G :=
  { app := fun X => (ihom.ev (F.obj X)).app (G.obj X)
    naturality := by
      intro X Y f
      dsimp
      simp only [closedIhom_obj_map, pre_comm_ihom_map]
      rw [tensorHom_def]
      simp }

/-- If `C` is a monoidal closed category and `D` is a groupoid, then every functor `F : D ⥤ C` is
closed in the functor category `F : D ⥤ C` with the pointwise monoidal structure. -/
instance closed (F : D ⥤ C) : Closed F where
  rightAdj := closedIhom F
  adj :=
    { unit := closedUnit F
      counit := closedCounit F }

/-- If `C` is a monoidal closed category and `D` is a groupoid, then the functor category `D ⥤ C`,
with the pointwise monoidal structure, is monoidal closed. -/
@[simps! closed_adj]
instance monoidalClosed : MonoidalClosed (D ⥤ C) where

theorem ihom_map (F : D ⥤ C) {G H : D ⥤ C} (f : G ⟶ H) : (ihom F).map f = (closedIhom F).map f :=
  rfl

theorem ihom_ev_app (F G : D ⥤ C) : (ihom.ev F).app G = (closedCounit F).app G :=
  rfl

theorem ihom_coev_app (F G : D ⥤ C) : (ihom.coev F).app G = (closedUnit F).app G :=
  rfl

end CategoryTheory.Functor
```
