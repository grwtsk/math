# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant8075eef4a38f39d7be65307f7c7eb172eb315b0369c7beeb209a3fd672477e47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `232202a8b124fb404f0d4c3b470e63097a4a237e` · SHA-256 `db9361005a03f4ee139a63e9e1972af62bc75d4ecbe42096e6d4daecbded2824`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Canonical.Variant8f902fe28349d67e720b9804acdbcc5cee8a6069b7fcdf58545ad1ba30f241cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f902fe28349d67e720b9804acdbcc5cee8a6069b7fcdf58545ad1ba30f241cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Canonical.Variant8f902fe28349d67e720b9804acdbcc5cee8a6069b7fcdf58545ad1ba30f241cc","mathematical_subject":"Computation.DataStructures","original_sha256":"8f902fe28349d67e720b9804acdbcc5cee8a6069b7fcdf58545ad1ba30f241cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/BigOperators/Ring/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Stuart Presnell. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stuart Presnell
-/
module

public import Mathlib.Algebra.Order.Ring.Canonical

/-!
# Big operators on a list in ordered rings

This file contains the results concerning the interaction of list big operators with ordered rings.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Canonical.Variant8f902fe28349d67e720b9804acdbcc5cee8a6069b7fcdf58545ad1ba30f241cc

public section

variable {R : Type*}

/-- A variant of `List.prod_pos` for `CanonicallyOrderedAdd`. -/
@[simp] lemma CanonicallyOrderedAdd.list_prod_pos {α : Type*}
    [CommSemiring α] [PartialOrder α] [CanonicallyOrderedAdd α] [NoZeroDivisors α] [Nontrivial α] :
    ∀ {l : List α}, 0 < l.prod ↔ (∀ x ∈ l, (0 : α) < x)
  | [] => by simp
  | (x :: xs) => by simp_rw [List.prod_cons, List.forall_mem_cons, CanonicallyOrderedAdd.mul_pos,
    list_prod_pos]
```
