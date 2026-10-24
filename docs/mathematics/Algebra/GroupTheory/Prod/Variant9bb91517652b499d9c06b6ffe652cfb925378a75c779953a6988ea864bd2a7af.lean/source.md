# Complete source: GRWTSK.Algebra.GroupTheory.Prod.Variant9bb91517652b499d9c06b6ffe652cfb925378a75c779953a6988ea864bd2a7af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0219baf639356e6a97c6db8c96288c3c3a502320` · SHA-256 `7e6a7c56062c39a8ee9f24949f9c8f16b8add1731e3c2b11b99a8f32f396444a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MulMonoidWithZeroHom.Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MulMonoidWithZeroHom.Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44","mathematical_subject":"Algebra.Groups","original_sha256":"b1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser, Yaël Dillies
-/
import Mathlib.Algebra.Group.Prod
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.GroupWithZero.Units.Basic

/-!
# Products of monoids with zero, groups with zero

In this file we define `MonoidWithZero`, `GroupWithZero`, etc... instances for `M₀ × N₀`.

## Main declarations

* `mulMonoidWithZeroHom`: Multiplication bundled as a monoid with zero homomorphism.
* `divMonoidWithZeroHom`: Division bundled as a monoid with zero homomorphism.
-/


namespace GRWTSK.Algebra.GroupTheory.MulMonoidWithZeroHom.Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44

assert_not_exists DenselyOrdered Ring

variable {M₀ N₀ : Type*}

namespace Prod

instance instMulZeroClass [MulZeroClass M₀] [MulZeroClass N₀] : MulZeroClass (M₀ × N₀) where
  zero_mul := by simp [Prod.mul_def]
  mul_zero := by simp [Prod.mul_def]

instance instSemigroupWithZero [SemigroupWithZero M₀] [SemigroupWithZero N₀] :
    SemigroupWithZero (M₀ × N₀) where
  zero_mul := by simp [Prod.mul_def]
  mul_zero := by simp [Prod.mul_def]

instance instMulZeroOneClass [MulZeroOneClass M₀] [MulZeroOneClass N₀] :
    MulZeroOneClass (M₀ × N₀) where
  zero_mul := by simp [Prod.mul_def]
  mul_zero := by simp [Prod.mul_def]

instance instMonoidWithZero [MonoidWithZero M₀] [MonoidWithZero N₀] : MonoidWithZero (M₀ × N₀) where
  zero_mul := by simp [Prod.mul_def]
  mul_zero := by simp [Prod.mul_def]

instance instCommMonoidWithZero [CommMonoidWithZero M₀] [CommMonoidWithZero N₀] :
    CommMonoidWithZero (M₀ × N₀) where
  zero_mul := by simp [Prod.mul_def]
  mul_zero := by simp [Prod.mul_def]

end Prod

/-! ### Multiplication and division as homomorphisms -/

section BundledMulDiv

/-- Multiplication as a multiplicative homomorphism with zero. -/
@[simps]
def mulMonoidWithZeroHom [CommMonoidWithZero M₀] : M₀ × M₀ →*₀ M₀ where
  __ := mulMonoidHom
  map_zero' := mul_zero _

/-- Division as a multiplicative homomorphism with zero. -/
@[simps]
def divMonoidWithZeroHom [CommGroupWithZero M₀] : M₀ × M₀ →*₀ M₀ where
  __ := divMonoidHom
  map_zero' := zero_div _

end BundledMulDiv
```
