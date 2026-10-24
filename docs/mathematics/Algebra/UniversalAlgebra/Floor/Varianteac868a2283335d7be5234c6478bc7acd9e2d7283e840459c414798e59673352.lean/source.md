# Complete source: GRWTSK.Algebra.UniversalAlgebra.Floor.Varianteac868a2283335d7be5234c6478bc7acd9e2d7283e840459c414798e59673352

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a5947232588748353510c440085dc232c7fe322` · SHA-256 `e1a909bb04e64d79ac94ab39b1abdda8cbf6c083f5e80f07712735b78645a9f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.NatFloorCoe.Variantb6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.NatFloorCoe.Variantb6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"b6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Nonneg/Floor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Algebra.Order.Floor.Defs
import Mathlib.Algebra.Order.Nonneg.Basic

/-!
# Nonnegative elements are archimedean

This file defines instances and prove some properties about the nonnegative elements
`{x : α // 0 ≤ x}` of an arbitrary type `α`.

This is used to derive algebraic structures on `ℝ≥0` and `ℚ≥0` automatically.

## Main declarations

* `{x : α // 0 ≤ x}` is a `FloorSemiring` if `α` is.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.NatFloorCoe.Variantb6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c

assert_not_exists Finset LinearOrderedField

namespace Nonneg

variable {α : Type*}

instance floorSemiring [Semiring α] [PartialOrder α] [IsOrderedRing α] [FloorSemiring α] :
    FloorSemiring { r : α // 0 ≤ r } where
  floor a := ⌊(a : α)⌋₊
  ceil a := ⌈(a : α)⌉₊
  floor_of_neg ha := FloorSemiring.floor_of_neg ha
  gc_floor ha := FloorSemiring.gc_floor (Subtype.coe_le_coe.2 ha)
  gc_ceil a n := FloorSemiring.gc_ceil (a : α) n

@[norm_cast]
theorem nat_floor_coe [Semiring α] [PartialOrder α] [IsOrderedRing α] [FloorSemiring α]
    (a : { r : α // 0 ≤ r }) :
    ⌊(a : α)⌋₊ = ⌊a⌋₊ :=
  rfl

@[norm_cast]
theorem nat_ceil_coe [Semiring α] [PartialOrder α] [IsOrderedRing α] [FloorSemiring α]
    (a : { r : α // 0 ≤ r }) :
    ⌈(a : α)⌉₊ = ⌈a⌉₊ :=
  rfl

end Nonneg
```
