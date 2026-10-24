# Complete source: GRWTSK.Algebra.GroupTheory.Quotient.Variant402eb521e4b2b6640847dfde104b499ebcc8173929f9c8ad95b2482e743df9c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `186ce31606ef3e9f5bcb4217ef93369e651f97ef` · SHA-256 `1f64b60f205b5f258d13bfcb58f183dc7eec144b065334b5d5731eaf6fd9cbb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ZsmulMemZmultiplesIffExistsSubDiv.Variantce78a1464e198f77521be900755de9acf1e40231b38ecff9baa7f546f2ec8fa6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce78a1464e198f77521be900755de9acf1e40231b38ecff9baa7f546f2ec8fa6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ZsmulMemZmultiplesIffExistsSubDiv.Variantce78a1464e198f77521be900755de9acf1e40231b38ecff9baa7f546f2ec8fa6","mathematical_subject":"Algebra.Groups","original_sha256":"ce78a1464e198f77521be900755de9acf1e40231b38ecff9baa7f546f2ec8fa6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/CharZero/Quotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.GroupTheory.QuotientGroup


namespace GRWTSK.Algebra.GroupTheory.ZsmulMemZmultiplesIffExistsSubDiv.Variantce78a1464e198f77521be900755de9acf1e40231b38ecff9baa7f546f2ec8fa6

#align_import algebra.char_zero.quotient from "leanprover-community/mathlib"@"d90e4e186f1d18e375dcd4e5b5f6364b01cb3e46"

/-!
# Lemmas about quotients in characteristic zero
-/


variable {R : Type*} [DivisionRing R] [CharZero R] {p : R}

namespace AddSubgroup

/-- `z • r` is a multiple of `p` iff `r` is `pk/z` above a multiple of `p`, where `0 ≤ k < |z|`. -/
theorem zsmul_mem_zmultiples_iff_exists_sub_div {r : R} {z : ℤ} (hz : z ≠ 0) :
    z • r ∈ AddSubgroup.zmultiples p ↔
      ∃ k : Fin z.natAbs, r - (k : ℕ) • (p / z : R) ∈ AddSubgroup.zmultiples p := by
  rw [AddSubgroup.mem_zmultiples_iff]
  simp_rw [AddSubgroup.mem_zmultiples_iff, div_eq_mul_inv, ← smul_mul_assoc, eq_sub_iff_add_eq]
  have hz' : (z : R) ≠ 0 := Int.cast_ne_zero.mpr hz
  conv_rhs => simp (config := { singlePass := true }) only [← (mul_right_injective₀ hz').eq_iff]
  simp_rw [← zsmul_eq_mul, smul_add, ← mul_smul_comm, zsmul_eq_mul (z : R)⁻¹, mul_inv_cancel hz',
    mul_one, ← coe_nat_zsmul, smul_smul, ← add_smul]
  constructor
  · rintro ⟨k, h⟩
    simp_rw [← h]
    refine' ⟨⟨(k % z).toNat, _⟩, k / z, _⟩
    · rw [← Int.ofNat_lt, Int.toNat_of_nonneg (Int.emod_nonneg _ hz)]
      exact (Int.emod_lt _ hz).trans_eq (Int.abs_eq_natAbs _)
    rw [Fin.val_mk, Int.toNat_of_nonneg (Int.emod_nonneg _ hz)]
    nth_rewrite 3 [← Int.div_add_mod k z]
    rw [Int.mod_def, ← Int.div_def', Int.emod_def]
    simp only [add_sub_cancel'_right, zsmul_eq_mul, Int.div_def']
  · rintro ⟨k, n, h⟩
    exact ⟨_, h⟩
#align add_subgroup.zsmul_mem_zmultiples_iff_exists_sub_div AddSubgroup.zsmul_mem_zmultiples_iff_exists_sub_div

theorem nsmul_mem_zmultiples_iff_exists_sub_div {r : R} {n : ℕ} (hn : n ≠ 0) :
    n • r ∈ AddSubgroup.zmultiples p ↔
      ∃ k : Fin n, r - (k : ℕ) • (p / n : R) ∈ AddSubgroup.zmultiples p := by
  rw [← coe_nat_zsmul r, zsmul_mem_zmultiples_iff_exists_sub_div (Int.coe_nat_ne_zero.mpr hn),
    Int.cast_ofNat]
  rfl
#align add_subgroup.nsmul_mem_zmultiples_iff_exists_sub_div AddSubgroup.nsmul_mem_zmultiples_iff_exists_sub_div

end AddSubgroup

namespace QuotientAddGroup

theorem zmultiples_zsmul_eq_zsmul_iff {ψ θ : R ⧸ AddSubgroup.zmultiples p} {z : ℤ} (hz : z ≠ 0) :
    z • ψ = z • θ ↔ ∃ k : Fin z.natAbs, ψ = θ + (k : ℕ) • (p / z : R) := by
  induction ψ using Quotient.inductionOn'
  induction θ using Quotient.inductionOn'
  -- Porting note: Introduced Zp notation to shorten lines
  let Zp := AddSubgroup.zmultiples p
  have : (Quotient.mk'' : R → R ⧸ Zp) = ((↑) : R → R ⧸ Zp) := rfl
  simp only [this]
  simp_rw [← QuotientAddGroup.mk_zsmul, ← QuotientAddGroup.mk_add,
    QuotientAddGroup.eq_iff_sub_mem, ← smul_sub, ← sub_sub]
  exact AddSubgroup.zsmul_mem_zmultiples_iff_exists_sub_div hz
#align quotient_add_group.zmultiples_zsmul_eq_zsmul_iff QuotientAddGroup.zmultiples_zsmul_eq_zsmul_iff

theorem zmultiples_nsmul_eq_nsmul_iff {ψ θ : R ⧸ AddSubgroup.zmultiples p} {n : ℕ} (hz : n ≠ 0) :
    n • ψ = n • θ ↔ ∃ k : Fin n, ψ = θ + (k : ℕ) • (p / n : R) := by
  rw [← coe_nat_zsmul ψ, ← coe_nat_zsmul θ,
    zmultiples_zsmul_eq_zsmul_iff (Int.coe_nat_ne_zero.mpr hz), Int.cast_ofNat]
  rfl
#align quotient_add_group.zmultiples_nsmul_eq_nsmul_iff QuotientAddGroup.zmultiples_nsmul_eq_nsmul_iff

end QuotientAddGroup
```
