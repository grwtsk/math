# Complete source: GRWTSK.Algebra.UniversalAlgebra.TypeTags.Variantfb082c3d657d97a9ecd8466497c3ce1f0b88b9dc2177665de75a34c24bbf6e3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0b2d5ef6548ed20e802e102563adb6edc8fe8b1` · SHA-256 `5c3a7aef6ebb7bd2b6dac8cfd2c2761565f9c660cad4c84b6e2dad9bb6f790a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.TypeTags.Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.TypeTags.Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"ae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Monoid/TypeTags.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Monoid.Unbundled.TypeTags
import Mathlib.Algebra.Order.Monoid.Canonical.Defs

/-! # Bundled ordered monoid structures on `Multiplicative α` and `Additive α`. -/


namespace GRWTSK.Algebra.UniversalAlgebra.TypeTags.Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2

variable {α : Type*}

instance Multiplicative.isOrderedMonoid [AddCommMonoid α] [PartialOrder α] [IsOrderedAddMonoid α] :
    IsOrderedMonoid (Multiplicative α) :=
  { mul_le_mul_left := @IsOrderedAddMonoid.add_le_add_left α _ _ _ }

instance Additive.isOrderedAddMonoid [CommMonoid α] [PartialOrder α] [IsOrderedMonoid α] :
    IsOrderedAddMonoid (Additive α) :=
  { add_le_add_left := @IsOrderedMonoid.mul_le_mul_left α _ _ _ }

instance Multiplicative.isOrderedCancelMonoid
    [AddCommMonoid α] [PartialOrder α] [IsOrderedCancelAddMonoid α] :
    IsOrderedCancelMonoid (Multiplicative α) :=
  { le_of_mul_le_mul_left := @IsOrderedCancelAddMonoid.le_of_add_le_add_left α _ _ _ }

instance Additive.isOrderedCancelAddMonoid
    [CommMonoid α] [PartialOrder α] [IsOrderedCancelMonoid α] :
    IsOrderedCancelAddMonoid (Additive α) :=
  { le_of_add_le_add_left := @IsOrderedCancelMonoid.le_of_mul_le_mul_left α _ _ _ }

instance Multiplicative.canonicallyOrderedMul
    [AddMonoid α] [PartialOrder α] [CanonicallyOrderedAdd α] :
    CanonicallyOrderedMul (Multiplicative α) where
  le_self_mul _ _ := le_self_add (α := α)

instance Additive.canonicallyOrderedAdd
    [Monoid α] [PartialOrder α] [CanonicallyOrderedMul α] :
    CanonicallyOrderedAdd (Additive α) where
  le_self_add _ _ := le_self_mul (α := α)
```
