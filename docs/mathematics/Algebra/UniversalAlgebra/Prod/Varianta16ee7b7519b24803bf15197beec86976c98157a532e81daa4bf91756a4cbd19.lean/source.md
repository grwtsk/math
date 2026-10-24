# Complete source: GRWTSK.Algebra.UniversalAlgebra.Prod.Varianta16ee7b7519b24803bf15197beec86976c98157a532e81daa4bf91756a4cbd19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd9baed1680692164e181da9db54ae0477703714` · SHA-256 `869271db49f20a0a386e5ee09fda293fbdaf83e72f1c3f0fdd8dc5e1f6fb3d56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Prod.Variantefacc0cb645d67c9076ca0d113adc560ba8b11494bbe5a56c19a11981d97247a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"efacc0cb645d67c9076ca0d113adc560ba8b11494bbe5a56c19a11981d97247a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Prod.Variantefacc0cb645d67c9076ca0d113adc560ba8b11494bbe5a56c19a11981d97247a","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"efacc0cb645d67c9076ca0d113adc560ba8b11494bbe5a56c19a11981d97247a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Ring/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Monoid.Prod
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Prod

/-!
# Products of ordered rings
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Prod.Variantefacc0cb645d67c9076ca0d113adc560ba8b11494bbe5a56c19a11981d97247a

variable {α β : Type*}

instance [Semiring α] [PartialOrder α] [IsOrderedRing α]
    [Semiring β] [PartialOrder β] [IsOrderedRing β] : IsOrderedRing (α × β) :=
  { zero_le_one := ⟨zero_le_one, zero_le_one⟩
    mul_le_mul_of_nonneg_left := fun _ _ _ hab hc =>
      ⟨mul_le_mul_of_nonneg_left hab.1 hc.1, mul_le_mul_of_nonneg_left hab.2 hc.2⟩
    mul_le_mul_of_nonneg_right := fun _ _ _ hab hc =>
      ⟨mul_le_mul_of_nonneg_right hab.1 hc.1, mul_le_mul_of_nonneg_right hab.2 hc.2⟩ }
```
