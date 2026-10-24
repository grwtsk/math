-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Field.Variantf6b58249cb71fedfae4447be1b32b09b5f95814b90c2ba0b1ca78e91dc3b6798","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f6b58249cb71fedfae4447be1b32b09b5f95814b90c2ba0b1ca78e91dc3b6798","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Field.Variantf6b58249cb71fedfae4447be1b32b09b5f95814b90c2ba0b1ca78e91dc3b6798","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"f6b58249cb71fedfae4447be1b32b09b5f95814b90c2ba0b1ca78e91dc3b6798","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Action/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs

/-!
# Actions by nonnegative rational numbers
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Field.Variantf6b58249cb71fedfae4447be1b32b09b5f95814b90c2ba0b1ca78e91dc3b6798

assert_not_exists OrderedAddCommMonoid

variable {R : Type*}

/-! ### Scalar multiplication -/

namespace NNRat
variable [DivisionSemiring R]

instance (priority := 100) instDistribSMul : DistribSMul ℚ≥0 R where
  smul_zero a := by rw [smul_def, mul_zero]
  smul_add a x y := by rw [smul_def, smul_def, smul_def, mul_add]

instance instIsScalarTowerRight : IsScalarTower ℚ≥0 R R where
  smul_assoc a x y := by simp only [smul_def, smul_eq_mul, mul_assoc]

end NNRat

namespace Rat
variable [DivisionRing R]

instance (priority := 100) instDistribSMul : DistribSMul ℚ R where
  smul_zero a := by rw [smul_def, mul_zero]
  smul_add a x y := by rw [smul_def, smul_def, smul_def, mul_add]

instance instIsScalarTowerRight : IsScalarTower ℚ R R where
  smul_assoc a x y := by simp only [smul_def, smul_eq_mul, mul_assoc]

end Rat
