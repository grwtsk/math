# Complete source: GRWTSK.Algebra.GroupTheory.Submonoid.Variant4b1480b106d2f658375334b763e5e82392fde4cee207573fe13e8944aba8c7b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0eb434fe81648b5056d63f3958d7b163b87d817` · SHA-256 `35dc7f07f07bee322c038702402cbc99ed2786f1737a44fe4c65d9051723411f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.OneLE.Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.OneLE.Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f","mathematical_subject":"Algebra.Groups","original_sha256":"b321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Monoid/Submonoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.Order.Monoid.Basic
import Mathlib.Order.Interval.Set.Defs

/-!
# Ordered instances on submonoids
-/


namespace GRWTSK.Algebra.GroupTheory.OneLE.Variantb321932e31ba132a81965ebad52c9d99018b727e90fa3e0111cbe92bd451e35f

assert_not_exists MonoidWithZero

namespace SubmonoidClass
variable {M S : Type*} [SetLike S M]

-- Prefer subclasses of `Monoid` over subclasses of `SubmonoidClass`.
/-- A submonoid of an ordered monoid is an ordered monoid. -/
@[to_additive "An `AddSubmonoid` of an ordered additive monoid is an ordered additive monoid."]
instance (priority := 75) toIsOrderedMonoid [CommMonoid M] [PartialOrder M] [IsOrderedMonoid M]
    [SubmonoidClass S M] (s : S) : IsOrderedMonoid s :=
  Subtype.coe_injective.isOrderedMonoid Subtype.val rfl (fun _ _ => rfl) fun _ _ => rfl

-- Prefer subclasses of `Monoid` over subclasses of `SubmonoidClass`.
/-- A submonoid of an ordered cancellative monoid is an ordered cancellative monoid. -/
@[to_additive AddSubmonoidClass.toIsOrderedCancelAddMonoid
      "An `AddSubmonoid` of an ordered cancellative additive monoid is an ordered cancellative
      additive monoid."]
instance (priority := 75) toIsOrderedCancelMonoid
    [CommMonoid M] [PartialOrder M] [IsOrderedCancelMonoid M]
    [SubmonoidClass S M] (s : S) : IsOrderedCancelMonoid s :=
  Subtype.coe_injective.isOrderedCancelMonoid Subtype.val rfl (fun _ _ => rfl) fun _ _ => rfl


end SubmonoidClass

namespace Submonoid
variable {M : Type*}

/-- A submonoid of an ordered monoid is an ordered monoid. -/
@[to_additive "An `AddSubmonoid` of an ordered additive monoid is an ordered additive monoid."]
instance toIsOrderedMonoid [CommMonoid M] [PartialOrder M] [IsOrderedMonoid M]
    (S : Submonoid M) : IsOrderedMonoid S :=
  Subtype.coe_injective.isOrderedMonoid Subtype.val rfl (fun _ _ => rfl) fun _ _ => rfl

/-- A submonoid of an ordered cancellative monoid is an ordered cancellative monoid. -/
@[to_additive AddSubmonoid.toIsOrderedCancelAddMonoid
      "An `AddSubmonoid` of an ordered cancellative additive monoid is an ordered cancellative
      additive monoid."]
instance toIsOrderedCancelMonoid [CommMonoid M] [PartialOrder M] [IsOrderedCancelMonoid M]
    (S : Submonoid M) : IsOrderedCancelMonoid S :=
  Subtype.coe_injective.isOrderedCancelMonoid Subtype.val rfl (fun _ _ => rfl) fun _ _ => rfl

section Preorder
variable (M)
variable [Monoid M] [Preorder M] [MulLeftMono M] {a : M}

/-- The submonoid of elements that are at least `1`. -/
@[to_additive (attr := simps) "The submonoid of nonnegative elements."]
def oneLE : Submonoid M where
  carrier := Set.Ici 1
  mul_mem' := one_le_mul
  one_mem' := le_rfl

variable {M}

@[to_additive (attr := simp)] lemma mem_oneLE : a ∈ oneLE M ↔ 1 ≤ a := Iff.rfl

end Preorder
end Submonoid
```
