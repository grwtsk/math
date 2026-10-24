# Complete source: GRWTSK.Algebra.GroupTheory.TypeTags.Variant66c67c8291375c3489682dfb4a0e780fc28865b3aa2d11b27b103ede1427bb00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eebce2b7b7ef07f00525ec1d88cd95562a59b167` · SHA-256 `67f275a3b0fab70a18982e309d4ef050b9ab3b9d697441be7f826fdafe21292b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ToAddPow.Variant230527047583c7accdbe168718b3a0c28ca2238f01f29bbe4af7366606650211","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"230527047583c7accdbe168718b3a0c28ca2238f01f29bbe4af7366606650211","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ToAddPow.Variant230527047583c7accdbe168718b3a0c28ca2238f01f29bbe4af7366606650211","mathematical_subject":"Algebra.Groups","original_sha256":"230527047583c7accdbe168718b3a0c28ca2238f01f29bbe4af7366606650211","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Int/TypeTags.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Algebra.Group.Int.Defs
import Mathlib.Algebra.Group.TypeTags.Basic

/-!
# Lemmas about `Multiplicative ℤ`.
-/



namespace GRWTSK.Algebra.GroupTheory.ToAddPow.Variant230527047583c7accdbe168718b3a0c28ca2238f01f29bbe4af7366606650211

open Nat

namespace Int

section Multiplicative

open Multiplicative

lemma toAdd_pow (a : Multiplicative ℤ) (b : ℕ) : (a ^ b).toAdd = a.toAdd * b := mul_comm _ _

lemma toAdd_zpow (a : Multiplicative ℤ) (b : ℤ) : (a ^ b).toAdd = a.toAdd * b := mul_comm _ _

@[simp] lemma ofAdd_mul (a b : ℤ) : ofAdd (a * b) = ofAdd a ^ b := (toAdd_zpow ..).symm

end Multiplicative

end Int
```
