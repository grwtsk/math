# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant1d8c6479f1da2d91d284d25eec6d4703a2339cdef1b8147b88a7f296e846a0c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01b95bdb509cbfe3bf2d8ce81ea60c3686b2a862` · SHA-256 `0e185e8f02a0900a6e635498bd033a7e9981529d9d5190a067e57577baf362ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsThinIff.Variantfd4c0e7933d6fef85ba63dbf76ab6ed375979a6f9c097c63a662d0250c55441f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd4c0e7933d6fef85ba63dbf76ab6ed375979a6f9c097c63a662d0250c55441f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsThinIff.Variantfd4c0e7933d6fef85ba63dbf76ab6ed375979a6f9c097c63a662d0250c55441f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"fd4c0e7933d6fef85ba63dbf76ab6ed375979a6f9c097c63a662d0250c55441f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Groupoid/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Rémi Bottinelli. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémi Bottinelli
-/
module

public import Mathlib.CategoryTheory.Groupoid
public import Mathlib.Combinatorics.Quiver.Basic

/-!
# Basic properties of groupoids

This file defines a few basic properties of groupoids.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsThinIff.Variantfd4c0e7933d6fef85ba63dbf76ab6ed375979a6f9c097c63a662d0250c55441f

@[expose] public section

namespace CategoryTheory

namespace Groupoid

variable (C : Type*) [Groupoid C]

section Thin

theorem isThin_iff : Quiver.IsThin C ↔ ∀ c : C, Subsingleton (c ⟶ c) := by
  refine ⟨fun h c => h c c, fun h c d => Subsingleton.intro fun f g => ?_⟩
  have := h d
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
