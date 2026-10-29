-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoidalLinear.Variantf9d11546ec2ce23ff133cba76cdf2be02d34f6bfbf19d3c73c090b6f56c9a043","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9d11546ec2ce23ff133cba76cdf2be02d34f6bfbf19d3c73c090b6f56c9a043","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MonoidalLinear.Variantf9d11546ec2ce23ff133cba76cdf2be02d34f6bfbf19d3c73c090b6f56c9a043","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f9d11546ec2ce23ff133cba76cdf2be02d34f6bfbf19d3c73c090b6f56c9a043","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Linear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Linear.LinearFunctor
import Mathlib.CategoryTheory.Monoidal.Preadditive

/-!
# Linear monoidal categories

A monoidal category is `MonoidalLinear R` if it is monoidal preadditive and
tensor product of morphisms is `R`-linear in both factors.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoidalLinear.Variantf9d11546ec2ce23ff133cba76cdf2be02d34f6bfbf19d3c73c090b6f56c9a043

namespace CategoryTheory

open CategoryTheory.Limits

open CategoryTheory.MonoidalCategory

variable (R : Type*) [Semiring R]
variable (C : Type*) [Category C] [Preadditive C] [Linear R C]
variable [MonoidalCategory C]

-- Porting note: added `MonoidalPreadditive` as argument ``
/-- A category is `MonoidalLinear R` if tensoring is `R`-linear in both factors.
-/
class MonoidalLinear [MonoidalPreadditive C] : Prop where
  whiskerLeft_smul : ∀ (X : C) {Y Z : C} (r : R) (f : Y ⟶ Z) , X ◁ (r • f) = r • (X ◁ f) := by
    aesop_cat
  smul_whiskerRight : ∀ (r : R) {Y Z : C} (f : Y ⟶ Z) (X : C), (r • f) ▷ X = r • (f ▷ X) := by
    aesop_cat

attribute [simp] MonoidalLinear.whiskerLeft_smul MonoidalLinear.smul_whiskerRight

variable {C}
variable [MonoidalPreadditive C] [MonoidalLinear R C]

instance tensorLeft_linear (X : C) : (tensorLeft X).Linear R where

instance tensorRight_linear (X : C) : (tensorRight X).Linear R where

instance tensoringLeft_linear (X : C) : ((tensoringLeft C).obj X).Linear R where

instance tensoringRight_linear (X : C) : ((tensoringRight C).obj X).Linear R where

/-- A faithful linear monoidal functor to a linear monoidal category
ensures that the domain is linear monoidal. -/
theorem monoidalLinearOfFaithful {D : Type*} [Category D] [Preadditive D] [Linear R D]
    [MonoidalCategory D] [MonoidalPreadditive D] (F : D ⥤ C) [F.Monoidal] [F.Faithful]
    [F.Linear R] : MonoidalLinear R D :=
  { whiskerLeft_smul := by
      intros X Y Z r f
      apply F.map_injective
      rw [Functor.Monoidal.map_whiskerLeft]
      simp
    smul_whiskerRight := by
      intros r X Y f Z
      apply F.map_injective
      rw [Functor.Monoidal.map_whiskerRight]
      simp }

end CategoryTheory
