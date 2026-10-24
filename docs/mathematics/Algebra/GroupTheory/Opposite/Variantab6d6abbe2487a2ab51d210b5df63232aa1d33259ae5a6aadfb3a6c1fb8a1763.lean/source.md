# Complete source: GRWTSK.Algebra.GroupTheory.Opposite.Variantab6d6abbe2487a2ab51d210b5df63232aa1d33259ae5a6aadfb3a6c1fb8a1763

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39a68f1fa662f9ef6d0788780465bb8a391c1e3a` · SHA-256 `07fecac6c616a04ab2d6703b233131a6d0132cbfab67c9e4fcd5a271d64e2aaf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.UnopDiv.Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.UnopDiv.Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168","mathematical_subject":"Algebra.Groups","original_sha256":"b942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
module

public import Mathlib.Algebra.Group.Commute.Defs
public import Mathlib.Algebra.Group.InjSurj
public import Mathlib.Algebra.Group.Torsion
public import Mathlib.Algebra.Opposites
public import Mathlib.Tactic.Conv

/-!
# Group structures on the multiplicative and additive opposites
-/


namespace GRWTSK.Algebra.GroupTheory.UnopDiv.Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168

public section

assert_not_exists MonoidWithZero DenselyOrdered Units

variable {α : Type*}

namespace MulOpposite

/-!
### Additive structures on `αᵐᵒᵖ`
-/

instance instAddSemigroup [AddSemigroup α] : AddSemigroup αᵐᵒᵖ :=
  unop_injective.addSemigroup _ fun _ _ => rfl

instance instAddLeftCancelSemigroup [AddLeftCancelSemigroup α] : AddLeftCancelSemigroup αᵐᵒᵖ :=
  unop_injective.addLeftCancelSemigroup _ fun _ _ => rfl

instance instAddRightCancelSemigroup [AddRightCancelSemigroup α] : AddRightCancelSemigroup αᵐᵒᵖ :=
  unop_injective.addRightCancelSemigroup _ fun _ _ => rfl

instance instAddCommMagma [AddCommMagma α] : AddCommMagma αᵐᵒᵖ :=
  unop_injective.addCommMagma _ fun _ _ => rfl

instance instAddCommSemigroup [AddCommSemigroup α] : AddCommSemigroup αᵐᵒᵖ :=
  unop_injective.addCommSemigroup _ fun _ _ => rfl

instance instAddZeroClass [AddZeroClass α] : AddZeroClass αᵐᵒᵖ :=
  unop_injective.addZeroClass _ (by exact rfl) fun _ _ => rfl

instance instAddMonoid [AddMonoid α] : AddMonoid αᵐᵒᵖ :=
  unop_injective.addMonoid _ (by exact rfl) (fun _ _ => rfl) fun _ _ => rfl

instance instAddCommMonoid [AddCommMonoid α] : AddCommMonoid αᵐᵒᵖ :=
  unop_injective.addCommMonoid _ rfl (fun _ _ => rfl) fun _ _ => rfl

instance instSubNegMonoid [SubNegMonoid α] : SubNegMonoid αᵐᵒᵖ :=
  unop_injective.subNegMonoid _ (by exact rfl) (fun _ _ => rfl) (fun _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) fun _ _ => rfl

instance instAddGroup [AddGroup α] : AddGroup αᵐᵒᵖ :=
  unop_injective.addGroup _ (by exact rfl) (fun _ _ => rfl) (fun _ => rfl) (fun _ _ => rfl)
  (fun _ _ => rfl) fun _ _ => rfl

instance instAddCommGroup [AddCommGroup α] : AddCommGroup αᵐᵒᵖ :=
  unop_injective.addCommGroup _ rfl (fun _ _ => rfl) (fun _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) fun _ _ => rfl

/-!
### Multiplicative structures on `αᵐᵒᵖ`

We also generate additive structures on `αᵃᵒᵖ` using `to_additive`
-/

@[to_additive]
instance instIsRightCancelMul [Mul α] [IsLeftCancelMul α] : IsRightCancelMul αᵐᵒᵖ where
  mul_right_cancel _ _ _ h := unop_injective <| mul_left_cancel <| op_injective h

@[to_additive]
instance instIsLeftCancelMul [Mul α] [IsRightCancelMul α] : IsLeftCancelMul αᵐᵒᵖ where
  mul_left_cancel _ _ _ h := unop_injective <| mul_right_cancel <| op_injective h

@[to_additive] instance instIsCancelMul [Mul α] [IsCancelMul α] : IsCancelMul αᵐᵒᵖ where

@[to_additive]
instance instSemigroup [Semigroup α] : Semigroup αᵐᵒᵖ where
  mul_assoc x y z := unop_injective <| Eq.symm <| mul_assoc (unop z) (unop y) (unop x)

@[to_additive]
instance instLeftCancelSemigroup [RightCancelSemigroup α] : LeftCancelSemigroup αᵐᵒᵖ where
  mul_left_cancel _ _ _ := mul_left_cancel

@[to_additive]
instance instRightCancelSemigroup [LeftCancelSemigroup α] : RightCancelSemigroup αᵐᵒᵖ where
  mul_right_cancel _ _ _ := mul_right_cancel

@[to_additive]
instance instCommSemigroup [CommSemigroup α] : CommSemigroup αᵐᵒᵖ where
  mul_comm x y := unop_injective <| mul_comm (unop y) (unop x)

@[to_additive] instance instMulOne [MulOne α] : MulOne αᵐᵒᵖ where

@[to_additive]
instance instMulOneClass [MulOneClass α] : MulOneClass αᵐᵒᵖ where
  one_mul _ := unop_injective <| mul_one _
  mul_one _ := unop_injective <| one_mul _

@[to_additive]
instance instMonoid [Monoid α] : Monoid αᵐᵒᵖ where
  toSemigroup := instSemigroup
  __ := instMulOneClass
  npow n a := op <| a.unop ^ n
  npow_zero _ := unop_injective <| pow_zero _
  npow_succ _ _ := unop_injective <| pow_succ' _ _

@[to_additive]
instance instLeftCancelMonoid [RightCancelMonoid α] : LeftCancelMonoid αᵐᵒᵖ where
  toMonoid := instMonoid
  __ := instLeftCancelSemigroup

@[to_additive]
instance instRightCancelMonoid [LeftCancelMonoid α] : RightCancelMonoid αᵐᵒᵖ where
  toMonoid := instMonoid
  __ := instRightCancelSemigroup

@[to_additive]
instance instCancelMonoid [CancelMonoid α] : CancelMonoid αᵐᵒᵖ where
  toLeftCancelMonoid := instLeftCancelMonoid
  __ := instRightCancelMonoid

@[to_additive]
instance instCommMonoid [CommMonoid α] : CommMonoid αᵐᵒᵖ where
  toMonoid := instMonoid
  __ := instCommSemigroup

@[to_additive]
instance instCancelCommMonoid [CancelCommMonoid α] : CancelCommMonoid αᵐᵒᵖ where
  toCommMonoid := instCommMonoid
  __ := instLeftCancelMonoid

@[to_additive AddOpposite.instSubNegMonoid]
instance instDivInvMonoid [DivInvMonoid α] : DivInvMonoid αᵐᵒᵖ where
  toMonoid := instMonoid
  toInv := instInv
  zpow n a := op <| a.unop ^ n
  zpow_zero' _ := unop_injective <| zpow_zero _
  zpow_succ' _ _ := unop_injective <| by
    simp_rw [HPow.hPow, Pow.pow]
    rw [unop_op, zpow_natCast, pow_succ', unop_mul, unop_op, zpow_natCast]
  zpow_neg' _ _ := unop_injective <| DivInvMonoid.zpow_neg' _ _

@[to_additive]
instance instDivisionMonoid [DivisionMonoid α] : DivisionMonoid αᵐᵒᵖ where
  toDivInvMonoid := instDivInvMonoid
  __ := instInvolutiveInv
  mul_inv_rev _ _ := unop_injective <| mul_inv_rev _ _
  inv_eq_of_mul _ _ h := unop_injective <| inv_eq_of_mul_eq_one_left <| congr_arg unop h

@[to_additive AddOpposite.instSubtractionCommMonoid]
instance instDivisionCommMonoid [DivisionCommMonoid α] : DivisionCommMonoid αᵐᵒᵖ where
  toDivisionMonoid := instDivisionMonoid
  __ := instCommSemigroup

@[to_additive]
instance instGroup [Group α] : Group αᵐᵒᵖ where
  toDivInvMonoid := instDivInvMonoid
  inv_mul_cancel _ := unop_injective <| mul_inv_cancel _

@[to_additive]
instance instCommGroup [CommGroup α] : CommGroup αᵐᵒᵖ where
  toGroup := instGroup
  __ := instCommSemigroup

section Monoid
variable [Monoid α]

@[to_additive (attr := simp)] lemma op_pow (x : α) (n : ℕ) : op (x ^ n) = op x ^ n := rfl

@[to_additive (attr := simp)] lemma unop_pow (x : αᵐᵒᵖ) (n : ℕ) : unop (x ^ n) = unop x ^ n := rfl

end Monoid

section DivInvMonoid
variable [DivInvMonoid α]

@[to_additive (attr := simp)] lemma op_zpow (x : α) (z : ℤ) : op (x ^ z) = op x ^ z := rfl

@[to_additive (attr := simp)] lemma unop_zpow (x : αᵐᵒᵖ) (z : ℤ) : unop (x ^ z) = unop x ^ z := rfl

end DivInvMonoid

@[to_additive (attr := simp)]
theorem unop_div [DivInvMonoid α] (x y : αᵐᵒᵖ) : unop (x / y) = (unop y)⁻¹ * unop x :=
  rfl

@[to_additive (attr := simp)]
theorem op_div [DivInvMonoid α] (x y : α) : op (x / y) = (op y)⁻¹ * op x := by simp [div_eq_mul_inv]

@[to_additive (attr := simp)]
theorem semiconjBy_op [Mul α] {a x y : α} : SemiconjBy (op a) (op y) (op x) ↔ SemiconjBy a x y := by
  simp only [SemiconjBy, ← op_mul, op_inj, eq_comm]

@[to_additive (attr := simp, nolint simpComm)]
theorem semiconjBy_unop [Mul α] {a x y : αᵐᵒᵖ} :
    SemiconjBy (unop a) (unop y) (unop x) ↔ SemiconjBy a x y := by
  conv_rhs => rw [← op_unop a, ← op_unop x, ← op_unop y, semiconjBy_op]

attribute [nolint simpComm] AddOpposite.addSemiconjBy_unop

@[to_additive]
theorem _root_.GRWTSK.Algebra.GroupTheory.UnopDiv.Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.SemiconjBy.op [Mul α] {a x y : α} (h : SemiconjBy a x y) :
    SemiconjBy (op a) (op y) (op x) :=
  semiconjBy_op.2 h

@[to_additive]
theorem _root_.GRWTSK.Algebra.GroupTheory.UnopDiv.Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.SemiconjBy.unop [Mul α] {a x y : αᵐᵒᵖ} (h : SemiconjBy a x y) :
    SemiconjBy (unop a) (unop y) (unop x) :=
  semiconjBy_unop.2 h

@[to_additive]
theorem _root_.GRWTSK.Algebra.GroupTheory.UnopDiv.Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.Commute.op [Mul α] {x y : α} (h : Commute x y) : Commute (op x) (op y) :=
  SemiconjBy.op h

@[to_additive]
nonrec theorem _root_.GRWTSK.Algebra.GroupTheory.UnopDiv.Variantb942edca5c22a0d9f37b130105344ed85ffcbe1bbb996c84be50893dd567c168.Commute.unop [Mul α] {x y : αᵐᵒᵖ} (h : Commute x y) :
    Commute (unop x) (unop y) :=
  h.unop

@[to_additive (attr := simp)]
theorem commute_op [Mul α] {x y : α} : Commute (op x) (op y) ↔ Commute x y :=
  semiconjBy_op

@[to_additive (attr := simp, nolint simpComm)]
theorem commute_unop [Mul α] {x y : αᵐᵒᵖ} : Commute (unop x) (unop y) ↔ Commute x y :=
  semiconjBy_unop

attribute [nolint simpComm] AddOpposite.addCommute_unop

@[to_additive] protected theorem isDedekindFiniteMonoid_iff [MulOne α] :
    IsDedekindFiniteMonoid αᵐᵒᵖ ↔ IsDedekindFiniteMonoid α := by
  simp_rw [isDedekindFiniteMonoid_iff, ← opEquiv.forall_congr_right]
  simpa [← op_one, ← op_mul] using forall_comm

@[to_additive] instance [MulOne α] [IsDedekindFiniteMonoid α] : IsDedekindFiniteMonoid αᵐᵒᵖ :=
  MulOpposite.isDedekindFiniteMonoid_iff.mpr ‹_›

@[to_additive (attr := simp)]
theorem isMulCommutative_op_iff [Mul α] : IsMulCommutative αᵐᵒᵖ ↔ IsMulCommutative α := by
  simp [isMulCommutative_iff, ← commute_iff_eq]

@[to_additive]
instance [Mul α] [IsMulCommutative α] : IsMulCommutative αᵐᵒᵖ :=
  isMulCommutative_op_iff.mpr ‹_›

end MulOpposite

/-!
### Multiplicative structures on `αᵃᵒᵖ`
-/


namespace AddOpposite

instance instSemigroup [Semigroup α] : Semigroup αᵃᵒᵖ := unop_injective.semigroup _ fun _ _ ↦ rfl

instance instLeftCancelSemigroup [LeftCancelSemigroup α] : LeftCancelSemigroup αᵃᵒᵖ :=
  unop_injective.leftCancelSemigroup _ fun _ _ => rfl

instance instRightCancelSemigroup [RightCancelSemigroup α] : RightCancelSemigroup αᵃᵒᵖ :=
  unop_injective.rightCancelSemigroup _ fun _ _ => rfl

instance instCommSemigroup [CommSemigroup α] : CommSemigroup αᵃᵒᵖ :=
  unop_injective.commSemigroup _ fun _ _ => rfl

instance instMulOneClass [MulOneClass α] : MulOneClass αᵃᵒᵖ :=
  unop_injective.mulOneClass _ (by exact rfl) fun _ _ => rfl

instance pow {β} [Pow α β] : Pow αᵃᵒᵖ β where pow a b := op (unop a ^ b)

@[simp]
theorem op_pow {β} [Pow α β] (a : α) (b : β) : op (a ^ b) = op a ^ b :=
  rfl

@[simp]
theorem unop_pow {β} [Pow α β] (a : αᵃᵒᵖ) (b : β) : unop (a ^ b) = unop a ^ b :=
  rfl

instance instMonoid [Monoid α] : Monoid αᵃᵒᵖ :=
  unop_injective.monoid _ (by exact rfl) (fun _ _ => rfl) fun _ _ => rfl

instance instCommMonoid [CommMonoid α] : CommMonoid αᵃᵒᵖ :=
  unop_injective.commMonoid _ (by exact rfl) (fun _ _ => rfl) fun _ _ => rfl

instance instDivInvMonoid [DivInvMonoid α] : DivInvMonoid αᵃᵒᵖ :=
  unop_injective.divInvMonoid _ (by exact rfl) (fun _ _ => rfl) (fun _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) fun _ _ => rfl

instance instGroup [Group α] : Group αᵃᵒᵖ :=
  unop_injective.group _ (by exact rfl) (fun _ _ => rfl) (fun _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) fun _ _ => rfl

instance instCommGroup [CommGroup α] : CommGroup αᵃᵒᵖ :=
  unop_injective.commGroup _ (by exact rfl) (fun _ _ => rfl) (fun _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) fun _ _ => rfl

@[to_additive]
instance instMulTorsionFree [Monoid α] [IsMulTorsionFree α] : IsMulTorsionFree αᵐᵒᵖ :=
  ⟨fun _ h ↦ op_injective.comp <| (pow_left_injective h).comp <| unop_injective⟩

end AddOpposite
```
