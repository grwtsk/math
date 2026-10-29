-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EndMonoidal.Variantd69274c9143f3c83a6e3f51ecc0f1a9e3bbb7335625103cb5838ff5833895580","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d69274c9143f3c83a6e3f51ecc0f1a9e3bbb7335625103cb5838ff5833895580","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EndMonoidal.Variantd69274c9143f3c83a6e3f51ecc0f1a9e3bbb7335625103cb5838ff5833895580","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d69274c9143f3c83a6e3f51ecc0f1a9e3bbb7335625103cb5838ff5833895580","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Bicategory/End.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Bicategory.Basic
import Mathlib.CategoryTheory.Monoidal.Category


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EndMonoidal.Variantd69274c9143f3c83a6e3f51ecc0f1a9e3bbb7335625103cb5838ff5833895580

#align_import category_theory.bicategory.End from "leanprover-community/mathlib"@"6abb6de90754c5613a3aab6261eea9e5c72d539d"

/-!
# Endomorphisms of an object in a bicategory, as a monoidal category.
-/


namespace CategoryTheory

variable {C : Type*} [Bicategory C]

/-- The endomorphisms of an object in a bicategory can be considered as a monoidal category. -/
def EndMonoidal (X : C) :=
  X ⟶ X -- deriving Category
#align category_theory.End_monoidal CategoryTheory.EndMonoidal

-- Porting note: Deriving this fails in the definition above.
-- Adding category instance manually.
instance (X : C) : Category (EndMonoidal X) :=
  show Category (X ⟶ X) from inferInstance

instance (X : C) : Inhabited (EndMonoidal X) :=
  ⟨𝟙 X⟩

open Bicategory

open MonoidalCategory

open Bicategory

attribute [local simp] EndMonoidal in
instance (X : C) : MonoidalCategory (EndMonoidal X) where
  tensorObj f g := f ≫ g
  whiskerLeft {f g h} η := f ◁ η
  whiskerRight {f g} η h := η ▷ h
  tensorUnit' := 𝟙 _
  associator f g h := α_ f g h
  leftUnitor f := λ_ f
  rightUnitor f := ρ_ f
  tensor_comp := by
    intros
    dsimp
    rw [Bicategory.whiskerLeft_comp, Bicategory.comp_whiskerRight, Category.assoc, Category.assoc,
      Bicategory.whisker_exchange_assoc]

end CategoryTheory
