-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ZsmulIntInt.Variantce1e2478534c22e64d86e6cf01d31e8ae0237485ac46c684d80dd3e084353d78","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce1e2478534c22e64d86e6cf01d31e8ae0237485ac46c684d80dd3e084353d78","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ZsmulIntInt.Variantce1e2478534c22e64d86e6cf01d31e8ae0237485ac46c684d80dd3e084353d78","mathematical_subject":"Algebra.Groups","original_sha256":"ce1e2478534c22e64d86e6cf01d31e8ae0237485ac46c684d80dd3e084353d78","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Int/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Algebra.Group.Defs

/-!
# The integers form a group

This file contains the additive group and multiplicative monoid instances on the integers.

See note [foundational algebra order theory].
-/


namespace GRWTSK.Algebra.GroupTheory.ZsmulIntInt.Variantce1e2478534c22e64d86e6cf01d31e8ae0237485ac46c684d80dd3e084353d78

assert_not_exists Ring DenselyOrdered

open Nat

namespace Int

/-! ### Instances -/

instance instCommMonoid : CommMonoid ℤ where
  mul_comm := Int.mul_comm
  mul_one := Int.mul_one
  one_mul := Int.one_mul
  npow n x := x ^ n
  npow_zero _ := rfl
  npow_succ _ _ := rfl
  mul_assoc := Int.mul_assoc

instance instAddCommGroup : AddCommGroup ℤ where
  add_comm := Int.add_comm
  add_assoc := Int.add_assoc
  add_zero := Int.add_zero
  zero_add := Int.zero_add
  neg_add_cancel := Int.add_left_neg
  nsmul := (·*·)
  nsmul_zero := Int.zero_mul
  nsmul_succ n x :=
    show (n + 1 : ℤ) * x = n * x + x
    by rw [Int.add_mul, Int.one_mul]
  zsmul := (·*·)
  zsmul_zero' := Int.zero_mul
  zsmul_succ' m n := by
    simp only [natCast_succ, Int.add_mul, Int.add_comm, Int.one_mul]
  zsmul_neg' m n := by simp only [negSucc_eq, natCast_succ, Int.neg_mul]
  sub_eq_add_neg _ _ := Int.sub_eq_add_neg

/-!
### Extra instances to short-circuit type class resolution

These also prevent non-computable instances like `Int.instNormedCommRing` being used to construct
these instances non-computably.
-/

instance instAddCommMonoid    : AddCommMonoid ℤ    := by infer_instance
instance instAddMonoid        : AddMonoid ℤ        := by infer_instance
instance instMonoid           : Monoid ℤ           := by infer_instance
instance instCommSemigroup    : CommSemigroup ℤ    := by infer_instance
instance instSemigroup        : Semigroup ℤ        := by infer_instance
instance instAddGroup         : AddGroup ℤ         := by infer_instance
instance instAddCommSemigroup : AddCommSemigroup ℤ := by infer_instance
instance instAddSemigroup     : AddSemigroup ℤ     := by infer_instance

end Int

-- TODO: Do we really need this lemma? This is just `smul_eq_mul`
lemma zsmul_int_int (a b : ℤ) : a • b = a * b := rfl

lemma zsmul_int_one (n : ℤ) : n • (1 : ℤ) = n := mul_one _
