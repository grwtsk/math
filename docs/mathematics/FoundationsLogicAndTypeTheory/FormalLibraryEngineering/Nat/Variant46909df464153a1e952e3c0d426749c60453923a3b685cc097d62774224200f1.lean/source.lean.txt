-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ring.Variant2d5ffdceb9465d1051d52e8a87a615716521f2606be71236a806dab375047808","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d5ffdceb9465d1051d52e8a87a615716521f2606be71236a806dab375047808","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Ring.Variant2d5ffdceb9465d1051d52e8a87a615716521f2606be71236a806dab375047808","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2d5ffdceb9465d1051d52e8a87a615716521f2606be71236a806dab375047808","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/GrindInstances/Ring/Nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Grind.Ordered.Ring
import Init.Data.Nat.Lemmas
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ring.Variant2d5ffdceb9465d1051d52e8a87a615716521f2606be71236a806dab375047808

open Std

public section

namespace Lean.Grind

instance : CommSemiring Nat where
  add_assoc := Nat.add_assoc
  add_comm := Nat.add_comm
  add_zero := Nat.add_zero
  mul_assoc := Nat.mul_assoc
  mul_comm := Nat.mul_comm
  mul_one := Nat.mul_one
  one_mul := Nat.one_mul
  left_distrib := Nat.mul_add
  right_distrib := Nat.add_mul
  zero_mul := Nat.zero_mul
  mul_zero := Nat.mul_zero
  pow_zero _ := by rfl
  pow_succ _ _ := by rfl
  ofNat_succ _ := by rfl

instance : IsPreorder Nat where
  le_refl := by omega
  le_trans := by omega

instance : LawfulOrderLT Nat where
  lt_iff := by omega

instance : OrderedRing Nat where
  add_le_left_iff := by omega
  zero_lt_one := by omega
  mul_lt_mul_of_pos_left h₁ h₂ := Nat.mul_lt_mul_of_pos_left h₁ h₂
  mul_lt_mul_of_pos_right h₁ h₂ := Nat.mul_lt_mul_of_pos_right h₁ h₂

instance : IsCharP Nat 0 where
  ofNat_ext_iff {x y} := by simp [OfNat.ofNat]

instance : NoNatZeroDivisors Nat where
  no_nat_zero_divisors _ _ _ h₁ h₂ := (Nat.mul_right_inj h₁).mp h₂

end Lean.Grind
