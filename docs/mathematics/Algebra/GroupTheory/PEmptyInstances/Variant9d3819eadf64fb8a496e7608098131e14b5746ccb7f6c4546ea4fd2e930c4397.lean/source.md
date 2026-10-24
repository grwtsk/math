# Complete source: GRWTSK.Algebra.GroupTheory.PEmptyInstances.Variant9d3819eadf64fb8a496e7608098131e14b5746ccb7f6c4546ea4fd2e930c4397

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3991789a1bcffc773e342bc1f847fd894e5f10f8` · SHA-256 `9cf27e9979a0d5285b7ccb481b295853e8de2154fb2832ffc5f5addf9cbebc6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Semigroup.Variant2703cce1f3d7c540f02f813ed5b565b9e02e9c2e348c763ef026d4a4a0188638","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2703cce1f3d7c540f02f813ed5b565b9e02e9c2e348c763ef026d4a4a0188638","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Semigroup.Variant2703cce1f3d7c540f02f813ed5b565b9e02e9c2e348c763ef026d4a4a0188638","mathematical_subject":"Algebra.Groups","original_sha256":"2703cce1f3d7c540f02f813ed5b565b9e02e9c2e348c763ef026d4a4a0188638","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/PEmptyInstances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Julian Kuelshammer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julian Kuelshammer
-/
module

public import Mathlib.Algebra.Group.Semigroup

/-!
# Instances on pempty

This file collects facts about algebraic structures on the (universe-polymorphic) empty type, e.g.
that it is a semigroup.
-/


namespace GRWTSK.Algebra.GroupTheory.Semigroup.Variant2703cce1f3d7c540f02f813ed5b565b9e02e9c2e348c763ef026d4a4a0188638

public section


universe u

@[to_additive]
instance SemigroupPEmpty : Semigroup PEmpty.{u + 1} where
  mul x _ := by cases x
  mul_assoc x y z := by cases x
```
