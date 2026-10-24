# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bounds.Variant9f4f8fadaae79767a7adbbe8d38a6f1432a9d30ad3208925378bf1604f2bf55f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a407f61043d03108652fd114aed848094357f53` · SHA-256 `b17e89bdd85cb951c5a9970679fff9a44f76f80ebda844aff8a40eb32d99c83e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SuffixLevenshteinMinimumLeLevenshteinCons.Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SuffixLevenshteinMinimumLeLevenshteinCons.Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c","mathematical_subject":"Computation.DataStructures","original_sha256":"8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/EditDistance/Bounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Order.Monoid.Canonical.Defs
import Mathlib.Data.List.Infix
import Mathlib.Data.List.MinMax
import Mathlib.Data.List.EditDistance.Defs

/-!
# Lower bounds for Levenshtein distances

We show that there is some suffix `L'` of `L` such
that the Levenshtein distance from `L'` to `M` gives a lower bound
for the Levenshtein distance from `L` to `m :: M`.

This allows us to use the intermediate steps of a Levenshtein distance calculation
to produce lower bounds on the final result.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SuffixLevenshteinMinimumLeLevenshteinCons.Variant8e018618d6a9b36a8101beed6e9645fdd09339196fe06199b368f6e71ffc237c

variable {α β δ : Type*} {C : Levenshtein.Cost α β δ}
  [AddCommMonoid δ] [LinearOrder δ] [CanonicallyOrderedAdd δ]

theorem suffixLevenshtein_minimum_le_levenshtein_cons (xs : List α) (y ys) :
    (suffixLevenshtein C xs ys).1.minimum ≤ levenshtein C xs (y :: ys) := by
  induction xs with
  | nil =>
      simp only [suffixLevenshtein_nil', levenshtein_nil_cons,
        List.minimum_singleton, WithTop.coe_le_coe]
      exact le_add_of_nonneg_left (by simp)
  | cons x xs ih =>
    suffices
      (suffixLevenshtein C (x :: xs) ys).1.minimum ≤ (C.delete x + levenshtein C xs (y :: ys)) ∧
        (suffixLevenshtein C (x :: xs) ys).1.minimum ≤ (C.insert y + levenshtein C (x :: xs) ys) ∧
        (suffixLevenshtein C (x :: xs) ys).1.minimum ≤ (C.substitute x y + levenshtein C xs ys) by
      simpa [suffixLevenshtein_eq_tails_map]
    refine ⟨?_, ?_, ?_⟩
    · calc
        _ ≤ (suffixLevenshtein C xs ys).1.minimum := by
            simp [suffixLevenshtein_cons₁_fst, List.minimum_cons]
        _ ≤ ↑(levenshtein C xs (y :: ys)) := ih
        _ ≤ _ := by simp
    · calc
        (suffixLevenshtein C (x :: xs) ys).1.minimum ≤ (levenshtein C (x :: xs) ys) := by
            simp [suffixLevenshtein_cons₁_fst, List.minimum_cons]
        _ ≤ _ := by simp
    · calc
        (suffixLevenshtein C (x :: xs) ys).1.minimum ≤ (levenshtein C xs ys) := by
            simp only [suffixLevenshtein_cons₁_fst, List.minimum_cons]
            apply min_le_of_right_le
            cases xs
            · simp [suffixLevenshtein_nil']
            · simp [suffixLevenshtein_cons₁, List.minimum_cons]
        _ ≤ _ := by simp

theorem le_suffixLevenshtein_cons_minimum (xs : List α) (y ys) :
    (suffixLevenshtein C xs ys).1.minimum ≤ (suffixLevenshtein C xs (y :: ys)).1.minimum := by
  apply List.le_minimum_of_forall_le
  simp only [suffixLevenshtein_eq_tails_map]
  simp only [List.mem_map, List.mem_tails, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
  intro a suff
  refine (?_ : _ ≤ _).trans (suffixLevenshtein_minimum_le_levenshtein_cons _ _ _)
  simp only [suffixLevenshtein_eq_tails_map]
  apply List.le_minimum_of_forall_le
  intro b m
  replace m : ∃ a_1, a_1 <:+ a ∧ levenshtein C a_1 ys = b := by simpa using m
  obtain ⟨a', suff', rfl⟩ := m
  apply List.minimum_le_of_mem'
  simp only [List.mem_map, List.mem_tails]
  suffices ∃ a, a <:+ xs ∧ levenshtein C a ys = levenshtein C a' ys by simpa
  exact ⟨a', suff'.trans suff, rfl⟩

theorem le_suffixLevenshtein_append_minimum (xs : List α) (ys₁ ys₂) :
    (suffixLevenshtein C xs ys₂).1.minimum ≤ (suffixLevenshtein C xs (ys₁ ++ ys₂)).1.minimum := by
  induction ys₁ with
  | nil => exact le_refl _
  | cons y ys₁ ih => exact ih.trans (le_suffixLevenshtein_cons_minimum _ _ _)

theorem suffixLevenshtein_minimum_le_levenshtein_append (xs ys₁ ys₂) :
    (suffixLevenshtein C xs ys₂).1.minimum ≤ levenshtein C xs (ys₁ ++ ys₂) := by
  cases ys₁ with
  | nil => exact List.minimum_le_of_mem' (List.getElem_mem _)
  | cons y ys₁ =>
      exact (le_suffixLevenshtein_append_minimum _ _ _).trans
        (suffixLevenshtein_minimum_le_levenshtein_cons _ _ _)

theorem le_levenshtein_cons (xs : List α) (y ys) :
    ∃ xs', xs' <:+ xs ∧ levenshtein C xs' ys ≤ levenshtein C xs (y :: ys) := by
  simpa [suffixLevenshtein_eq_tails_map, List.minimum_le_coe_iff] using
    suffixLevenshtein_minimum_le_levenshtein_cons (δ := δ) xs y ys

theorem le_levenshtein_append (xs : List α) (ys₁ ys₂) :
    ∃ xs', xs' <:+ xs ∧ levenshtein C xs' ys₂ ≤ levenshtein C xs (ys₁ ++ ys₂) := by
  simpa [suffixLevenshtein_eq_tails_map, List.minimum_le_coe_iff] using
    suffixLevenshtein_minimum_le_levenshtein_append (δ := δ) xs ys₁ ys₂
```
