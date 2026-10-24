# Complete source: GRWTSK.Algebra.GroupTheory.Submonoid.Variant8cb9ab3c56cf87264bc9fd74aee88a226b11e279d0acab25eb1b05cf39950a3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65fe26d61938688a1c818155d1b2e8678cc788b9` · SHA-256 `115eedf1a54c122f132923d1373e2d2bfb76e0fe751315e9a8ac1e04f0c30fe3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Submonoid.Variantb7e9e7f74dfe161b9e9d7334da7567772497550ded5c43c985bffc7d50048e92","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7e9e7f74dfe161b9e9d7334da7567772497550ded5c43c985bffc7d50048e92","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Submonoid.Variantb7e9e7f74dfe161b9e9d7334da7567772497550ded5c43c985bffc7d50048e92","mathematical_subject":"Algebra.Groups","original_sha256":"b7e9e7f74dfe161b9e9d7334da7567772497550ded5c43c985bffc7d50048e92","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/GroupWithZero/Submonoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic
import Mathlib.Order.Interval.Set.Defs

/-!
# The submonoid of positive elements
-/


namespace GRWTSK.Algebra.GroupTheory.Submonoid.Variantb7e9e7f74dfe161b9e9d7334da7567772497550ded5c43c985bffc7d50048e92

assert_not_exists RelIso Ring

namespace Submonoid
variable (α) [MulZeroOneClass α] [PartialOrder α] [PosMulStrictMono α] [ZeroLEOneClass α]
  [NeZero (1 : α)] {a : α}

/-- The submonoid of positive elements. -/
@[simps] def pos : Submonoid α where
  carrier := Set.Ioi 0
  one_mem' := zero_lt_one
  mul_mem' := mul_pos

variable {α}

@[simp] lemma mem_pos : a ∈ pos α ↔ 0 < a := Iff.rfl

end Submonoid
```
