-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Connected.Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Constructions/Over/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Reid Barton, Bhavik Mehta
-/
import Mathlib.CategoryTheory.Limits.Connected
import Mathlib.CategoryTheory.Limits.Constructions.Over.Products
import Mathlib.CategoryTheory.Limits.Constructions.Over.Connected
import Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers
import Mathlib.CategoryTheory.Limits.Constructions.Equalizers

/-!
# Limits in the over category

Declare instances for limits in the over category: If `C` has finite wide pullbacks, `Over B` has
finite limits, and if `C` has arbitrary wide pullbacks then `Over B` has limits.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b

universe w v u

-- morphism levels before object levels. See note [category_theory universes].
open CategoryTheory CategoryTheory.Limits

variable {C : Type u} [Category.{v} C]
variable {X : C}

namespace CategoryTheory.Over

/-- Make sure we can derive pullbacks in `Over B`. -/
instance {B : C} [HasPullbacks C] : HasPullbacks (Over B) := by
  letI : HasLimitsOfShape (ULiftHom.{v} (ULift.{v} WalkingCospan)) C :=
    hasLimitsOfShape_of_equivalence (ULiftHomULiftCategory.equiv.{v} _)
  letI : Category (ULiftHom.{v} (ULift.{v} WalkingCospan)) := inferInstance
  exact hasLimitsOfShape_of_equivalence (ULiftHomULiftCategory.equiv.{v, v} _).symm

/-- Make sure we can derive equalizers in `Over B`. -/
instance {B : C} [HasEqualizers C] : HasEqualizers (Over B) := by
  letI : HasLimitsOfShape (ULiftHom.{v} (ULift.{v} WalkingParallelPair)) C :=
    hasLimitsOfShape_of_equivalence (ULiftHomULiftCategory.equiv.{v} _)
  letI : Category (ULiftHom.{v} (ULift.{v} WalkingParallelPair)) := inferInstance
  exact hasLimitsOfShape_of_equivalence (ULiftHomULiftCategory.equiv.{v, v} _).symm

instance hasFiniteLimits {B : C} [HasFiniteWidePullbacks C] : HasFiniteLimits (Over B) := by
  apply @hasFiniteLimits_of_hasEqualizers_and_finite_products _ _ ?_ ?_
  · exact ConstructProducts.over_finiteProducts_of_finiteWidePullbacks
  · apply @hasEqualizers_of_hasPullbacks_and_binary_products _ _ ?_ _
    haveI : HasPullbacks C := ⟨inferInstance⟩
    exact ConstructProducts.over_binaryProduct_of_pullback

instance hasLimits {B : C} [HasWidePullbacks.{w} C] : HasLimitsOfSize.{w, w} (Over B) := by
  apply @has_limits_of_hasEqualizers_and_products _ _ ?_ ?_
  · exact ConstructProducts.over_products_of_widePullbacks
  · apply @hasEqualizers_of_hasPullbacks_and_binary_products _ _ ?_ _
    haveI : HasPullbacks C := ⟨inferInstance⟩
    exact ConstructProducts.over_binaryProduct_of_pullback

end CategoryTheory.Over
