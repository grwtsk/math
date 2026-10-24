# Complete source: GRWTSK.Algebra.Basic.Variant1439d288601a465758d402035e67d330f3c92777ee6c4e5c03cbaf29d6857b65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a6d46e84f8a5bab821aab377722510c487c0544` · SHA-256 `650d71cf29a74d5539fc34865f05f400deba14108dba8dae89d93c39cd9a7747`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Embedding.Variant26d729f6681c7e422c79be3049e26ebc8786ec49ab92f96f9e6ae6e9ca145f73","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26d729f6681c7e422c79be3049e26ebc8786ec49ab92f96f9e6ae6e9ca145f73","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Embedding.Variant26d729f6681c7e422c79be3049e26ebc8786ec49ab92f96f9e6ae6e9ca145f73","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"26d729f6681c7e422c79be3049e26ebc8786ec49ab92f96f9e6ae6e9ca145f73","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Interval/Finset/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Embedding
import Mathlib.Algebra.Order.Interval.Set.Monoid
import Mathlib.Order.Interval.Finset.Defs

/-!
# Algebraic properties of finset intervals

This file provides results about the interaction of algebra with `Finset.Ixx`.
-/


namespace GRWTSK.Algebra.Embedding.Variant26d729f6681c7e422c79be3049e26ebc8786ec49ab92f96f9e6ae6e9ca145f73

open Function OrderDual

variable {ι α : Type*}

namespace Finset
variable [AddCommMonoid α] [PartialOrder α] [IsOrderedCancelAddMonoid α]
  [ExistsAddOfLE α] [LocallyFiniteOrder α]

@[simp] lemma map_add_left_Icc (a b c : α) :
    (Icc a b).map (addLeftEmbedding c) = Icc (c + a) (c + b) := by
  rw [← coe_inj, coe_map, coe_Icc, coe_Icc]
  exact Set.image_const_add_Icc _ _ _

@[simp] lemma map_add_right_Icc (a b c : α) :
    (Icc a b).map (addRightEmbedding c) = Icc (a + c) (b + c) := by
  rw [← coe_inj, coe_map, coe_Icc, coe_Icc]
  exact Set.image_add_const_Icc _ _ _

@[simp] lemma map_add_left_Ico (a b c : α) :
    (Ico a b).map (addLeftEmbedding c) = Ico (c + a) (c + b) := by
  rw [← coe_inj, coe_map, coe_Ico, coe_Ico]
  exact Set.image_const_add_Ico _ _ _

@[simp] lemma map_add_right_Ico (a b c : α) :
    (Ico a b).map (addRightEmbedding c) = Ico (a + c) (b + c) := by
  rw [← coe_inj, coe_map, coe_Ico, coe_Ico]
  exact Set.image_add_const_Ico _ _ _

@[simp] lemma map_add_left_Ioc (a b c : α) :
    (Ioc a b).map (addLeftEmbedding c) = Ioc (c + a) (c + b) := by
  rw [← coe_inj, coe_map, coe_Ioc, coe_Ioc]
  exact Set.image_const_add_Ioc _ _ _

@[simp] lemma map_add_right_Ioc (a b c : α) :
    (Ioc a b).map (addRightEmbedding c) = Ioc (a + c) (b + c) := by
  rw [← coe_inj, coe_map, coe_Ioc, coe_Ioc]
  exact Set.image_add_const_Ioc _ _ _

@[simp] lemma map_add_left_Ioo (a b c : α) :
    (Ioo a b).map (addLeftEmbedding c) = Ioo (c + a) (c + b) := by
  rw [← coe_inj, coe_map, coe_Ioo, coe_Ioo]
  exact Set.image_const_add_Ioo _ _ _

@[simp] lemma map_add_right_Ioo (a b c : α) :
    (Ioo a b).map (addRightEmbedding c) = Ioo (a + c) (b + c) := by
  rw [← coe_inj, coe_map, coe_Ioo, coe_Ioo]
  exact Set.image_add_const_Ioo _ _ _

variable [DecidableEq α]

@[simp] lemma image_add_left_Icc (a b c : α) : (Icc a b).image (c + ·) = Icc (c + a) (c + b) := by
  rw [← map_add_left_Icc, map_eq_image, addLeftEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_left_Ico (a b c : α) : (Ico a b).image (c + ·) = Ico (c + a) (c + b) := by
  rw [← map_add_left_Ico, map_eq_image, addLeftEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_left_Ioc (a b c : α) : (Ioc a b).image (c + ·) = Ioc (c + a) (c + b) := by
  rw [← map_add_left_Ioc, map_eq_image, addLeftEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_left_Ioo (a b c : α) : (Ioo a b).image (c + ·) = Ioo (c + a) (c + b) := by
  rw [← map_add_left_Ioo, map_eq_image, addLeftEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_right_Icc (a b c : α) : (Icc a b).image (· + c) = Icc (a + c) (b + c) := by
  rw [← map_add_right_Icc, map_eq_image, addRightEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_right_Ico (a b c : α) : (Ico a b).image (· + c) = Ico (a + c) (b + c) := by
  rw [← map_add_right_Ico, map_eq_image, addRightEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_right_Ioc (a b c : α) : (Ioc a b).image (· + c) = Ioc (a + c) (b + c) := by
  rw [← map_add_right_Ioc, map_eq_image, addRightEmbedding, Embedding.coeFn_mk]

@[simp] lemma image_add_right_Ioo (a b c : α) : (Ioo a b).image (· + c) = Ioo (a + c) (b + c) := by
  rw [← map_add_right_Ioo, map_eq_image, addRightEmbedding, Embedding.coeFn_mk]

end Finset
```
