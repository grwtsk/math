# Complete source: GRWTSK.Algebra.Subfield.Variant62808724198b2666ac7ddab8c44eab5bc8d47992bd873d36d4386af19a130b47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d0d6d03d08c5ea51cba843149c9bd432ba049af` · SHA-256 `db88164ac8478e7daa90e2bcf525b4df2c4c834a671c66ae3e05adec64c61a0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Subfield.Variant7e69ba4a3ebdedebaa109e238d8a453982abc8213d32e9be59b5f0f7df0eef2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e69ba4a3ebdedebaa109e238d8a453982abc8213d32e9be59b5f0f7df0eef2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Subfield.Variant7e69ba4a3ebdedebaa109e238d8a453982abc8213d32e9be59b5f0f7df0eef2d","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"7e69ba4a3ebdedebaa109e238d8a453982abc8213d32e9be59b5f0f7df0eef2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Field/Subfield.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/

import Mathlib.Algebra.Field.Subfield.Defs
import Mathlib.Algebra.Order.Ring.InjSurj

/-!
# Ordered instances on subfields
-/


namespace GRWTSK.Algebra.Subfield.Variant7e69ba4a3ebdedebaa109e238d8a453982abc8213d32e9be59b5f0f7df0eef2d

namespace Subfield
variable {K : Type*}

/-- A subfield of an ordered field is a ordered field. -/
instance toIsStrictOrderedRing [Field K] [LinearOrder K] [IsStrictOrderedRing K] (s : Subfield K) :
    IsStrictOrderedRing s :=
  Subtype.coe_injective.isStrictOrderedRing Subtype.val rfl rfl (fun _ _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) (fun _ _ => rfl) fun _ => rfl

end Subfield
```
