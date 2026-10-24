# Complete source: GRWTSK.Algebra.GroupTheory.Prod.Variant5fa6f0fa1e526b8399bd86655f46f0130d2af329175246d8baac6324aada485c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `167e9d1fa921865da7cbdc7a92983e3c689b64c1` · SHA-256 `e45d4c9c0f9098113b3a5efce7dd7c4d420349fc86ca8a8d613ce9c5b3de7a3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FstNatCast.Variantbffd185522d9171fe2c161af73f05ded4aa59c6587185ede6f1dc44158dce288","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bffd185522d9171fe2c161af73f05ded4aa59c6587185ede6f1dc44158dce288","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.FstNatCast.Variantbffd185522d9171fe2c161af73f05ded4aa59c6587185ede6f1dc44158dce288","mathematical_subject":"Algebra.Groups","original_sha256":"bffd185522d9171fe2c161af73f05ded4aa59c6587185ede6f1dc44158dce288","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Cast/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Group.Prod

/-!
# The product of two `AddMonoidWithOne`s.
-/


namespace GRWTSK.Algebra.GroupTheory.FstNatCast.Variantbffd185522d9171fe2c161af73f05ded4aa59c6587185ede6f1dc44158dce288

assert_not_exists MonoidWithZero

variable {α β : Type*}

namespace Prod

variable [AddMonoidWithOne α] [AddMonoidWithOne β]

instance instAddMonoidWithOne : AddMonoidWithOne (α × β) :=
  { Prod.instAddMonoid, @Prod.instOne α β _ _ with
    natCast := fun n => (n, n)
    natCast_zero := congr_arg₂ Prod.mk Nat.cast_zero Nat.cast_zero
    natCast_succ := fun _ => congr_arg₂ Prod.mk (Nat.cast_succ _) (Nat.cast_succ _) }

@[simp]
theorem fst_natCast (n : ℕ) : (n : α × β).fst = n := by induction n <;> simp [*]

@[simp]
theorem fst_ofNat (n : ℕ) [n.AtLeastTwo] :
    (ofNat(n) : α × β).1 = (ofNat(n) : α) :=
  rfl

@[simp]
theorem snd_natCast (n : ℕ) : (n : α × β).snd = n := by induction n <;> simp [*]

@[simp]
theorem snd_ofNat (n : ℕ) [n.AtLeastTwo] :
    (ofNat(n) : α × β).2 = (ofNat(n) : β) :=
  rfl

end Prod
```
