-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ring.Variant42a488e9c88c577ddcec9d0c8c7884ff1517dea103638a1b9f79d2e8f6e029ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"42a488e9c88c577ddcec9d0c8c7884ff1517dea103638a1b9f79d2e8f6e029ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Ring.Variant42a488e9c88c577ddcec9d0c8c7884ff1517dea103638a1b9f79d2e8f6e029ed","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"42a488e9c88c577ddcec9d0c8c7884ff1517dea103638a1b9f79d2e8f6e029ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/GrindInstances/Ring/Int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Grind.Ring.Basic
public import Init.Data.Int.Lemmas
public import Init.Data.Int.Pow
import Init.Data.Int.DivMod.Lemmas
import Init.Meta


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ring.Variant42a488e9c88c577ddcec9d0c8c7884ff1517dea103638a1b9f79d2e8f6e029ed

public section

namespace Lean.Grind

instance : CommRing Int where
  nsmul := ⟨(· * ·)⟩
  add_assoc := Int.add_assoc
  add_comm := Int.add_comm
  add_zero := Int.add_zero
  neg_add_cancel := Int.add_left_neg
  mul_assoc := Int.mul_assoc
  mul_comm := Int.mul_comm
  mul_one := Int.mul_one
  one_mul := Int.one_mul
  left_distrib := Int.mul_add
  right_distrib := Int.add_mul
  zero_mul := Int.zero_mul
  mul_zero := Int.mul_zero
  pow_zero := Int.pow_zero
  pow_succ := Int.pow_succ
  ofNat_succ _ := by rfl
  sub_eq_add_neg _ _ := Int.sub_eq_add_neg
  neg_zsmul := Int.neg_mul

instance : IsCharP Int 0 := IsCharP.mk' _ _
  (ofNat_eq_zero_iff := fun x => by erw [Int.ofNat_eq_zero]; simp)

instance : NoNatZeroDivisors Int where
  no_nat_zero_divisors k a b h₁ h₂ := by
    replace h₁ : (k : Int) ≠ 0 := by simp [h₁]
    cases Int.mul_eq_mul_left_iff h₁ |>.mp h₂
    rfl

end Lean.Grind
