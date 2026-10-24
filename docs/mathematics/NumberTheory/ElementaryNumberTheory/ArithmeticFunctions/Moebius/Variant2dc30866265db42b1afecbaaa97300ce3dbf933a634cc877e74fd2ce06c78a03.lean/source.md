# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant2dc30866265db42b1afecbaaa97300ce3dbf933a634cc877e74fd2ce06c78a03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e69fb7eb0bce9b86d85e7f6bd83ca219eae5987d` · SHA-256 `295d89798fd0ccebf74a6cbb5aa3457695bc6cde83544142ac3a4099a99aebf9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/UniqueFactorizationDomain/Moebius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
module

public import Mathlib.NumberTheory.ArithmeticFunction.Moebius
public import Mathlib.RingTheory.UniqueFactorizationDomain.Basic

/-!
# The Moebius function on a unique factorization monoid

We define the Moebius function on a unique factorization monoid.

## Main definitions

* `UniqueFactorizationMonoid.moebius`: The Moebius function on a unique factorization monoid,
  defined to be `((-1) ^ (factors a).card)` if `a` is squarefree and `0` otherwise.

## Main statements

* `IsRelPrime.moebius_mul`: The Moebius function is a multiplicative function.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575

@[expose] public section

namespace UniqueFactorizationMonoid

variable {α : Type*} [CommMonoidWithZero α] [UniqueFactorizationMonoid α] {a b : α}

/-- The Moebius function on a unique factorization monoid, defined to be
  `((-1) ^ (factors a).card)` if `a` is squarefree and `0` otherwise. -/
noncomputable def moebius (a : α) : ℤ :=
  open scoped Classical in
  if Squarefree a then ((-1) ^ (factors a).card) else 0

-- Todo: prove `Int.moebius_eq` as well.
theorem _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.Nat.moebius_eq (n : ℕ) : moebius n = ArithmeticFunction.moebius n := by
  rw [moebius]
  congr
  simp [Nat.factors_eq, ArithmeticFunction.cardFactors_apply]

@[simp]
theorem _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.Squarefree.moebius_eq (ha : Squarefree a) : moebius a = (-1) ^ (factors a).card :=
  ite_eq_left ha

@[simp]
theorem moebius_of_not_squarefree (ha : ¬ Squarefree a) : moebius a = 0 :=
  ite_eq_right ha

theorem moebius_zero [Nontrivial α] : moebius (0 : α) = 0 := by
  simp

theorem moebius_one : moebius (1 : α) = 1 := by
  simp

theorem _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.Associated.moebius_eq (h : Associated a b) : moebius a = moebius b := by
  rw [moebius, moebius, h.squarefree_iff, h.card_factors_eq]

theorem _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.IsUnit.moebius_eq (ha : IsUnit a) : moebius a = 1 := by
  rw [(associated_one_iff_isUnit.mpr ha).moebius_eq, moebius_one]

theorem _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.Irreducible.moebius_eq (ha : Irreducible a) : moebius a = -1 := by
  rw [ha.squarefree.moebius_eq, card_factors_of_irreducible ha, pow_one]

theorem _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.IsRelPrime.moebius_mul (h : IsRelPrime a b) :
    moebius (a * b) = moebius a * moebius b := by
  rcases subsingleton_or_nontrivial α
  · rw [Subsingleton.elim a 1, moebius_one, one_mul, one_mul]
  by_cases ha : Squarefree a; swap
  · simp [ha, mt Squarefree.of_mul_left ha]
  by_cases hb : Squarefree b; swap
  · simp [hb, mt Squarefree.of_mul_right hb]
  have hab : Squarefree (a * b) := squarefree_mul_iff.mpr ⟨h, ha, hb⟩
  rw [hab.moebius_eq, Multiset.card_eq_card_of_rel (factors_mul ha.ne_zero hb.ne_zero),
    Multiset.card_add, pow_add, ha.moebius_eq, hb.moebius_eq]

end UniqueFactorizationMonoid
```
