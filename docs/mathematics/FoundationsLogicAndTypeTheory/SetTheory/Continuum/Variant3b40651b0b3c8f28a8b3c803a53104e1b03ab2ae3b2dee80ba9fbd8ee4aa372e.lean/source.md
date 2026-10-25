# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Continuum.Variant3b40651b0b3c8f28a8b3c803a53104e1b03ab2ae3b2dee80ba9fbd8ee4aa372e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d7dd9599d5b38af0f8a90d461493cf263220f17` · SHA-256 `dd6fd08b8f710f0cb74d8a940c72d72dc3d920e2a42ef3f3b13847009ca96b2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Continuum.Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.Continuum.Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827","mathematical_subject":"Logic.SetTheory","original_sha256":"7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/SetTheory/Cardinal/Continuum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.SetTheory.Cardinal.Arithmetic

/-!
# Cardinality of continuum

In this file we define `Cardinal.continuum` (notation: `𝔠`, localized in `Cardinal`) to be `2 ^ ℵ₀`.
We also prove some `simp` lemmas about cardinal arithmetic involving `𝔠`.

## Notation

- `𝔠` : notation for `Cardinal.continuum` in locale `Cardinal`.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Continuum.Variant7a29cbb989249d1541617625e7408101562fcfdfbf28c189b7d10063d7150827

namespace Cardinal

universe u v

open Cardinal

/-- Cardinality of the continuum. -/
def continuum : Cardinal.{u} :=
  2 ^ ℵ₀

@[inherit_doc] scoped notation "𝔠" => Cardinal.continuum

@[simp]
theorem two_power_aleph0 : 2 ^ ℵ₀ = 𝔠 :=
  rfl

@[simp]
theorem lift_continuum : lift.{v} 𝔠 = 𝔠 := by
  rw [← two_power_aleph0, lift_two_power, lift_aleph0, two_power_aleph0]

@[simp]
theorem continuum_le_lift {c : Cardinal.{u}} : 𝔠 ≤ lift.{v} c ↔ 𝔠 ≤ c := by
  rw [← lift_continuum.{v, u}, lift_le]

@[simp]
theorem lift_le_continuum {c : Cardinal.{u}} : lift.{v} c ≤ 𝔠 ↔ c ≤ 𝔠 := by
  rw [← lift_continuum.{v, u}, lift_le]

@[simp]
theorem continuum_lt_lift {c : Cardinal.{u}} : 𝔠 < lift.{v} c ↔ 𝔠 < c := by
  rw [← lift_continuum.{v, u}, lift_lt]

@[simp]
theorem lift_lt_continuum {c : Cardinal.{u}} : lift.{v} c < 𝔠 ↔ c < 𝔠 := by
  rw [← lift_continuum.{v, u}, lift_lt]

/-!
### Inequalities
-/


theorem aleph0_lt_continuum : ℵ₀ < 𝔠 :=
  cantor ℵ₀

theorem aleph0_le_continuum : ℵ₀ ≤ 𝔠 :=
  aleph0_lt_continuum.le

@[simp]
theorem beth_one : ℶ_ 1 = 𝔠 := by simpa using beth_succ 0

theorem nat_lt_continuum (n : ℕ) : ↑n < 𝔠 :=
  (nat_lt_aleph0 n).trans aleph0_lt_continuum

theorem mk_set_nat : #(Set ℕ) = 𝔠 := by simp

theorem continuum_pos : 0 < 𝔠 :=
  nat_lt_continuum 0

theorem continuum_ne_zero : 𝔠 ≠ 0 :=
  continuum_pos.ne'

theorem aleph_one_le_continuum : ℵ₁ ≤ 𝔠 := by
  rw [← succ_aleph0]
  exact Order.succ_le_of_lt aleph0_lt_continuum

@[simp]
theorem continuum_toNat : toNat continuum = 0 :=
  toNat_apply_of_aleph0_le aleph0_le_continuum

@[simp]
theorem continuum_toENat : toENat continuum = ⊤ :=
  (toENat_eq_top.2 aleph0_le_continuum)

/-!
### Addition
-/


@[simp]
theorem aleph0_add_continuum : ℵ₀ + 𝔠 = 𝔠 :=
  add_eq_right aleph0_le_continuum aleph0_le_continuum

@[simp]
theorem continuum_add_aleph0 : 𝔠 + ℵ₀ = 𝔠 :=
  (add_comm _ _).trans aleph0_add_continuum

@[simp]
theorem continuum_add_self : 𝔠 + 𝔠 = 𝔠 :=
  add_eq_self aleph0_le_continuum

@[simp]
theorem nat_add_continuum (n : ℕ) : ↑n + 𝔠 = 𝔠 :=
  nat_add_eq n aleph0_le_continuum

@[simp]
theorem continuum_add_nat (n : ℕ) : 𝔠 + n = 𝔠 :=
  (add_comm _ _).trans (nat_add_continuum n)

@[simp]
theorem ofNat_add_continuum {n : ℕ} [Nat.AtLeastTwo n] : ofNat(n) + 𝔠 = 𝔠 :=
  nat_add_continuum n

@[simp]
theorem continuum_add_ofNat {n : ℕ} [Nat.AtLeastTwo n] : 𝔠 + ofNat(n) = 𝔠 :=
  continuum_add_nat n

/-!
### Multiplication
-/


@[simp]
theorem continuum_mul_self : 𝔠 * 𝔠 = 𝔠 :=
  mul_eq_left aleph0_le_continuum le_rfl continuum_ne_zero

@[simp]
theorem continuum_mul_aleph0 : 𝔠 * ℵ₀ = 𝔠 :=
  mul_eq_left aleph0_le_continuum aleph0_le_continuum aleph0_ne_zero

@[simp]
theorem aleph0_mul_continuum : ℵ₀ * 𝔠 = 𝔠 :=
  (mul_comm _ _).trans continuum_mul_aleph0

@[simp]
theorem nat_mul_continuum {n : ℕ} (hn : n ≠ 0) : ↑n * 𝔠 = 𝔠 :=
  mul_eq_right aleph0_le_continuum (nat_lt_continuum n).le (Nat.cast_ne_zero.2 hn)

@[simp]
theorem continuum_mul_nat {n : ℕ} (hn : n ≠ 0) : 𝔠 * n = 𝔠 :=
  (mul_comm _ _).trans (nat_mul_continuum hn)

@[simp]
theorem ofNat_mul_continuum {n : ℕ} [Nat.AtLeastTwo n] : ofNat(n) * 𝔠 = 𝔠 :=
  nat_mul_continuum (OfNat.ofNat_ne_zero n)

@[simp]
theorem continuum_mul_ofNat {n : ℕ} [Nat.AtLeastTwo n] : 𝔠 * ofNat(n) = 𝔠 :=
  continuum_mul_nat (OfNat.ofNat_ne_zero n)

/-!
### Power
-/


@[simp]
theorem aleph0_power_aleph0 : ℵ₀ ^ ℵ₀ = 𝔠 :=
  power_self_eq le_rfl

@[simp]
theorem nat_power_aleph0 {n : ℕ} (hn : 2 ≤ n) : n ^ ℵ₀ = 𝔠 :=
  nat_power_eq le_rfl hn

@[simp]
theorem continuum_power_aleph0 : 𝔠 ^ ℵ₀ = 𝔠 := by
  rw [← two_power_aleph0, ← power_mul, mul_eq_left le_rfl le_rfl aleph0_ne_zero]

theorem power_aleph0_of_le_continuum {x : Cardinal} (h₁ : 2 ≤ x) (h₂ : x ≤ 𝔠) : x ^ ℵ₀ = 𝔠 := by
  apply le_antisymm
  · rw [← continuum_power_aleph0]
    exact power_le_power_right h₂
  · rw [← two_power_aleph0]
    exact power_le_power_right h₁

end Cardinal
```
