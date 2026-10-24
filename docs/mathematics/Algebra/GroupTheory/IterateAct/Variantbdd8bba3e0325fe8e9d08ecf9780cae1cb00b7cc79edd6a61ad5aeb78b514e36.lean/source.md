# Complete source: GRWTSK.Algebra.GroupTheory.IterateAct.Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0017968410b2f33eac77bca7f859c7c50327fe91` · SHA-256 `75baf394c96ddd8fdef9849d2275ed852179e62542d8229aee58b51f1810eb56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.IterateAddAct.Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.IterateAddAct.Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1","mathematical_subject":"Algebra.Groups","original_sha256":"c0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/GroupAction/IterateAct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Data.Countable.Defs

/-!
# Monoid action by iterates of a map

In this file we define `IterateMulAct f`, `f : α → α`, as a one field structure wrapper over `ℕ`
that acts on `α` by iterates of `f`, `⟨n⟩ • x = f^[n] x`.

It is useful to convert between definitions and theorems about maps and monoid actions.
-/


namespace GRWTSK.Algebra.GroupTheory.IterateAddAct.Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1

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
