# Complete source: GRWTSK.Algebra.GroupTheory.Faithful.Variant24e9171a27f31c343af23028e45ab2278d37a5f4c5fd3c121a40bc4d53972e1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83eae5f921866fd801de14d28d5ea312e0707187` · SHA-256 `02dd1159a7172a83e39fd3604b2f4c8e7f4ca07452ed20e56e251d842c046cc0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FaithfulVAdd.Variant48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.FaithfulVAdd.Variant48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5","mathematical_subject":"Algebra.Groups","original_sha256":"48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Action/Faithful.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Yury Kudryashov
-/
module

public import Mathlib.Algebra.Group.Action.Defs

/-!
# Faithful group actions

This file provides typeclasses for faithful actions.

## Notation

- `a • b` is used as notation for `SMul.smul a b`.
- `a +ᵥ b` is used as notation for `VAdd.vadd a b`.

## Implementation details

This file should avoid depending on other parts of `GroupTheory`, to avoid import cycles.
More sophisticated lemmas belong in `GroupTheory.GroupAction`.

## Tags

group action
-/


namespace GRWTSK.Algebra.GroupTheory.FaithfulVAdd.Variant48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5

public section

assert_not_exists MonoidWithZero

open Function (Injective Surjective)

variable {M G α : Type*}

/-! ### Faithful actions -/

/-- Typeclass for faithful actions. -/
class FaithfulVAdd (G : Type*) (P : Type*) [VAdd G P] : Prop where
  /-- Two elements `g₁` and `g₂` are equal whenever they act in the same way on all points. -/
  eq_of_vadd_eq_vadd : ∀ {g₁ g₂ : G}, (∀ p : P, g₁ +ᵥ p = g₂ +ᵥ p) → g₁ = g₂

/-- Typeclass for faithful actions. -/
@[to_additive]
class FaithfulSMul (M : Type*) (α : Type*) [SMul M α] : Prop where
  /-- Two elements `m₁` and `m₂` are equal whenever they act in the same way on all points. -/
  eq_of_smul_eq_smul : ∀ {m₁ m₂ : M}, (∀ a : α, m₁ • a = m₂ • a) → m₁ = m₂

export FaithfulSMul (eq_of_smul_eq_smul)
export FaithfulVAdd (eq_of_vadd_eq_vadd)

@[to_additive] instance (priority := low) [SMul M α] [Subsingleton M] : FaithfulSMul M α :=
  ⟨fun _ ↦ Subsingleton.elim ..⟩

@[to_additive]
lemma smul_left_injective' [SMul M α] [FaithfulSMul M α] : Injective ((· • ·) : M → α → α) :=
  fun _ _ h ↦ FaithfulSMul.eq_of_smul_eq_smul (congr_fun h)

/-- `instSMulOfMul` is faithful when there is a (right) identity. -/
@[to_additive /-- `instVAddOfAdd` is faithful when there is a (right) identity. -/]
instance (R : Type*) [MulOneClass R] : FaithfulSMul R R where
  eq_of_smul_eq_smul {r₁ r₂} h := by simpa using h 1

/-- `Mul.toSMulMulOpposite` is faithful when there is a (left) identity. -/
@[to_additive /-- `Add.toVAddAddOpposite` is faithful when there is a (left) identity. -/]
instance (R : Type*) [MulOneClass R] : FaithfulSMul Rᵐᵒᵖ R where
  eq_of_smul_eq_smul {r₁ r₂} h := by simpa using h 1

/-- `instSMulOfMul` is faithful when multiplication is right cancellative. -/
@[to_additive /-- `instVAddOfAdd` is faithful when addition is right cancellative. -/]
instance (R : Type*) [Mul R] [IsRightCancelMul R] : FaithfulSMul R R where
  eq_of_smul_eq_smul {r₁ r₂} h := by simpa using h r₁

/-- `Mul.toSMulMulOpposite` is faithful when multiplication is left cancellative -/
@[to_additive /-- `Add.toVAddAddOpposite` is faithful when addition is left cancellative -/]
instance (R : Type*) [Mul R] [IsLeftCancelMul R] : FaithfulSMul Rᵐᵒᵖ R where
  eq_of_smul_eq_smul {r₁ r₂} h := by simpa using h r₁.unop

@[to_additive]
lemma faithfulSMul_iff_injective_smul_one (R A : Type*)
    [MulOneClass A] [SMul R A] [IsScalarTower R A A] :
    FaithfulSMul R A ↔ Injective (fun r : R ↦ r • (1 : A)) := by
  refine ⟨fun ⟨h⟩ {r₁ r₂} hr ↦ h fun a ↦ ?_, fun h ↦ ⟨fun {r₁ r₂} hr ↦ h ?_⟩⟩
  · simp only at hr
    rw [← one_mul a, ← smul_mul_assoc, ← smul_mul_assoc, hr]
  · simpa using hr 1

@[to_additive]
theorem faithfulSMul_iff [Group G] [MulAction G α] :
    FaithfulSMul G α ↔ (∀ g : G, (∀ a : α, g • a = a) → g = 1) := by
  refine ⟨fun h a ha ↦ h.eq_of_smul_eq_smul ?_, fun h ↦ ⟨fun {a₁ a₂} h' ↦ ?_⟩⟩
  · simpa only [one_smul]
  · rw [← inv_inv a₂, eq_inv_of_mul_eq_one_left (h (a₂⁻¹ * a₁) ?_), inv_inv]
    simpa only [mul_smul, inv_smul_eq_iff] using h'

@[to_additive]
lemma FaithfulSMul.tower_bot (R S T : Type*) [Monoid S] [MulOneClass T]
    [SMul R S] [SMul R T] [MulAction S T]
    [IsScalarTower R S S] [IsScalarTower R T T]
    [IsScalarTower R S T] [FaithfulSMul R T] : FaithfulSMul R S := by
  rw [faithfulSMul_iff_injective_smul_one]
  refine .of_comp (f := (· • (1 : T))) ?_
  simpa [Function.comp_def, one_smul, ← faithfulSMul_iff_injective_smul_one]

@[to_additive]
lemma FaithfulSMul.trans (R S T : Type*) [Monoid S] [MulOneClass T]
    [SMul R S] [IsScalarTower R S S] [MulAction S T] [IsScalarTower S T T]
    [SMul R T] [IsScalarTower R T T] [IsScalarTower R S T] [FaithfulSMul R S]
    [FaithfulSMul S T] : FaithfulSMul R T := by
  simpa [faithfulSMul_iff_injective_smul_one, Function.comp_def] using
    ((faithfulSMul_iff_injective_smul_one S T).mp ‹_›).comp
      ((faithfulSMul_iff_injective_smul_one R S).mp ‹_›)

/--
Let `Q / P / N / M` be a tower. If `Q / N / M`, `Q / P / M` and `Q / P / N` are
scalar towers, then `P / N / M` is also a scalar tower.
-/
@[to_additive] lemma IsScalarTower.to₁₂₃ (M N P Q)
    [SMul M N] [SMul M P] [SMul M Q] [SMul N P] [SMul N Q] [SMul P Q] [FaithfulSMul P Q]
    [IsScalarTower M N Q] [IsScalarTower M P Q] [IsScalarTower N P Q] : IsScalarTower M N P where
  smul_assoc m n p := by simp_rw [← (smul_left_injective' (α := Q)).eq_iff, smul_assoc]

open MulOpposite in
instance [SMul α M] [FaithfulSMul α M] : FaithfulSMul α Mᵐᵒᵖ where
  eq_of_smul_eq_smul h := FaithfulSMul.eq_of_smul_eq_smul fun m ↦ op_inj.mp <| h (op m)
```
