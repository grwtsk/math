# Complete source: GRWTSK.Algebra.Field.Variant16f8056b0b0afc8c6e182bd7128e2c5bb5b71a880719546b16438d0be8c6da3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bef6dc7319d019e5b006b010881f107bf451ade0` · SHA-256 `91ddc135e381fc07f1817a06917487c80899f877fcf95b944b1a53573233ec99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsFieldCenter.Variant82b6d4bf12ce2022de6814f2b14ea1391928f750cb79a1da0f8376a14b6d4317","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82b6d4bf12ce2022de6814f2b14ea1391928f750cb79a1da0f8376a14b6d4317","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsFieldCenter.Variant82b6d4bf12ce2022de6814f2b14ea1391928f750cb79a1da0f8376a14b6d4317","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"82b6d4bf12ce2022de6814f2b14ea1391928f750cb79a1da0f8376a14b6d4317","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/SimpleRing/Field.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/

import Mathlib.RingTheory.SimpleRing.Basic
import Mathlib.Algebra.Ring.Subring.Basic
import Mathlib.Algebra.Field.Equiv

/-!
# Simple ring and fields

## Main results
- `IsSimpleRing.center_isField`: the center of a simple ring is a field.
- `isSimpleRing_iff_isField`: a commutative ring is simple if and only if it is a field.

-/


namespace GRWTSK.Algebra.IsFieldCenter.Variant82b6d4bf12ce2022de6814f2b14ea1391928f750cb79a1da0f8376a14b6d4317

namespace IsSimpleRing

open TwoSidedIdeal in
lemma isField_center (A : Type*) [Ring A] [IsSimpleRing A] : IsField (Subring.center A) where
  exists_pair_ne := ⟨0, 1, zero_ne_one⟩
  mul_comm := mul_comm
  mul_inv_cancel := by
    rintro ⟨x, hx1⟩ hx2
    rw [Subring.mem_center_iff] at hx1
    replace hx2 : x ≠ 0 := by simpa [Subtype.ext_iff] using hx2
    -- Todo: golf the following `let` once `TwoSidedIdeal.span` is defined
    let I := TwoSidedIdeal.mk' (Set.range (x * ·)) ⟨0, by simp⟩
      (by rintro _ _ ⟨x, rfl⟩ ⟨y, rfl⟩; exact ⟨x + y, mul_add _ _ _⟩)
      (by rintro _ ⟨x, rfl⟩; exact ⟨-x, by simp⟩)
      (by rintro a _ ⟨c, rfl⟩; exact ⟨a * c, by dsimp; rw [← mul_assoc, ← hx1, mul_assoc]⟩)
      (by rintro _ b ⟨a, rfl⟩; exact ⟨a * b, by dsimp; rw [← mul_assoc, ← hx1, mul_assoc]⟩)
    have mem : 1 ∈ I := one_mem_of_ne_zero_mem I hx2 (by simpa [I, mem_mk'] using ⟨1, by simp⟩)
    simp only [TwoSidedIdeal.mem_mk', Set.mem_range, I] at mem
    obtain ⟨y, hy⟩ := mem
    refine ⟨⟨y, Subring.mem_center_iff.2 fun a ↦ ?_⟩, by ext; exact hy⟩
    calc a * y
      _ = (x * y) * a * y := by rw [hy, one_mul]
      _ = (y * x) * a * y := by rw [hx1]
      _ = y * (x * a) * y := by rw [mul_assoc y x a]
      _ = y * (a * x) * y := by rw [hx1]
      _ = y * ((a * x) * y) := by rw [mul_assoc]
      _ = y * (a * (x * y)) := by rw [mul_assoc a x y]
      _ = y * a := by rw [hy, mul_one]

end IsSimpleRing

lemma isSimpleRing_iff_isField (A : Type*) [CommRing A] : IsSimpleRing A ↔ IsField A :=
  ⟨fun _ ↦ Subring.topEquiv.symm.toMulEquiv.isField _ <| by
    rw [← Subring.center_eq_top A]; exact IsSimpleRing.isField_center A,
    fun h ↦ letI := h.toField; inferInstance⟩
```
