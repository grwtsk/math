-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variant72be6e839831f6c258a339a7794bd44bb612fae7a78a4a8aca99a70948d9f364","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72be6e839831f6c258a339a7794bd44bb612fae7a78a4a8aca99a70948d9f364","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Connected.Variant72be6e839831f6c258a339a7794bd44bb612fae7a78a4a8aca99a70948d9f364","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"72be6e839831f6c258a339a7794bd44bb612fae7a78a4a8aca99a70948d9f364","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Constructions/Over/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Reid Barton, Bhavik Mehta
-/
module

public import Mathlib.CategoryTheory.Limits.Connected
public import Mathlib.CategoryTheory.Limits.Constructions.Over.Products
public import Mathlib.CategoryTheory.Limits.Constructions.Over.Connected
public import Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers
public import Mathlib.CategoryTheory.Limits.Constructions.Equalizers

/-!
# Limits in the over category

Declare instances for limits in the over category: If `C` has finite wide pullbacks, `Over B` has
finite limits, and if `C` has arbitrary wide pullbacks then `Over B` has limits.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variant72be6e839831f6c258a339a7794bd44bb612fae7a78a4a8aca99a70948d9f364

public section


universe w v u

-- morphism levels before object levels. See note [category_theory universes].
open CategoryTheory CategoryTheory.Limits

variable {C : Type u} [Category.{v} C]

namespace CategoryTheory.Over

/-- Make sure we can derive pullbacks in `Over B`. -/
instance {B : C} [HasPullbacks C] : HasPullbacks (Over B) := inferInstance

/-- Make sure we can derive equalizers in `Over B`. -/
instance {B : C} [HasEqualizers C] : HasEqualizers (Over B) := inferInstance

instance hasFiniteLimits {B : C} [HasFiniteWidePullbacks C] : HasFiniteLimits (Over B) := by
  have := ConstructProducts.over_finiteProducts_of_finiteWidePullbacks (B := B)
  have := hasEqualizers_of_hasPullbacks_and_binary_products (C := Over B)
  apply hasFiniteLimits_of_hasEqualizers_and_finite_products

instance hasLimits {B : C} [HasWidePullbacks.{w} C] : HasLimitsOfSize.{w, w} (Over B) := by
  have := ConstructProducts.over_binaryProduct_of_pullback (B := B)
  have := hasEqualizers_of_hasPullbacks_and_binary_products (C := Over B)
  have := ConstructProducts.over_products_of_widePullbacks (B := B)
  apply has_limits_of_hasEqualizers_and_products

end Over

namespace Under

instance {B : C} [HasFiniteWidePushouts C] : HasFiniteColimits (Under B) := by
  rw [← hasFiniteLimits_opposite_iff]
  exact hasFiniteLimits_of_hasLimitsLimits_of_createsFiniteLimits (Over.opEquivOpUnder _).inverse

instance {B : C} [HasWidePushouts.{w} C] : HasColimitsOfSize.{w, w} (Under B) := by
  rw [← hasLimitsOfSize_opposite_iff]
  exact hasLimits_of_hasLimits_createsLimits (Over.opEquivOpUnder _).inverse

end CategoryTheory.Under
