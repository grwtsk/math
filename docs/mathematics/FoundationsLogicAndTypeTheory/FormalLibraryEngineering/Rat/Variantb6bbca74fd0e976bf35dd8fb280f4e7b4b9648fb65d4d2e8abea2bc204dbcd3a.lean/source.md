# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rat.Variantb6bbca74fd0e976bf35dd8fb280f4e7b4b9648fb65d4d2e8abea2bc204dbcd3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56f04d94df4248fa969863e3f7040307d37200dd` · SHA-256 `a3cd0130df37abbc02648179e03351c60dbaeb4bb89890a0db459a0402da6216`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfScientific.Variant0e3ca8a5f9127ed0500446bc75cae63cf369a0e0072d535538feadf5ff3561ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e3ca8a5f9127ed0500446bc75cae63cf369a0e0072d535538feadf5ff3561ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OfScientific.Variant0e3ca8a5f9127ed0500446bc75cae63cf369a0e0072d535538feadf5ff3561ad","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0e3ca8a5f9127ed0500446bc75cae63cf369a0e0072d535538feadf5ff3561ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/GrindInstances/Ring/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Robin Arnez. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Arnez
-/
module

prelude
public import Init.Grind.Ring.OfScientific
public import Init.Data.Rat.Lemmas
import Init.Data.Int.DivMod.Lemmas
import Init.Data.Int.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfScientific.Variant0e3ca8a5f9127ed0500446bc75cae63cf369a0e0072d535538feadf5ff3561ad

public section

namespace Lean.Grind

instance : Field Rat where
  nsmul := ⟨(· * ·)⟩
  zsmul := ⟨(· * ·)⟩
  add_assoc := Rat.add_assoc
  add_comm := Rat.add_comm
  add_zero := Rat.add_zero
  neg_add_cancel := Rat.neg_add_cancel
  mul_assoc := Rat.mul_assoc
  mul_comm := Rat.mul_comm
  mul_one := Rat.mul_one
  one_mul := Rat.one_mul
  left_distrib := Rat.mul_add
  right_distrib := Rat.add_mul
  zero_mul := Rat.zero_mul
  mul_zero := Rat.mul_zero
  pow_zero := Rat.pow_zero
  pow_succ := Rat.pow_succ
  ofNat_succ x := by
    change (((x + 1 : Nat) : Int) : Rat) = _
    simp only [Int.natCast_add, Int.cast_ofNat_Int, Rat.intCast_add]
    rfl
  sub_eq_add_neg := Rat.sub_eq_add_neg
  neg_zsmul i a := by
    change ((-i : Int) : Rat) * a = -(i * a)
    simp [Rat.intCast_neg, Rat.neg_mul]
  div_eq_mul_inv := Rat.div_def
  zero_ne_one := by decide
  inv_zero := Rat.inv_zero
  mul_inv_cancel := Rat.mul_inv_cancel _
  zpow_zero := Rat.zpow_zero
  zpow_succ := Rat.pow_succ
  zpow_neg := Rat.zpow_neg

instance : IsCharP Rat 0 := IsCharP.mk' _ _
  (ofNat_eq_zero_iff := fun x => by
    change ((x : Int) : Rat) = ((0 : Int) : Rat) ↔ _
    simp)

instance : NoNatZeroDivisors Rat where
  no_nat_zero_divisors k a b h₁ h₂ := by
    change k * a = k * b at h₂
    simpa [← Rat.mul_assoc, Rat.inv_mul_cancel, h₁] using congrArg ((k : Rat)⁻¹ * ·) h₂

instance : LawfulOfScientific Rat where
  ofScientific_def {m s e} := by rw [Rat.ofScientific_def_eq_if]

end Lean.Grind
```
