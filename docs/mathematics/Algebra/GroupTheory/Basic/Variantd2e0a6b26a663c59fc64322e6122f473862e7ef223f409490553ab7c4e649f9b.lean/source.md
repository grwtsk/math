# Complete source: GRWTSK.Algebra.GroupTheory.Basic.Variantd2e0a6b26a663c59fc64322e6122f473862e7ef223f409490553ab7c4e649f9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0597c32b9e297ad7baed1cfd9a7077b74e3ac7b` · SHA-256 `92be49102bbc724c0575d923f272e8113ff31112fff96c42d4defbb20aed5a68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MulActionBijective.Variant536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MulActionBijective.Variant536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f","mathematical_subject":"Algebra.Groups","original_sha256":"536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Action/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Yury Kudryashov
-/
import Mathlib.Algebra.Group.Action.End
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.Group.Action.Prod
import Mathlib.Algebra.GroupWithZero.Prod

/-!
# Definitions of group actions

This file defines a hierarchy of group action type-classes on top of the previously defined
notation classes `SMul` and its additive version `VAdd`:

* `MulAction M α` and its additive version `AddAction G P` are typeclasses used for
  actions of multiplicative and additive monoids and groups; they extend notation classes
  `SMul` and `VAdd` that are defined in `Algebra.Group.Defs`;
* `DistribMulAction M A` is a typeclass for an action of a multiplicative monoid on
  an additive monoid such that `a • (b + c) = a • b + a • c` and `a • 0 = 0`.

The hierarchy is extended further by `Module`, defined elsewhere.

Also provided are typeclasses for faithful and transitive actions, and typeclasses regarding the
interaction of different group actions,

* `SMulCommClass M N α` and its additive version `VAddCommClass M N α`;
* `IsScalarTower M N α` and its additive version `VAddAssocClass M N α`;
* `IsCentralScalar M α` and its additive version `IsCentralVAdd M N α`.

## Notation

- `a • b` is used as notation for `SMul.smul a b`.
- `a +ᵥ b` is used as notation for `VAdd.vadd a b`.

## Implementation details

This file should avoid depending on other parts of `GroupTheory`, to avoid import cycles.
More sophisticated lemmas belong in `GroupTheory.GroupAction`.

## Tags

group action
-/


namespace GRWTSK.Algebra.GroupTheory.MulActionBijective.Variant536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f

assert_not_exists Ring

open Function

variable {G G₀ A M M₀ N₀ R α : Type*}

section GroupWithZero
variable [GroupWithZero G₀] [MulAction G₀ α] {a : G₀}

protected lemma MulAction.bijective₀ (ha : a ≠ 0) : Bijective (a • · : α → α) :=
  MulAction.bijective <| Units.mk0 a ha

protected lemma MulAction.injective₀ (ha : a ≠ 0) : Injective (a • · : α → α) :=
  (MulAction.bijective₀ ha).injective

protected lemma MulAction.surjective₀ (ha : a ≠ 0) : Surjective (a • · : α → α) :=
  (MulAction.bijective₀ ha).surjective

end GroupWithZero

section DistribMulAction
variable [Group G] [Monoid M] [AddMonoid A]
variable (A)

/-- Each element of the group defines an additive monoid isomorphism.

This is a stronger version of `MulAction.toPerm`. -/
@[simps +simpRhs]
def DistribMulAction.toAddEquiv [DistribMulAction G A] (x : G) : A ≃+ A where
  __ := toAddMonoidHom A x
  __ := MulAction.toPermHom G A x

variable (G)

/-- Each element of the group defines an additive monoid isomorphism.

This is a stronger version of `MulAction.toPermHom`. -/
@[simps]
def DistribMulAction.toAddAut [DistribMulAction G A] : G →* AddAut A where
  toFun := toAddEquiv _
  map_one' := AddEquiv.ext (one_smul _)
  map_mul' _ _ := AddEquiv.ext (mul_smul _ _)

end DistribMulAction

/-- Scalar multiplication as a monoid homomorphism with zero. -/
@[simps]
def smulMonoidWithZeroHom [MonoidWithZero M₀] [MulZeroOneClass N₀] [MulActionWithZero M₀ N₀]
    [IsScalarTower M₀ N₀ N₀] [SMulCommClass M₀ N₀ N₀] : M₀ × N₀ →*₀ N₀ :=
  { smulMonoidHom with map_zero' := smul_zero _ }

namespace AddAut

/-- The tautological action by `AddAut A` on `A`.

This generalizes `Function.End.applyMulAction`. -/
instance applyDistribMulAction [AddMonoid A] : DistribMulAction (AddAut A) A where
  smul := (· <| ·)
  smul_zero := map_zero
  smul_add := map_add
  one_smul _ := rfl
  mul_smul _ _ _ := rfl

end AddAut

lemma IsUnit.smul_sub_iff_sub_inv_smul [Group G] [Monoid R] [AddGroup R] [DistribMulAction G R]
    [IsScalarTower G R R] [SMulCommClass G R R] (r : G) (a : R) :
    IsUnit (r • (1 : R) - a) ↔ IsUnit (1 - r⁻¹ • a) := by
  rw [← isUnit_smul_iff r (1 - r⁻¹ • a), smul_sub, smul_inv_smul]
```
