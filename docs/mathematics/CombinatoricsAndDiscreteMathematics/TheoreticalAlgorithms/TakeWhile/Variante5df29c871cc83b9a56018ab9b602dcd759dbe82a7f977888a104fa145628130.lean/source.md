# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeWhile.Variante5df29c871cc83b9a56018ab9b602dcd759dbe82a7f977888a104fa145628130

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f29ddd6c6d54610d88e9eb32cf3bfc451776303d` · SHA-256 `f6b862ae41303e234f39ff1ed4d6f760ae42206a7be50c4278ee5ac98c728fab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DropWhileGetZeroNot.Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DropWhileGetZeroNot.Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1","mathematical_subject":"Computation.DataStructures","original_sha256":"a6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/TakeWhile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Parikshit Khanna. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Parikshit Khanna, Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Mario Carneiro
-/
import Mathlib.Order.Basic
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic.Set

/-! ### List.takeWhile and List.dropWhile -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DropWhileGetZeroNot.Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1

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

variable {p} {l : List α}

@[simp]
theorem dropWhile_eq_nil_iff : dropWhile p l = [] ↔ ∀ x ∈ l, p x := by
  induction l with
  | nil => simp [dropWhile]
  | cons x xs IH => by_cases hp : p x <;> simp [hp, IH]

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
  | cons x xs IH => by_cases hp : p x <;> simp [hp, IH]

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
    l.find? p = (l.dropWhile (fun x ↦ ! (p x))).head? := by
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
    l.find? (fun x ↦ ! (p x)) = (l.dropWhile p).head? := by
  convert l.find?_eq_head?_dropWhile_not ?_
  simp

variable {p} {l}

lemma find?_eq_head_dropWhile_not (h : ∃ x ∈ l, p x) :
    l.find? p = some ((l.dropWhile (fun x ↦ ! (p x))).head (by simpa using h)) := by
  rw [l.find?_eq_head?_dropWhile_not p, ← head_eq_iff_head?_eq_some]

lemma find?_not_eq_head_dropWhile (h : ∃ x ∈ l, ¬p x) :
    l.find? (fun x ↦ ! (p x)) = some ((l.dropWhile p).head (by simpa using h)) := by
  convert l.find?_eq_head_dropWhile_not ?_
  · simp
  · simpa using h

end List
```
