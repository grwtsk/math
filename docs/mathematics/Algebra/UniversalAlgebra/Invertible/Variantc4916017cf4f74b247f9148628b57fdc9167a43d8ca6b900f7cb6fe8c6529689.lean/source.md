# Complete source: GRWTSK.Algebra.UniversalAlgebra.Invertible.Variantc4916017cf4f74b247f9148628b57fdc9167a43d8ca6b900f7cb6fe8c6529689

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7339b9f6c2c9a4dce42bf13aa60a918f1c940c9` · SHA-256 `09961bad03a0058faab182cf68c616db65e0c28faedcd13af5f1c59a3fda78c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.InvOfPos.Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.InvOfPos.Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Order/Invertible.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury G. Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury G. Kudryashov
-/
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Invertible
import Mathlib.Data.Nat.Cast.Basic


namespace GRWTSK.Algebra.UniversalAlgebra.InvOfPos.Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7

#align_import algebra.order.invertible from "leanprover-community/mathlib"@"ee0c179cd3c8a45aa5bffbf1b41d8dbede452865"

/-!
# Lemmas about `invOf` in ordered (semi)rings.
-/

set_option autoImplicit true

variable [LinearOrderedSemiring α] {a : α}

@[simp]
theorem invOf_pos [Invertible a] : 0 < ⅟ a ↔ 0 < a :=
  haveI : 0 < a * ⅟ a := by simp only [mul_invOf_self, zero_lt_one]
  ⟨fun h => pos_of_mul_pos_left this h.le, fun h => pos_of_mul_pos_right this h.le⟩
#align inv_of_pos invOf_pos

@[simp]
theorem invOf_nonpos [Invertible a] : ⅟ a ≤ 0 ↔ a ≤ 0 := by simp only [← not_lt, invOf_pos]
#align inv_of_nonpos invOf_nonpos

@[simp]
theorem invOf_nonneg [Invertible a] : 0 ≤ ⅟ a ↔ 0 ≤ a :=
  haveI : 0 < a * ⅟ a := by simp only [mul_invOf_self, zero_lt_one]
  ⟨fun h => (pos_of_mul_pos_left this h).le, fun h => (pos_of_mul_pos_right this h).le⟩
#align inv_of_nonneg invOf_nonneg

@[simp]
theorem invOf_lt_zero [Invertible a] : ⅟ a < 0 ↔ a < 0 := by simp only [← not_le, invOf_nonneg]
#align inv_of_lt_zero invOf_lt_zero

@[simp]
theorem invOf_le_one [Invertible a] (h : 1 ≤ a) : ⅟ a ≤ 1 :=
  mul_invOf_self a ▸ le_mul_of_one_le_left (invOf_nonneg.2 <| zero_le_one.trans h) h
#align inv_of_le_one invOf_le_one

theorem pos_invOf_of_invertible_cast [Nontrivial α] (n : ℕ)
    [Invertible (n : α)] : 0 < ⅟(n : α) :=
  invOf_pos.2 <| Nat.cast_pos.2 <| pos_of_invertible_cast (α := α) n
```
