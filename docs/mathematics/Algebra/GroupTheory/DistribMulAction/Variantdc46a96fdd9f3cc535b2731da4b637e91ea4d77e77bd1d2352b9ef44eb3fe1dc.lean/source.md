# Complete source: GRWTSK.Algebra.GroupTheory.DistribMulAction.Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c417e7e7a4e1c550458a3c880dd2b2588ac372e` · SHA-256 `507a7047bcdd8a7c281e7ac3daa5ea6492319ae8f8047d1d50ec5e8d98ac509b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MulAction.Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MulAction.Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193","mathematical_subject":"Algebra.Groups","original_sha256":"b3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Submonoid/DistribMulAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Submonoid.MulAction
import Mathlib.Algebra.GroupWithZero.Action.Defs

/-!
# Distributive actions by submonoids
-/


namespace GRWTSK.Algebra.GroupTheory.MulAction.Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193

assert_not_exists RelIso Ring

namespace Submonoid

variable {M α : Type*} [Monoid M]

variable {S : Type*} [SetLike S M] (s : S) [SubmonoidClass S M]

instance (priority := low) [AddMonoid α] [DistribMulAction M α] : DistribMulAction s α where
  smul_zero r := smul_zero (r : M)
  smul_add r := smul_add (r : M)

/-- The action by a submonoid is the action by the underlying monoid. -/
instance distribMulAction [AddMonoid α] [DistribMulAction M α] (S : Submonoid M) :
    DistribMulAction S α :=
  inferInstance

instance (priority := low) [Monoid α] [MulDistribMulAction M α] : MulDistribMulAction s α where
  smul_mul r := smul_mul' (r : M)
  smul_one r := smul_one (r : M)

/-- The action by a submonoid is the action by the underlying monoid. -/
instance mulDistribMulAction [Monoid α] [MulDistribMulAction M α] (S : Submonoid M) :
    MulDistribMulAction S α :=
  inferInstance

end Submonoid
```
