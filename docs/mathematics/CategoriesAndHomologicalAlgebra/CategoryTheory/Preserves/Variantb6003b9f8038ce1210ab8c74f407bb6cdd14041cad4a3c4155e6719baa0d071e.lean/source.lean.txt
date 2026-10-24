-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorPreservesProjectiveObjects.Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorPreservesProjectiveObjects.Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Preadditive/Projective/Preserves.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Preadditive.Projective.Basic

/-!
# Preservation of projective objects

We define a typeclass `Functor.PreservesProjectiveObjects`.

We restate the existing result that if `F ⊣ G` is an adjunction and `G` preserves monomorphisms,
then `F` preserves projective objects. We show that the converse is true if the domain of `F` has
enough projectives.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorPreservesProjectiveObjects.Variant7744a1610fa96f67d658fad900ea4bf2c740d6d5afb46f8c5fb0225774e39568

universe v₁ v₂ v₃ u₁ u₂ u₃

namespace CategoryTheory

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
  {E : Type u₃} [Category.{v₃} E]

/-- A functor preserves projective objects if it maps projective objects to projective objects. -/
class Functor.PreservesProjectiveObjects (F : C ⥤ D) : Prop where
  projective_obj {X : C} : Projective X → Projective (F.obj X)

/-- See `Functor.projective_obj_of_projective` for a variant taking `Projective X` as an explicit
argument. -/
instance Functor.projective_obj (F : C ⥤ D) [F.PreservesProjectiveObjects] (X : C) [Projective X] :
    Projective (F.obj X) :=
  Functor.PreservesProjectiveObjects.projective_obj inferInstance

/-- See `Functor.projective_obj` for a variant taking `Projective X` as a typeclass argument. -/
theorem Functor.projective_obj_of_projective (F : C ⥤ D) [F.PreservesProjectiveObjects] {X : C}
    (h : Projective X) : Projective (F.obj X) :=
  Functor.PreservesProjectiveObjects.projective_obj h

instance Functor.preservesProjectiveObjects_comp (F : C ⥤ D) (G : D ⥤ E)
    [F.PreservesProjectiveObjects] [G.PreservesProjectiveObjects] :
    (F ⋙ G).PreservesProjectiveObjects where
  projective_obj := G.projective_obj_of_projective ∘ F.projective_obj_of_projective

theorem Functor.preservesProjectiveObjects_of_adjunction_of_preservesEpimorphisms
    {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G) [G.PreservesEpimorphisms] :
    F.PreservesProjectiveObjects where
  projective_obj h := adj.map_projective _ h

instance (priority := low) Functor.preservesProjectiveObjects_of_isEquivalence {F : C ⥤ D}
    [IsEquivalence F] : F.PreservesProjectiveObjects :=
  preservesProjectiveObjects_of_adjunction_of_preservesEpimorphisms F.asEquivalence.toAdjunction

theorem Functor.preservesEpimorphisms_of_adjunction_of_preservesProjectiveObjects
    [EnoughProjectives C] {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G) [F.PreservesProjectiveObjects] :
    G.PreservesEpimorphisms where
  preserves {X Y} f _ := by
    suffices ∃ h, h ≫ G.map f = Projective.π (G.obj Y) from epi_of_epi_fac this.choose_spec
    have : Projective (F.obj (Projective.over (G.obj Y))) := F.projective_obj _
    refine ⟨adj.unit.app (Projective.over (G.obj Y)) ≫
      G.map (Projective.factorThru (F.map (Projective.π _) ≫ adj.counit.app Y) f), ?_⟩
    rw [Category.assoc, ← Functor.map_comp]
    simp

end CategoryTheory
