# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Varianta58c24ac8035c203ee86e47b29827192da80b3fd6d70a140490b6315eba17897

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ae1c528530ff192fc9cca7ac5b697458f1b7eef` · SHA-256 `c5e1cdc1f98a8486273a755bd3fcf8236d39ba266d6b6208008abcf84d2dd7f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeAntisymmIff.Variantf9d44b0007102a443beb96270ddcb933ac8f3756f62d72ba9a7184b21b5fed0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9d44b0007102a443beb96270ddcb933ac8f3756f62d72ba9a7184b21b5fed0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LeAntisymmIff.Variantf9d44b0007102a443beb96270ddcb933ac8f3756f62d72ba9a7184b21b5fed0e","mathematical_subject":"Computation.DataStructures","original_sha256":"f9d44b0007102a443beb96270ddcb933ac8f3756f62d72ba9a7184b21b5fed0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/batteries/Batteries/Data/Char/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg, François G. Dorais
-/
module

public import Batteries.Classes.Order
public import Batteries.Data.List.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeAntisymmIff.Variantf9d44b0007102a443beb96270ddcb933ac8f3756f62d72ba9a7184b21b5fed0e

@[expose] public section

namespace Char

theorem le_antisymm_iff {x y : Char} : x = y ↔ x ≤ y ∧ y ≤ x :=
  Char.ext_iff.trans UInt32.le_antisymm_iff

instance : Std.LawfulOrd Char :=
  .compareOfLessAndEq_of_irrefl_of_trans_of_not_lt_of_antisymm
    (fun _ => Nat.lt_irrefl _) Nat.lt_trans Nat.not_lt Char.le_antisymm

@[simp] theorem toNat_ofNatAux {n : Nat} (h : n.isValidChar) : toNat (ofNatAux n h) = n := by
  simp [ofNatAux, toNat]

theorem toNat_ofNat (n : Nat) : toNat (ofNat n) = if n.isValidChar then n else 0 := by
  split
  · simp [ofNat, *]
  · simp [ofNat, toNat, *]

@[simp]
theorem val_ofNat (hn : Nat.isValidChar n) : (ofNat n).val = UInt32.ofNat n := by
  simp [ofNat, hn, ofNatAux, UInt32.ofNatLT_eq_ofNat]

@[simp]
theorem ofNat_toNat_eq_val {c : Char} : UInt32.ofNat c.toNat = c.val := by
  rw [← toNat_val, UInt32.ofNat_toNat]

/--
Maximum character code point.
(See [unicode scalar value](https://www.unicode.org/glossary/#unicode_scalar_value).)
-/
protected abbrev max := 0x10FFFF

/--
Maximum surrogate code point.
(See [unicode scalar value](https://www.unicode.org/glossary/#unicode_scalar_value).)
-/
protected abbrev maxSurrogate := 0xDFFF

/--
Minimum surrogate code point.
(See [unicode scalar value](https://www.unicode.org/glossary/#unicode_scalar_value).)
-/
protected abbrev minSurrogate := 0xD800

/--
Number of valid character code points.
(See [unicode scalar value](https://www.unicode.org/glossary/#unicode_scalar_value).)
-/
protected abbrev count := Char.max - Char.maxSurrogate + Char.minSurrogate

@[grind .] theorem toNat_le_max (c : Char) : c.toNat ≤ Char.max := by
  match c.valid with
  | .inl h => simp only [toNat_val] at h; grind
  | .inr ⟨_, h⟩ => simp only [toNat_val] at h; grind

@[grind .] theorem toNat_not_surrogate (c : Char) :
    ¬(Char.minSurrogate ≤ c.toNat ∧ c.toNat ≤ Char.maxSurrogate) := by
  match c.valid with
  | .inl h => simp only [toNat_val] at h; grind
  | .inr ⟨h, _⟩ => simp only [toNat_val] at h; grind

/-- Returns `true` if `p` returns true for every `Char`. -/
protected def all (p : Char → Bool) : Bool :=
  Nat.all Char.minSurrogate (fun c h₁ => p <| Char.ofNatAux c <| .inl h₁) &&
  Nat.all (Char.max - Char.maxSurrogate) fun c h₂ =>
    p <| Char.ofNatAux (c + (Char.maxSurrogate + 1)) <| .inr (by grind)

private theorem of_all_eq_true_aux (h : Char.all p) (n : Nat) (hn : n.isValidChar) :
    p (.ofNatAux n hn) := by
  simp only [Char.all, Nat.all_eq_finRange_all, List.all_eq_true, Bool.and_eq_true] at h
  match hn with
  | .inl hn =>
    have := h.1 ⟨n, by grind⟩
    grind
  | .inr ⟨hn, hn'⟩ =>
    have := h.2 ⟨n - (Char.maxSurrogate + 1), by rw [Char.maxSurrogate, Char.max]; grind⟩
    grind

theorem eq_true_of_all_eq_true (h : Char.all p) (c : Char) : p c := by
  have : c.toNat.isValidChar := c.valid
  rw [← c.ofNat_toNat, ofNat, dite_eq_left this]
  exact of_all_eq_true_aux h c.toNat this

theorem exists_eq_false_of_all_eq_false (h : Char.all p = false) :
    ∃ c, p c = false := by
  simp only [Char.all, Nat.all_eq_finRange_all, List.all_eq_false, Bool.and_eq_false_iff] at h
  simp only [Bool.eq_false_iff]
  match h with
  | .inl ⟨⟨n, hn⟩, _, h⟩ => exact ⟨Char.ofNatAux n (.inl hn), h⟩
  | .inr ⟨⟨n, _⟩, _, h⟩ => exact ⟨Char.ofNatAux (n + (Char.maxSurrogate + 1)) (.inr (by grind)), h⟩

theorem all_eq_true_iff_forall_eq_true : Char.all p = true ↔ ∀ c, p c = true := by
  constructor
  · exact eq_true_of_all_eq_true
  · intro h
    cases heq : Char.all p
    · obtain ⟨c, hc⟩ := exists_eq_false_of_all_eq_false heq
      simp [h c] at hc
    · trivial

/-- Returns `true` if `p` returns true for some `Char`. -/
protected def any (p : Char → Bool) : Bool :=
  Nat.any Char.minSurrogate (fun c h₁ => p <| Char.ofNatAux c <| .inl h₁) ||
  Nat.any (Char.max - Char.maxSurrogate) fun c h₂ =>
    p <| Char.ofNatAux (c + Char.maxSurrogate + 1) <| .inr (by grind)

theorem exists_eq_true_of_any_eq_true (h : Char.any p = true) : ∃ c, p c = true := by
  simp only [Char.any, Nat.any_eq_finRange_any, List.any_eq_true, Bool.or_eq_true] at h
  match h with
  | .inl ⟨⟨n, hn⟩, _, h⟩ => exact ⟨Char.ofNatAux n (.inl hn), h⟩
  | .inr ⟨⟨n, _⟩, _, h⟩ => exact ⟨Char.ofNatAux (n + Char.maxSurrogate + 1) (.inr (by grind)), h⟩

private theorem of_any_eq_false_aux (h : Char.any p = false) (n : Nat) (hn : n.isValidChar) :
    p (.ofNatAux n hn) = false := by
  simp only [Char.any, Nat.any_eq_finRange_any, List.any_eq_false, Bool.or_eq_false_iff] at h
  match hn with
  | .inl hn =>
    have := h.1 ⟨n, hn⟩ (List.mem_finRange _)
    grind
  | .inr ⟨hn, hn'⟩ =>
    have := h.2 ⟨n - (Char.maxSurrogate + 1), by rw [Char.maxSurrogate, Char.max]; grind⟩
      (List.mem_finRange _)
    grind

theorem eq_false_of_any_eq_false (h : Char.any p = false) (c : Char) : p c = false := by
  have : c.toNat.isValidChar := c.valid
  rw [← c.ofNat_toNat, ofNat, dite_eq_left this]
  exact of_any_eq_false_aux h c.toNat this

theorem any_eq_true_iff_exists_eq_true : Char.any p = true ↔ ∃ c, p c = true := by
  constructor
  · exact exists_eq_true_of_any_eq_true
  · intro h
    cases heq : Char.any p
    · obtain ⟨c, hc⟩ := h
      simp [eq_false_of_any_eq_false heq] at hc
    · trivial

instance (P : Char → Prop) [DecidablePred P] : Decidable (∀ c, P c) :=
  match h : Char.all (P ·) with
  | true => isTrue <| fun c => of_decide_eq_true <| eq_true_of_all_eq_true h c
  | false => isFalse <| not_forall_of_exists_not <|
      match exists_eq_false_of_all_eq_false h with
      | ⟨c, hc⟩ => ⟨c, of_decide_eq_false hc⟩

instance (P : Char → Prop) [DecidablePred P] : Decidable (∃ c, P c) :=
  match h : Char.any (P ·) with
  | false => isFalse <| not_exists_of_forall_not <| fun c =>
      of_decide_eq_false <| eq_false_of_any_eq_false h c
  | true => isTrue <|
      match exists_eq_true_of_any_eq_true h with
      | ⟨c, hc⟩ => ⟨c, of_decide_eq_true hc⟩
```
