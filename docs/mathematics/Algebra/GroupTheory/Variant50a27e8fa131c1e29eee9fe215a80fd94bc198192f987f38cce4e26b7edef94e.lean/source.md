# Complete source: GRWTSK.Algebra.Group.Variant50a27e8fa131c1e29eee9fe215a80fd94bc198192f987f38cce4e26b7edef94e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c1a59689be035dc7e4c75f55a27ef7f174ab48f` · SHA-256 `5e7880b961a7b0d0f459835887126699d76a89a3703dc24953dbdb44dc567abb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MulSemiringActionToRingEquiv.Variant77129a5610dba697ea7caded49ea737c36a71fc56fd9c84ec6e457b33e8f9d5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77129a5610dba697ea7caded49ea737c36a71fc56fd9c84ec6e457b33e8f9d5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.MulSemiringActionToRingEquiv.Variant77129a5610dba697ea7caded49ea737c36a71fc56fd9c84ec6e457b33e8f9d5b","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"77129a5610dba697ea7caded49ea737c36a71fc56fd9c84ec6e457b33e8f9d5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Action/Group.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.GroupWithZero.Action.Basic
import Mathlib.Algebra.Ring.Action.Basic
import Mathlib.Algebra.Ring.Equiv

/-!
# If a group acts multiplicatively on a semiring, each group element acts by a ring automorphism.

This result is split out from `Mathlib/Algebra/Ring/Action/Basic.lean`
to avoid needing the import of `Mathlib/Algebra/GroupWithZero/Action/Basic.lean`.
-/


namespace GRWTSK.Algebra.MulSemiringActionToRingEquiv.Variant77129a5610dba697ea7caded49ea737c36a71fc56fd9c84ec6e457b33e8f9d5b

section Semiring

variable (G : Type*) [Group G]
variable (R : Type*) [Semiring R]

/-- Each element of the group defines a semiring isomorphism. -/
@[simps!]
def MulSemiringAction.toRingEquiv [MulSemiringAction G R] (x : G) : R ≃+* R :=
  { DistribMulAction.toAddEquiv R x, MulSemiringAction.toRingHom G R x with }

end Semiring
```
