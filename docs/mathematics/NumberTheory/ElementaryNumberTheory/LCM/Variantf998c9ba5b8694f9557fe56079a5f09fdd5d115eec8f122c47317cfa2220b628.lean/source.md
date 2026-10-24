# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.LCM.Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `235e876b0a228e4df6131c50264bb62bf5c448c1` · SHA-256 `4714e3018ad7ccb9aa6edf31cf9809b22e92b7bc26b9a6439f1aa3b3a434ecbe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.FactorizationLCMLeftPos.Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.FactorizationLCMLeftPos.Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"a95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Nat/Factorization/LCM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Paul Lezeau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Lezeau
-/
module

public import Mathlib.Data.Nat.Factorization.Basic
public import Mathlib.Data.Nat.GCD.BigOperators

/-!
# Lemmas about `factorizationLCMLeft`

This file contains some lemmas about `factorizationLCMLeft`.
These were split from `Mathlib.Data.Nat.Factorization.Basic` to reduce transitive imports.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.FactorizationLCMLeftPos.Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e

public section

open Finset Finsupp

namespace Nat

variable (a b)

@[simp] lemma factorizationLCMLeft_zero_left : factorizationLCMLeft 0 b = 1 := by
  simp [factorizationLCMLeft]

@[simp] lemma factorizationLCMLeft_zero_right : factorizationLCMLeft a 0 = 1 := by
  simp [factorizationLCMLeft]

@[simp] lemma factorizationLCRight_zero_left : factorizationLCMRight 0 b = 1 := by
  simp [factorizationLCMRight]

@[simp] lemma factorizationLCMRight_zero_right : factorizationLCMRight a 0 = 1 := by
  simp [factorizationLCMRight]

lemma factorizationLCMLeft_pos : 0 < factorizationLCMLeft a b := by
  apply Nat.pos_of_ne_zero
  rw [factorizationLCMLeft, Finsupp.prod_ne_zero_iff]
  intro p _ H
  by_cases h : b.factorization p ≤ a.factorization p
  · simp only [h, reduceIte, pow_eq_zero_iff', ne_eq] at H
    simpa [H.1] using H.2
  · simp only [h, reduceIte, one_ne_zero] at H

lemma factorizationLCMRight_pos : 0 < factorizationLCMRight a b := by
  apply Nat.pos_of_ne_zero
  rw [factorizationLCMRight, Finsupp.prod_ne_zero_iff]
  intro p _ H
  by_cases h : b.factorization p ≤ a.factorization p
  · simp only [h, reduceIte, reduceCtorEq] at H
  · simp only [h, ↓reduceIte, pow_eq_zero_iff', ne_eq] at H
    simpa [H.1] using H.2

lemma coprime_factorizationLCMLeft_factorizationLCMRight :
    (factorizationLCMLeft a b).Coprime (factorizationLCMRight a b) := by
  rw [factorizationLCMLeft, factorizationLCMRight]
  refine coprime_prod_left_iff.mpr fun p hp ↦ coprime_prod_right_iff.mpr fun q hq ↦ ?_
  dsimp only; split_ifs with h h'
  any_goals simp only [coprime_one_right_eq_true, coprime_one_left_eq_true]
  refine coprime_pow_primes _ _ (prime_of_mem_primeFactors hp) (prime_of_mem_primeFactors hq) ?_
  contrapose h'; rwa [← h']

variable {a b}

lemma factorizationLCMLeft_mul_factorizationLCMRight (ha : a ≠ 0) (hb : b ≠ 0) :
    (factorizationLCMLeft a b) * (factorizationLCMRight a b) = lcm a b := by
  rw [← prod_factorization_pow_eq_self (lcm_ne_zero ha hb), factorizationLCMLeft,
    factorizationLCMRight, ← prod_mul]
  congr; ext p n; split_ifs <;> simp

variable (a b)

lemma factorizationLCMLeft_dvd_left : factorizationLCMLeft a b ∣ a := by
  rcases eq_or_ne a 0 with rfl | ha
  · simp only [dvd_zero]
  rcases eq_or_ne b 0 with rfl | hb
  · simp [factorizationLCMLeft]
  nth_rewrite 2 [← prod_factorization_pow_eq_self ha]
  rw [prod_of_support_subset (s := (lcm a b).factorization.support)]
  · apply prod_dvd_prod_of_dvd; rintro p -; dsimp only; split_ifs with le
    · rw [factorization_lcm ha hb]; apply pow_dvd_pow; exact sup_le le_rfl le
    · apply one_dvd
  · intro p hp; rw [mem_support_iff] at hp ⊢
    rw [factorization_lcm ha hb]; exact (lt_sup_iff.mpr <| .inl <| Nat.pos_of_ne_zero hp).ne'
  · intros; rw [pow_zero]

lemma factorizationLCMRight_dvd_right : factorizationLCMRight a b ∣ b := by
  rcases eq_or_ne a 0 with rfl | ha
  · simp [factorizationLCMRight]
  rcases eq_or_ne b 0 with rfl | hb
  · simp only [dvd_zero]
  nth_rewrite 2 [← prod_factorization_pow_eq_self hb]
  rw [prod_of_support_subset (s := (lcm a b).factorization.support)]
  · apply Finset.prod_dvd_prod_of_dvd; rintro p -; dsimp only; split_ifs with le
    · apply one_dvd
    · rw [factorization_lcm ha hb]; apply pow_dvd_pow; exact sup_le (not_le.1 le).le le_rfl
  · intro p hp; rw [mem_support_iff] at hp ⊢
    rw [factorization_lcm ha hb]; exact (lt_sup_iff.mpr <| .inr <| Nat.pos_of_ne_zero hp).ne'
  · intros; rw [pow_zero]


end Nat
```
