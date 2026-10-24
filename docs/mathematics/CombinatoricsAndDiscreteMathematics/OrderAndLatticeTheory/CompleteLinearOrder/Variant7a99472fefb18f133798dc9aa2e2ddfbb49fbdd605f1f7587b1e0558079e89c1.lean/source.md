# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLinearOrder.Variant7a99472fefb18f133798dc9aa2e2ddfbb49fbdd605f1f7587b1e0558079e89c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16816b7f097dd6f36a597442e932632d2a9aab71` · SHA-256 `fbd6fffae84458c6437ba8f9b33f8b6a90a48025281c26a8f2fa2fc4f2efd1ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CsSupMemOfNotIsSuccPrelimit.Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.CsSupMemOfNotIsSuccPrelimit.Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441","mathematical_subject":"Algebra.OrderTheory","original_sha256":"27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/SuccPred/CompleteLinearOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Order.ConditionallyCompleteLattice.Indexed
import Mathlib.Order.SuccPred.Limit

/-!

# Relation between `IsSuccPrelimit` and `iSup` in (conditionally) complete linear orders.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CsSupMemOfNotIsSuccPrelimit.Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441

open Order Set

variable {ι : Sort*} {α : Type*}

section ConditionallyCompleteLinearOrder
variable [ConditionallyCompleteLinearOrder α] [Nonempty ι] {f : ι → α} {s : Set α} {x : α}

lemma csSup_mem_of_not_isSuccPrelimit
    (hne : s.Nonempty) (hbdd : BddAbove s) (hlim : ¬ IsSuccPrelimit (sSup s)) : sSup s ∈ s := by
  obtain ⟨y, hy⟩ := not_forall_not.mp hlim
  obtain ⟨i, his, hi⟩ := exists_lt_of_lt_csSup hne hy.lt
  exact eq_of_le_of_not_lt (le_csSup hbdd his) (hy.2 hi) ▸ his

lemma csInf_mem_of_not_isPredPrelimit
    (hne : s.Nonempty) (hbdd : BddBelow s) (hlim : ¬ IsPredPrelimit (sInf s)) : sInf s ∈ s := by
  obtain ⟨y, hy⟩ := not_forall_not.mp hlim
  obtain ⟨i, his, hi⟩ := exists_lt_of_csInf_lt hne hy.lt
  exact eq_of_le_of_not_lt (csInf_le hbdd his) (hy.2 · hi) ▸ his

lemma exists_eq_ciSup_of_not_isSuccPrelimit
    (hf : BddAbove (range f)) (hf' : ¬ IsSuccPrelimit (⨆ i, f i)) : ∃ i, f i = ⨆ i, f i :=
  csSup_mem_of_not_isSuccPrelimit (range_nonempty f) hf hf'

lemma exists_eq_ciInf_of_not_isPredPrelimit
    (hf : BddBelow (range f)) (hf' : ¬ IsPredPrelimit (⨅ i, f i)) : ∃ i, f i = ⨅ i, f i :=
  csInf_mem_of_not_isPredPrelimit (range_nonempty f) hf hf'

lemma IsLUB.mem_of_nonempty_of_not_isSuccPrelimit
    (hs : IsLUB s x) (hne : s.Nonempty) (hx : ¬ IsSuccPrelimit x) : x ∈ s :=
  hs.csSup_eq hne ▸ csSup_mem_of_not_isSuccPrelimit hne hs.bddAbove (hs.csSup_eq hne ▸ hx)

lemma IsGLB.mem_of_nonempty_of_not_isPredPrelimit
    (hs : IsGLB s x) (hne : s.Nonempty) (hx : ¬ IsPredPrelimit x) : x ∈ s :=
  hs.csInf_eq hne ▸ csInf_mem_of_not_isPredPrelimit hne hs.bddBelow (hs.csInf_eq hne ▸ hx)

lemma IsLUB.exists_of_nonempty_of_not_isSuccPrelimit
    (hf : IsLUB (range f) x) (hx : ¬ IsSuccPrelimit x) : ∃ i, f i = x :=
  hf.mem_of_nonempty_of_not_isSuccPrelimit (range_nonempty f) hx

lemma IsGLB.exists_of_nonempty_of_not_isPredPrelimit
    (hf : IsGLB (range f) x) (hx : ¬ IsPredPrelimit x) : ∃ i, f i = x :=
  hf.mem_of_nonempty_of_not_isPredPrelimit (range_nonempty f) hx

open Classical in
/-- Every conditionally complete linear order with well-founded `<` is a successor order, by setting
the successor of an element to be the infimum of all larger elements. -/
noncomputable def ConditionallyCompleteLinearOrder.toSuccOrder [WellFoundedLT α] :
    SuccOrder α where
  succ a := if IsMax a then a else sInf {b | a < b}
  le_succ a := by
    by_cases h : IsMax a
    · simp [h]
    · simp only [h, ↓reduceIte]
      rw [not_isMax_iff] at h
      exact le_csInf h (fun b => le_of_lt)
  max_of_succ_le hs := by
    by_contra h
    simp [h] at hs
    rw [not_isMax_iff] at h
    exact hs.not_lt (csInf_mem h)
  succ_le_of_lt {a b} ha := by
    simp [ha.not_isMax]
    exact csInf_le ⟨a, fun _ hc => hc.le⟩ ha

end ConditionallyCompleteLinearOrder

section ConditionallyCompleteLinearOrderBot
variable [ConditionallyCompleteLinearOrderBot α] {f : ι → α} {s : Set α} {x : α}

/-- See `csSup_mem_of_not_isSuccPrelimit` for the `ConditionallyCompleteLinearOrder` version. -/
lemma csSup_mem_of_not_isSuccPrelimit'
    (hbdd : BddAbove s) (hlim : ¬ IsSuccPrelimit (sSup s)) : sSup s ∈ s := by
  obtain rfl | hs := s.eq_empty_or_nonempty
  · simp [isSuccPrelimit_bot] at hlim
  · exact csSup_mem_of_not_isSuccPrelimit hs hbdd hlim

/-- See `exists_eq_ciSup_of_not_isSuccPrelimit` for the
`ConditionallyCompleteLinearOrder` version. -/
lemma exists_eq_ciSup_of_not_isSuccPrelimit'
    (hf : BddAbove (range f)) (hf' : ¬ IsSuccPrelimit (⨆ i, f i)) : ∃ i, f i = ⨆ i, f i :=
  csSup_mem_of_not_isSuccPrelimit' hf hf'

@[deprecated IsLUB.mem_of_not_isSuccPrelimit (since := "2025-01-05")]
lemma IsLUB.exists_of_not_isSuccPrelimit (hf : IsLUB (range f) x) (hx : ¬ IsSuccPrelimit x) :
    ∃ i, f i = x :=
  hf.mem_of_not_isSuccPrelimit hx

theorem Order.IsSuccPrelimit.sSup_Iio (h : IsSuccPrelimit x) : sSup (Iio x) = x := by
  obtain rfl | hx := eq_bot_or_bot_lt x
  · simp
  · exact h.isLUB_Iio.csSup_eq ⟨⊥, hx⟩

theorem Order.IsSuccPrelimit.iSup_Iio (h : IsSuccPrelimit x) : ⨆ a : Iio x, a.1 = x := by
  rw [← sSup_eq_iSup', h.sSup_Iio]

theorem Order.IsSuccLimit.sSup_Iio (h : IsSuccLimit x) : sSup (Iio x) = x :=
  h.isSuccPrelimit.sSup_Iio

theorem Order.IsSuccLimit.iSup_Iio (h : IsSuccLimit x) : ⨆ a : Iio x, a.1 = x :=
  h.isSuccPrelimit.iSup_Iio

theorem sSup_Iio_eq_self_iff_isSuccPrelimit : sSup (Iio x) = x ↔ IsSuccPrelimit x := by
  refine ⟨fun h ↦ ?_, IsSuccPrelimit.sSup_Iio⟩
  by_contra hx
  rw [← h] at hx
  simpa [h] using csSup_mem_of_not_isSuccPrelimit' bddAbove_Iio hx

theorem iSup_Iio_eq_self_iff_isSuccPrelimit : ⨆ a : Iio x, a.1 = x ↔ IsSuccPrelimit x := by
  rw [← sSup_eq_iSup', sSup_Iio_eq_self_iff_isSuccPrelimit]

theorem iSup_succ [SuccOrder α] (x : α) : ⨆ a : Iio x, succ a.1 = x := by
  have H : BddAbove (range fun a : Iio x ↦ succ a.1) :=
    ⟨succ x, by simp +contextual [upperBounds, succ_le_succ, le_of_lt]⟩
  apply le_antisymm _ (le_of_forall_lt fun y hy ↦ ?_)
  · rw [ciSup_le_iff' H]
    exact fun a ↦ succ_le_of_lt a.2
  · rw [lt_ciSup_iff' H]
    exact ⟨⟨y, hy⟩, lt_succ_of_not_isMax hy.not_isMax⟩

end ConditionallyCompleteLinearOrderBot

section CompleteLinearOrder
variable [CompleteLinearOrder α] {s : Set α} {f : ι → α} {x : α}

lemma sSup_mem_of_not_isSuccPrelimit (hlim : ¬ IsSuccPrelimit (sSup s)) : sSup s ∈ s := by
  obtain ⟨y, hy⟩ := not_forall_not.mp hlim
  obtain ⟨i, his, hi⟩ := lt_sSup_iff.mp hy.lt
  exact eq_of_le_of_not_lt (le_sSup his) (hy.2 hi) ▸ his

lemma sInf_mem_of_not_isPredPrelimit (hlim : ¬ IsPredPrelimit (sInf s)) : sInf s ∈ s := by
  obtain ⟨y, hy⟩ := not_forall_not.mp hlim
  obtain ⟨i, his, hi⟩ := sInf_lt_iff.mp hy.lt
  exact eq_of_le_of_not_lt (sInf_le his) (hy.2 · hi) ▸ his

lemma exists_eq_iSup_of_not_isSuccPrelimit (hf : ¬ IsSuccPrelimit (⨆ i, f i)) :
    ∃ i, f i = ⨆ i, f i :=
  sSup_mem_of_not_isSuccPrelimit hf

lemma exists_eq_iInf_of_not_isPredPrelimit (hf : ¬ IsPredPrelimit (⨅ i, f i)) :
    ∃ i, f i = ⨅ i, f i :=
  sInf_mem_of_not_isPredPrelimit hf

@[deprecated IsGLB.mem_of_not_isPredLimit (since := "2025-01-05")]
lemma IsGLB.exists_of_not_isPredPrelimit (hf : IsGLB (range f) x) (hx : ¬ IsPredPrelimit x) :
    ∃ i, f i = x :=
  hf.mem_of_not_isPredPrelimit hx

end CompleteLinearOrder
```
