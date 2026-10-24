# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantfff6c508589d41dda610ab3d0b6ec6330606bc552a1578482e8e491b7b7404af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3adf624bbcc37eb3d135b2f78e18819afbd0a331` · SHA-256 `6ec660ae3a1cb9fce70bb5f1aabb055b238d06800edf7702468ef2ac001278ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NodupPairwiseOfSetPairwise.Variant881d7715957d0dd295b77557163b202f3a6325e700511acac9dec063b0638052","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"881d7715957d0dd295b77557163b202f3a6325e700511acac9dec063b0638052","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NodupPairwiseOfSetPairwise.Variant881d7715957d0dd295b77557163b202f3a6325e700511acac9dec063b0638052","mathematical_subject":"Computation.DataStructures","original_sha256":"881d7715957d0dd295b77557163b202f3a6325e700511acac9dec063b0638052","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/Pairwise/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kenny Lau
-/
import Mathlib.Data.List.Nodup
import Mathlib.Data.Set.Pairwise.Basic

/-!
# Translating pairwise relations on sets to lists

On a list with no duplicates, the condition of `Set.Pairwise` and `List.Pairwise` are equivalent.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NodupPairwiseOfSetPairwise.Variant881d7715957d0dd295b77557163b202f3a6325e700511acac9dec063b0638052

variable {α : Type*} {r : α → α → Prop}

namespace List

variable {l : List α}

theorem Nodup.pairwise_of_set_pairwise {l : List α} {r : α → α → Prop} (hl : l.Nodup)
    (h : {x | x ∈ l}.Pairwise r) : l.Pairwise r :=
  hl.pairwise_of_forall_ne h

@[simp]
theorem Nodup.pairwise_coe [IsSymm α r] (hl : l.Nodup) :
    { a | a ∈ l }.Pairwise r ↔ l.Pairwise r := by
  induction l with | nil => simp | cons a l ih => ?_
  rw [List.nodup_cons] at hl
  have : ∀ b ∈ l, ¬a = b → r a b ↔ r a b := fun b hb =>
    imp_iff_right (ne_of_mem_of_not_mem hb hl.1).symm
  simp [Set.setOf_or, Set.pairwise_insert_of_symmetric fun _ _ ↦ symm_of r, ih hl.2, and_comm,
    forall₂_congr this]

end List
```
