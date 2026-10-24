# Complete source: GRWTSK.Algebra.GroupTheory.IterateAct.Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd779a13ecc8cc74738038a15efc1d4b2802c114` · SHA-256 `1ba2f18ff0c5cb8b1fef5e8b192412a98c2823b19d8ec0d5ef9a0d0a2d2830ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.IterateAddAct.Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.IterateAddAct.Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa","mathematical_subject":"Algebra.Groups","original_sha256":"961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/GroupTheory/GroupAction/IterateAct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Algebra.Group.Action.Defs
public import Mathlib.Basic.Countable.Defs

/-!
# Monoid action by iterates of a map

In this file we define `IterateMulAct f`, `f : α → α`, as a one field structure wrapper over `ℕ`
that acts on `α` by iterates of `f`, `⟨n⟩ • x = f^[n] x`.

It is useful to convert between definitions and theorems about maps and monoid actions.
-/


namespace GRWTSK.Algebra.GroupTheory.IterateAddAct.Variant961d5260fe08572549286641bb225e9caf17ae662ed4421c31e25754b2c19caa

public section

/-- A structure with a single field `val : ℕ`
that additively acts on `α` by `⟨n⟩ +ᵥ x = f^[n] x`. -/
structure IterateAddAct {α : Type*} (f : α → α) where
  /-- The value of `n : IterateAddAct f`. -/
  val : ℕ

/-- A structure with a single field `val : ℕ` that acts on `α` by `⟨n⟩ • x = f^[n] x`. -/
@[to_additive (attr := ext)]
structure IterateMulAct {α : Type*} (f : α → α) where
  /-- The value of `n : IterateMulAct f`. -/
  val : ℕ

namespace IterateMulAct

variable {α : Type*} {f : α → α}

@[to_additive]
instance instCountable : Countable (IterateMulAct f) :=
  Function.Injective.countable fun _ _ ↦ IterateMulAct.ext

@[to_additive]
instance instCommMonoid : CommMonoid (IterateMulAct f) where
  one := ⟨0⟩
  mul m n := ⟨m.1 + n.1⟩
  mul_assoc a b c := by ext; apply Nat.add_assoc
  one_mul _ := by ext; apply Nat.zero_add
  mul_one _ := rfl
  mul_comm _ _ := by ext; apply Nat.add_comm
  npow n a := ⟨n * a.val⟩
  npow_zero _ := by ext; apply Nat.zero_mul
  npow_succ n a := by ext; apply Nat.succ_mul

@[to_additive]
instance instMulAction : MulAction (IterateMulAct f) α where
  smul n x := f^[n.val] x
  one_smul _ := rfl
  mul_smul _ _ := Function.iterate_add_apply f _ _

@[to_additive (attr := simp)]
theorem mk_smul (n : ℕ) (x : α) : mk (f := f) n • x = f^[n] x := rfl

end IterateMulAct
```
