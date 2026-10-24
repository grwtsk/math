-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.MulZeroSubset.Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.MulZeroSubset.Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Pointwise/Set/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Floris van Doorn
-/
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.Group.Pointwise.Set.Basic

/-!
# Pointwise operations of sets in a group with zero

This file proves properties of pointwise operations of sets in a group with zero.

## Tags

set multiplication, set addition, pointwise addition, pointwise multiplication,
pointwise subtraction
-/


namespace GRWTSK.Algebra.UniversalAlgebra.MulZeroSubset.Variant03e434c02262c3bf68ca7db7370e34946002fd06055fad5653564b25df9da1c0

assert_not_exists MulAction OrderedAddCommMonoid Ring

open Function
open scoped Pointwise

variable {α : Type*}

namespace Set

section MulZeroClass
variable [MulZeroClass α] {s : Set α}

/-! Note that `Set` is not a `MulZeroClass` because `0 * ∅ ≠ 0`. -/

lemma mul_zero_subset (s : Set α) : s * 0 ⊆ 0 := by simp [subset_def, mem_mul]
lemma zero_mul_subset (s : Set α) : 0 * s ⊆ 0 := by simp [subset_def, mem_mul]

lemma Nonempty.mul_zero (hs : s.Nonempty) : s * 0 = 0 :=
  s.mul_zero_subset.antisymm <| by simpa [mem_mul] using hs

lemma Nonempty.zero_mul (hs : s.Nonempty) : 0 * s = 0 :=
  s.zero_mul_subset.antisymm <| by simpa [mem_mul] using hs

end MulZeroClass

section GroupWithZero
variable [GroupWithZero α] {s : Set α}

lemma div_zero_subset (s : Set α) : s / 0 ⊆ 0 := by simp [subset_def, mem_div]
lemma zero_div_subset (s : Set α) : 0 / s ⊆ 0 := by simp [subset_def, mem_div]

lemma Nonempty.div_zero (hs : s.Nonempty) : s / 0 = 0 :=
  s.div_zero_subset.antisymm <| by simpa [mem_div] using hs

lemma Nonempty.zero_div (hs : s.Nonempty) : 0 / s = 0 :=
  s.zero_div_subset.antisymm <| by simpa [mem_div] using hs

@[simp] protected lemma inv_zero : (0 : Set α)⁻¹ = 0 := by ext; simp

end GroupWithZero
end Set
