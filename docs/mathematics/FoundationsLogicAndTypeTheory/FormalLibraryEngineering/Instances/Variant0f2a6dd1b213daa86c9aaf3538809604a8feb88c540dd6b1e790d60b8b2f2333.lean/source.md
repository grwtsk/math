# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Instances.Variant0f2a6dd1b213daa86c9aaf3538809604a8feb88c540dd6b1e790d60b8b2f2333

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33a3472ff632c0bbecff59f080b39da765d3b1be` · SHA-256 `7b353936bc2c521a1c3b83975c043045a62d4377630624c4018ecf085e0415cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dyadic.Variant8ed21b060047197fd0f3add94277d55e73a649b8637c6bbefd5f9334723a4ec3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ed21b060047197fd0f3add94277d55e73a649b8637c6bbefd5f9334723a4ec3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Dyadic.Variant8ed21b060047197fd0f3add94277d55e73a649b8637c6bbefd5f9334723a4ec3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8ed21b060047197fd0f3add94277d55e73a649b8637c6bbefd5f9334723a4ec3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Dyadic/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Robin Arnez
-/
module

prelude
public import Init.Data.Dyadic.Basic
public import Init.Grind.Ordered.Ring
import Init.Data.Rat.Lemmas

/-! # Internal `grind` algebra instances for `Dyadic`. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dyadic.Variant8ed21b060047197fd0f3add94277d55e73a649b8637c6bbefd5f9334723a4ec3

@[expose] public section

open Lean.Grind

namespace Dyadic

instance : CommRing Dyadic where
  nsmul := ⟨(· * ·)⟩
  zsmul := ⟨(· * ·)⟩
  add_zero := Dyadic.add_zero
  add_comm := Dyadic.add_comm
  add_assoc := Dyadic.add_assoc
  mul_assoc := Dyadic.mul_assoc
  mul_one := Dyadic.mul_one
  one_mul := Dyadic.one_mul
  zero_mul := Dyadic.zero_mul
  mul_zero := Dyadic.mul_zero
  mul_comm := Dyadic.mul_comm
  pow_zero := Dyadic.pow_zero
  pow_succ := Dyadic.pow_succ
  sub_eq_add_neg _ _ := rfl
  neg_add_cancel := Dyadic.neg_add_cancel
  neg_zsmul i a := by
    change ((-i : Int) : Dyadic) * a = -(i * a)
    simp [← toRat_inj, Rat.neg_mul]
  left_distrib := Dyadic.mul_add
  right_distrib := Dyadic.add_mul
  intCast_neg _ := by simp [← toRat_inj]
  ofNat_succ n := by
    change ((n + 1 : Int) : Dyadic) = ((n : Int) : Dyadic) + 1
    simp [← toRat_inj, Rat.intCast_add]; rfl

instance : IsCharP Dyadic 0 := IsCharP.mk' _ _
  (ofNat_eq_zero_iff := fun x => by change (x : Dyadic) = 0 ↔ _; simp [← toRat_inj])

instance : NoNatZeroDivisors Dyadic where
  no_nat_zero_divisors k a b h₁ h₂ := by
    change k * a = k * b at h₂
    simp only [← toRat_inj, toRat_mul, toRat_natCast] at h₂ ⊢
    simpa [← Rat.mul_assoc, Rat.inv_mul_cancel, h₁] using congrArg ((k : Rat)⁻¹ * ·) h₂

instance : OrderedRing Dyadic where
  zero_lt_one := by decide
  add_le_left_iff _ := by simp [← toRat_le_toRat_iff, Rat.add_le_add_right]
  mul_lt_mul_of_pos_left {_ _ _} := by simpa [← toRat_lt_toRat_iff] using Rat.mul_lt_mul_of_pos_left
  mul_lt_mul_of_pos_right {_ _ _} := by simpa [← toRat_lt_toRat_iff] using Rat.mul_lt_mul_of_pos_right

end Dyadic
```
