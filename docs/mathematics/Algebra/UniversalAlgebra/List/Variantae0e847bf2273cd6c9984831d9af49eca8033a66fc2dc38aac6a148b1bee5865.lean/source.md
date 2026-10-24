# Complete source: GRWTSK.Algebra.UniversalAlgebra.List.Variantae0e847bf2273cd6c9984831d9af49eca8033a66fc2dc38aac6a148b1bee5865

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3da0b2723718bfa3044cb91868020b1a0485f6a` · SHA-256 `77e83d02a3a07c417e08cb5fe5a31cc878ba5a00c4d12e5b9490d84f39a8ae09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Canonical.Varianta6479ac2f8aaabed3954a00900ba92d944a57f70bdcf83037f66cdcfca547846","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6479ac2f8aaabed3954a00900ba92d944a57f70bdcf83037f66cdcfca547846","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Canonical.Varianta6479ac2f8aaabed3954a00900ba92d944a57f70bdcf83037f66cdcfca547846","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"a6479ac2f8aaabed3954a00900ba92d944a57f70bdcf83037f66cdcfca547846","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/BigOperators/Ring/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Stuart Presnell. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stuart Presnell
-/
import Mathlib.Algebra.Order.Ring.Canonical
import Mathlib.Algebra.BigOperators.Group.List.Defs

/-!
# Big operators on a list in ordered rings

This file contains the results concerning the interaction of list big operators with ordered rings.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Canonical.Varianta6479ac2f8aaabed3954a00900ba92d944a57f70bdcf83037f66cdcfca547846

variable {R : Type*}

/-- A variant of `List.prod_pos` for `CanonicallyOrderedAdd`. -/
@[simp] lemma CanonicallyOrderedAdd.list_prod_pos {α : Type*}
    [CommSemiring α] [PartialOrder α] [CanonicallyOrderedAdd α] [NoZeroDivisors α] [Nontrivial α] :
    ∀ {l : List α}, 0 < l.prod ↔ (∀ x ∈ l, (0 : α) < x)
  | [] => by simp
  | (x :: xs) => by simp_rw [List.prod_cons, List.forall_mem_cons, CanonicallyOrderedAdd.mul_pos,
    list_prod_pos]
```
