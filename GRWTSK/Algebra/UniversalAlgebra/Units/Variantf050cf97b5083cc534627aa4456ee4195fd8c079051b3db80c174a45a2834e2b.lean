-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsUnitIffAbsEq.Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsUnitIffAbsEq.Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/Order/Units.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Algebra.Order.Ring.Abs

/-!
# Lemmas about units in `ℤ`, which interact with the order structure.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.IsUnitIffAbsEq.Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c

namespace Int

theorem isUnit_iff_abs_eq {x : ℤ} : IsUnit x ↔ abs x = 1 := by
  rw [isUnit_iff_natAbs_eq, abs_eq_natAbs, ← Int.ofNat_one, natCast_inj]

theorem isUnit_sq {a : ℤ} (ha : IsUnit a) : a ^ 2 = 1 := by rw [sq, isUnit_mul_self ha]

@[simp]
theorem units_sq (u : ℤˣ) : u ^ 2 = 1 := by
  rw [Units.ext_iff, Units.val_pow_eq_pow_val, Units.val_one, isUnit_sq u.isUnit]

alias units_pow_two := units_sq

@[simp]
theorem units_mul_self (u : ℤˣ) : u * u = 1 := by rw [← sq, units_sq]

@[simp]
theorem units_inv_eq_self (u : ℤˣ) : u⁻¹ = u := by rw [inv_eq_iff_mul_eq_one, units_mul_self]

theorem units_div_eq_mul (u₁ u₂ : ℤˣ) : u₁ / u₂ = u₁ * u₂ := by
  rw [div_eq_mul_inv, units_inv_eq_self]

-- `Units.val_mul` is a "wrong turn" for the simplifier, this undoes it and simplifies further
@[simp]
theorem units_coe_mul_self (u : ℤˣ) : (u * u : ℤ) = 1 := by
  rw [← Units.val_mul, units_mul_self, Units.val_one]

theorem neg_one_pow_ne_zero {n : ℕ} : (-1 : ℤ) ^ n ≠ 0 := by simp

theorem sq_eq_one_of_sq_lt_four {x : ℤ} (h1 : x ^ 2 < 4) (h2 : x ≠ 0) : x ^ 2 = 1 :=
  sq_eq_one_iff.mpr
    ((abs_eq (zero_le_one' ℤ)).mp
      (le_antisymm (lt_add_one_iff.mp (abs_lt_of_sq_lt_sq h1 zero_le_two))
        (sub_one_lt_iff.mp (abs_pos.mpr h2))))

theorem sq_eq_one_of_sq_le_three {x : ℤ} (h1 : x ^ 2 ≤ 3) (h2 : x ≠ 0) : x ^ 2 = 1 :=
  sq_eq_one_of_sq_lt_four (lt_of_le_of_lt h1 (lt_add_one (3 : ℤ))) h2

theorem units_pow_eq_pow_mod_two (u : ℤˣ) (n : ℕ) : u ^ n = u ^ (n % 2) := by
  conv =>
    lhs
    rw [← Nat.mod_add_div n 2]
    rw [pow_add, pow_mul, units_sq, one_pow, mul_one]

end Int
