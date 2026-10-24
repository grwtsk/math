# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Flat.Variantec2fb0fd6f154a0a42ac53b4c8377d2ececf4fe6e7663bd8a6efbc582c57a454

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bd80315a38d48a85bbdf29e4e910cefd3421613` · SHA-256 `7245d92b6acbe17bdad573c7d69cc3a86f2cf7e2fc0f7fe2e540b83a39f196d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsFilteredOfRepresentablyCoflat.Variant8b9428fd067abc0f227283ea3e01201ded89c2dfc7602b1f9e5719324eadccb5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b9428fd067abc0f227283ea3e01201ded89c2dfc7602b1f9e5719324eadccb5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsFilteredOfRepresentablyCoflat.Variant8b9428fd067abc0f227283ea3e01201ded89c2dfc7602b1f9e5719324eadccb5","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8b9428fd067abc0f227283ea3e01201ded89c2dfc7602b1f9e5719324eadccb5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Filtered/Flat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
module

public import Mathlib.CategoryTheory.Filtered.CostructuredArrow
public import Mathlib.CategoryTheory.Functor.Flat

/-!
# Pulling back filteredness along representably flat functors

We show that if `F : C ⥤ D` is a representably coflat functor between two categories,
filteredness of `D` implies filteredness of `C`. Dually, if `F` is representably flat,
cofilteredness of `D` implies cofilteredness of `C`.

Transferring (co)filteredness *along* representably (co)flat functors is given by
`IsFiltered.of_final` and its dual, since every representably flat functor is final and every
representably coflat functor is initial.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsFilteredOfRepresentablyCoflat.Variant8b9428fd067abc0f227283ea3e01201ded89c2dfc7602b1f9e5719324eadccb5

public section

universe v₁ v₂ u₁ u₂

namespace CategoryTheory

variable {C : Type u₁} [Category.{v₁} C]
variable {D : Type u₂} [Category.{v₂} D]
variable (F : C ⥤ D)

lemma isFiltered_of_representablyCoflat [IsFiltered D] [RepresentablyCoflat F] : IsFiltered C :=
  isFiltered_of_isFiltered_costructuredArrow F (𝟭 _)

lemma isCofiltered_of_representablyFlat [IsCofiltered D] [RepresentablyFlat F] :
    IsCofiltered C := by
  have := isFiltered_of_representablyCoflat F.op
  exact isCofiltered_of_isFiltered_op C

end CategoryTheory
```
