-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MulLeft.Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.MulLeft.Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c","mathematical_subject":"Logic.Foundations","original_sha256":"37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Hom/Equiv/Units/GroupWithZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Callum Sutton, Yury Kudryashov
-/
import Mathlib.Algebra.Hom.Equiv.Units.Basic
import Mathlib.Algebra.GroupWithZero.Units.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MulLeft.Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c

#align_import algebra.hom.equiv.units.group_with_zero from "leanprover-community/mathlib"@"655994e298904d7e5bbd1e18c95defd7b543eb94"

/-!
# Multiplication by a nonzero element in a `GroupWithZero` is a permutation.
-/


variable {G : Type*}

namespace Equiv

section GroupWithZero

variable [GroupWithZero G]

/-- Left multiplication by a nonzero element in a `GroupWithZero` is a permutation of the
underlying type. -/
@[simps! (config := { fullyApplied := false })]
protected def mulLeft₀ (a : G) (ha : a ≠ 0) : Perm G :=
  (Units.mk0 a ha).mulLeft
#align equiv.mul_left₀ Equiv.mulLeft₀
#align equiv.mul_left₀_symm_apply Equiv.mulLeft₀_symm_apply
#align equiv.mul_left₀_apply Equiv.mulLeft₀_apply

theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MulLeft.Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c.mulLeft_bijective₀ (a : G) (ha : a ≠ 0) : Function.Bijective ((· * ·) a : G → G) :=
  (Equiv.mulLeft₀ a ha).bijective
#align mul_left_bijective₀ mulLeft_bijective₀

/-- Right multiplication by a nonzero element in a `GroupWithZero` is a permutation of the
underlying type. -/
@[simps! (config := { fullyApplied := false })]
protected def mulRight₀ (a : G) (ha : a ≠ 0) : Perm G :=
  (Units.mk0 a ha).mulRight
#align equiv.mul_right₀ Equiv.mulRight₀
#align equiv.mul_right₀_symm_apply Equiv.mulRight₀_symm_apply
#align equiv.mul_right₀_apply Equiv.mulRight₀_apply

theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MulLeft.Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c.mulRight_bijective₀ (a : G) (ha : a ≠ 0) : Function.Bijective ((· * a) : G → G) :=
  (Equiv.mulRight₀ a ha).bijective
#align mul_right_bijective₀ mulRight_bijective₀

end GroupWithZero

end Equiv
