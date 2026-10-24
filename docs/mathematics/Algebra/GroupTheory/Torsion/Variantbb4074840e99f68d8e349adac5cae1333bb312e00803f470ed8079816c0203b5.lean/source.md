# Complete source: GRWTSK.Algebra.GroupTheory.Torsion.Variantbb4074840e99f68d8e349adac5cae1333bb312e00803f470ed8079816c0203b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f997641a018af85ad996e13200262e44f89fb40f` · SHA-256 `d0314d896fb37efeac3beaca8107ba06a4d629259c0bbd6583aded7720ff0692`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.PowLeftInjective.Variant4313722359b0eb8e692a1447ed11507ed6a7e61e300325bcf901b5f3fcedbbd5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4313722359b0eb8e692a1447ed11507ed6a7e61e300325bcf901b5f3fcedbbd5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.PowLeftInjective.Variant4313722359b0eb8e692a1447ed11507ed6a7e61e300325bcf901b5f3fcedbbd5","mathematical_subject":"Algebra.Groups","original_sha256":"4313722359b0eb8e692a1447ed11507ed6a7e61e300325bcf901b5f3fcedbbd5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Torsion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies, Patrick Luo. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Patrick Luo
-/
module

public import Mathlib.Algebra.Group.Basic
public import Mathlib.Algebra.Group.SelfInv
public import Mathlib.Tactic.MkIffOfInductiveProp

/-!
# Torsion-free monoids and groups

This file proves lemmas about torsion-free monoids.
A monoid `M` is *torsion-free* if `n • · : M → M` is injective for all non-zero natural numbers `n`.
-/


namespace GRWTSK.Algebra.GroupTheory.PowLeftInjective.Variant4313722359b0eb8e692a1447ed11507ed6a7e61e300325bcf901b5f3fcedbbd5

public section

open Function

variable {M G : Type*}

section Monoid
variable [Monoid M]

instance [AddCommMonoid M] [IsAddTorsionFree M] : Lean.Grind.NoNatZeroDivisors M where
  no_nat_zero_divisors _ _ _ hk habk := IsAddTorsionFree.nsmul_right_injective hk habk

@[to_additive] instance Subsingleton.to_isMulTorsionFree [Subsingleton M] : IsMulTorsionFree M where
  pow_left_injective _ _ := injective_of_subsingleton _

variable [IsMulTorsionFree M] {n : ℕ} {a b : M}

@[to_additive nsmul_right_injective]
lemma pow_left_injective (hn : n ≠ 0) : Injective fun a : M ↦ a ^ n :=
  IsMulTorsionFree.pow_left_injective hn

@[to_additive nsmul_right_inj]
lemma pow_left_inj (hn : n ≠ 0) : a ^ n = b ^ n ↔ a = b := (pow_left_injective hn).eq_iff

@[to_additive nsmul_eq_zero_iff_right]
lemma pow_eq_one_iff_left (hn : n ≠ 0) : a ^ n = 1 ↔ a = 1 := by
  rw [← pow_left_inj (a := a) hn, one_pow]

-- We want to use `IsAddTorsion.nsmul_eq_zero_iff` earlier than `smul_eq_zero`.
@[to_additive (attr := simp high)]
lemma pow_eq_one_iff : a ^ n = 1 ↔ a = 1 ∨ n = 0 := by
  obtain rfl | hn := eq_or_ne n 0 <;> simp [pow_eq_one_iff_left, *]

@[to_additive nsmul_eq_zero_iff_left]
lemma pow_eq_one_iff_right (ha : a ≠ 1) : a ^ n = 1 ↔ n = 0 := by simp [*]

/-- See `sq_eq_one_iff` for a version that holds in rings. -/
@[to_additive two_nsmul_eq_zero]
lemma sq_eq_one : a ^ 2 = 1 ↔ a = 1 := pow_eq_one_iff_left (by lia)

end Monoid

section Group
variable [Group G] [IsMulTorsionFree G] {n : ℤ} {a b : G}

@[to_additive zsmul_right_injective]
lemma zpow_left_injective : ∀ {n : ℤ}, n ≠ 0 → Injective fun a : G ↦ a ^ n
  | (n + 1 : ℕ), _ => by
    simpa [← Int.natCast_one, ← Int.natCast_add] using! pow_left_injective n.succ_ne_zero
  | .negSucc n, _ => by simpa using! inv_injective.comp (pow_left_injective n.succ_ne_zero)

@[to_additive zsmul_right_inj]
lemma zpow_left_inj (hn : n ≠ 0) : a ^ n = b ^ n ↔ a = b := (zpow_left_injective hn).eq_iff

/-- Alias of `zpow_left_inj`, for ease of discovery alongside `zsmul_le_zsmul_iff'` and
`zsmul_lt_zsmul_iff'`. -/
@[to_additive /-- Alias of `zsmul_right_inj`, for ease of discovery alongside `zsmul_le_zsmul_iff'`
and `zsmul_lt_zsmul_iff'`. -/]
lemma zpow_eq_zpow_iff' (hn : n ≠ 0) : a ^ n = b ^ n ↔ a = b := zpow_left_inj hn

@[to_additive IsAddTorsionFree.zsmul_eq_zero_iff_right]
lemma IsMulTorsionFree.zpow_eq_one_iff_left (hn : n ≠ 0) : a ^ n = 1 ↔ a = 1 := by
  rw [← zpow_left_inj (a := a) hn, one_zpow]

-- We want to use `IsAddTorsion.zsmul_eq_zero_iff` earlier than `smul_eq_zero`.
@[to_additive (attr := simp high)]
lemma IsMulTorsionFree.zpow_eq_one_iff : a ^ n = 1 ↔ a = 1 ∨ n = 0 := by
  obtain rfl | hn := eq_or_ne n 0 <;> simp [zpow_eq_one_iff_left, *]

@[to_additive IsAddTorsionFree.zsmul_eq_zero_iff_left]
lemma IsMulTorsionFree.zpow_eq_one_iff_right (ha : a ≠ 1) : a ^ n = 1 ↔ n = 0 := by simp [*]

@[to_additive] lemma self_eq_inv : a = a⁻¹ ↔ a = 1 := by rw [← sq_eq_one, sq, mul_eq_one_iff_eq_inv]
@[to_additive] lemma inv_eq_self : a⁻¹ = a ↔ a = 1 := by rw [eq_comm, self_eq_inv]
@[to_additive] lemma self_ne_inv : a ≠ a⁻¹ ↔ a ≠ 1 := self_eq_inv.ne
@[to_additive] lemma inv_ne_self : a⁻¹ ≠ a ↔ a ≠ 1 := inv_eq_self.ne

@[to_additive] lemma isSelfInv_iff_eq_one : IsSelfInv a ↔ a = 1 := inv_eq_self

end Group
```
