# Complete source: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant4d092a47eaa09742ba1c55dcc92308ba15ee88380e5267fa0a95afd08c21ffca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7035f846f461d1dce398394ff18ece27c9c8c287` · SHA-256 `54468f3dc52d43ef0bd1c975bf9fc846e514a99a0b7a0444a8da86cc596ae306`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.LeSelfAdd.Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.LeSelfAdd.Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"aea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Monoid/WithTop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Monoid.Unbundled.WithTop
import Mathlib.Algebra.Order.Monoid.Canonical.Defs

/-! # Adjoining top/bottom elements to ordered monoids.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.LeSelfAdd.Variantaea6b9ccfdc1a282044ab06b2c0a8a1cb5fb35f61eb02ec6d0437d3649632a70

universe u

variable {α : Type u}

open Function

namespace WithTop

instance isOrderedAddMonoid [AddCommMonoid α] [PartialOrder α] [IsOrderedAddMonoid α] :
    IsOrderedAddMonoid (WithTop α) where
  add_le_add_left _ _ := add_le_add_left

instance canonicallyOrderedAdd [Add α] [Preorder α] [CanonicallyOrderedAdd α] :
    CanonicallyOrderedAdd (WithTop α) :=
  { WithTop.existsAddOfLE with
    le_self_add := fun a b =>
      match a, b with
      | ⊤, ⊤ => le_rfl
      | (a : α), ⊤ => le_top
      | (a : α), (b : α) => WithTop.coe_le_coe.2 le_self_add
      | ⊤, (b : α) => le_rfl }

end WithTop

namespace WithBot

instance isOrderedAddMonoid [AddCommMonoid α] [PartialOrder α] [IsOrderedAddMonoid α] :
    IsOrderedAddMonoid (WithBot α) :=
  { add_le_add_left := fun _ _ h c => add_le_add_left h c }

protected theorem le_self_add [Add α] [LE α] [CanonicallyOrderedAdd α]
    {x : WithBot α} (hx : x ≠ ⊥) (y : WithBot α) :
    y ≤ y + x := by
  induction x
  · simp at hx
  induction y
  · simp
  · rw [← WithBot.coe_add, WithBot.coe_le_coe]
    exact le_self_add

protected theorem le_add_self [AddCommMagma α] [LE α] [CanonicallyOrderedAdd α]
    {x : WithBot α} (hx : x ≠ ⊥) (y : WithBot α) :
    y ≤ x + y := by
  induction x
  · simp at hx
  induction y
  · simp
  · rw [← WithBot.coe_add, WithBot.coe_le_coe]
    exact le_add_self

end WithBot
```
