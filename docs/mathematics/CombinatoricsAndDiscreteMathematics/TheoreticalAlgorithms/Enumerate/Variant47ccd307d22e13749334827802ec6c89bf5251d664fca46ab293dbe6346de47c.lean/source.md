# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Enumerate.Variant47ccd307d22e13749334827802ec6c89bf5251d664fca46ab293dbe6346de47c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `277b679924a4a2fa66b9ac16d4ccd5a652706161` · SHA-256 `5475256fbc00ef70d4677759415ed4a77113350738406e8023027d6ce426aa66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Enumerate.Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Enumerate.Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/Enumerate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Tactic.Common
import Mathlib.Data.Set.Insert

/-!
# Set enumeration
This file allows enumeration of sets given a choice function.
The definition does not assume `sel` actually is a choice function, i.e. `sel s ∈ s` and
`sel s = none ↔ s = ∅`. These assumptions are added to the lemmas needing them.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Enumerate.Variante08733fb8a7a0dd4f86091831049ba8b20cfaf5f21a7b9a3be1d7ab2aefd6661

assert_not_exists RelIso

noncomputable section

open Function

namespace Set

section Enumerate

variable {α : Type*} (sel : Set α → Option α)

/-- Given a choice function `sel`, enumerates the elements of a set in the order
`a 0 = sel s`, `a 1 = sel (s \ {a 0})`, `a 2 = sel (s \ {a 0, a 1})`, ... and stops when
`sel (s \ {a 0, ..., a n}) = none`. Note that we don't require `sel` to be a choice function. -/
def enumerate : Set α → ℕ → Option α
  | s, 0 => sel s
  | s, n + 1 => do
    let a ← sel s
    enumerate (s \ {a}) n

theorem enumerate_eq_none_of_sel {s : Set α} (h : sel s = none) : ∀ {n}, enumerate sel s n = none
  | 0 => by simp [h, enumerate]
  | n + 1 => by simp [h, enumerate]

theorem enumerate_eq_none :
    ∀ {s n₁ n₂}, enumerate sel s n₁ = none → n₁ ≤ n₂ → enumerate sel s n₂ = none
  | _, 0, _ => fun h _ ↦ enumerate_eq_none_of_sel sel h
  | s, n + 1, m => fun h hm ↦ by
    cases hs : sel s
    · exact enumerate_eq_none_of_sel sel hs
    · cases m with
      | zero => contradiction
      | succ m' =>
        simp? [hs, enumerate] at h ⊢ says
          simp only [enumerate, hs, Option.bind_eq_bind, Option.some_bind] at h ⊢
        have hm : n ≤ m' := Nat.le_of_succ_le_succ hm
        exact enumerate_eq_none h hm

theorem enumerate_mem (h_sel : ∀ s a, sel s = some a → a ∈ s) :
    ∀ {s n a}, enumerate sel s n = some a → a ∈ s
  | s, 0, a => h_sel s a
  | s, n + 1, a => by
    cases h : sel s with
    | none => simp [enumerate_eq_none_of_sel, h]
    | some a' =>
      simp only [enumerate, h, Nat.add_eq, add_zero]
      exact fun h' : enumerate sel (s \ {a'}) n = some a ↦
        have : a ∈ s \ {a'} := enumerate_mem h_sel h'
        this.left

theorem enumerate_inj {n₁ n₂ : ℕ} {a : α} {s : Set α} (h_sel : ∀ s a, sel s = some a → a ∈ s)
    (h₁ : enumerate sel s n₁ = some a) (h₂ : enumerate sel s n₂ = some a) : n₁ = n₂ := by
  wlog hn : n₁ ≤ n₂ generalizing n₁ n₂
  · exact (this h₂ h₁ (lt_of_not_le hn).le).symm
  rcases Nat.le.dest hn with ⟨m, rfl⟩
  clear hn
  induction n₁ generalizing s with
  | zero =>
    cases m with
    | zero => rfl
    | succ m =>
      have h' : enumerate sel (s \ {a}) m = some a := by
        simp_all only [enumerate, Nat.add_eq, zero_add]; exact h₂
      have : a ∈ s \ {a} := enumerate_mem sel h_sel h'
      simp_all [Set.mem_diff_singleton]
  | succ k ih =>
    rw [show k + 1 + m = (k + m) + 1 by omega] at h₂
    cases h : sel s <;> simp_all [enumerate] ; tauto

end Enumerate

end Set
```
