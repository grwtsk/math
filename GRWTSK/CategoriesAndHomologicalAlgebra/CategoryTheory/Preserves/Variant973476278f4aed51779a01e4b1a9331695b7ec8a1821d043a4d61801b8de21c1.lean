-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorPreservesInjectiveObjects.Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorPreservesInjectiveObjects.Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Preadditive/Injective/Preserves.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Preadditive.Injective.Basic

/-!
# Preservation of injective objects

We define a typeclass `Functor.PreservesInjectiveObjects`.

We restate the existing result that if `F ⊣ G` is an adjunction and `F` preserves monomorphisms,
then `G` preserves injective objects. We show that the converse is true if the codomain of `F` has
enough injectives.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorPreservesInjectiveObjects.Variantf2c63726e7134266d9dcbebfae9ea9945f5501353dcfdea01fa857914b574452

universe v₁ v₂ v₃ u₁ u₂ u₃

namespace CategoryTheory

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
  {E : Type u₃} [Category.{v₃} E]

/-- A functor preserves injective objects if it maps injective objects to injective objects. -/
class Functor.PreservesInjectiveObjects (F : C ⥤ D) : Prop where
  injective_obj {X : C} : Injective X → Injective (F.obj X)

/-- See `Functor.injective_obj_of_injective` for a variant taking `Injective X` as an explicit
argument. -/
instance Functor.injective_obj (F : C ⥤ D) [F.PreservesInjectiveObjects] (X : C) [Injective X] :
    Injective (F.obj X) :=
  Functor.PreservesInjectiveObjects.injective_obj inferInstance

/-- See `Functor.injective_obj` for a variant taking `Injective X` as a typeclass argument. -/
theorem Functor.injective_obj_of_injective (F : C ⥤ D) [F.PreservesInjectiveObjects] {X : C}
    (h : Injective X) : Injective (F.obj X) :=
  Functor.PreservesInjectiveObjects.injective_obj h

instance Functor.preservesInjectiveObjects_comp (F : C ⥤ D) (G : D ⥤ E)
    [F.PreservesInjectiveObjects] [G.PreservesInjectiveObjects] :
    (F ⋙ G).PreservesInjectiveObjects where
  injective_obj := G.injective_obj_of_injective ∘ F.injective_obj_of_injective

theorem Functor.preservesInjectiveObjects_of_adjunction_of_preservesMonomorphisms
    {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G) [F.PreservesMonomorphisms] :
    G.PreservesInjectiveObjects where
  injective_obj h := adj.map_injective _ h

instance (priority := low) Functor.preservesInjectiveObjects_of_isEquivalence {F : C ⥤ D}
    [IsEquivalence F] : F.PreservesInjectiveObjects :=
  preservesInjectiveObjects_of_adjunction_of_preservesMonomorphisms
    F.asEquivalence.symm.toAdjunction

theorem Functor.preservesMonomorphisms_of_adjunction_of_preservesInjectiveObjects
    [EnoughInjectives D] {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G) [G.PreservesInjectiveObjects] :
    F.PreservesMonomorphisms where
  preserves {X Y} f _ := by
    suffices ∃ h, F.map f ≫ h = Injective.ι (F.obj X) from mono_of_mono_fac this.choose_spec
    have : Injective (G.obj (Injective.under (F.obj X))) := G.injective_obj _
    exact ⟨F.map (Injective.factorThru (adj.unit.app X ≫ G.map (Injective.ι _)) f) ≫
      adj.counit.app (Injective.under (F.obj X)), by simp [← Functor.map_comp_assoc]⟩

end CategoryTheory
