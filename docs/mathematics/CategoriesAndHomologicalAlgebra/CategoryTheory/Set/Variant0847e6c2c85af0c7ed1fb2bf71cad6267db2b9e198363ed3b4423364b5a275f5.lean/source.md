# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Set.Variant0847e6c2c85af0c7ed1fb2bf71cad6267db2b9e198363ed3b4423364b5a275f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9716bdccf051feaf32a24beb9a281eca6eecdce0` · SHA-256 `6127d4323e85691ec442a7e471a8b81c7ca29c6af3cabe552c69226ff99fb06b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variantbb2690591eb8dbd5bc2bdacd99eb244d38103661c09624cead222bf09c5a1dfc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb2690591eb8dbd5bc2bdacd99eb244d38103661c09624cead222bf09c5a1dfc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorToTypes.Variantbb2690591eb8dbd5bc2bdacd99eb244d38103661c09624cead222bf09c5a1dfc","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"bb2690591eb8dbd5bc2bdacd99eb244d38103661c09624cead222bf09c5a1dfc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Data.Set.FunctorToTypes
import Mathlib.CategoryTheory.Limits.Lattice
import Mathlib.CategoryTheory.Limits.Preserves.Basic
import Mathlib.CategoryTheory.Limits.Types.Filtered

/-!
# The functor from `Set X` to types preserves filtered colimits

Given `X : Type u`, the functor `Set.functorToTypes : Set X ⥤ Type u`
which sends `A : Set X` to its underlying type preserves filtered colimits.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variantbb2690591eb8dbd5bc2bdacd99eb244d38103661c09624cead222bf09c5a1dfc

universe w w' u

open CategoryTheory Limits CompleteLattice

namespace Set

open CompleteLattice in
instance {J : Type w} [Category.{w'} J] {X : Type u} [IsFilteredOrEmpty J] :
    PreservesColimitsOfShape J (functorToTypes (X := X)) where
  preservesColimit {F} := by
    apply preservesColimit_of_preserves_colimit_cocone (colimitCocone F).isColimit
    apply Types.FilteredColimit.isColimitOf
    · rintro ⟨x, hx⟩
      simp only [colimitCocone_cocone_pt, iSup_eq_iUnion, mem_iUnion] at hx
      obtain ⟨i, hi⟩ := hx
      exact ⟨i, ⟨x, hi⟩, rfl⟩
    · intro i j ⟨x, hx⟩ ⟨y, hy⟩ h
      obtain rfl : x = y := by simpa using h
      exact ⟨IsFiltered.max i j, IsFiltered.leftToMax i j, IsFiltered.rightToMax i j, rfl⟩

end Set
```
