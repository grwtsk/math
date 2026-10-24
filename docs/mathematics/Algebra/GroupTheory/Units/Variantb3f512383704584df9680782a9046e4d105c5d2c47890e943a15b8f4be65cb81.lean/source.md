# Complete source: GRWTSK.Algebra.GroupTheory.Units.Variantb3f512383704584df9680782a9046e4d105c5d2c47890e943a15b8f4be65cb81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d675fc2aaad0f2f631dbd43b366fe13b6abe2fdf` · SHA-256 `3014f35f25581e9f4e6aa77148f8bc3ca2e43becd48711ca2ac69b6bf486e1f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ValLeVal.Variantf5c659245e3b6b144ce3451f698cc5a55e4f53a4e5d0a27f00f5c2580c98fe29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5c659245e3b6b144ce3451f698cc5a55e4f53a4e5d0a27f00f5c2580c98fe29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ValLeVal.Variantf5c659245e3b6b144ce3451f698cc5a55e4f53a4e5d0a27f00f5c2580c98fe29","mathematical_subject":"Algebra.Groups","original_sha256":"f5c659245e3b6b144ce3451f698cc5a55e4f53a4e5d0a27f00f5c2580c98fe29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Order/Monoid/Units.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Order.Hom.Basic
import Mathlib.Order.MinMax
import Mathlib.Algebra.Group.Units


namespace GRWTSK.Algebra.GroupTheory.ValLeVal.Variantf5c659245e3b6b144ce3451f698cc5a55e4f53a4e5d0a27f00f5c2580c98fe29

#align_import algebra.order.monoid.units from "leanprover-community/mathlib"@"f1a2caaf51ef593799107fe9a8d5e411599f3996"

/-!
# Units in ordered monoids
-/

set_option autoImplicit true

namespace Units

@[to_additive]
instance [Monoid α] [Preorder α] : Preorder αˣ :=
  Preorder.lift val

@[to_additive (attr := simp, norm_cast)]
theorem val_le_val [Monoid α] [Preorder α] {a b : αˣ} : (a : α) ≤ b ↔ a ≤ b :=
  Iff.rfl
#align units.coe_le_coe Units.val_le_val
#align add_units.coe_le_coe AddUnits.val_le_val

@[to_additive (attr := simp, norm_cast)]
theorem val_lt_val [Monoid α] [Preorder α] {a b : αˣ} : (a : α) < b ↔ a < b :=
  Iff.rfl
#align units.coe_lt_coe Units.val_lt_val
#align add_units.coe_lt_coe AddUnits.val_lt_val

@[to_additive]
instance instPartialOrderUnits [Monoid α] [PartialOrder α] : PartialOrder αˣ :=
  PartialOrder.lift val Units.ext
#align units.partial_order Units.instPartialOrderUnits
#align add_units.partial_order AddUnits.instPartialOrderAddUnits

@[to_additive]
instance [Monoid α] [LinearOrder α] : LinearOrder αˣ :=
  LinearOrder.lift' val Units.ext

/-- `val : αˣ → α` as an order embedding. -/
@[to_additive (attr := simps (config := { fullyApplied := false }))
  "`val : add_units α → α` as an order embedding."]
def orderEmbeddingVal [Monoid α] [LinearOrder α] : αˣ ↪o α :=
  ⟨⟨val, ext⟩, Iff.rfl⟩
#align units.order_embedding_coe Units.orderEmbeddingVal
#align add_units.order_embedding_coe AddUnits.orderEmbeddingVal

@[to_additive (attr := simp, norm_cast)]
theorem max_val [Monoid α] [LinearOrder α] {a b : αˣ} : (max a b).val = max a.val b.val :=
  Monotone.map_max orderEmbeddingVal.monotone
#align units.max_coe Units.max_val
#align add_units.max_coe AddUnits.max_val

@[to_additive (attr := simp, norm_cast)]
theorem min_val [Monoid α] [LinearOrder α] {a b : αˣ} : (min a b).val = min a.val b.val :=
  Monotone.map_min orderEmbeddingVal.monotone
#align units.min_coe Units.min_val
#align add_units.min_coe AddUnits.min_val

end Units
```
