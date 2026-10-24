# Complete source: GRWTSK.Algebra.GroupTheory.Sum.Variant5a0086ab193fc7f9a7c0871b968493bbc4ab64f4e4e3e409464b309e20d85f01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b009ac051d84dd818c6040fc10e46e3be979bdc` · SHA-256 `a9a2005be83ab096d0e58e6afcc651527acda2ea9f58b132c57a2ac3882c9feb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SmulDef.Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SmulDef.Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874","mathematical_subject":"Algebra.Groups","original_sha256":"61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Action/Sum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Group.Action.Faithful

/-!
# Sum instances for additive and multiplicative actions

This file defines instances for additive and multiplicative actions on the binary `Sum` type.

## See also

* `Mathlib/Algebra/Group/Action/Option.lean`
* `Mathlib/Algebra/Group/Action/Pi.lean`
* `Mathlib/Algebra/Group/Action/Prod.lean`
* `Mathlib/Algebra/Group/Action/Sigma.lean`
-/


namespace GRWTSK.Algebra.GroupTheory.SmulDef.Variant61eb9546f802c15106767ca14131bde753eddf599b7062fa62058d1e68b37874

public section

assert_not_exists MonoidWithZero

variable {M N α β : Type*}

namespace Sum

section SMul

variable [SMul M α] [SMul M β] [SMul N α] [SMul N β] (a : M) (b : α) (c : β)
  (x : α ⊕ β)

@[to_additive]
instance instSMul : SMul M (α ⊕ β) :=
  ⟨fun a => Sum.map (a • ·) (a • ·)⟩

@[to_additive]
theorem smul_def : a • x = x.map (a • ·) (a • ·) :=
  rfl

@[to_additive (attr := simp)]
theorem smul_inl : a • (inl b : α ⊕ β) = inl (a • b) :=
  rfl

@[to_additive (attr := simp)]
theorem smul_inr : a • (inr c : α ⊕ β) = inr (a • c) :=
  rfl

@[to_additive (attr := simp)]
theorem smul_swap : (a • x).swap = a • x.swap := by cases x <;> rfl

instance [SMul M N] [IsScalarTower M N α] [IsScalarTower M N β] : IsScalarTower M N (α ⊕ β) :=
  ⟨fun a b x => by
    cases x
    exacts [congr_arg inl (smul_assoc _ _ _), congr_arg inr (smul_assoc _ _ _)]⟩

@[to_additive]
instance [SMulCommClass M N α] [SMulCommClass M N β] : SMulCommClass M N (α ⊕ β) :=
  ⟨fun a b x => by
    cases x
    exacts [congr_arg inl (smul_comm _ _ _), congr_arg inr (smul_comm _ _ _)]⟩

@[to_additive]
instance [SMul Mᵐᵒᵖ α] [SMul Mᵐᵒᵖ β] [IsCentralScalar M α] [IsCentralScalar M β] :
    IsCentralScalar M (α ⊕ β) :=
  ⟨fun a x => by
    cases x
    exacts [congr_arg inl (op_smul_eq_smul _ _), congr_arg inr (op_smul_eq_smul _ _)]⟩

@[to_additive]
instance FaithfulSMulLeft [FaithfulSMul M α] : FaithfulSMul M (α ⊕ β) :=
  ⟨fun h => eq_of_smul_eq_smul fun a : α => by injection h (inl a)⟩

@[to_additive]
instance FaithfulSMulRight [FaithfulSMul M β] : FaithfulSMul M (α ⊕ β) :=
  ⟨fun h => eq_of_smul_eq_smul fun b : β => by injection h (inr b)⟩

end SMul

@[to_additive]
instance {m : Monoid M} [MulAction M α] [MulAction M β] :
    MulAction M (α ⊕ β) where
  mul_smul a b x := by
    cases x
    exacts [congr_arg inl (mul_smul _ _ _), congr_arg inr (mul_smul _ _ _)]
  one_smul x := by
    cases x
    exacts [congr_arg inl (one_smul _ _), congr_arg inr (one_smul _ _)]

end Sum
```
