# Complete source: GRWTSK.Algebra.GroupTheory.Finsupp.Variant8e1db1f2ac7f2815882b055a460769528bcd6a6bd916d1fa7f4a272d046e6f1a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a235af348302e10966fee2ee72335e8f6911b70d` · SHA-256 `248f38357099302ac59244528bf7fa519c41a3c0b757670fde03f09e5afc484a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ExistsFinsuppOfMemClosureRange.Variant3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ExistsFinsuppOfMemClosureRange.Variant3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515","mathematical_subject":"Algebra.Groups","original_sha256":"3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Subgroup/Finsupp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.BigOperators.Finsupp.Basic
import Mathlib.Algebra.Group.Subgroup.Lattice

/-! # Connection between `Subgroup.closure` and `Finsupp.prod` -/


namespace GRWTSK.Algebra.GroupTheory.ExistsFinsuppOfMemClosureRange.Variant3d712938261ea71e1f8400f7a000b5538c2a88de7ecc3be6816f518f7821d515

assert_not_exists Field

namespace Subgroup

variable {M : Type*} [CommGroup M] {ι : Type*} (f : ι → M) (x : M)

@[to_additive]
theorem exists_finsupp_of_mem_closure_range (hx : x ∈ closure (Set.range f)) :
    ∃ a : ι →₀ ℤ, x = a.prod (f · ^ ·) := by
  classical
  induction hx using closure_induction with
  | mem x h => obtain ⟨i, rfl⟩ := h; exact ⟨Finsupp.single i 1, by simp⟩
  | one => use 0; simp
  | mul x y hx hy hx' hy' =>
    obtain ⟨⟨v, rfl⟩, w, rfl⟩ := And.intro hx' hy'
    use v + w
    rw [Finsupp.prod_add_index]
    · simp
    · simp [zpow_add]
  | inv x hx hx' =>
    obtain ⟨a, rfl⟩ := hx'
    use -a
    rw [Finsupp.prod_neg_index]
    · simp
    · simp [zpow_neg]

variable {f x} in
@[to_additive]
theorem mem_closure_range_iff :
    x ∈ closure (Set.range f) ↔ ∃ a : ι →₀ ℤ, x = a.prod (f · ^ ·) := by
  refine ⟨exists_finsupp_of_mem_closure_range f x, ?_⟩
  rintro ⟨a, rfl⟩
  exact Submonoid.prod_mem _ fun i hi ↦ zpow_mem (subset_closure (Set.mem_range_self i)) _

@[to_additive]
theorem exists_of_mem_closure_range [Fintype ι] (hx : x ∈ closure (Set.range f)) :
    ∃ a : ι → ℤ, x = ∏ i, f i ^ a i := by
  obtain ⟨a, rfl⟩ := exists_finsupp_of_mem_closure_range f x hx
  exact ⟨a, by simp⟩

variable {f x} in
@[to_additive]
theorem mem_closure_range_iff_of_fintype [Fintype ι] :
    x ∈ closure (Set.range f) ↔ ∃ a : ι → ℤ, x = ∏ i, f i ^ a i := by
  rw [Finsupp.equivFunOnFinite.symm.exists_congr_left, mem_closure_range_iff]
  simp

end Subgroup
```
