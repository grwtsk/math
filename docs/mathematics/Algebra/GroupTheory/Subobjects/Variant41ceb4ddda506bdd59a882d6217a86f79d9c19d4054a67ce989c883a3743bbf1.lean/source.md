# Complete source: GRWTSK.Algebra.GroupTheory.Subobjects.Variant41ceb4ddda506bdd59a882d6217a86f79d9c19d4054a67ce989c883a3743bbf1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `869513e52123612cdf58a2a0fcd6cb1806dc7a94` · SHA-256 `279209f27054321a2c35ca4c2b2561a75746a2deac98f1d4759e1e2b4661c510`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.GroupRingAction.Variantca33e8031caafba16130febf59df20f7689e9684951de0a03b9a74de0ee15bc9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca33e8031caafba16130febf59df20f7689e9684951de0a03b9a74de0ee15bc9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.GroupRingAction.Variantca33e8031caafba16130febf59df20f7689e9684951de0a03b9a74de0ee15bc9","mathematical_subject":"Algebra.Groups","original_sha256":"ca33e8031caafba16130febf59df20f7689e9684951de0a03b9a74de0ee15bc9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/GroupRingAction/Subobjects.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.GroupRingAction.Basic
import Mathlib.GroupTheory.Subgroup.Basic


namespace GRWTSK.Algebra.GroupTheory.GroupRingAction.Variantca33e8031caafba16130febf59df20f7689e9684951de0a03b9a74de0ee15bc9

#align_import algebra.group_ring_action.subobjects from "leanprover-community/mathlib"@"f93c11933efbc3c2f0299e47b8ff83e9b539cbf6"

/-!
# Instances of `MulSemiringAction` for subobjects

These are defined in this file as `Semiring`s are not available yet where `Submonoid` and `Subgroup`
are defined.

Instances for `Subsemiring` and `Subring` are provided next to the other scalar actions instances
for those subobjects.

-/


variable {M G R : Type*}

variable [Monoid M] [Group G] [Semiring R]

/-- A stronger version of `Submonoid.distribMulAction`. -/
instance Submonoid.mulSemiringAction [MulSemiringAction M R] (H : Submonoid M) :
    MulSemiringAction H R :=
  { inferInstanceAs (DistribMulAction H R), inferInstanceAs (MulDistribMulAction H R)
    with smul := (· • ·) }
#align submonoid.mul_semiring_action Submonoid.mulSemiringAction

/-- A stronger version of `Subgroup.distribMulAction`. -/
instance Subgroup.mulSemiringAction [MulSemiringAction G R] (H : Subgroup G) :
    MulSemiringAction H R :=
  H.toSubmonoid.mulSemiringAction
#align subgroup.mul_semiring_action Subgroup.mulSemiringAction
```
