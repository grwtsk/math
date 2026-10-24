# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Slice.Variantf4ba17055220c8181f2dbaebddee1275de1e19a422ffd381285b525626be13c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cf6aaf137c397d187ad61f5268f66b324a07e59` · SHA-256 `b46b00d82bf5e54fd0c26e7c085d55e68c4eb63a6e447a6a04707f3fe8059a42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BeqEqTrueIff.Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BeqEqTrueIff.Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Lemmas/Slice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.String.Slice
import all Init.Data.String.Slice
import Init.Data.String.Lemmas.Pattern.Memcmp
import Init.Data.String.Lemmas.Basic
import Init.Data.ByteArray.Lemmas
import Init.Data.String.Lemmas.IsEmpty
import Init.Data.String.Lemmas.FindPos


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BeqEqTrueIff.Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a

public section

namespace String.Slice

section BEq

@[simp]
theorem beq_eq_true_iff {s t : Slice} : s == t ↔ s.copy = t.copy := by
  simp only [BEq.beq, beq]
  split <;> rename_i h
  · rw [Pattern.Internal.memcmpSlice_eq_true_iff]
    simp only [offset_startPos, Pos.Raw.byteIdx_zero, Pos.Raw.offsetBy_zero, byteIdx_rawEndPos]
    rw (occs := [2]) [h]
    rw [utf8ByteSize_eq_size_toByteArray_copy, ByteArray.extract_zero_size,
      utf8ByteSize_eq_size_toByteArray_copy, ByteArray.extract_zero_size, String.toByteArray_inj]
  · simpa using ne_of_apply_ne String.utf8ByteSize (by simpa)

@[simp]
theorem beq_eq_false_iff {s t : Slice} : (s == t) = false ↔ s.copy ≠ t.copy := by
  simp [← Bool.not_eq_true]

theorem beq_eq_decide {s t : Slice} : (s == t) = decide (s.copy = t.copy) :=
  Bool.eq_iff_iff.2 (by simp)

instance : EquivBEq String.Slice :=
  equivBEq_of_iff_apply_eq copy (by simp)

theorem beq_list_iff {l l' : List String.Slice} : l == l' ↔ l.map copy = l'.map copy := by
  induction l generalizing l' <;> cases l' <;> simp_all

theorem beq_list_eq_false_iff {l l' : List String.Slice} :
    (l == l') = false ↔ l.map copy ≠ l'.map copy := by
  simp [← Bool.not_eq_true, beq_list_iff]

theorem beq_list_eq_decide {l l' : List String.Slice} :
    (l == l') = decide (l.map copy = l'.map copy) :=
  Bool.eq_iff_iff.2 (by simp [beq_list_iff])

end BEq

namespace Pos

theorem get?_eq_dif {s : Slice} {p : s.Pos} : p.get? = if h : p = s.endPos then none else some (p.get h) :=
  (rfl)

theorem get?_eq_some_get {s : Slice} {p : s.Pos} (h : p ≠ s.endPos) : p.get? = some (p.get h) := by
  simp [Pos.get?, h]

@[simp]
theorem get?_eq_none_iff {s : Slice} {p : s.Pos} : p.get? = none ↔ p = s.endPos := by
  simp [Pos.get?]

theorem get?_eq_none {s : Slice} {p : s.Pos} (h : p = s.endPos) : p.get? = none :=
  get?_eq_none_iff.2 h

@[simp]
theorem get?_endPos {s : Slice} : s.endPos.get? = none := by
  simp

end Pos

end Slice

namespace Pos

theorem get?_toSlice {s : String} {p : s.Pos} : p.toSlice.get? = p.get? :=
  (rfl)

theorem get?_eq_dif {s : String} {p : s.Pos} : p.get? = if h : p = s.endPos then none else some (p.get h) := by
  simp [← get?_toSlice, Slice.Pos.get?_eq_dif]

theorem get?_eq_some_get {s : String} {p : s.Pos} (h : p ≠ s.endPos) : p.get? = some (p.get h) := by
  simpa [← get?_toSlice] using! Slice.Pos.get?_eq_some_get (by simpa)

@[simp]
theorem get?_eq_none_iff {s : String} {p : s.Pos} : p.get? = none ↔ p = s.endPos := by
  simp [← get?_toSlice]

theorem get?_eq_none {s : String} {p : s.Pos} (h : p = s.endPos) : p.get? = none :=
  get?_eq_none_iff.2 h

@[simp]
theorem get?_endPos {s : String} : s.endPos.get? = none := by
  simp

end Pos

namespace Slice

theorem front?_eq_get? {s : Slice} : s.front? = s.startPos.get? :=
  (rfl)

theorem front?_eq {s : Slice} : s.front? = s.copy.toList.head? := by
  simp only [front?_eq_get?, Pos.get?_eq_dif]
  split
  · simp_all [startPos_eq_endPos_iff, eq_comm (a := none)]
  · rename_i h
    obtain ⟨t, ht⟩ := s.splits_startPos.exists_eq_singleton_append h
    simp [ht]

@[simp]
theorem front_eq {s : Slice} : s.front = s.front?.getD default := by
  simp [front]

theorem back?_eq_get? {s : Slice} : s.back? = s.endPos.prev?.bind Pos.get? :=
  (rfl)

theorem back?_eq {s : Slice} : s.back? = s.copy.toList.getLast? := by
  simp [back?_eq_get?, Pos.prev?_eq_dif]
  split
  · simp_all [startPos_eq_endPos_iff, eq_comm (a := s.endPos), eq_comm (a := none)]
  · rename_i h
    obtain ⟨t, ht⟩ := s.splits_endPos.exists_eq_append_singleton_of_ne_startPos h
    simp [ht, Pos.get?_eq_some_get]

@[simp]
theorem back_eq {s : Slice} : s.back = s.back?.getD default := by
  simp [back]

end Slice

end String
```
