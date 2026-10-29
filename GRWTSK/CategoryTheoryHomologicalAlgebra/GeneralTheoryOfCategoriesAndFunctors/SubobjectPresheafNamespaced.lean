-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variantee0df15e0f7c91afcc080dd67d5ec4374599e905b0e92e0155699a0ee7733bb0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee0df15e0f7c91afcc080dd67d5ec4374599e905b0e92e0155699a0ee7733bb0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Presheaf.Variantee0df15e0f7c91afcc080dd67d5ec4374599e905b0e92e0155699a0ee7733bb0","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ee0df15e0f7c91afcc080dd67d5ec4374599e905b0e92e0155699a0ee7733bb0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Subobject/Presheaf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Pablo Donato. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Pablo Donato
-/
import Mathlib.CategoryTheory.Subobject.Basic
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback

/-!
# Subobjects presheaf

Following Section I.3 of [Sheaves in Geometry and Logic][MM92], we define the subobjects presheaf
`Subobject.presheaf C` mapping any object `X` to its type of subobjects `Subobject X`.

## Main definitions

Let `C` refer to a category with pullbacks.

* `CategoryTheory.Subobject.presheaf C` is the presheaf that sends every object `X : C` to its type
  of subobjects `Subobject X`, and every morphism `f : X ⟶ Y` to the function `Subobject Y →
  Subobject X` that maps every subobject of `Y` to its pullback along `f`.

## References

* [S. MacLane and I. Moerdijk, *Sheaves in geometry and logic: A first introduction to topos
  theory*][MM92]

## Tags

subobject, representable functor, presheaf, topos theory
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variantee0df15e0f7c91afcc080dd67d5ec4374599e905b0e92e0155699a0ee7733bb0

open CategoryTheory Subobject

namespace Subobject

universe u v

variable (C : Type u) [Category.{v} C] [Limits.HasPullbacks C]

/-- This is the presheaf that sends every object `X : C` to its type of subobjects `Subobject X`,
    and every morphism `f : X ⟶ Y` to the function `Subobject Y → Subobject X` that maps every
    subobject of `Y` to its pullback along `f`. -/
@[simps]
noncomputable def presheaf : Cᵒᵖ ⥤ Type max u v where
  obj X := Subobject X.unop
  map f := (pullback f.unop).obj
  map_id _ := by ext : 1; simp [pullback_id]
  map_comp _ _ := by ext : 1; simp [pullback_comp]

end Subobject
