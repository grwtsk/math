# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sum.Variant371cd78baf42af8824d8671cd61083acb2144bb3a01db0faf89e5f0e4a69228e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8255f80ac603d6faa92de5f5867f70fae7deaa3` · SHA-256 `dee8532b37f382428793d1b9f743371b8a7ce26a30c1d47487532f76cad2f3f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FromSum.Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FromSum.Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Join/Sum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Robin Carlier. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Carlier
-/
import Mathlib.CategoryTheory.Join.Basic
import Mathlib.CategoryTheory.Sums.Basic

/-!
# Embedding of `C ⊕ D` into `C ⋆ D`

This file constructs a canonical functor `Join.fromSum` from `C ⊕ D` to `C ⋆ D` and give
its characterization in terms of the canonical inclusions.
We also provide `Faithful` and `EssSurj` instances on this functor.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FromSum.Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c

namespace CategoryTheory.Join

variable (C D : Type*) [Category C] [Category D]

/-- The canonical functor from the sum to the join.
It sends `inl c` to `left c` and `inr d` to `right d`. -/
@[simps! obj] -- Maps get characterized w.r.t the inclusions below
def fromSum : C ⊕ D ⥤ C ⋆ D := (inclLeft C D).sum' <| inclRight C D

variable {C} in
@[simp]
lemma fromSum_map_inl {c c' : C} (f : c ⟶ c') :
    (fromSum C D).map ((Sum.inl_ C D).map f) = (inclLeft C D).map f :=
  rfl

variable {D} in
@[simp]
lemma fromSum_map_inr {d d' : D} (f : d ⟶ d') :
    (fromSum C D).map ((Sum.inr_ C D).map f) = (inclRight C D).map f :=
  rfl

/-- Characterization of `fromSum` with respect to the left inclusion. -/
@[simps! hom_app inv_app]
def inlCompFromSum : Sum.inl_ C D ⋙ fromSum C D ≅ inclLeft C D := Functor.inlCompSum' _ _

/-- Characterization of `fromSum` with respect to the right inclusion. -/
@[simps! hom_app inv_app]
def inrCompFromSum : Sum.inr_ C D ⋙ fromSum C D ≅ inclRight C D := Functor.inrCompSum' _ _

instance : (fromSum C D).EssSurj where
  mem_essImage
    | left c => Functor.obj_mem_essImage _ (Sum.inl c)
    | right d => Functor.obj_mem_essImage _ (Sum.inr d)

instance : (fromSum C D).Faithful where
  map_injective {x y} h h' heq := by
    cases h <;> cases h'
    all_goals
      simp only [fromSum_obj, Sum.inl__obj, fromSum_map_inl, Sum.inr__obj, fromSum_map_inr] at heq
      simp [Functor.map_injective _ heq]

end CategoryTheory.Join
```
