# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Replicate.Variant23ace280e7f2cee2fb17e0f44cbf4405a4c628d974afea5d4d4de48bb451bfb1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d43a629ba962f4b9c9839c4dd7f797e933fb68e1` · SHA-256 `571a2c84481f65067b5b7cf66914d2e358a72f5adce6fb13e32fc81c2f2dfe41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Replicate.Variantbab58cd41cc5837cb83f84519e4d1fafa2f8bd6a8a17845b0e1fd72fc3e1a06b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bab58cd41cc5837cb83f84519e4d1fafa2f8bd6a8a17845b0e1fd72fc3e1a06b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Replicate.Variantbab58cd41cc5837cb83f84519e4d1fafa2f8bd6a8a17845b0e1fd72fc3e1a06b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"bab58cd41cc5837cb83f84519e4d1fafa2f8bd6a8a17845b0e1fd72fc3e1a06b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Multiset/Replicate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.Multiset.AddSub

/-!
# Repeating elements in multisets

## Main definitions

* `replicate n a` is the multiset containing only `a` with multiplicity `n`

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Replicate.Variantbab58cd41cc5837cb83f84519e4d1fafa2f8bd6a8a17845b0e1fd72fc3e1a06b

@[expose] public section

-- No algebra should be required
assert_not_exists Monoid

universe v

open List Nat Function

variable {α : Type*} {β : Type v} {γ : Type*}

namespace Multiset

/-! ### `Multiset.replicate` -/

/-- `replicate n a` is the multiset containing only `a` with multiplicity `n`. -/
def replicate (n : ℕ) (a : α) : Multiset α :=
  List.replicate n a

theorem coe_replicate (n : ℕ) (a : α) : (List.replicate n a : Multiset α) = replicate n a := rfl

@[simp] theorem replicate_zero (a : α) : replicate 0 a = 0 := rfl

@[simp] theorem replicate_succ (a : α) (n) : replicate (n + 1) a = a ::ₘ replicate n a := rfl

theorem replicate_add (m n : ℕ) (a : α) : replicate (m + n) a = replicate m a + replicate n a :=
  congr_arg _ <| List.replicate_add ..

theorem replicate_one (a : α) : replicate 1 a = {a} := rfl

@[simp] theorem card_replicate (n) (a : α) : card (replicate n a) = n :=
  length_replicate

theorem mem_replicate {a b : α} {n : ℕ} : b ∈ replicate n a ↔ n ≠ 0 ∧ b = a :=
  List.mem_replicate

theorem eq_of_mem_replicate {a b : α} {n} : b ∈ replicate n a → b = a :=
  List.eq_of_mem_replicate

theorem eq_replicate_card {a : α} {s : Multiset α} : s = replicate (card s) a ↔ ∀ b ∈ s, b = a :=
  Quot.inductionOn s fun _l => coe_eq_coe.trans <| perm_replicate.trans eq_replicate_length

alias ⟨_, eq_replicate_of_mem⟩ := eq_replicate_card

theorem eq_replicate {a : α} {n} {s : Multiset α} :
    s = replicate n a ↔ card s = n ∧ ∀ b ∈ s, b = a :=
  ⟨fun h => h.symm ▸ ⟨card_replicate _ _, fun _b => eq_of_mem_replicate⟩,
    fun ⟨e, al⟩ => e ▸ eq_replicate_of_mem al⟩

theorem replicate_right_injective {n : ℕ} (hn : n ≠ 0) : Injective (@replicate α n) :=
  fun _ _ h => (eq_replicate.1 h).2 _ <| mem_replicate.2 ⟨hn, rfl⟩

@[simp] theorem replicate_right_inj {a b : α} {n : ℕ} (h : n ≠ 0) :
    replicate n a = replicate n b ↔ a = b :=
  (replicate_right_injective h).eq_iff

theorem replicate_left_injective (a : α) : Injective (replicate · a) :=
  LeftInverse.injective (card_replicate · a)

theorem replicate_subset_singleton (n : ℕ) (a : α) : replicate n a ⊆ {a} :=
  List.replicate_subset_singleton n a

theorem replicate_le_coe {a : α} {n} {l : List α} : replicate n a ≤ l ↔ List.replicate n a <+ l :=
  ⟨fun ⟨_l', p, s⟩ => perm_replicate.1 p ▸ s, Sublist.subperm⟩

theorem replicate_le_replicate (a : α) {k n : ℕ} : replicate k a ≤ replicate n a ↔ k ≤ n :=
  _root_.trans (by rw [← replicate_le_coe, coe_replicate]) (List.replicate_sublist_replicate a)

@[gcongr]
theorem replicate_mono (a : α) {k n : ℕ} (h : k ≤ n) : replicate k a ≤ replicate n a :=
  (replicate_le_replicate a).2 h

theorem le_replicate_iff {m : Multiset α} {a : α} {n : ℕ} :
    m ≤ replicate n a ↔ ∃ k ≤ n, m = replicate k a :=
  ⟨fun h => ⟨card m, (card_mono h).trans_eq (card_replicate _ _),
      eq_replicate_card.2 fun _ hb => eq_of_mem_replicate <| subset_of_le h hb⟩,
    fun ⟨_, hkn, hm⟩ => hm.symm ▸ (replicate_le_replicate _).2 hkn⟩

theorem lt_replicate_succ {m : Multiset α} {x : α} {n : ℕ} :
    m < replicate (n + 1) x ↔ m ≤ replicate n x := by
  rw [lt_iff_cons_le]
  constructor
  · rintro ⟨x', hx'⟩
    have := eq_of_mem_replicate (mem_of_le hx' (mem_cons_self _ _))
    rwa [this, replicate_succ, cons_le_cons_iff] at hx'
  · intro h
    rw [replicate_succ]
    exact ⟨x, cons_le_cons _ h⟩

/-! ### Multiplicity of an element -/

section

variable [DecidableEq α] {s t u : Multiset α}

@[simp]
theorem count_replicate_self (a : α) (n : ℕ) : count a (replicate n a) = n := by
  convert! List.count_replicate_self (a := a)
  rw [← coe_count, coe_replicate]

theorem count_replicate (a b : α) (n : ℕ) : count a (replicate n b) = if b = a then n else 0 := by
  convert! List.count_replicate (a := a)
  · rw [← coe_count, coe_replicate]
  · simp

theorem le_count_iff_replicate_le {a : α} {s : Multiset α} {n : ℕ} :
    n ≤ count a s ↔ replicate n a ≤ s :=
  Quot.inductionOn s fun _l => by
    simp only [quot_mk_to_coe'', coe_count]
    exact replicate_sublist_iff.symm.trans replicate_le_coe.symm

end

/-! ### Lift a relation to `Multiset`s -/

section Rel

variable {δ : Type*} {r : α → β → Prop} {p : γ → δ → Prop}

theorem rel_replicate_left {m : Multiset α} {a : α} {r : α → α → Prop} {n : ℕ} :
    (replicate n a).Rel r m ↔ card m = n ∧ ∀ x, x ∈ m → r a x :=
  ⟨fun h =>
    ⟨(card_eq_card_of_rel h).symm.trans (card_replicate _ _), fun x hx => by
      obtain ⟨b, hb1, hb2⟩ := exists_mem_of_rel_of_mem (rel_flip.2 h) hx
      rwa [eq_of_mem_replicate hb1] at hb2⟩,
    fun h =>
    rel_of_forall (fun _ _ hx hy => (eq_of_mem_replicate hx).symm ▸ h.2 _ hy)
      (Eq.trans (card_replicate _ _) h.1.symm)⟩

theorem rel_replicate_right {m : Multiset α} {a : α} {r : α → α → Prop} {n : ℕ} :
    m.Rel r (replicate n a) ↔ card m = n ∧ ∀ x, x ∈ m → r x a :=
  rel_flip.trans rel_replicate_left

end Rel

section Replicate

variable {r : α → α → Prop} {s : Multiset α}

theorem nodup_iff_le {s : Multiset α} : Nodup s ↔ ∀ a : α, ¬a ::ₘ a ::ₘ 0 ≤ s :=
  Quot.induction_on s fun _ =>
    nodup_iff_sublist.trans <| forall_congr' fun a => not_congr (@replicate_le_coe _ a 2 _).symm

theorem nodup_iff_ne_cons_cons {s : Multiset α} : s.Nodup ↔ ∀ a t, s ≠ a ::ₘ a ::ₘ t :=
  nodup_iff_le.trans
    ⟨fun h a _ s_eq => h a (s_eq.symm ▸ cons_le_cons a (cons_le_cons a (zero_le _))), fun h a le =>
      let ⟨t, s_eq⟩ := le_iff_exists_add.mp le
      h a t (by rwa [cons_add, cons_add, Multiset.zero_add] at s_eq)⟩

theorem nodup_iff_pairwise {α} {s : Multiset α} : Nodup s ↔ Pairwise (· ≠ ·) s :=
  Quotient.inductionOn s fun _ ↦ pairwise_coe_iff_pairwise.symm

protected theorem Nodup.pairwise : (∀ a ∈ s, ∀ b ∈ s, a ≠ b → r a b) → Nodup s → Pairwise r s :=
  Quotient.inductionOn s fun l h hl => ⟨l, rfl, hl.imp_of_mem fun {a b} ha hb => h a ha b hb⟩

end Replicate

end Multiset
```
