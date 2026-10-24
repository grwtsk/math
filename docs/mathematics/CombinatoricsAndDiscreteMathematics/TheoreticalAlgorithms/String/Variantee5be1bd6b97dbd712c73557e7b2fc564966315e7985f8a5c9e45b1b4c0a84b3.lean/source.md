# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variantee5be1bd6b97dbd712c73557e7b2fc564966315e7985f8a5c9e45b1b4c0a84b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71ebdc858eb11a35a30c55f81b928aedc79c4c12` · SHA-256 `861800f12bcb96cefe39cc3b89bbb37984f268ef988ff6b4bbb45e8de1ad869a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ContainsEqTrueOfIsEmpty.Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ContainsEqTrueOfIsEmpty.Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Lemmas/Pattern/Find/String.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.String.Search
import all Init.Data.String.Slice
import all Init.Data.String.Pattern.String
import Init.ByCases
import Init.Data.String.Lemmas.Pattern.Find.Basic
import Init.Data.String.Lemmas.Pattern.String.ForwardSearcher
import Init.Data.Iterators.Lemmas.Consumers.Loop
import Init.Data.List.Sublist


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ContainsEqTrueOfIsEmpty.Variant3c9c2fe02778f0b4638cb023ceead7f51818407c9c685f68014db0faadb952a8

public section

namespace String.Slice

open Pattern.Model in
private theorem contains_eq_true_of_isEmpty {pat : Slice} (hpat : pat.isEmpty = true) (s : Slice) :
    s.contains pat = true := by
  rw [contains, ← Std.Iter.any_toList, ForwardSliceSearcher.toSearcher_of_isEmpty hpat,
    ForwardSliceSearcher.toList_emptyBefore_eq]
  split <;> simp [List.any_cons]

open Pattern.Model in
private theorem contains_string_eq_true_of_empty {pat : String} (hpat : pat = "") (s : Slice) :
    s.contains pat = true := by
  subst hpat
  rw [contains, ← Std.Iter.any_toList, ForwardStringSearcher.toSearcher_empty,
    ForwardSliceSearcher.toList_emptyBefore_eq]
  split <;> simp [List.any_cons]

private theorem isInfix_toList_iff {t s : String} :
    t.toList <:+: s.toList ↔ ∃ s₁ s₂, s = s₁ ++ t ++ s₂ := by
  constructor
  · rintro ⟨l₁, l₂, h⟩
    exact ⟨.ofList l₁, .ofList l₂,
      String.toList_inj.mp (by simp [String.toList_append, h])⟩
  · rintro ⟨s₁, s₂, rfl⟩
    exact ⟨s₁.toList, s₂.toList, by simp [String.toList_append, List.append_assoc]⟩

@[simp]
theorem contains_slice_iff {t s : Slice} :
    s.contains t ↔ t.copy.toList <:+: s.copy.toList := by
  by_cases ht : t.isEmpty
  · simp [contains_eq_true_of_isEmpty ht s, copy_eq_empty_iff.mpr ht, String.toList_empty]
  · simp only [Bool.not_eq_true] at ht
    have := Pattern.Model.ForwardSliceSearcher.strictPatternModel ht
    have := Pattern.Model.ForwardSliceSearcher.lawfulToForwardSearcherModel ht
    simp only [Pattern.Model.contains_eq_true_iff,
      Pattern.Model.ForwardSliceSearcher.exists_matchesAt_iff_eq_append, isInfix_toList_iff]

@[simp]
theorem contains_string_iff {t : String} {s : Slice} :
    s.contains t ↔ t.toList <:+: s.copy.toList := by
  simp [contains_string_eq_contains_toSlice, contains_slice_iff, copy_toSlice]

@[simp]
theorem contains_slice_eq_false_iff {t s : Slice} :
    s.contains t = false ↔ ¬(t.copy.toList <:+: s.copy.toList) :=
  Bool.eq_false_iff.trans (not_congr contains_slice_iff)

@[simp]
theorem contains_string_eq_false_iff {t : String} {s : Slice} :
    s.contains t = false ↔ ¬(t.toList <:+: s.copy.toList) :=
  Bool.eq_false_iff.trans (not_congr contains_string_iff)

end Slice

@[simp]
theorem contains_slice_iff {t : Slice} {s : String} :
    s.contains t ↔ t.copy.toList <:+: s.toList := by
  simp [contains_eq_contains_toSlice, Slice.contains_slice_iff, copy_toSlice]

@[simp]
theorem contains_string_iff {t s : String} :
    s.contains t ↔ t.toList <:+: s.toList := by
  simp [contains_eq_contains_toSlice, Slice.contains_string_iff, copy_toSlice]

@[simp]
theorem contains_slice_eq_false_iff {t : Slice} {s : String} :
    s.contains t = false ↔ ¬(t.copy.toList <:+: s.toList) :=
  Bool.eq_false_iff.trans (not_congr contains_slice_iff)

@[simp]
theorem contains_string_eq_false_iff {t s : String} :
    s.contains t = false ↔ ¬(t.toList <:+: s.toList) :=
  Bool.eq_false_iff.trans (not_congr contains_string_iff)

/-
  Used internally by the `cbv` tactic.
-/
@[cbv_eval]
theorem contains_string_eq_internal {t s : String} :
    s.contains t = t.toList.isInfixOf_internal s.toList := by
  rw [Bool.eq_iff_iff, contains_string_iff, List.isInfixOf_internal_iff_isInfix]

end String
```
