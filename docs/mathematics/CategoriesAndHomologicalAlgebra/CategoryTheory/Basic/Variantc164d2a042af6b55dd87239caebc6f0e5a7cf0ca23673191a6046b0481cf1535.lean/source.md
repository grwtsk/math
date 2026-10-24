# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantc164d2a042af6b55dd87239caebc6f0e5a7cf0ca23673191a6046b0481cf1535

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ae77ce0dd5619ea9aa9f5101e63804fb06a0529` · SHA-256 `00434d13acda51841fbac6637bf15da4b7a4ffa12f99d04c1703233374e96fd8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsThinIff.Variant63b3ff5473bfdcca86b2e82d8d73e02d0e5400421899151020e9e08ea972ac19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63b3ff5473bfdcca86b2e82d8d73e02d0e5400421899151020e9e08ea972ac19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsThinIff.Variant63b3ff5473bfdcca86b2e82d8d73e02d0e5400421899151020e9e08ea972ac19","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"63b3ff5473bfdcca86b2e82d8d73e02d0e5400421899151020e9e08ea972ac19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Groupoid/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Rémi Bottinelli. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémi Bottinelli
-/
import Mathlib.CategoryTheory.Groupoid
import Mathlib.Combinatorics.Quiver.Basic

/-!
This file defines a few basic properties of groupoids.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsThinIff.Variant63b3ff5473bfdcca86b2e82d8d73e02d0e5400421899151020e9e08ea972ac19

namespace CategoryTheory

namespace Groupoid

variable (C : Type*) [Groupoid C]

section Thin

theorem isThin_iff : Quiver.IsThin C ↔ ∀ c : C, Subsingleton (c ⟶ c) := by
  refine ⟨fun h c => h c c, fun h c d => Subsingleton.intro fun f g => ?_⟩
  haveI := h d
  calc
    f = f ≫ inv g ≫ g := by simp only [inv_eq_inv, IsIso.inv_hom_id, Category.comp_id]
    _ = f ≫ inv f ≫ g := by congr 1
                            simp only [inv_eq_inv, IsIso.inv_hom_id, eq_iff_true_of_subsingleton]
    _ = g := by simp only [inv_eq_inv, IsIso.hom_inv_id_assoc]

end Thin

section Disconnected

/-- A subgroupoid is totally disconnected if it only has loops. -/
def IsTotallyDisconnected :=
  ∀ c d : C, (c ⟶ d) → c = d

end Disconnected

end Groupoid

end CategoryTheory
```
