# Complete source: GRWTSK.Algebra.GroupTheory.Even.Variantd2dafcf6496f9403ac07953c908a6e964ac4fa9d1543eb1516b9ede06cf2c00e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5965dc813c6cb6d4d223d71294569a474b48cf6e` · SHA-256 `bc774a7f209e3a12ae407a2174ac71fcd67ebea669c05623a9b51e3165411f69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.EvenIff.Variant5fea3a2c517a1a2fc143648b3d75d47beb12b55cb5945f60d8f556478638b701","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5fea3a2c517a1a2fc143648b3d75d47beb12b55cb5945f60d8f556478638b701","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.EvenIff.Variant5fea3a2c517a1a2fc143648b3d75d47beb12b55cb5945f60d8f556478638b701","mathematical_subject":"Algebra.Groups","original_sha256":"5fea3a2c517a1a2fc143648b3d75d47beb12b55cb5945f60d8f556478638b701","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Int/Even.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
module

public import Mathlib.Algebra.Group.Int.Defs
public import Mathlib.Algebra.Group.Nat.Even
public import Mathlib.Data.Int.Sqrt
public import Mathlib.Tactic.Attr.Core

/-!
# Parity of integers
-/


namespace GRWTSK.Algebra.GroupTheory.EvenIff.Variant5fea3a2c517a1a2fc143648b3d75d47beb12b55cb5945f60d8f556478638b701

public section

open Nat

namespace Int

/-! #### Parity -/

variable {m n : ℤ}

@[simp] lemma emod_two_ne_one : ¬n % 2 = 1 ↔ n % 2 = 0 := by grind

@[simp] lemma one_emod_two : (1 : Int) % 2 = 1 := rfl

-- `EuclideanDomain.mod_eq_zero` uses (2 ∣ n) as normal form
@[local simp] lemma emod_two_ne_zero : ¬n % 2 = 0 ↔ n % 2 = 1 := by grind

@[grind =]
lemma even_iff : Even n ↔ n % 2 = 0 where
  mp := fun ⟨m, hm⟩ ↦ by simp [← Int.two_mul, hm]
  mpr h := ⟨n / 2, by grind⟩

lemma not_even_iff : ¬Even n ↔ n % 2 = 1 := by grind

@[simp] lemma two_dvd_ne_zero : ¬2 ∣ n ↔ n % 2 = 1 := by grind

instance : DecidablePred (Even : ℤ → Prop) := fun _ ↦ decidable_of_iff _ even_iff.symm

/-- `IsSquare` can be decided on `ℤ` by checking against the square root. -/
instance : DecidablePred (IsSquare : ℤ → Prop) :=
  fun m ↦ decidable_of_iff' (sqrt m * sqrt m = m) <| by
    simp_rw [← exists_mul_self m, IsSquare, eq_comm]

@[simp] lemma not_even_one : ¬Even (1 : ℤ) := by simp [even_iff]

@[parity_simps] lemma even_add : Even (m + n) ↔ (Even m ↔ Even n) := by grind

lemma two_not_dvd_two_mul_add_one (n : ℤ) : ¬2 ∣ 2 * n + 1 := by grind

@[parity_simps]
lemma even_sub : Even (m - n) ↔ (Even m ↔ Even n) := by grind

@[parity_simps] lemma even_add_one : Even (n + 1) ↔ ¬Even n := by grind

@[parity_simps] lemma even_sub_one : Even (n - 1) ↔ ¬Even n := by grind

@[parity_simps, grind =] lemma even_mul : Even (m * n) ↔ Even m ∨ Even n := by
  rcases emod_two_eq_zero_or_one m with h₁ | h₁ <;>
  rcases emod_two_eq_zero_or_one n with h₂ | h₂ <;>
  simp [even_iff, h₁, h₂, Int.mul_emod]

@[parity_simps, grind =] lemma even_pow {n : ℕ} : Even (m ^ n) ↔ Even m ∧ n ≠ 0 := by
  induction n with grind

lemma even_pow' {n : ℕ} (h : n ≠ 0) : Even (m ^ n) ↔ Even m := by grind

@[simp, norm_cast, grind =]
lemma even_coe_nat (n : ℕ) : Even (n : ℤ) ↔ Even n := by
  rw_mod_cast [even_iff, Nat.even_iff]

lemma two_mul_ediv_two_of_even : Even n → 2 * (n / 2) = n := by grind

lemma ediv_two_mul_two_of_even : Even n → n / 2 * 2 = n := by grind

-- Here are examples of how `parity_simps` can be used with `Int`.
example (m n : ℤ) (h : Even m) : ¬Even (n + 3) ↔ Even (m ^ 2 + m + n) := by
  simp +decide [*, parity_simps]

example : ¬Even (25394535 : ℤ) := by decide

@[simp]
theorem isSquare_sign_iff {z : ℤ} : IsSquare z.sign ↔ 0 ≤ z := by
  induction z using Int.induction_on with
  | zero => simpa using ⟨0, by simp⟩
  | succ => norm_cast; simp
  | pred =>
    rw [sign_eq_neg_one_of_neg (by lia), ← neg_add', Int.neg_nonneg]
    norm_cast
    simp only [reduceNeg, le_zero_eq, Nat.add_eq_zero_iff, succ_ne_self, and_false, iff_false]
    rintro ⟨a | a, ⟨⟩⟩

end Int
```
