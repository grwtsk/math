# Complete source: GRWTSK.Algebra.UniversalAlgebra.Units.Variant2d50340ecaac396308f25a2b297beaad25fcc36729e3330f258fc13228ad42d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a86a0fe395a4cb12086c455b6d8bf3054431c96` · SHA-256 `7d3c60eeb9e4f00f4c8a885b9b1315f41f3d9ecc1684c0c59815c2d8113511fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Monoid.Variantd9d012a0659aebcf4cf3d1451fb3caf88b777e3bf774023704d89b20b481a0fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9d012a0659aebcf4cf3d1451fb3caf88b777e3bf774023704d89b20b481a0fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Monoid.Variantd9d012a0659aebcf4cf3d1451fb3caf88b777e3bf774023704d89b20b481a0fb","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"d9d012a0659aebcf4cf3d1451fb3caf88b777e3bf774023704d89b20b481a0fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Group/Units.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Units

/-!
# The units of an ordered commutative monoid form an ordered commutative group
-/



namespace GRWTSK.Algebra.UniversalAlgebra.Monoid.Variantd9d012a0659aebcf4cf3d1451fb3caf88b777e3bf774023704d89b20b481a0fb

variable {α : Type*}

/-- The units of an ordered commutative monoid form an ordered commutative group. -/
@[to_additive
      "The units of an ordered commutative additive monoid form an ordered commutative
      additive group."]
instance Units.isOrderedMonoid [CommMonoid α] [PartialOrder α] [IsOrderedMonoid α] :
    IsOrderedMonoid αˣ :=
  { mul_le_mul_left := fun _ _ h _ => (mul_le_mul_left' (α := α) h _) }
```
