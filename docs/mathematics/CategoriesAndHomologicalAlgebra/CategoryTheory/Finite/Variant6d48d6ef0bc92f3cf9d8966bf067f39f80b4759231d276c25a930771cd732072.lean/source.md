# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Finite.Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff69b4814becff0cd4129aa8cb24b14140860b66` · SHA-256 `d350655a178fc677d6d9ee3d42c0265be45eceb9405401cc2a055771ed6a4f3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorIsFinitelyAccessible.Variantf5c7a8916065557e98b354ae5c572e98ee80a08f74b0ce0b52ae55501217ecb9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5c7a8916065557e98b354ae5c572e98ee80a08f74b0ce0b52ae55501217ecb9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorIsFinitelyAccessible.Variantf5c7a8916065557e98b354ae5c572e98ee80a08f74b0ce0b52ae55501217ecb9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f5c7a8916065557e98b354ae5c572e98ee80a08f74b0ce0b52ae55501217ecb9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Presentable/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.Limits.Filtered
import Mathlib.CategoryTheory.Limits.Preserves.Filtered
import Mathlib.CategoryTheory.Presentable.Basic

/-!
# Finitely Presentable Objects

We define finitely presentable objects as a synonym for `ℵ₀`-presentable objects,
and link this definition with the preservation of filtered colimits.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorIsFinitelyAccessible.Variantf5c7a8916065557e98b354ae5c572e98ee80a08f74b0ce0b52ae55501217ecb9

universe w v' v u' u

namespace CategoryTheory

open Limits Opposite Cardinal

variable {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]

attribute [local instance] fact_isRegular_aleph0

/-- A functor `F : C ⥤ D` is finitely accessible if it is `ℵ₀`-accessible.
Equivalently, it preserves all filtered colimits.
See `CategoryTheory.Functor.IsFinitelyAccessible_iff_preservesFilteredColimits`. -/
abbrev Functor.IsFinitelyAccessible (F : C ⥤ D) : Prop := IsCardinalAccessible.{w} F ℵ₀

lemma Functor.IsFinitelyAccessible_iff_preservesFilteredColimitsOfSize {F : C ⥤ D} :
    IsFinitelyAccessible.{w} F ↔ PreservesFilteredColimitsOfSize.{w, w} F := by
  refine ⟨fun ⟨H⟩ ↦ ⟨?_⟩, fun ⟨H⟩ ↦ ⟨?_⟩⟩ <;>
    simp only [isCardinalFiltered_aleph0_iff] at * <;>
    exact H

lemma Functor.isFinitelyAccessible_iff_preservesFilteredColimits {F : C ⥤ D} :
    IsFinitelyAccessible.{v'} F ↔ PreservesFilteredColimits F :=
  IsFinitelyAccessible_iff_preservesFilteredColimitsOfSize

/-- An object `X` is finitely presentable if `Hom(X, -)` preserves all filtered colimits. -/
abbrev IsFinitelyPresentable (X : C) : Prop :=
  IsCardinalPresentable.{w} X ℵ₀

lemma isFinitelyPresentable_iff_preservesFilteredColimitsOfSize {X : C} :
    IsFinitelyPresentable.{w} X ↔ PreservesFilteredColimitsOfSize.{w, w} (coyoneda.obj (op X)) :=
  Functor.IsFinitelyAccessible_iff_preservesFilteredColimitsOfSize

lemma isFinitelyPresentable_iff_preservesFilteredColimits {X : C} :
    IsFinitelyPresentable.{v} X ↔ PreservesFilteredColimits (coyoneda.obj (op X)) :=
  Functor.IsFinitelyAccessible_iff_preservesFilteredColimitsOfSize

lemma HasCardinalFilteredColimits_iff_hasFilteredColimitsOfSize :
    HasCardinalFilteredColimits.{w} C ℵ₀ ↔ HasFilteredColimitsOfSize.{w, w} C := by
  refine ⟨fun ⟨H⟩ ↦ ⟨?_⟩, fun ⟨H⟩ ↦ ⟨?_⟩⟩ <;>
    simp only [isCardinalFiltered_aleph0_iff] at * <;>
    exact H

lemma HasCardinalFilteredColimits_iff_hasFilteredColimits :
    HasCardinalFilteredColimits.{v} C ℵ₀ ↔ HasFilteredColimits C :=
  HasCardinalFilteredColimits_iff_hasFilteredColimitsOfSize

end CategoryTheory
```
