# Complete source: GRWTSK.Algebra.GroupTheory.End.Variantfd6040cdbe89ed2638380fce5dab031cb7a01be0f2fc9b42641f26206bf76e2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `529dbb97588c67d85e0a5b92fb29b7ee45885876` · SHA-256 `c8ca13edb35f684dc7eaec39b8a9b14c09e9c35c662b589344339db7dcf3dc94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FunctionSurjectiveDistribMulActionLeft.Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.FunctionSurjectiveDistribMulActionLeft.Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb","mathematical_subject":"Algebra.Groups","original_sha256":"3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Action/End.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Yury Kudryashov
-/
import Mathlib.Algebra.Group.Action.Hom
import Mathlib.Algebra.Group.Equiv.Defs
import Mathlib.Algebra.GroupWithZero.Action.Units

/-!
# Group actions and (endo)morphisms
-/


namespace GRWTSK.Algebra.GroupTheory.FunctionSurjectiveDistribMulActionLeft.Variant3a84629234ee4bf7eb905a945800b1fd7b532a008a40953b0e35ae4cb42292cb

assert_not_exists RelIso Equiv.Perm.equivUnitsEnd Prod.fst_mul Ring

open Function

variable {M N A α β : Type*}

/-- Push forward the action of `R` on `M` along a compatible surjective map `f : R →* S`.

See also `Function.Surjective.mulActionLeft` and `Function.Surjective.moduleLeft`.
-/
abbrev Function.Surjective.distribMulActionLeft {R S M : Type*} [Monoid R] [AddMonoid M]
    [DistribMulAction R M] [Monoid S] [SMul S M] (f : R →* S) (hf : Function.Surjective f)
    (hsmul : ∀ (c) (x : M), f c • x = c • x) : DistribMulAction S M :=
  { hf.distribSMulLeft f hsmul, hf.mulActionLeft f hsmul with }

section AddMonoid

variable (A) [AddMonoid A] [Monoid M] [DistribMulAction M A]

/-- Compose a `DistribMulAction` with a `MonoidHom`, with action `f r' • m`.
See note [reducible non-instances]. -/
abbrev DistribMulAction.compHom [Monoid N] (f : N →* M) : DistribMulAction N A :=
  { DistribSMul.compFun A f, MulAction.compHom A f with }

end AddMonoid

section Monoid

variable (A) [Monoid A] [Monoid M] [MulDistribMulAction M A]

/-- Compose a `MulDistribMulAction` with a `MonoidHom`, with action `f r' • m`.
See note [reducible non-instances]. -/
abbrev MulDistribMulAction.compHom [Monoid N] (f : N →* M) : MulDistribMulAction N A :=
  { MulAction.compHom A f with
    smul_one := fun x => smul_one (f x),
    smul_mul := fun x => smul_mul' (f x) }

end Monoid

/-- The tautological action by `AddMonoid.End α` on `α`.

This generalizes `Function.End.applyMulAction`. -/
instance AddMonoid.End.applyDistribMulAction [AddMonoid α] :
    DistribMulAction (AddMonoid.End α) α where
  smul := (· <| ·)
  smul_zero := AddMonoidHom.map_zero
  smul_add := AddMonoidHom.map_add
  one_smul _ := rfl
  mul_smul _ _ _ := rfl

@[simp]
theorem AddMonoid.End.smul_def [AddMonoid α] (f : AddMonoid.End α) (a : α) : f • a = f a :=
  rfl

/-- `AddMonoid.End.applyDistribMulAction` is faithful. -/
instance AddMonoid.End.applyFaithfulSMul [AddMonoid α] :
    FaithfulSMul (AddMonoid.End α) α :=
  ⟨fun {_ _ h} => AddMonoidHom.ext h⟩

/-- Each non-zero element of a `GroupWithZero` defines an additive monoid isomorphism of an
`AddMonoid` on which it acts distributively.
This is a stronger version of `DistribMulAction.toAddMonoidHom`. -/
def DistribMulAction.toAddEquiv₀ {α : Type*} (β : Type*) [GroupWithZero α] [AddMonoid β]
    [DistribMulAction α β] (x : α) (hx : x ≠ 0) : β ≃+ β :=
  { DistribMulAction.toAddMonoidHom β x with
    invFun := fun b ↦ x⁻¹ • b
    left_inv := fun b ↦ inv_smul_smul₀ hx b
    right_inv := fun b ↦ smul_inv_smul₀ hx b }
```
