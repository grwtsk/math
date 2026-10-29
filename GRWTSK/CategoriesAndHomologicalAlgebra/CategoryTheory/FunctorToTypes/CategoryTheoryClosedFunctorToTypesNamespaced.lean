-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorHomEquiv.Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorHomEquiv.Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Closed/FunctorToTypes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jack McKoen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jack McKoen
-/
import Mathlib.CategoryTheory.Functor.FunctorHom
import Mathlib.CategoryTheory.Closed.Monoidal

/-!
# Functors to Type are closed.

Show that `C ⥤ Type max w v u` is monoidal closed for `C` a category in `Type u` with morphisms in
`Type v`, and `w` an arbitrary universe.

## TODO
It should be shown that `C ⥤ Type max w v u` is cartesian closed.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorHomEquiv.Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2

universe w v' v u u'

open CategoryTheory Functor MonoidalCategory

namespace CategoryTheory.FunctorToTypes

variable {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]

variable (F : C ⥤ Type max w v u)

/-- When `F G H : C ⥤ Type max w v u`, we have `(G ⟶ F.functorHom H) ≃ (F ⊗ G ⟶ H)`. -/
@[simps!]
def functorHomEquiv (G H : C ⥤ Type max w v u) : (G ⟶ F.functorHom H) ≃ (F ⊗ G ⟶ H) :=
  (Functor.functorHomEquiv F H G).trans (homObjEquiv F H G)

/-- Given a morphism `f : G ⟶ H`, an object `c : C`, and an element of `(F.functorHom G).obj c`,
construct an element of `(F.functorHom H).obj c`. -/
@[simps]
def rightAdj_map {F G H : C ⥤ Type max w v u} (f : G ⟶ H) (c : C) (a : (F.functorHom G).obj c) :
    (F.functorHom H).obj c where
  app d b := a.app d b ≫ f.app d
  naturality g h := by
    have := a.naturality g h
    change (F.map g ≫ a.app _ (h ≫ g)) ≫ _ = _
    aesop

/-- A right adjoint of `tensorLeft F`. -/
@[simps!]
def rightAdj : (C ⥤ Type max w v u) ⥤ C ⥤ Type max w v u where
  obj G := F.functorHom G
  map f := { app := rightAdj_map f }

/-- The adjunction `tensorLeft F ⊣ rightAdj F`. -/
def adj : tensorLeft F ⊣ rightAdj F where
  unit := {
    app := fun G ↦ (functorHomEquiv F G _).2 (𝟙 _)
    naturality := fun G H f ↦ by
      dsimp [rightAdj]
      ext _
      simp [FunctorToTypes.naturality] }
  counit := { app := fun G ↦ functorHomEquiv F _ G (𝟙 _) }

instance closed : Closed F where
  rightAdj := rightAdj F
  adj := adj F

instance monoidalClosed : MonoidalClosed (C ⥤ Type max w v u) where

end CategoryTheory.FunctorToTypes
