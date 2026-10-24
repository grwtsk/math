-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsFilteredOfRepresentablyCoflat.Variantef2ff62397a1eaaca080358b63d035751bdb83151bd1dd2b11b5b1d4c566d1e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef2ff62397a1eaaca080358b63d035751bdb83151bd1dd2b11b5b1d4c566d1e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsFilteredOfRepresentablyCoflat.Variantef2ff62397a1eaaca080358b63d035751bdb83151bd1dd2b11b5b1d4c566d1e6","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ef2ff62397a1eaaca080358b63d035751bdb83151bd1dd2b11b5b1d4c566d1e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Filtered/Flat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
import Mathlib.CategoryTheory.Filtered.CostructuredArrow
import Mathlib.CategoryTheory.Functor.Flat

/-!
# Pulling back filteredness along representably flat functors

We show that if `F : C ⥤ D` is a representably coflat functor between two categories,
filteredness of `D` implies filteredness of `C`. Dually, if `F` is representably flat,
cofilteredness of `D` implies cofilteredness of `C`.

Transferring (co)filteredness *along* representably (co)flat functors is given by
`IsFiltered.of_final` and its dual, since every representably flat functor is final and every
representably coflat functor is initial.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsFilteredOfRepresentablyCoflat.Variantef2ff62397a1eaaca080358b63d035751bdb83151bd1dd2b11b5b1d4c566d1e6

universe v₁ v₂ u₁ u₂

namespace CategoryTheory

open Limits

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
