-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SmulApply.Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SmulApply.Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e","mathematical_subject":"Algebra.Groups","original_sha256":"d394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Module/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Module.Pi


namespace GRWTSK.Algebra.GroupTheory.SmulApply.Variantd394b6786a45fe22f0f111483ee88f8d8d3c596a65bd37205418eed978ffa96e

#align_import algebra.module.hom from "leanprover-community/mathlib"@"134625f523e737f650a6ea7f0c82a6177e45e622"

/-!
# Bundled Hom instances for module and multiplicative actions

This file defines instances for `Module`, `MulAction` and related structures on bundled `Hom` types.

These are analogous to the instances in `Algebra.Module.Pi`, but for bundled instead of unbundled
functions.

We also define bundled versions of `(c • ·)` and `(· • ·)` as `AddMonoidHom.smulLeft` and
`AddMonoidHom.smul`, respectively.
-/

set_option autoImplicit true

variable {R S A B : Type*}

namespace AddMonoidHom

section

instance distribSMul [AddZeroClass A] [AddCommMonoid B] [DistribSMul M B] :
    DistribSMul M (A →+ B) where
  smul_add _ _ _ := ext fun _ => smul_add _ _ _

variable [Monoid R] [Monoid S] [AddMonoid A] [AddCommMonoid B]

variable [DistribMulAction R B] [DistribMulAction S B]

instance distribMulAction : DistribMulAction R (A →+ B) where
  smul_zero := smul_zero
  smul_add := smul_add
  one_smul _ := ext fun _ => one_smul _ _
  mul_smul _ _ _ := ext fun _ => mul_smul _ _ _
#align add_monoid_hom.distrib_mul_action AddMonoidHom.distribMulAction

@[simp] theorem coe_smul (r : R) (f : A →+ B) : ⇑(r • f) = r • ⇑f := rfl
#align add_monoid_hom.coe_smul AddMonoidHom.coe_smul

theorem smul_apply (r : R) (f : A →+ B) (x : A) : (r • f) x = r • f x :=
  rfl
#align add_monoid_hom.smul_apply AddMonoidHom.smul_apply

instance smulCommClass [SMulCommClass R S B] : SMulCommClass R S (A →+ B) :=
  ⟨fun _ _ _ => ext fun _ => smul_comm _ _ _⟩
#align add_monoid_hom.smul_comm_class AddMonoidHom.smulCommClass

instance isScalarTower [SMul R S] [IsScalarTower R S B] : IsScalarTower R S (A →+ B) :=
  ⟨fun _ _ _ => ext fun _ => smul_assoc _ _ _⟩
#align add_monoid_hom.is_scalar_tower AddMonoidHom.isScalarTower

instance isCentralScalar [DistribMulAction Rᵐᵒᵖ B] [IsCentralScalar R B] :
    IsCentralScalar R (A →+ B) :=
  ⟨fun _ _ => ext fun _ => op_smul_eq_smul _ _⟩
#align add_monoid_hom.is_central_scalar AddMonoidHom.isCentralScalar

end

/-- Scalar multiplication on the left as an additive monoid homomorphism. -/
@[simps (config := .asFn)]
protected def smulLeft [Monoid M] [AddMonoid A] [DistribMulAction M A] (c : M) : A →+ A where
  toFun := (c • ·)
  map_zero' := smul_zero c
  map_add' := smul_add c

/-- Scalar multiplication as a biadditive monoid homomorphism. We need `M` to be commutative
to have addition on `M →+ M`. -/
protected def smul [Semiring R] [AddCommMonoid M] [Module R M] : R →+ M →+ M where
  toFun := .smulLeft
  map_zero' := AddMonoidHom.ext <| zero_smul _
  map_add' _ _ := AddMonoidHom.ext <| add_smul _ _

@[simp] theorem coe_smul' [Semiring R] [AddCommMonoid M] [Module R M] :
    ⇑(.smul : R →+ M →+ M) = AddMonoidHom.smulLeft := rfl

instance module [Semiring R] [AddMonoid A] [AddCommMonoid B] [Module R B] : Module R (A →+ B) :=
  { add_smul := fun _ _ _=> ext fun _ => add_smul _ _ _
    zero_smul := fun _ => ext fun _ => zero_smul _ _ }
#align add_monoid_hom.module AddMonoidHom.module

end AddMonoidHom
