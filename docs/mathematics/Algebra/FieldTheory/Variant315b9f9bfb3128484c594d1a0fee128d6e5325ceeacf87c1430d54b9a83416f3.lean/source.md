# Complete source: GRWTSK.Algebra.Field.Variant315b9f9bfb3128484c594d1a0fee128d6e5325ceeacf87c1430d54b9a83416f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83255154118d236f391cccd25047cceabcc10d9e` · SHA-256 `028391356f98842d1c99a8ab03cd2972a899a8d2f748b00e20fe9527149e6dee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CoeInv.Variantaf7c9475ff3eeaaa1db63797e8a8056a25f9a2a03792fae7543e7ecd4c1353d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af7c9475ff3eeaaa1db63797e8a8056a25f9a2a03792fae7543e7ecd4c1353d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CoeInv.Variantaf7c9475ff3eeaaa1db63797e8a8056a25f9a2a03792fae7543e7ecd4c1353d3","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"af7c9475ff3eeaaa1db63797e8a8056a25f9a2a03792fae7543e7ecd4c1353d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Positive/Field.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Order.Positive.Ring

/-!
# Algebraic structures on the set of positive numbers

In this file we prove that the set of positive elements of a linear ordered field is a linear
ordered commutative group.
-/



namespace GRWTSK.Algebra.CoeInv.Variantaf7c9475ff3eeaaa1db63797e8a8056a25f9a2a03792fae7543e7ecd4c1353d3

variable {K : Type*} [Field K] [LinearOrder K] [IsStrictOrderedRing K]

namespace Positive

instance Subtype.inv : Inv { x : K // 0 < x } := ⟨fun x => ⟨x⁻¹, inv_pos.2 x.2⟩⟩

@[simp]
theorem coe_inv (x : { x : K // 0 < x }) : ↑x⁻¹ = (x⁻¹ : K) :=
  rfl

instance : Pow { x : K // 0 < x } ℤ :=
  ⟨fun x n => ⟨(x : K) ^ n, zpow_pos x.2 _⟩⟩

@[simp]
theorem coe_zpow (x : { x : K // 0 < x }) (n : ℤ) : ↑(x ^ n) = (x : K) ^ n :=
  rfl

instance : CommGroup { x : K // 0 < x } :=
  { Positive.commMonoid with
    inv_mul_cancel := fun a => Subtype.ext <| inv_mul_cancel₀ a.2.ne' }

end Positive
```
