# Complete source: GRWTSK.Algebra.GroupTheory.Torsion.Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81c1aa262f52b8bb62083c76dcf552b411d25d92` · SHA-256 `ac5b55aba01916e8998c61041a1e387506955975d5b066ec14c23f77ffb8a4b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.IsAddTorsionFree.Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.IsAddTorsionFree.Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce","mathematical_subject":"Algebra.Groups","original_sha256":"120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Torsion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies, Patrick Luo. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Patrick Luo
-/
import Mathlib.Algebra.Group.Basic
import Mathlib.Tactic.MkIffOfInductiveProp

/-!
# Torsion-free monoids and groups

This file defines torsion-free monoids as those monoids `M` for which `n • · : M → M` is injective
for all non-zero natural number `n`.

## TODO

Replace `Monoid.IsTorsionFree`, which is mathematically incorrect for monoids which are not groups.
This probably means we also want to get rid of `NoZeroSMulDivisors`, which is mathematically
incorrect for the same reason.
-/


namespace GRWTSK.Algebra.GroupTheory.IsAddTorsionFree.Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce

open Function

variable {M G : Type*}

variable (M) in
/-- A monoid is `R`-torsion-free if scalar multiplication by every non-zero element `a : R` is
injective. -/
@[mk_iff]
class IsAddTorsionFree [AddMonoid M] where
  protected nsmul_right_injective ⦃n : ℕ⦄ (hn : n ≠ 0) : Injective fun a : M ↦ n • a

section Monoid
variable [Monoid M]

variable (M) in
/-- A monoid is `R`-torsion-free if power by every non-zero element `a : R` is injective. -/
@[to_additive, mk_iff]
class IsMulTorsionFree where
  protected pow_left_injective ⦃n : ℕ⦄ (hn : n ≠ 0) : Injective fun a : M ↦ a ^ n

attribute [to_additive existing] isMulTorsionFree_iff

@[to_additive] instance Subsingleton.to_isMulTorsionFree [Subsingleton M] : IsMulTorsionFree M where
  pow_left_injective _ _ := injective_of_subsingleton _

variable [IsMulTorsionFree M] {n : ℕ} {a b : M}

@[to_additive nsmul_right_injective]
lemma pow_left_injective (hn : n ≠ 0) : Injective fun a : M ↦ a ^ n :=
  IsMulTorsionFree.pow_left_injective hn

@[to_additive nsmul_right_inj]
lemma pow_left_inj (hn : n ≠ 0) : a ^ n = b ^ n ↔ a = b := (pow_left_injective hn).eq_iff

end Monoid

section Group
variable [Group G] [IsMulTorsionFree G] {n : ℤ} {a b : G}

@[to_additive zsmul_right_injective]
lemma zpow_left_injective : ∀ {n : ℤ}, n ≠ 0 → Injective fun a : G ↦ a ^ n
  | (n + 1 : ℕ), _ => by
    simpa [← Int.natCast_one, ← Int.natCast_add] using pow_left_injective n.succ_ne_zero
  | .negSucc n, _ => by simpa using inv_injective.comp (pow_left_injective n.succ_ne_zero)

@[to_additive zsmul_right_inj]
lemma zpow_left_inj (hn : n ≠ 0) : a ^ n = b ^ n ↔ a = b := (zpow_left_injective hn).eq_iff

/-- Alias of `zpow_left_inj`, for ease of discovery alongside `zsmul_le_zsmul_iff'` and
`zsmul_lt_zsmul_iff'`. -/
@[to_additive "Alias of `zsmul_right_inj`, for ease of discovery alongside `zsmul_le_zsmul_iff'` and
`zsmul_lt_zsmul_iff'`."]
lemma zpow_eq_zpow_iff' (hn : n ≠ 0) : a ^ n = b ^ n ↔ a = b := zpow_left_inj hn

end Group
```
