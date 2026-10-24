# Complete source: GRWTSK.Topology.MetricTopology.Basic.Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acaf8ecf74c57f604fc2538e4141887986140042` · SHA-256 `f186dee11888fc73d6694847e3b5aed03ba46d74e7b127ec0ceebc921659796c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.GroupSeminormClassToSeminormedGroup.Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.GroupSeminormClassToSeminormedGroup.Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f","mathematical_subject":"Topology.MetricSpaces","original_sha256":"5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Order/Hom/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.Algebra.Order.Hom.Basic
import Mathlib.Analysis.Normed.Group.Basic

/-!
# Constructing (semi)normed groups from (semi)normed homs

This file defines constructions that upgrade `(Comm)Group` to `(Semi)Normed(Comm)Group`
using a `Group(Semi)normClass` when the codomain is the reals.

See `Mathlib/Analysis/Normed/Order/Hom/Ultra.lean` for further upgrades to nonarchimedean normed
groups.
-/


namespace GRWTSK.Topology.MetricTopology.GroupSeminormClassToSeminormedGroup.Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f

variable {F α : Type*} [FunLike F α ℝ]

/-- Constructs a `SeminormedGroup` structure from a `GroupSeminormClass` on a `Group`. -/
-- See note [reducible non-instances]
@[to_additive "Constructs a `SeminormedAddGroup` structure from an `AddGroupSeminormClass` on an
`AddGroup`."]
abbrev GroupSeminormClass.toSeminormedGroup [Group α] [GroupSeminormClass F α ℝ]
    (f : F) : SeminormedGroup α where
  norm := f
  dist x y := f (x / y)
  dist_eq _ _ := rfl
  dist_self _ := by simp
  dist_comm x y := by simp only [← map_inv_eq_map f (x / y), inv_div]
  dist_triangle x y z := by simpa using map_mul_le_add f (x / y) (y / z)

@[to_additive]
lemma GroupSeminormClass.toSeminormedGroup_norm_eq [Group α] [GroupSeminormClass F α ℝ]
    (f : F) (x : α) : @norm _ (GroupSeminormClass.toSeminormedGroup f).toNorm x = f x := rfl

/-- Constructs a `SeminormedCommGroup` structure from a `GroupSeminormClass` on a `CommGroup`. -/
-- See note [reducible non-instances]
@[to_additive "Constructs a `SeminormedAddCommGroup` structure from an `AddGroupSeminormClass` on an
`AddCommGroup`."]
abbrev GroupSeminormClass.toSeminormedCommGroup [CommGroup α] [GroupSeminormClass F α ℝ]
    (f : F) : SeminormedCommGroup α where
  __ := GroupSeminormClass.toSeminormedGroup f
  __ : CommGroup α := inferInstance

@[to_additive]
lemma GroupSeminormClass.toSeminormedCommGroup_norm_eq [CommGroup α] [GroupSeminormClass F α ℝ]
    (f : F) (x : α) : @norm _ (GroupSeminormClass.toSeminormedCommGroup f).toNorm x = f x := rfl

/-- Constructs a `NormedGroup` structure from a `GroupNormClass` on a `Group`. -/
-- See note [reducible non-instances]
@[to_additive "Constructs a `NormedAddGroup` structure from an `AddGroupNormClass` on an
`AddGroup`."]
abbrev GroupNormClass.toNormedGroup [Group α] [GroupNormClass F α ℝ]
    (f : F) : NormedGroup α where
  __ := GroupSeminormClass.toSeminormedGroup f
  eq_of_dist_eq_zero h := div_eq_one.mp (eq_one_of_map_eq_zero f h)

@[to_additive]
lemma GroupNormClass.toNormedGroup_norm_eq [Group α] [GroupNormClass F α ℝ]
    (f : F) (x : α) : @norm _ (GroupNormClass.toNormedGroup f).toNorm x = f x := rfl

/-- Constructs a `NormedCommGroup` structure from a `GroupNormClass` on a `CommGroup`. -/
-- See note [reducible non-instances]
@[to_additive "Constructs a `NormedAddCommGroup` structure from an `AddGroupNormClass` on an
`AddCommGroup`."]
abbrev GroupNormClass.toNormedCommGroup [CommGroup α] [GroupNormClass F α ℝ]
    (f : F) : NormedCommGroup α where
  __ := GroupNormClass.toNormedGroup f
  __ : CommGroup α := inferInstance

@[to_additive]
lemma GroupNormClass.toNormedCommGroup_norm_eq [CommGroup α] [GroupNormClass F α ℝ]
    (f : F) (x : α) : @norm _ (GroupNormClass.toNormedCommGroup f).toNorm x = f x := rfl
```
