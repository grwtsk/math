# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.Defs.Variantced57686736a39bdfcd196724cc325773f873732953c340b552dbfedabaf9890

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c065672c75679923280a34a02015756b75738591` · SHA-256 `0ab13009bf3e383aa7c0db28a12754fe5001fd4669e0000f0cc04a6226b1c180`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.PadicValNatEqEmultiplicityOfNeOne.Variant8ec2c6cf566644d6fe2a26231b686f394fd0d7a70fea1f88963e7b3330312a7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ec2c6cf566644d6fe2a26231b686f394fd0d7a70fea1f88963e7b3330312a7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PadicNumbers.SourceCorpus.PadicValNatEqEmultiplicityOfNeOne.Variant8ec2c6cf566644d6fe2a26231b686f394fd0d7a70fea1f88963e7b3330312a7a","mathematical_subject":"NumberTheory.PadicNumbers","original_sha256":"8ec2c6cf566644d6fe2a26231b686f394fd0d7a70fea1f88963e7b3330312a7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/Padics/PadicVal/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis, Matthew Robert Ballard
-/
module

public import Mathlib.Data.Nat.PadicValNat
public import Mathlib.RingTheory.Multiplicity
public import Mathlib.Data.Nat.Factors

/-!
# `p`-adic Valuation

This file defines the `p`-adic valuation on `ℕ`, `ℤ`, and `ℚ`.

The `p`-adic valuation on `ℚ` is the difference of the multiplicities of `p` in the numerator and
denominator of `q`. This function obeys the standard properties of a valuation, with the appropriate
assumptions on `p`. The `p`-adic valuations on `ℕ` and `ℤ` agree with that on `ℚ`.

The valuation induces a norm on `ℚ`. This norm is defined in
`Mathlib/NumberTheory/Padics/PadicNorm.lean`.
-/


namespace GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.PadicValNatEqEmultiplicityOfNeOne.Variant8ec2c6cf566644d6fe2a26231b686f394fd0d7a70fea1f88963e7b3330312a7a

public section

assert_not_exists Field

universe u

open Nat

variable {p : ℕ}

theorem padicValNat_eq_emultiplicity_of_ne_one (hp : p ≠ 1) {n : ℕ} (hn : n ≠ 0) :
    padicValNat p n = emultiplicity p n := by
  rw [eq_comm, emultiplicity_eq_coe, pow_dvd_iff_le_padicValNat hp hn,
    pow_dvd_iff_le_padicValNat hp hn]
  simp

@[simp]
theorem Nat.toNat_emultiplicity (p n : ℕ) : (emultiplicity p n).toNat = padicValNat p n := by
  rcases eq_or_ne p 1 with rfl | hp
  · simp
  · rcases eq_or_ne n 0 with rfl | hn
    · simp
    · simp [← padicValNat_eq_emultiplicity_of_ne_one, *]

@[deprecated (since := "2026-09-08")] alias padicValNat_def' := padicValNat_def

/-- A simplification of `padicValNat` when one input is prime, by analogy with
`padicValRat_def`. -/
theorem padicValNat_eq_emultiplicity [hp : Fact p.Prime] {n : ℕ} (hn : n ≠ 0) :
    padicValNat p n = emultiplicity p n :=
  padicValNat_eq_emultiplicity_of_ne_one hp.out.ne_one hn

namespace padicValNat

@[deprecated (since := "2026-03-15")]
alias maxPowDiv_eq_emultiplicity := padicValNat_eq_emultiplicity

@[deprecated (since := "2026-03-15")]
alias maxPowDiv_eq_multiplicity := padicValNat_def'

@[deprecated padicValNat_zero_right (since := "2026-03-15")]
protected theorem zero : padicValNat p 0 = 0 := padicValNat_zero_right p

@[deprecated padicValNat_one_right (since := "2026-03-15")]
protected theorem one : padicValNat p 1 = 0 := padicValNat_one_right p

@[simp]
theorem eq_zero_iff {n : ℕ} : padicValNat p n = 0 ↔ p = 1 ∨ n = 0 ∨ ¬p ∣ n := by
  rcases eq_or_ne n 0 with rfl | hn₀; · simp
  rcases eq_or_ne p 1 with rfl | hp₁; · simp
  simpa [*] using pow_dvd_iff_le_padicValNat (k := 1) hp₁ hn₀ |>.symm |>.not

end padicValNat

open List

theorem le_emultiplicity_iff_replicate_subperm_primeFactorsList {a b : ℕ} {n : ℕ} (ha : a.Prime)
    (hb : b ≠ 0) :
    ↑n ≤ emultiplicity a b ↔ replicate n a <+~ b.primeFactorsList :=
  (replicate_subperm_primeFactorsList_iff ha hb).trans
    pow_dvd_iff_le_emultiplicity |>.symm

theorem le_padicValNat_iff_replicate_subperm_primeFactorsList {a b : ℕ} {n : ℕ} (ha : a.Prime)
    (hb : b ≠ 0) :
    n ≤ padicValNat a b ↔ replicate n a <+~ b.primeFactorsList := by
  rw [← le_emultiplicity_iff_replicate_subperm_primeFactorsList ha hb,
    Nat.finiteMultiplicity_iff.2 ⟨ha.ne_one, Nat.pos_of_ne_zero hb⟩
      |>.emultiplicity_eq_multiplicity, ← padicValNat_def,
    ENat.natCast_le_natCast]

/-- A weak upper bound on `padicValNat p n`. -/
theorem mul_padicValNat_le {p n : ℕ} : p * padicValNat p n ≤ n := by
  obtain rfl | hp := eq_or_ne p 1
  · simp
  obtain rfl | hn := eq_or_ne n 0
  · simp
  grw [Nat.mul_le_pow hp, Nat.le_of_dvd hn.bot_lt pow_padicValNat_dvd]
```
