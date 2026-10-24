# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variant423919be59aac63ae1532ef91113101622e8562ba32340326d0ef1f7c00649b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3aa2c8538790dcaf17ddf1aee54060f307607b3f` · SHA-256 `f2662f554971172f4355aacd7805545c478b44524b9b051e3cb87515832de0fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CountPLtLengthIff.Variant20c6f2d956ed55e119437c7a42a1e7f52d32d18f699e1afe3b0ac22765de9938","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20c6f2d956ed55e119437c7a42a1e7f52d32d18f699e1afe3b0ac22765de9938","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CountPLtLengthIff.Variant20c6f2d956ed55e119437c7a42a1e7f52d32d18f699e1afe3b0ac22765de9938","mathematical_subject":"Computation.DataStructures","original_sha256":"20c6f2d956ed55e119437c7a42a1e7f52d32d18f699e1afe3b0ac22765de9938","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/Count.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Parikshit Khanna. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Parikshit Khanna, Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Mario Carneiro
-/
import Batteries.Data.List.Perm
import Mathlib.Tactic.Common

/-!
# Counting in lists

This file proves basic properties of `List.countP` and `List.count`, which count the number of
elements of a list satisfying a predicate and equal to a given element respectively.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CountPLtLengthIff.Variant20c6f2d956ed55e119437c7a42a1e7f52d32d18f699e1afe3b0ac22765de9938

assert_not_exists Monoid Set.range

open Nat

variable {α β : Type*}

namespace List

@[simp]
theorem countP_lt_length_iff {l : List α} {p : α → Bool} :
    l.countP p < l.length ↔ ∃ a ∈ l, p a = false := by
  simp [Nat.lt_iff_le_and_ne, countP_le_length]

variable [DecidableEq α] {l l₁ l₂ : List α}

@[simp]
theorem count_lt_length_iff {a : α} : l.count a < l.length ↔ ∃ b ∈ l, b ≠ a := by simp [count]

lemma countP_erase (p : α → Bool) (l : List α) (a : α) :
    countP p (l.erase a) = countP p l - if a ∈ l ∧ p a then 1 else 0 := by
  rw [countP_eq_length_filter, countP_eq_length_filter, ← erase_filter, length_erase]
  aesop

lemma count_diff (a : α) (l₁ : List α) :
    ∀ l₂, count a (l₁.diff l₂) = count a l₁ - count a l₂
  | [] => rfl
  | b :: l₂ => by
    simp only [diff_cons, count_diff, count_erase, beq_iff_eq, Nat.sub_right_comm, count_cons,
      Nat.sub_add_eq]

lemma countP_diff (hl : l₂ <+~ l₁) (p : α → Bool) :
    countP p (l₁.diff l₂) = countP p l₁ - countP p l₂ := by
  refine (Nat.sub_eq_of_eq_add ?_).symm
  rw [← countP_append]
  exact ((subperm_append_diff_self_of_count_le <| subperm_ext_iff.1 hl).symm.trans
    perm_append_comm).countP_eq _

@[simp]
theorem count_map_of_injective [DecidableEq β] (l : List α) (f : α → β)
    (hf : Function.Injective f) (x : α) : count (f x) (map f l) = count x l := by
  simp only [count, countP_map]
  unfold Function.comp
  simp only [hf.beq_eq]

end List
```
