# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantbb5bdc53ec2bb0fb0ff47e68558e3777047d96183546254036baa9502f3f3df8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af553a75b952aa7203e28e11c5e44e0aa672d0e0` · SHA-256 `3be4b7e1adedb5521b62134e538c549abd2649456868c7479a673a038530811c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FindSome.Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FindSome.Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a","mathematical_subject":"Computation.DataStructures","original_sha256":"4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/.lake/packages/batteries/Batteries/Data/Fin/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Batteries.Data.Fin.Basic
import Batteries.Data.List.Lemmas
import Batteries.Util.ProofWanted


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FindSome.Variant4409ce8395d71f2620f4d688ee73500128a78fa1e117043d732ceb83b94e146a

namespace Fin

attribute [norm_cast] val_last

/-! ### clamp -/

@[simp] theorem coe_clamp (n m : Nat) : (clamp n m : Nat) = min n m := rfl

/-! ### findSome? -/

@[simp] theorem findSome?_zero {f : Fin 0 → Option α} : findSome? f = none := rfl

@[simp] theorem findSome?_one {f : Fin 1 → Option α} : findSome? f = f 0 := rfl

theorem findSome?_succ {f : Fin (n+1) → Option α} :
    findSome? f = (f 0 <|> findSome? fun i => f i.succ) := by
  simp only [findSome?, foldl_succ, Option.none_orElse, Function.comp_apply]
  cases f 0
  · rw [Option.orElse_eq_orElse, Option.none_orElse, Option.none_orElse]
  · simp only [Option.some_orElse, Option.orElse_eq_orElse, Option.none_orElse]
    induction n with
    | zero => rfl
    | succ n ih => rw [foldl_succ, Option.some_orElse, ih (f := fun i => f i.succ)]

theorem findSome?_succ_of_some {f : Fin (n+1) → Option α} (h : f 0 = some x) :
    findSome? f = some x := by simp [findSome?_succ, h]

theorem findSome?_succ_of_isSome {f : Fin (n+1) → Option α} (h : (f 0).isSome) :
    findSome? f = f 0 := by cases _h : f 0 <;> simp_all [findSome?_succ_of_some]

theorem findSome?_succ_of_none {f : Fin (n+1) → Option α} (h : f 0 = none) :
    findSome? f = findSome? fun i => f i.succ := by simp [findSome?_succ, h]

theorem findSome?_succ_of_isNone {f : Fin (n+1) → Option α} (h : (f 0).isNone) :
    findSome? f = findSome? fun i => f i.succ := by simp_all [findSome?_succ_of_none]

theorem exists_of_findSome?_eq_some {f : Fin n → Option α} (h : findSome? f = some x) :
    ∃ i, f i = some x := by
  induction n with
  | zero => rw [findSome?_zero] at h; contradiction
  | succ n ih =>
    rw [findSome?_succ] at h
    match heq : f 0 with
    | some x =>
      rw [heq, Option.orElse_eq_orElse, Option.some_orElse] at h
      exists 0
      rw [heq, h]
    | none =>
      rw [heq, Option.orElse_eq_orElse, Option.none_orElse] at h
      match ih h with | ⟨i, _⟩ => exists i.succ

theorem eq_none_of_findSome?_eq_none {f : Fin n → Option α} (h : findSome? f = none) (i) :
    f i = none := by
  induction n with
  | zero => cases i; contradiction
  | succ n ih =>
    rw [findSome?_succ] at h
    match heq : f 0 with
    | some x =>
      rw [heq, Option.orElse_eq_orElse, Option.some_orElse] at h
      contradiction
    | none =>
      rw [heq, Option.orElse_eq_orElse, Option.none_orElse] at h
      cases i using Fin.cases with
      | zero => exact heq
      | succ i => exact ih h i

@[simp] theorem findSome?_isSome_iff {f : Fin n → Option α} :
    (findSome? f).isSome ↔ ∃ i, (f i).isSome := by
  simp only [Option.isSome_iff_exists]
  constructor
  · intro ⟨x, hx⟩
    match exists_of_findSome?_eq_some hx with
    | ⟨i, hi⟩ => exists i, x
  · intro ⟨i, x, hix⟩
    match h : findSome? f with
    | some x => exists x
    | none => rw [eq_none_of_findSome?_eq_none h i] at hix; contradiction

@[simp] theorem findSome?_eq_none_iff {f : Fin n → Option α} :
    findSome? f = none ↔ ∀ i, f i = none := by
  constructor
  · exact eq_none_of_findSome?_eq_none
  · intro hf
    match h : findSome? f with
    | none => rfl
    | some x =>
      match exists_of_findSome?_eq_some h with
      | ⟨i, h⟩ => rw [hf] at h; contradiction

theorem findSome?_isNone_iff {f : Fin n → Option α} :
    (findSome? f).isNone ↔ ∀ i, (f i).isNone := by simp

theorem map_findSome? (f : Fin n → Option α) (g : α → β) :
    (findSome? f).map g = findSome? (Option.map g ∘ f) := by
  induction n with
  | zero => rfl
  | succ n ih => simp [findSome?_succ, Function.comp_def, Option.map_orElse, ih]

theorem findSome?_guard {p : Fin n → Bool} : findSome? (Option.guard p) = find? p := rfl

theorem findSome?_eq_findSome?_finRange (f : Fin n → Option α) :
    findSome? f = (List.finRange n).findSome? f := by
  induction n with
  | zero => rfl
  | succ n ih =>
    rw [findSome?_succ, List.finRange_succ, List.findSome?_cons]
    cases f 0 <;> simp [ih, List.findSome?_map, Function.comp_def]

/-! ### Fin.find? -/

@[simp] theorem find?_zero {p : Fin 0 → Bool} : find? p = none := rfl

@[simp] theorem find?_one {p : Fin 1 → Bool} : find? p = if p 0 then some 0 else none := rfl

theorem find?_succ {p : Fin (n+1) → Bool} :
    find? p = if p 0 then some 0 else (find? fun i => p i.succ).map Fin.succ := by
  simp only [find?, findSome?_succ, Option.guard]
  split <;> simp [Option.none_orElse, map_findSome?, Function.comp_def, Option.guard]

theorem eq_true_of_find?_eq_some {p : Fin n → Bool} (h : find? p = some i) : p i = true := by
  match exists_of_findSome?_eq_some h with
  | ⟨i, hi⟩ =>
    simp only [Option.guard] at hi
    split at hi
    · cases hi; assumption
    · contradiction

theorem eq_false_of_find?_eq_none {p : Fin n → Bool} (h : find? p = none) (i) : p i = false := by
  have hi := eq_none_of_findSome?_eq_none h i
  simp only [Option.guard] at hi
  split at hi
  · contradiction
  · simp [*]

theorem find?_isSome_iff {p : Fin n → Bool} : (find? p).isSome ↔ ∃ i, p i := by
  simp [find?, findSome?_isSome_iff]

theorem find?_isNone_iff {p : Fin n → Bool} : (find? p).isNone ↔ ∀ i, ¬ p i := by
  simp [find?, findSome?_isSome_iff]

proof_wanted find?_eq_some_iff {p : Fin n → Bool} : find? p = some i ↔ p i ∧ ∀ j, j < i → ¬ p j

theorem find?_eq_none_iff {p : Fin n → Bool} : find? p = none ↔ ∀ i, ¬ p i := by
  rw [← find?_isNone_iff, Option.isNone_iff_eq_none]

theorem find?_eq_find?_finRange {p : Fin n → Bool} : find? p = (List.finRange n).find? p := by
  induction n with
  | zero => rfl
  | succ n ih =>
    rw [find?_succ, List.finRange_succ, List.find?_cons]
    split <;> simp [Function.comp_def, *]
```
