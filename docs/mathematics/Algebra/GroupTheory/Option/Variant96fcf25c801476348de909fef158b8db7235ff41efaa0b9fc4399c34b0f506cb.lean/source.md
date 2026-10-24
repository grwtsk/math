# Complete source: GRWTSK.Algebra.GroupTheory.Option.Variant96fcf25c801476348de909fef158b8db7235ff41efaa0b9fc4399c34b0f506cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30263e35c66fb828dd5e89cb7184579a32b5416e` · SHA-256 `817c9e3dda6c8e5c68f8f4182ef37e9b4345475defa383c7c28a466ff8fef12a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SmulDef.Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SmulDef.Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c","mathematical_subject":"Algebra.Groups","original_sha256":"88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Action/Option.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Action.Faithful

/-!
# Option instances for additive and multiplicative actions

This file defines instances for additive and multiplicative actions on `Option` type. Scalar
multiplication is defined by `a • some b = some (a • b)` and `a • none = none`.

## See also

* `Mathlib/Algebra/Group/Action/Pi.lean`
* `Mathlib/Algebra/Group/Action/Sigma.lean`
* `Mathlib/Algebra/Group/Action/Sum.lean`
-/


namespace GRWTSK.Algebra.GroupTheory.SmulDef.Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c

assert_not_exists MonoidWithZero

variable {M N α : Type*}

namespace Option

section SMul

variable [SMul M α] [SMul N α] (a : M) (b : α) (x : Option α)

@[to_additive Option.VAdd]
instance : SMul M (Option α) :=
  ⟨fun a => Option.map <| (a • ·)⟩

@[to_additive]
theorem smul_def : a • x = x.map (a • ·) :=
  rfl

@[to_additive (attr := simp)]
theorem smul_none : a • (none : Option α) = none :=
  rfl

@[to_additive (attr := simp)]
theorem smul_some : a • some b = some (a • b) :=
  rfl

@[to_additive]
instance instIsScalarTowerOfSMul [SMul M N] [IsScalarTower M N α] : IsScalarTower M N (Option α) :=
  ⟨fun a b x => by
    cases x
    exacts [rfl, congr_arg some (smul_assoc _ _ _)]⟩

@[to_additive]
instance [SMulCommClass M N α] : SMulCommClass M N (Option α) :=
  ⟨fun _ _ => Function.Commute.option_map <| smul_comm _ _⟩

@[to_additive]
instance [SMul Mᵐᵒᵖ α] [IsCentralScalar M α] : IsCentralScalar M (Option α) :=
  ⟨fun a x => by
    cases x
    exacts [rfl, congr_arg some (op_smul_eq_smul _ _)]⟩

@[to_additive]
instance [FaithfulSMul M α] : FaithfulSMul M (Option α) :=
  ⟨fun h => eq_of_smul_eq_smul fun b : α => by injection h (some b)⟩

end SMul

instance [Monoid M] [MulAction M α] :
    MulAction M (Option α) where
  smul := (· • ·)
  one_smul b := by
    cases b
    exacts [rfl, congr_arg some (one_smul _ _)]
  mul_smul a₁ a₂ b := by
    cases b
    exacts [rfl, congr_arg some (mul_smul _ _ _)]

end Option
```
