# Complete source: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant96aeafe3d2d6f7e12208917e2bb6d09e24177ffcf634f2f8e56d6f491538f66a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `724c094181a9e7eb9210ca2b27012f2fa84988e1` · SHA-256 `544b13bf0eb372f094db93ef45d9337dcc37d9bb994e689cc6254a2d2c23a492`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.MulZeroSubset.Variant272ef7ee946e00eb06c4cce34d46cf7880de5bf27b04405e72f285b5580b933b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"272ef7ee946e00eb06c4cce34d46cf7880de5bf27b04405e72f285b5580b933b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.MulZeroSubset.Variant272ef7ee946e00eb06c4cce34d46cf7880de5bf27b04405e72f285b5580b933b","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"272ef7ee946e00eb06c4cce34d46cf7880de5bf27b04405e72f285b5580b933b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/GroupWithZero/Pointwise/Set/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Floris van Doorn
-/
module

public import Mathlib.Algebra.GroupWithZero.Basic
public import Mathlib.Algebra.Group.Pointwise.Set.Basic

/-!
# Pointwise operations of sets in a group with zero

This file proves properties of pointwise operations of sets in a group with zero.

## Tags

set multiplication, set addition, pointwise addition, pointwise multiplication,
pointwise subtraction
-/


namespace GRWTSK.Algebra.UniversalAlgebra.MulZeroSubset.Variant272ef7ee946e00eb06c4cce34d46cf7880de5bf27b04405e72f285b5580b933b

public section

assert_not_exists MulAction IsOrderedMonoid Ring

open scoped Pointwise

variable {α : Type*}

namespace Set

section MulZeroClass
variable [MulZeroClass α] {s : Set α}

/-! Note that `Set` is not a `MulZeroClass` because `0 * ∅ ≠ 0`. -/

lemma mul_zero_subset (s : Set α) : s * 0 ⊆ 0 := by simp [subset_def, mem_mul]
lemma zero_mul_subset (s : Set α) : 0 * s ⊆ 0 := by simp [subset_def, mem_mul]

lemma Nonempty.mul_zero (hs : s.Nonempty) : s * 0 = 0 :=
  s.mul_zero_subset.antisymm <| by simpa [mem_mul] using! hs

lemma Nonempty.zero_mul (hs : s.Nonempty) : 0 * s = 0 :=
  s.zero_mul_subset.antisymm <| by simpa [mem_mul] using! hs

end MulZeroClass

section GroupWithZero
variable [GroupWithZero α] {s : Set α}

lemma div_zero_subset (s : Set α) : s / 0 ⊆ 0 := by simp [subset_def, mem_div]
lemma zero_div_subset (s : Set α) : 0 / s ⊆ 0 := by simp [subset_def, mem_div]

lemma Nonempty.div_zero (hs : s.Nonempty) : s / 0 = 0 :=
  s.div_zero_subset.antisymm <| by simpa [mem_div] using! hs

lemma Nonempty.zero_div (hs : s.Nonempty) : 0 / s = 0 :=
  s.zero_div_subset.antisymm <| by simpa [mem_div] using! hs

@[simp] protected lemma inv_zero : (0 : Set α)⁻¹ = 0 := by ext; simp

end GroupWithZero
end Set
```
