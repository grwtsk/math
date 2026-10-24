# Complete source: GRWTSK.Algebra.GroupTheory.Set.Variantcb84ba893c61a0303cb074098d8dc6800a0f309ce23fc24e7aa489c6503316f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fc5e5705d3d677053f065e9cd843a532fde62e3` · SHA-256 `68eda871405cf3eca09d68e4ea4391631fb6349873db7e9be44b1ed944138a18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SmulSetNeg.Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SmulSetNeg.Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc","mathematical_subject":"Algebra.Groups","original_sha256":"8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Action/Pointwise/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Pointwise.Set.Scalar
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Group.Pointwise.Set.Basic

/-!
# Pointwise operations of sets in a ring

This file proves properties of pointwise operations of sets in a ring.

## Tags

set multiplication, set addition, pointwise addition, pointwise multiplication,
pointwise subtraction
-/


namespace GRWTSK.Algebra.GroupTheory.SmulSetNeg.Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc

assert_not_exists OrderedAddCommMonoid Field

open Function
open scoped Pointwise

variable {α β : Type*}

namespace Set

section Monoid
variable [Monoid α] [AddGroup β] [DistribMulAction α β] (a : α) (s : Set α) (t : Set β)

@[simp]
lemma smul_set_neg : a • -t = -(a • t) := by
  simp_rw [← image_smul, ← image_neg_eq_neg, image_image, smul_neg]

@[simp]
protected lemma smul_neg : s • -t = -(s • t) := by
  simp_rw [← image_neg_eq_neg]
  exact image_image2_right_comm smul_neg

end Monoid

section Semiring
variable [Semiring α] [AddCommMonoid β] [Module α β]

lemma add_smul_subset (a b : α) (s : Set β) : (a + b) • s ⊆ a • s + b • s := by
  rintro _ ⟨x, hx, rfl⟩
  simpa only [add_smul] using add_mem_add (smul_mem_smul_set hx) (smul_mem_smul_set hx)

end Semiring

section Ring
variable [Ring α] [AddCommGroup β] [Module α β] (a : α) (s : Set α) (t : Set β)

@[simp]
lemma neg_smul_set : -a • t = -(a • t) := by
  simp_rw [← image_smul, ← image_neg_eq_neg, image_image, neg_smul]

@[simp]
protected lemma neg_smul : -s • t = -(s • t) := by
  simp_rw [← image_neg_eq_neg]
  exact image2_image_left_comm neg_smul

end Ring
end Set
```
