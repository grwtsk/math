# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeWhile.Variant66da21c232f4d96e9bbefa10ab639affdaa64e0d318320353db4eb22ad5225e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6be77119dc903e613ce9cd26a958d44339b3e07` · SHA-256 `416ecf0787292cdc13428f4212778cc760ac0ab8253dd6ba2898b1ffc7853442`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DropWhileGetZeroNot.Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DropWhileGetZeroNot.Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37","mathematical_subject":"Computation.DataStructures","original_sha256":"5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/TakeWhile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Parikshit Khanna. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Parikshit Khanna, Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Mario Carneiro
-/
module

public import Mathlib.Order.Basic
public import Mathlib.Data.Nat.Basic
public import Mathlib.Tactic.Set

/-! # `List.takeWhile` and `List.dropWhile` -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DropWhileGetZeroNot.Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37

public section

namespace List

variable {α : Type*} (p : α → Bool)

theorem dropWhile_get_zero_not (l : List α) (hl : 0 < (l.dropWhile p).length) :
    ¬p ((l.dropWhile p).get ⟨0, hl⟩) := by
  induction l with
  | nil => cases hl
  | cons hd tl IH =>
    simp only [dropWhile]
    by_cases hp : p hd
    · simp_all only [get_eq_getElem]
      apply IH
      simp_all only [dropWhile_cons_of_pos]
    · simp [hp]

theorem length_dropWhile_le (l : List α) : (dropWhile p l).length ≤ l.length := by
  induction l with
  | nil => simp
  | cons head tail ih =>
    simp only [dropWhile, length_cons]
    split
    · lia
    · simp

variable {p} {l : List α}

@[simp]
theorem dropWhile_eq_nil_iff : dropWhile p l = [] ↔ ∀ x ∈ l, p x := by
  induction l with
  | nil => simp [dropWhile]
  | cons x xs IH => by_cases hp : p x <;> simp [hp, IH]

@[simp]
theorem dropWhile_eq_self_iff : dropWhile p l = l ↔ ∀ hl : 0 < l.length, ¬p (l[0]'hl) := by
  rcases l with - | ⟨hd, tl⟩
  · simp
  · rw [dropWhile]
    by_cases h_p_hd : p hd
    · simp only [h_p_hd, length_cons, Nat.zero_lt_succ, getElem_cons_zero, not_true_eq_false,
        imp_false, iff_false]
      intro h
      replace h := congrArg length h
      have := length_dropWhile_le p tl
      simp at h
      lia
    · simp [h_p_hd]

@[simp]
theorem takeWhile_eq_self_iff : takeWhile p l = l ↔ ∀ x ∈ l, p x := by
  induction l with
  | nil => simp
  | cons x xs IH => by_cases hp : p x <;> simp [hp, IH]

@[simp]
theorem takeWhile_eq_nil_iff : takeWhile p l = [] ↔ ∀ hl : 0 < l.length, ¬p (l.get ⟨0, hl⟩) := by
  induction l with
  | nil =>
    simp only [takeWhile_nil, Bool.not_eq_true, true_iff]
    intro h
    simp at h
  | cons x xs IH => by_cases hp : p x <;> simp [hp]

theorem mem_takeWhile_imp {x : α} (hx : x ∈ takeWhile p l) : p x := by
  induction l with simp [takeWhile] at hx
  | cons hd tl IH =>
    cases hp : p hd
    · simp [hp] at hx
    · rw [hp, mem_cons] at hx
      rcases hx with (rfl | hx)
      · exact hp
      · exact IH hx

theorem takeWhile_takeWhile (p q : α → Bool) (l : List α) :
    takeWhile p (takeWhile q l) = takeWhile (fun a => p a ∧ q a) l := by
  induction l with
  | nil => simp
  | cons hd tl IH => by_cases hp : p hd <;> by_cases hq : q hd <;> simp [takeWhile, hp, hq, IH]

theorem takeWhile_idem : takeWhile p (takeWhile p l) = takeWhile p l := by
  simp_rw [takeWhile_takeWhile, and_self_iff, Bool.decide_coe]

variable (p) (l)

lemma find?_eq_head?_dropWhile_not :
    l.find? p = (l.dropWhile (fun x ↦ !(p x))).head? := by
  induction l
  case nil => simp
  case cons head tail hi =>
    set ph := p head with phh
    rcases ph with rfl | rfl
    · have phh' : ¬(p head = true) := by simp [phh.symm]
      rw [find?_cons_of_neg phh', dropWhile_cons_of_pos]
      · exact hi
      · simpa using phh
    · rw [find?_cons_of_pos phh.symm, dropWhile_cons_of_neg]
      · simp
      · simpa using phh

lemma find?_not_eq_head?_dropWhile :
    l.find? (fun x ↦ !(p x)) = (l.dropWhile p).head? := by
  convert! l.find?_eq_head?_dropWhile_not ?_
  simp

variable {p} {l}

lemma find?_eq_head_dropWhile_not (h : ∃ x ∈ l, p x) :
    l.find? p = some ((l.dropWhile (fun x ↦ !(p x))).head (by simpa using h)) := by
  rw [l.find?_eq_head?_dropWhile_not p, ← head_eq_iff_head?_eq_some]

lemma find?_not_eq_head_dropWhile (h : ∃ x ∈ l, ¬p x) :
    l.find? (fun x ↦ !(p x)) = some ((l.dropWhile p).head (by simpa using h)) := by
  convert! l.find?_eq_head_dropWhile_not ?_
  · simp
  · simpa using h

end List
```
