-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorArrows.Variant0929b0b97e036baf7a9e95ab084df8c7f9bc3c6d97d3605dc4eb347d5ffd330a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0929b0b97e036baf7a9e95ab084df8c7f9bc3c6d97d3605dc4eb347d5ffd330a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorArrows.Variant0929b0b97e036baf7a9e95ab084df8c7f9bc3c6d97d3605dc4eb347d5ffd330a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0929b0b97e036baf7a9e95ab084df8c7f9bc3c6d97d3605dc4eb347d5ffd330a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/ComposableArrows/One.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.ComposableArrows.Basic

/-!
# Functors to `ComposableArrows C 1`

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorArrows.Variant0929b0b97e036baf7a9e95ab084df8c7f9bc3c6d97d3605dc4eb347d5ffd330a

@[expose] public section

universe v u

namespace CategoryTheory

namespace ComposableArrows

variable (C : Type u) [Category.{v} C]

/-- The functor `ComposableArrows C n ⥤ ComposableArrows C 1`
which sends `S` to `mk₁ (S.map' i j)` when `i`, `j` and `n`
are such that `i ≤ j` and `j ≤ n`. -/
@[implicit_reducible, simps]
def functorArrows (i j n : ℕ) (hij : i ≤ j := by lia) (hj : j ≤ n := by lia) :
    ComposableArrows C n ⥤ ComposableArrows C 1 where
  obj S := mk₁ (S.map' i j)
  map {S S'} φ := homMk₁ (φ.app _) (φ.app _) (φ.naturality _)

set_option backward.defeqAttrib.useBackward true in
/-- The natural transformation `functorArrows C i j n ⟶ functorArrows C i' j' n`
when `i ≤ i'` and `j ≤ j'`. -/
@[simps]
def mapFunctorArrows (i j i' j' n : ℕ)
    (_ : i ≤ j := by lia) (_ : i' ≤ j' := by lia)
    (_ : i ≤ i' := by lia) (_ : j ≤ j' := by lia)
    (_ : j' ≤ n := by lia) :
    functorArrows C i j n ⟶ functorArrows C i' j' n where
  app S := homMk₁ (S.map' i i') (S.map' j j')
    (by simp [← Functor.map_comp])

end ComposableArrows

end CategoryTheory
