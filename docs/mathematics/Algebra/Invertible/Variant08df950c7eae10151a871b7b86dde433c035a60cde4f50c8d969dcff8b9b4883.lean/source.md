# Complete source: GRWTSK.Algebra.Invertible.Variant08df950c7eae10151a871b7b86dde433c035a60cde4f50c8d969dcff8b9b4883

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b13ff060fa5a3260620416186e4322feb79e19f7` · SHA-256 `948ee073de70c855a1331b0876cdb91added858308956a787a0ea05a27a4e8aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.InvOfPos.Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.InvOfPos.Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Invertible.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Invertible
import Mathlib.Data.Nat.Cast.Order.Ring

/-!
# Lemmas about `invOf` in ordered (semi)rings.
-/


namespace GRWTSK.Algebra.InvOfPos.Variant0d3f001bb0373e76a57b0069e077981f175724ba0b6f20a607f1ddd3fb2b6cda

variable {R : Type*} [Semiring R] [LinearOrder R] [IsStrictOrderedRing R] {a : R}

@[simp]
theorem invOf_pos [Invertible a] : 0 < ⅟ a ↔ 0 < a :=
  haveI : 0 < a * ⅟ a := by simp only [mul_invOf_self, zero_lt_one]
  ⟨fun h => pos_of_mul_pos_left this h.le, fun h => pos_of_mul_pos_right this h.le⟩

@[simp]
theorem invOf_nonpos [Invertible a] : ⅟ a ≤ 0 ↔ a ≤ 0 := by simp only [← not_lt, invOf_pos]

@[simp]
theorem invOf_nonneg [Invertible a] : 0 ≤ ⅟ a ↔ 0 ≤ a :=
  haveI : 0 < a * ⅟ a := by simp only [mul_invOf_self, zero_lt_one]
  ⟨fun h => (pos_of_mul_pos_left this h).le, fun h => (pos_of_mul_pos_right this h).le⟩

@[simp]
theorem invOf_lt_zero [Invertible a] : ⅟ a < 0 ↔ a < 0 := by simp only [← not_le, invOf_nonneg]

@[simp]
theorem invOf_le_one [Invertible a] (h : 1 ≤ a) : ⅟ a ≤ 1 :=
  mul_invOf_self a ▸ le_mul_of_one_le_left (invOf_nonneg.2 <| zero_le_one.trans h) h

theorem pos_invOf_of_invertible_cast [Nontrivial R] (n : ℕ)
    [Invertible (n : R)] : 0 < ⅟(n : R) :=
  invOf_pos.2 <| Nat.cast_pos.2 <| pos_of_invertible_cast (R := R) n
```
