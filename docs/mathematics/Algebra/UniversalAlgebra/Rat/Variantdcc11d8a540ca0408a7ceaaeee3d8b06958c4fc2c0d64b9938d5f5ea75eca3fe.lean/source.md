# Complete source: GRWTSK.Algebra.UniversalAlgebra.Rat.Variantdcc11d8a540ca0408a7ceaaeee3d8b06958c4fc2c0d64b9938d5f5ea75eca3fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff95f6f6ff394604666216c0539a8d39ac4eea88` · SHA-256 `ae595e5b7d0dd5e96eae72ddfb4747be44d683cffbd9bd3be4f336a097542116`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Ring.Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Ring.Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"f9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Ring/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Ring.Unbundled.Rat

/-!
# The rational numbers form a linear ordered field

This file constructs the order on `ℚ` and proves that `ℚ` is a discrete, linearly ordered
commutative ring.

`ℚ` is in fact a linearly ordered field, but this fact is located in `Data.Rat.Field` instead of
here because we need the order on `ℚ` to define `ℚ≥0`, which we itself need to define `Field`.

## Tags

rat, rationals, field, ℚ, numerator, denominator, num, denom, order, ordering
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Ring.Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a

assert_not_exists Field Finset Set.Icc GaloisConnection

namespace Rat

instance instIsOrderedAddMonoid : IsOrderedAddMonoid ℚ where
  add_le_add_left := fun _ _ ab _ => Rat.add_le_add_left.2 ab

instance instZeroLEOneClass : ZeroLEOneClass ℚ where
  zero_le_one := by decide

instance instIsStrictOrderedRing : IsStrictOrderedRing ℚ := .of_mul_pos fun _ _ ha hb ↦
  (Rat.mul_nonneg ha.le hb.le).lt_of_ne' (mul_ne_zero ha.ne' hb.ne')

end Rat
```
