# Complete source: GRWTSK.Algebra.UniversalAlgebra.Idempotent.Variant62ba00fcf47f266073e046fd57d528badcf95c021d639da1b2b6d1050d293415

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39786578e6d8ddce34430d0572ce9ed46cea74be` · SHA-256 `db448882e6ada9e442c0a3d7c2f2cca259411e45dec8dc786aa3f6152d0b91d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Zero.Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Zero.Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Idempotent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Christopher Hoskin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christopher Hoskin
-/
import Mathlib.Algebra.Group.Idempotent
import Mathlib.Algebra.GroupWithZero.Defs

/-!
# Idempotent elements of a group with zero
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Zero.Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7

assert_not_exists Ring

variable {M N S M₀ M₁ R G G₀ : Type*}
variable [MulOneClass M₁] [CancelMonoidWithZero G₀]

namespace IsIdempotentElem
section MulZeroClass
variable [MulZeroClass M₀]

lemma zero : IsIdempotentElem (0 : M₀) := mul_zero _

instance : Zero { p : M₀ // IsIdempotentElem p } where zero := ⟨0, zero⟩

@[simp] lemma coe_zero : ↑(0 : { p : M₀ // IsIdempotentElem p }) = (0 : M₀) := rfl

end MulZeroClass

section CancelMonoidWithZero
variable [CancelMonoidWithZero M₀]

@[simp]
lemma iff_eq_zero_or_one {p : G₀} : IsIdempotentElem p ↔ p = 0 ∨ p = 1 where
  mp h := or_iff_not_imp_left.mpr fun hp ↦ mul_left_cancel₀ hp (h.trans (mul_one p).symm)
  mpr h := h.elim (fun hp => hp.symm ▸ zero) fun hp => hp.symm ▸ one

end CancelMonoidWithZero
end IsIdempotentElem
```
