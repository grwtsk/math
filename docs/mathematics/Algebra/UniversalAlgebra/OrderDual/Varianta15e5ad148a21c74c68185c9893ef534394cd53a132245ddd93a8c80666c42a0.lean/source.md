# Complete source: GRWTSK.Algebra.UniversalAlgebra.OrderDual.Varianta15e5ad148a21c74c68185c9893ef534394cd53a132245ddd93a8c80666c42a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e444f2a3aa9f53fb189c931e7e267eaea4df921` · SHA-256 `e6ef31be272e837998ae2a40a8426457e2021f441a4b00a9ff27d389f2ad15a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Synonym.Variantc945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Synonym.Variantc945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"c945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Monoid/OrderDual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Group.Synonym
import Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual
import Mathlib.Algebra.Order.Monoid.Defs

/-! # Ordered monoid structures on the order dual. -/


namespace GRWTSK.Algebra.UniversalAlgebra.Synonym.Variantc945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f

universe u

variable {α : Type u}

open Function

namespace OrderDual

@[to_additive]
instance isOrderedMonoid [CommMonoid α] [PartialOrder α] [IsOrderedMonoid α] :
    IsOrderedMonoid αᵒᵈ :=
  { mul_le_mul_left := fun _ _ h c => mul_le_mul_left' h c }

@[to_additive]
instance isOrderedCancelMonoid [CommMonoid α] [PartialOrder α] [IsOrderedCancelMonoid α] :
    IsOrderedCancelMonoid αᵒᵈ :=
  { le_of_mul_le_mul_left := fun _ _ _ : α => le_of_mul_le_mul_left' }

end OrderDual
```
