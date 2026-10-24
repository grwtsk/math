# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pred.Variant9ca941f25979bafd144049676e2a70a3ccf91c266a345a337f3bf5125bbc1be5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `632682c68f63641c045f045d5136214da6f7e519` · SHA-256 `b564fce5a9b7550b76c4389b6924accd94549205c125d90fe12262c31282b20d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Find.Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Find.Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Lemmas/Pattern/Find/Pred.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.String.Slice
public import Init.Data.String.Search
public import Init.Data.String.Lemmas.Splits
import all Init.Data.String.Slice
import all Init.Data.String.Search
import Init.Data.String.Lemmas.Pattern.Find.Basic
import Init.Data.String.Lemmas.Pattern.Pred
import Init.Data.String.Lemmas.Basic
import Init.Data.String.Lemmas.Order
import Init.Data.String.Termination
import Init.Data.String.Lemmas.Iterate
import Init.Grind
import Init.Data.Option.Lemmas
import Init.Data.String.OrderInstances


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Find.Variant6dc40f0c9168dc5ec2f545a303d0e6385944f80adc26b105275db510a0b7d7eb

public section

namespace String.Slice

theorem find?_bool_eq_some_iff {p : Char → Bool} {s : Slice} {pos : s.Pos} :
    s.find? p = some pos ↔
      ∃ h, p (pos.get h) ∧ ∀ pos', (h' : pos' < pos) → p (pos'.get (Pos.ne_endPos_of_lt h')) = false := by
  grind [Pattern.Model.find?_eq_some_iff, Pattern.Model.CharPred.matchesAt_iff]

theorem find?_prop_eq_some_iff {p : Char → Prop} [DecidablePred p] {s : Slice} {pos : s.Pos} :
    s.find? p = some pos ↔
      ∃ h, p (pos.get h) ∧ ∀ pos', (h' : pos' < pos) → ¬ p (pos'.get (Pos.ne_endPos_of_lt h')) := by
  simp only [find?_prop_eq_find?_decide, find?_bool_eq_some_iff, decide_eq_true_eq,
    decide_eq_false_iff_not]

theorem find?_bool_eq_some_iff_splits {p : Char → Bool} {s : Slice} {pos : s.Pos} :
    s.find? p = some pos ↔
      ∃ t c u, pos.Splits t (singleton c ++ u) ∧ p c ∧ ∀ d ∈ t.toList, p d = false := by
  rw [find?_bool_eq_some_iff]
  refine ⟨?_, ?_⟩
  · rintro ⟨h, hp, hmin⟩
    exact ⟨_, _, _, pos.splits_next_right h, hp, fun d hd => by
      obtain ⟨pos', hlt, hpget⟩ := (pos.splits_next_right h).mem_toList_left_iff.mp hd
      subst hpget; exact hmin _ hlt⟩
  · rintro ⟨t, c, u, hs, hpc, hmin⟩
    have hne := hs.ne_endPos_of_singleton
    refine ⟨hne, ?_, fun pos' hlt => hmin _ (hs.mem_toList_left_iff.mpr ⟨pos', hlt, rfl⟩)⟩
    rw [(singleton_append_inj.mp (hs.eq_right (pos.splits_next_right hne))).1.symm]
    exact hpc

theorem find?_prop_eq_some_iff_splits {p : Char → Prop} [DecidablePred p] {s : Slice}
    {pos : s.Pos} :
    s.find? p = some pos ↔
      ∃ t c u, pos.Splits t (singleton c ++ u) ∧ p c ∧ ∀ d ∈ t.toList, ¬ p d := by
  simp only [find?_prop_eq_find?_decide, find?_bool_eq_some_iff_splits, decide_eq_true_eq,
    decide_eq_false_iff_not]

@[cbv_eval, simp]
theorem contains_bool_eq {p : Char → Bool} {s : Slice} : s.contains p = s.copy.toList.any p := by
  rw [Bool.eq_iff_iff, Pattern.Model.contains_eq_true_iff]
  simp only [Pattern.Model.CharPred.matchesAt_iff, ne_eq, List.any_eq_true,
    mem_toList_copy_iff_exists_get]
  exact ⟨fun ⟨pos, h, hp⟩ => ⟨_, ⟨_, _, rfl⟩, hp⟩, fun ⟨_, ⟨p, h, h'⟩, hp⟩ => ⟨p, h, h' ▸ hp⟩⟩

@[simp]
theorem contains_prop_eq {p : Char → Prop} [DecidablePred p] {s : Slice} :
    s.contains p = s.copy.toList.any p := by
  rw [contains_prop_eq_contains_decide, contains_bool_eq]

theorem Pos.find?_bool_eq_some_iff {p : Char → Bool} {s : Slice} {pos pos' : s.Pos} :
    pos.find? p = some pos' ↔
      pos ≤ pos' ∧ (∃ h, p (pos'.get h)) ∧
        ∀ pos'', pos ≤ pos'' → (h' : pos'' < pos') →
          p (pos''.get (Pos.ne_endPos_of_lt h')) = false := by
  grind [Pattern.Model.posFind?_eq_some_iff, Pattern.Model.CharPred.matchesAt_iff]

theorem Pos.find?_bool_eq_some_iff_splits {p : Char → Bool} {s : Slice} {pos : s.Pos}
    {t u : String} (hs : pos.Splits t u) {pos' : s.Pos} :
    pos.find? p = some pos' ↔
      ∃ v c w, pos'.Splits (t ++ v) (singleton c ++ w) ∧ p c ∧
        ∀ d ∈ v.toList, p d = false := by
  rw [Pos.find?_bool_eq_some_iff]
  refine ⟨?_, ?_⟩
  · rintro ⟨hle, ⟨hne, hp⟩, hmin⟩
    have hsplit := pos'.splits_next_right hne
    obtain ⟨v, hv1, hv2⟩ := (hs.le_iff_exists_eq_append hsplit).mp hle
    refine ⟨v, pos'.get hne, _, hsplit.of_eq hv1 rfl, hp, fun d hd => ?_⟩
    obtain ⟨_, hcopy⟩ :=
      Slice.copy_slice_eq_iff_splits.mpr ⟨t, _, hs.of_eq rfl hv2, hsplit.of_eq hv1 rfl⟩
    rw [← hcopy] at hd
    obtain ⟨q, hq, hqget⟩ := mem_toList_copy_iff_exists_get.mp hd
    have hlt : Pos.ofSlice q < pos' := by
      simpa [← Slice.Pos.lt_endPos_iff, ← Pos.ofSlice_lt_ofSlice_iff] using hq
    subst hqget; rw [Slice.Pos.get_eq_get_ofSlice]; exact hmin _ Pos.le_ofSlice hlt
  · rintro ⟨v, c, w, hsplit, hpc, hmin⟩
    have hne := hsplit.ne_endPos_of_singleton
    have hu : u = v ++ (singleton c ++ w) :=
      append_right_inj t |>.mp (hs.eq_append.symm.trans (by rw [hsplit.eq_append, append_assoc]))
    have hle : pos ≤ pos' := (hs.le_iff_exists_eq_append hsplit).mpr ⟨v, rfl, hu⟩
    refine ⟨hle, ⟨hne, ?_⟩, fun pos'' hle' hlt => hmin _ ?_⟩
    · rw [(singleton_append_inj.mp (hsplit.eq_right (pos'.splits_next_right hne))).1.symm]
      exact hpc
    · obtain ⟨_, hcopy⟩ :=
        Slice.copy_slice_eq_iff_splits.mpr ⟨t, _, hs.of_eq rfl hu, hsplit⟩
      rw [← hcopy]
      exact mem_toList_copy_iff_exists_get.mpr
        ⟨pos''.slice pos pos' hle' (Std.le_of_lt hlt),
         fun h => Std.ne_of_lt hlt
           (by rw [← Slice.Pos.ofSlice_slice (h₁ := hle') (h₂ := Std.le_of_lt hlt), h,
                    Slice.Pos.ofSlice_endPos]),
         by rw [Slice.Pos.get_eq_get_ofSlice]
            simp [Slice.Pos.ofSlice_slice]⟩

theorem Pos.find?_bool_eq_none_iff {p : Char → Bool} {s : Slice} {pos : s.Pos} :
    pos.find? p = none ↔
      ∀ pos', pos ≤ pos' → (h : pos' ≠ s.endPos) → p (pos'.get h) = false := by
  grind [Pattern.Model.posFind?_eq_none_iff, Pattern.Model.CharPred.matchesAt_iff]

theorem Pos.find?_bool_eq_none_iff_of_splits {p : Char → Bool} {s : Slice} {pos : s.Pos}
    {t u : String} (hs : pos.Splits t u) :
    pos.find? p = none ↔ ∀ c ∈ u.toList, p c = false := by
  rw [Pos.find?_bool_eq_none_iff]
  constructor
  · intro h c hc
    obtain ⟨pos', hle, hne, hget⟩ := hs.mem_toList_right_iff.mp hc
    subst hget; exact h pos' hle hne
  · intro h pos' hle hne
    exact h _ (hs.mem_toList_right_iff.mpr ⟨pos', hle, hne, rfl⟩)

theorem Pos.find?_prop_eq_some_iff {p : Char → Prop} [DecidablePred p] {s : Slice}
    {pos pos' : s.Pos} :
    pos.find? p = some pos' ↔
      pos ≤ pos' ∧ (∃ h, p (pos'.get h)) ∧
        ∀ pos'', pos ≤ pos'' → (h' : pos'' < pos') →
          ¬ p (pos''.get (Pos.ne_endPos_of_lt h')) := by
  simp only [Pos.find?_prop_eq_find?_decide, Pos.find?_bool_eq_some_iff, decide_eq_true_eq,
    decide_eq_false_iff_not]

theorem Pos.find?_prop_eq_some_iff_splits {p : Char → Prop} [DecidablePred p] {s : Slice}
    {pos : s.Pos} {t u : String} (hs : pos.Splits t u) {pos' : s.Pos} :
    pos.find? p = some pos' ↔
      ∃ v c w, pos'.Splits (t ++ v) (singleton c ++ w) ∧ p c ∧ ∀ d ∈ v.toList, ¬ p d := by
  simp only [Pos.find?_prop_eq_find?_decide, Pos.find?_bool_eq_some_iff_splits hs, decide_eq_true_eq,
    decide_eq_false_iff_not]

theorem Pos.find?_prop_eq_none_iff {p : Char → Prop} [DecidablePred p] {s : Slice} {pos : s.Pos} :
    pos.find? p = none ↔
      ∀ pos', pos ≤ pos' → (h : pos' ≠ s.endPos) → ¬ p (pos'.get h) := by
  simp only [Pos.find?_prop_eq_find?_decide, Pos.find?_bool_eq_none_iff, decide_eq_false_iff_not]

theorem Pos.find?_prop_eq_none_iff_of_splits {p : Char → Prop} [DecidablePred p] {s : Slice}
    {pos : s.Pos} {t u : String} (hs : pos.Splits t u) :
    pos.find? p = none ↔ ∀ c ∈ u.toList, ¬ p c := by
  simp only [Pos.find?_prop_eq_find?_decide, Pos.find?_bool_eq_none_iff_of_splits hs,
    decide_eq_false_iff_not]

end String.Slice

namespace String

theorem Pos.find?_prop_eq_find?_decide {p : Char → Prop} [DecidablePred p] {s : String}
    {pos : s.Pos} : pos.find? p = pos.find? (decide <| p ·) := by
  show (pos.toSlice.find? p).map Pos.ofToSlice = (pos.toSlice.find? (decide <| p ·)).map Pos.ofToSlice
  simp only [show pos.toSlice.find? p = pos.toSlice.find? (decide <| p ·) from
    Slice.Pos.find?_prop_eq_find?_decide]

theorem find?_prop_eq_find?_decide {p : Char → Prop} [DecidablePred p] {s : String} :
    s.find? p = s.find? (decide <| p ·) := by
  show (s.toSlice.find? p).map Pos.ofToSlice = (s.toSlice.find? (decide <| p ·)).map Pos.ofToSlice
  simp only [show s.toSlice.find? p = s.toSlice.find? (decide <| p ·) from
    Slice.find?_prop_eq_find?_decide]

theorem contains_prop_eq_contains_decide {p : Char → Prop} [DecidablePred p] {s : String} :
    s.contains p = s.contains (decide <| p ·) := by
  show s.toSlice.contains p = s.toSlice.contains (decide <| p ·)
  exact Slice.contains_prop_eq_contains_decide

theorem Pos.find?_bool_eq_some_iff {p : Char → Bool} {s : String} {pos pos' : s.Pos} :
    pos.find? p = some pos' ↔
      pos ≤ pos' ∧ (∃ h, p (pos'.get h)) ∧
        ∀ pos'', pos ≤ pos'' → (h' : pos'' < pos') →
          p (pos''.get (by exact Pos.ne_endPos_of_lt h')) = false := by
  simp only [Pos.find?_eq_find?_toSlice, Option.map_eq_some_iff,
    Slice.Pos.find?_bool_eq_some_iff, endPos_toSlice]
  refine ⟨?_, ?_⟩
  · rintro ⟨pos', ⟨h₁, ⟨h₂, hp⟩, h₃⟩, rfl⟩
    refine ⟨by simpa [Pos.ofToSlice_le_iff] using! h₁,
      ⟨by simpa [← Pos.ofToSlice_inj] using h₂, by simpa [Pos.get_ofToSlice] using hp⟩, ?_⟩
    intro pos'' h₄ h₅
    simpa using h₃ pos''.toSlice (by simpa [Pos.toSlice_le] using h₄) (by simpa using! h₅)
  · rintro ⟨h₁, ⟨h₂, hp⟩, h₃⟩
    refine ⟨pos'.toSlice, ⟨by simpa [Pos.toSlice_le] using h₁,
      ⟨by simpa [← Pos.toSlice_inj] using h₂, by simpa using hp⟩, fun p hp₁ hp₂ => ?_⟩,
      by simp⟩
    simpa using h₃ (Pos.ofToSlice p)
      (by simpa [Pos.ofToSlice_le_iff] using! hp₁) (by simpa using! hp₂)

theorem Pos.find?_bool_eq_some_iff_splits {p : Char → Bool} {s : String} {pos : s.Pos}
    {t u : String} (hs : pos.Splits t u) {pos' : s.Pos} :
    pos.find? p = some pos' ↔
      ∃ v c w, pos'.Splits (t ++ v) (singleton c ++ w) ∧ p c ∧
        ∀ d ∈ v.toList, p d = false := by
  simp only [Pos.find?_eq_find?_toSlice, Option.map_eq_some_iff,
    Slice.Pos.find?_bool_eq_some_iff_splits (Pos.splits_toSlice_iff.mpr hs)]
  constructor
  · rintro ⟨q, ⟨v, c, w, hsplit, hpc, hmin⟩, rfl⟩
    exact ⟨v, c, w, Slice.Pos.splits_ofToSlice_iff.mpr hsplit, hpc, hmin⟩
  · rintro ⟨v, c, w, hsplit, hpc, hmin⟩
    exact ⟨pos'.toSlice, ⟨v, c, w, Pos.splits_toSlice_iff.mpr hsplit, hpc, hmin⟩, by simp⟩

theorem Pos.find?_bool_eq_none_iff {p : Char → Bool} {s : String} {pos : s.Pos} :
    pos.find? p = none ↔
      ∀ pos', pos ≤ pos' → (h : pos' ≠ s.endPos) → p (pos'.get h) = false := by
  simp only [Pos.find?_eq_find?_toSlice, Option.map_eq_none_iff,
    Slice.Pos.find?_bool_eq_none_iff, endPos_toSlice]
  refine ⟨?_, ?_⟩
  · intro h pos' h₁ h₂
    simpa [Pos.get_ofToSlice] using
      h pos'.toSlice (by simpa [Pos.toSlice_le] using h₁) (by simpa [← Pos.toSlice_inj] using h₂)
  · intro h pos' h₁ h₂
    simpa using! h (Pos.ofToSlice pos')
      (by simpa [Pos.ofToSlice_le_iff] using! h₁) (by simpa [← Pos.ofToSlice_inj] using h₂)

theorem Pos.find?_bool_eq_none_iff_of_splits {p : Char → Bool} {s : String} {pos : s.Pos}
    {t u : String} (hs : pos.Splits t u) :
    pos.find? p = none ↔ ∀ c ∈ u.toList, p c = false := by
  rw [Pos.find?_eq_find?_toSlice, Option.map_eq_none_iff]
  exact Slice.Pos.find?_bool_eq_none_iff_of_splits (Pos.splits_toSlice_iff.mpr hs)

theorem Pos.find?_prop_eq_some_iff {p : Char → Prop} [DecidablePred p] {s : String}
    {pos pos' : s.Pos} :
    pos.find? p = some pos' ↔
      pos ≤ pos' ∧ (∃ h, p (pos'.get h)) ∧
        ∀ pos'', pos ≤ pos'' → (h' : pos'' < pos') →
          ¬ p (pos''.get (by exact Pos.ne_endPos_of_lt h')) := by
  simp only [Pos.find?_prop_eq_find?_decide, Pos.find?_bool_eq_some_iff, decide_eq_true_eq,
    decide_eq_false_iff_not]

theorem Pos.find?_prop_eq_some_iff_splits {p : Char → Prop} [DecidablePred p] {s : String}
    {pos : s.Pos} {t u : String} (hs : pos.Splits t u) {pos' : s.Pos} :
    pos.find? p = some pos' ↔
      ∃ v c w, pos'.Splits (t ++ v) (singleton c ++ w) ∧ p c ∧ ∀ d ∈ v.toList, ¬ p d := by
  simp only [Pos.find?_prop_eq_find?_decide, Pos.find?_bool_eq_some_iff_splits hs, decide_eq_true_eq,
    decide_eq_false_iff_not]

theorem Pos.find?_prop_eq_none_iff {p : Char → Prop} [DecidablePred p] {s : String}
    {pos : s.Pos} :
    pos.find? p = none ↔
      ∀ pos', pos ≤ pos' → (h : pos' ≠ s.endPos) → ¬ p (pos'.get h) := by
  simp only [Pos.find?_prop_eq_find?_decide, Pos.find?_bool_eq_none_iff, decide_eq_false_iff_not]

theorem Pos.find?_prop_eq_none_iff_of_splits {p : Char → Prop} [DecidablePred p] {s : String}
    {pos : s.Pos} {t u : String} (hs : pos.Splits t u) :
    pos.find? p = none ↔ ∀ c ∈ u.toList, ¬ p c := by
  simp only [Pos.find?_prop_eq_find?_decide, Pos.find?_bool_eq_none_iff_of_splits hs,
    decide_eq_false_iff_not]

theorem find?_bool_eq_some_iff {p : Char → Bool} {s : String} {pos : s.Pos} :
    s.find? p = some pos ↔
      ∃ h, p (pos.get h) ∧ ∀ pos', (h' : pos' < pos) → p (pos'.get (by exact Pos.ne_endPos_of_lt h')) = false := by
  simp only [find?_eq_find?_toSlice, Option.map_eq_some_iff, Slice.find?_bool_eq_some_iff,
    endPos_toSlice, exists_and_right]
  refine ⟨?_, ?_⟩
  · rintro ⟨pos, ⟨⟨h, hp⟩, h'⟩, rfl⟩
    refine ⟨⟨by simpa [← Pos.ofToSlice_inj] using h, by simpa [Pos.get_ofToSlice] using hp⟩, ?_⟩
    intro pos' hp
    simpa using h' pos'.toSlice hp
  · rintro ⟨⟨h, hp⟩, hmin⟩
    exact ⟨pos.toSlice, ⟨⟨by simpa [← Pos.toSlice_inj] using h, by simpa using hp⟩,
      fun pos' hp => by simpa using hmin (Pos.ofToSlice pos') hp⟩, by simp⟩

theorem find?_bool_eq_some_iff_splits {p : Char → Bool} {s : String} {pos : s.Pos} :
    s.find? p = some pos ↔
      ∃ t c u, pos.Splits t (singleton c ++ u) ∧ p c ∧ ∀ d ∈ t.toList, p d = false := by
  simp only [find?_eq_find?_toSlice, Option.map_eq_some_iff,
    Slice.find?_bool_eq_some_iff_splits]
  constructor
  · rintro ⟨q, ⟨t, c, u, hsplit, hpc, hmin⟩, rfl⟩
    exact ⟨t, c, u, Slice.Pos.splits_ofToSlice_iff.mpr hsplit, hpc, hmin⟩
  · rintro ⟨t, c, u, hsplit, hpc, hmin⟩
    exact ⟨pos.toSlice, ⟨t, c, u, Pos.splits_toSlice_iff.mpr hsplit, hpc, hmin⟩, by simp⟩

theorem find?_prop_eq_some_iff {p : Char → Prop} [DecidablePred p] {s : String} {pos : s.Pos} :
    s.find? p = some pos ↔
      ∃ h, p (pos.get h) ∧ ∀ pos', (h' : pos' < pos) → ¬ p (pos'.get (by exact Pos.ne_endPos_of_lt h')) := by
  simp only [find?_prop_eq_find?_decide, find?_bool_eq_some_iff, decide_eq_true_eq,
    decide_eq_false_iff_not]

theorem find?_prop_eq_some_iff_splits {p : Char → Prop} [DecidablePred p] {s : String}
    {pos : s.Pos} :
    s.find? p = some pos ↔
      ∃ t c u, pos.Splits t (singleton c ++ u) ∧ p c ∧ ∀ d ∈ t.toList, ¬ p d := by
  simp only [find?_prop_eq_find?_decide, find?_bool_eq_some_iff_splits, decide_eq_true_eq,
    decide_eq_false_iff_not]

@[simp]
theorem contains_bool_eq {p : Char → Bool} {s : String} : s.contains p = s.toList.any p := by
  simp [contains_eq_contains_toSlice, Slice.contains_bool_eq, copy_toSlice]

@[simp]
theorem contains_prop_eq {p : Char → Prop} [DecidablePred p] {s : String} :
    s.contains p = s.toList.any p := by
  rw [contains_prop_eq_contains_decide, contains_bool_eq]

end String
```
