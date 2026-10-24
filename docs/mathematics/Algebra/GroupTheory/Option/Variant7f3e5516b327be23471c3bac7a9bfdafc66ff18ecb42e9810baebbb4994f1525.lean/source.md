# Complete source: GRWTSK.Algebra.GroupTheory.Option.Variant7f3e5516b327be23471c3bac7a9bfdafc66ff18ecb42e9810baebbb4994f1525

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `122f6a1e6afb372810c79fcecb15cfdf0b5c608b` · SHA-256 `3c0a04e076cbe75dbb254befaebad7fc9fab1c48784324d9e78fe10117bfb7d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SmulDef.Variant4fcd82c2e84836d6f0aaeabb5fd25b7843e69ce07d4af253702f8cea7eae5eff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4fcd82c2e84836d6f0aaeabb5fd25b7843e69ce07d4af253702f8cea7eae5eff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SmulDef.Variant4fcd82c2e84836d6f0aaeabb5fd25b7843e69ce07d4af253702f8cea7eae5eff","mathematical_subject":"Algebra.Groups","original_sha256":"4fcd82c2e84836d6f0aaeabb5fd25b7843e69ce07d4af253702f8cea7eae5eff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Action/Option.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Group.Action.Faithful

/-!
# Option instances for additive and multiplicative actions

This file defines instances for additive and multiplicative actions on `Option` type. Scalar
multiplication is defined by `a • some b = some (a • b)` and `a • none = none`.

## See also

* `Mathlib/Algebra/Group/Action/Pi.lean`
* `Mathlib/Algebra/Group/Action/Sigma.lean`
* `Mathlib/Algebra/Group/Action/Sum.lean`
-/


namespace GRWTSK.Algebra.GroupTheory.SmulDef.Variant4fcd82c2e84836d6f0aaeabb5fd25b7843e69ce07d4af253702f8cea7eae5eff

public section

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
  one_smul b := by
    cases b
    exacts [rfl, congr_arg some (one_smul _ _)]
  mul_smul a₁ a₂ b := by
    cases b
    exacts [rfl, congr_arg some (mul_smul _ _ _)]

end Option
```
