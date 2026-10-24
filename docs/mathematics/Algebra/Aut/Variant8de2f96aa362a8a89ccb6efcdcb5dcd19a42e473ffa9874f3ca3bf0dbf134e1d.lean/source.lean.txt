-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AddAutEquivUnits.Variant053fc73f50e753f391b9895ce842fd88abdee8a585216a5222e3179db5d4393c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"053fc73f50e753f391b9895ce842fd88abdee8a585216a5222e3179db5d4393c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AddAutEquivUnits.Variant053fc73f50e753f391b9895ce842fd88abdee8a585216a5222e3179db5d4393c","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"053fc73f50e753f391b9895ce842fd88abdee8a585216a5222e3179db5d4393c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/ZMod/Aut.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
import Mathlib.Algebra.Ring.AddAut
import Mathlib.Data.ZMod.Basic

/-!
# Automorphism Group of `ZMod`.
-/


namespace GRWTSK.Algebra.AddAutEquivUnits.Variant053fc73f50e753f391b9895ce842fd88abdee8a585216a5222e3179db5d4393c

assert_not_exists Field TwoSidedIdeal

namespace ZMod

variable (n : ℕ)

/-- The automorphism group of `ZMod n` is isomorphic to the group of units of `ZMod n`. -/
@[simps]
def AddAutEquivUnits : AddAut (ZMod n) ≃* (ZMod n)ˣ :=
  have h (f : AddAut (ZMod n)) (x : ZMod n) : f 1 * x = f x := by
    rw [mul_comm, ← x.intCast_zmod_cast, ← zsmul_eq_mul, ← map_zsmul, zsmul_one]
  { toFun := fun f ↦ Units.mkOfMulEqOne (f 1) (f⁻¹ 1) ((h f _).trans (f.inv_apply_self _ _))
    invFun := AddAut.mulLeft
    left_inv := fun f ↦ by simp [DFunLike.ext_iff, Units.smul_def, h]
    right_inv := fun x ↦ by simp [Units.ext_iff, Units.smul_def]
    map_mul' := fun f g ↦ by simp [Units.ext_iff, h] }

end ZMod
