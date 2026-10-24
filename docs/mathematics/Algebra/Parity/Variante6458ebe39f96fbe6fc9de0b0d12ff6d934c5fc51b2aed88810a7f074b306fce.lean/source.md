# Complete source: GRWTSK.Algebra.Parity.Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a9bcf197f5cd674cd7635fa1b4894a76c1d320c` · SHA-256 `371af72d4ba0ede5fa592c55f0e75f4808121bf3ed639f84a65d3b8913d7b670`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.OddIff.Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.OddIff.Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"c4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Int/Parity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Algebra.Ring.Parity
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Algebra.Group.Int.Even

/-!
# Basic parity lemmas for the ring `ℤ`

See note [foundational algebra order theory].
-/


namespace GRWTSK.Algebra.OddIff.Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f

assert_not_exists DenselyOrdered Set.Subsingleton

namespace Int

/-! #### Parity -/

variable {m n : ℤ}

lemma odd_iff : Odd n ↔ n % 2 = 1 where
  mp := fun ⟨m, hm⟩ ↦ by simp [hm, add_emod]
  mpr h := ⟨n / 2, by rw [← h, add_comm, emod_add_ediv n 2]⟩

lemma not_odd_iff : ¬Odd n ↔ n % 2 = 0 := by rw [odd_iff, emod_two_ne_one]

@[simp] lemma not_odd_zero : ¬Odd (0 : ℤ) := not_odd_iff.mpr rfl

@[simp] lemma not_odd_iff_even : ¬Odd n ↔ Even n := by rw [not_odd_iff, even_iff]
@[simp] lemma not_even_iff_odd : ¬Even n ↔ Odd n := by rw [not_even_iff, odd_iff]

lemma even_or_odd (n : ℤ) : Even n ∨ Odd n := Or.imp_right not_even_iff_odd.1 <| em <| Even n

lemma even_or_odd' (n : ℤ) : ∃ k, n = 2 * k ∨ n = 2 * k + 1 := by
  simpa only [two_mul, exists_or, Odd, Even] using even_or_odd n

lemma even_xor'_odd (n : ℤ) : Xor' (Even n) (Odd n) := by
  cases even_or_odd n with
  | inl h => exact Or.inl ⟨h, not_odd_iff_even.2 h⟩
  | inr h => exact Or.inr ⟨h, not_even_iff_odd.2 h⟩

lemma even_xor'_odd' (n : ℤ) : ∃ k, Xor' (n = 2 * k) (n = 2 * k + 1) := by
  rcases even_or_odd n with (⟨k, rfl⟩ | ⟨k, rfl⟩) <;> use k
  · simpa only [← two_mul, Xor', true_and, eq_self_iff_true, not_true, or_false,
      and_false] using (succ_ne_self (2 * k)).symm
  · simp only [Xor', add_eq_left, false_or, eq_self_iff_true, not_true, not_false_iff,
      one_ne_zero, and_self_iff]

instance : DecidablePred (Odd : ℤ → Prop) := fun _ => decidable_of_iff _ not_even_iff_odd

lemma even_add' : Even (m + n) ↔ (Odd m ↔ Odd n) := by
  rw [even_add, ← not_odd_iff_even, ← not_odd_iff_even, not_iff_not]

lemma not_even_two_mul_add_one (n : ℤ) : ¬ Even (2 * n + 1) :=
  not_even_iff_odd.2 <| odd_two_mul_add_one n

lemma even_sub' : Even (m - n) ↔ (Odd m ↔ Odd n) := by
  rw [even_sub, ← not_odd_iff_even, ← not_odd_iff_even, not_iff_not]

lemma odd_mul : Odd (m * n) ↔ Odd m ∧ Odd n := by simp [← not_even_iff_odd, not_or, parity_simps]

lemma Odd.of_mul_left (h : Odd (m * n)) : Odd m := (odd_mul.mp h).1

lemma Odd.of_mul_right (h : Odd (m * n)) : Odd n := (odd_mul.mp h).2

@[parity_simps] lemma odd_pow {n : ℕ} : Odd (m ^ n) ↔ Odd m ∨ n = 0 := by
  rw [← not_iff_not, not_odd_iff_even, not_or, not_odd_iff_even, even_pow]

lemma odd_pow' {n : ℕ} (h : n ≠ 0) : Odd (m ^ n) ↔ Odd m := odd_pow.trans <| or_iff_left h

@[parity_simps] lemma odd_add : Odd (m + n) ↔ (Odd m ↔ Even n) := by
  rw [← not_even_iff_odd, even_add, not_iff, ← not_even_iff_odd]

lemma odd_add' : Odd (m + n) ↔ (Odd n ↔ Even m) := by rw [add_comm, odd_add]

lemma ne_of_odd_add (h : Odd (m + n)) : m ≠ n := by rintro rfl; simp [← not_even_iff_odd] at h

@[parity_simps] lemma odd_sub : Odd (m - n) ↔ (Odd m ↔ Even n) := by
  rw [← not_even_iff_odd, even_sub, not_iff, ← not_even_iff_odd]

lemma odd_sub' : Odd (m - n) ↔ (Odd n ↔ Even m) := by
  rw [← not_even_iff_odd, even_sub, not_iff, not_iff_comm, ← not_even_iff_odd]

lemma even_mul_succ_self (n : ℤ) : Even (n * (n + 1)) := by
  simpa [even_mul, parity_simps] using n.even_or_odd

lemma even_mul_pred_self (n : ℤ) : Even (n * (n - 1)) := by
  simpa [even_mul, parity_simps] using n.even_or_odd

@[simp, norm_cast] lemma odd_coe_nat (n : ℕ) : Odd (n : ℤ) ↔ Odd n := by
  rw [← not_even_iff_odd, ← Nat.not_even_iff_odd, even_coe_nat]

@[simp] lemma natAbs_even : Even n.natAbs ↔ Even n := by
  simp [even_iff_two_dvd, dvd_natAbs, natCast_dvd.symm]

@[simp]
lemma natAbs_odd : Odd n.natAbs ↔ Odd n := by
  rw [← not_even_iff_odd, ← Nat.not_even_iff_odd, natAbs_even]

protected alias ⟨_, _root_.Even.natAbs⟩ := natAbs_even
protected alias ⟨_, _root_.Odd.natAbs⟩ := natAbs_odd

lemma four_dvd_add_or_sub_of_odd {a b : ℤ} (ha : Odd a) (hb : Odd b) :
    4 ∣ a + b ∨ 4 ∣ a - b := by
  obtain ⟨m, rfl⟩ := ha
  obtain ⟨n, rfl⟩ := hb
  omega

lemma two_mul_ediv_two_add_one_of_odd : Odd n → 2 * (n / 2) + 1 = n := by
  rintro ⟨c, rfl⟩
  rw [mul_comm]
  convert Int.ediv_add_emod' (2 * c + 1) 2
  simp [Int.add_emod]

lemma ediv_two_mul_two_add_one_of_odd : Odd n → n / 2 * 2 + 1 = n := by
  rintro ⟨c, rfl⟩
  convert Int.ediv_add_emod' (2 * c + 1) 2
  simp [Int.add_emod]

lemma add_one_ediv_two_mul_two_of_odd : Odd n → 1 + n / 2 * 2 = n := by
  rintro ⟨c, rfl⟩
  rw [add_comm]
  convert Int.ediv_add_emod' (2 * c + 1) 2
  simp [Int.add_emod]

lemma two_mul_ediv_two_of_odd (h : Odd n) : 2 * (n / 2) = n - 1 :=
  eq_sub_of_add_eq (two_mul_ediv_two_add_one_of_odd h)

@[norm_cast, simp]
theorem isSquare_natCast_iff {n : ℕ} : IsSquare (n : ℤ) ↔ IsSquare n := by
  constructor <;> rintro ⟨x, h⟩
  · exact ⟨x.natAbs, (natAbs_mul_natAbs_eq h.symm).symm⟩
  · exact ⟨x, mod_cast h⟩

@[simp]
theorem isSquare_ofNat_iff {n : ℕ} :
    IsSquare (ofNat(n) : ℤ) ↔ IsSquare (ofNat(n) : ℕ) :=
  isSquare_natCast_iff

end Int
```
