# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Modify.Variant7d6812f3973f77d0b4a6b648f0f10b8a996adae854aebd350b0b3f99bfbb52de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c8f2b5f5667d746654097f4fab93ae8cd2e0733` · SHA-256 `b7bfd2c9003de291347bcd0aeef92376c4f503850154cfaa20668299f34b574e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PosSplitsPastSet.Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PosSplitsPastSet.Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Lemmas/Modify.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Markus Himmel
-/
module

prelude
public import Init.Data.String.Modify
import all Init.Data.String.Modify
import Init.Data.String.Lemmas.Basic

/-!
# Lemmas for `Init.Data.String.Modify`

This file contains lemmas for the operations defined in `Init.Data.String.Modify`.

Note that `Init.Data.String.Modify` already proves a few lemmas which are needed immediately.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PosSplitsPastSet.Variant851828ca8f5407b670c8947018866ebda004fa32901d870d031f53c56a4a6eb6

public section

namespace String

/-- You might want to invoke `Pos.Splits.exists_eq_singleton_append` to be able to apply this. -/
theorem Pos.Splits.pastSet {s : String} {p : s.Pos} {t₁ t₂ : String}
    {c d : Char} (h : p.Splits t₁ (singleton c ++ t₂)) :
    (p.pastSet d h.ne_endPos_of_singleton).Splits (t₁ ++ singleton d) t₂ := by
  generalize h.ne_endPos_of_singleton = hp
  obtain ⟨rfl, rfl, rfl⟩ := by simpa using h.eq (p.splits_next_right hp)
  apply splits_pastSet

/-- You might want to invoke `Pos.Splits.exists_eq_singleton_append` to be able to apply this. -/
theorem Pos.Splits.pastModify {s : String} {p : s.Pos} {t₁ t₂ : String}
    {c : Char} (h : p.Splits t₁ (singleton c ++ t₂)) :
    (p.pastModify f h.ne_endPos_of_singleton).Splits
    (t₁ ++ singleton (f (p.get h.ne_endPos_of_singleton))) t₂ :=
  h.pastSet

theorem toList_mapAux {f : Char → Char} {s : String} {p : s.Pos}
    (h : p.Splits t₁ t₂) : (mapAux f s p).toList = t₁.toList ++ t₂.toList.map f := by
  fun_induction mapAux generalizing t₁ t₂ with
  | case1 s => simp_all
  | case2 s p hp ih =>
    obtain ⟨c, rfl⟩ := h.exists_eq_singleton_append hp
    simp [ih h.pastModify]

@[simp]
theorem toList_map {f : Char → Char} {s : String} : (s.map f).toList = s.toList.map f := by
  simp [map, toList_mapAux s.splits_startPos]

/-
  Used internally by the `cbv` tactic.
-/
@[cbv_eval]
theorem map_eq_internal {f : Char → Char} {s : String} : s.map f = .ofList (s.toList.map f) := by
  apply String.toList_injective
  simp only [toList_map, toList_ofList]

@[simp]
theorem map_eq_empty {f : Char → Char} {s : String} : s.map f = "" ↔ s = "" := by
  simp [← toList_eq_nil_iff]

@[simp]
theorem map_map {f g : Char → Char} {s : String} : String.map g (String.map f s) = String.map (g ∘ f) s  := by
  apply String.ext
  simp [List.map_map]

@[simp]
theorem map_id {s : String} : String.map id s = s := by
  apply String.ext
  simp [List.map_id]

end String
```
