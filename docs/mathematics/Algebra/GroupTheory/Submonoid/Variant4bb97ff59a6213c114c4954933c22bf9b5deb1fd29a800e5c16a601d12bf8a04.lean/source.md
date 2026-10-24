# Complete source: GRWTSK.Algebra.GroupTheory.Submonoid.Variant4bb97ff59a6213c114c4954933c22bf9b5deb1fd29a800e5c16a601d12bf8a04

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2feb102acbc375a56fea5c418266f9e3e9be0f6` · SHA-256 `056ec47143233c13d138f5790459e417adfe3561c90d70b2bd8bc0faa83c9066`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FixedPointsAddSubmonoid.Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.FixedPointsAddSubmonoid.Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e","mathematical_subject":"Algebra.Groups","original_sha256":"29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Action/Submonoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 David Ang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ang
-/
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.GroupTheory.GroupAction.Defs

/-!
# The subgroup of fixed points of an action
-/


namespace GRWTSK.Algebra.GroupTheory.FixedPointsAddSubmonoid.Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e

variable (M α : Type*) [Monoid M]

section AddMonoid
variable [AddMonoid α] [DistribMulAction M α]

/-- The additive submonoid of elements fixed under the whole action. -/
def FixedPoints.addSubmonoid : AddSubmonoid α where
  carrier := MulAction.fixedPoints M α
  zero_mem' := smul_zero
  add_mem' ha hb _ := by rw [smul_add, ha, hb]

@[simp]
lemma FixedPoints.mem_addSubmonoid (a : α) : a ∈ addSubmonoid M α ↔ ∀ m : M, m • a = a :=
  Iff.rfl

end AddMonoid

section AddGroup
variable [AddGroup α] [DistribMulAction M α]

/-- The additive subgroup of elements fixed under the whole action. -/
def FixedPoints.addSubgroup : AddSubgroup α where
  __ := addSubmonoid M α
  neg_mem' ha _ := by rw [smul_neg, ha]

/-- The notation for `FixedPoints.addSubgroup`, chosen to resemble `αᴹ`. -/
notation α "^+" M:51 => FixedPoints.addSubgroup M α

@[simp]
lemma FixedPoints.mem_addSubgroup (a : α) : a ∈ α^+M ↔ ∀ m : M, m • a = a :=
  Iff.rfl

@[simp]
lemma FixedPoints.addSubgroup_toAddSubmonoid : (α^+M).toAddSubmonoid = addSubmonoid M α :=
  rfl

end AddGroup
```
