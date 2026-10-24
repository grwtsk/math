# Complete source: GRWTSK.Algebra.GroupTheory.Center.Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ab1aae8665eb9138ece4f2abcf2bae8e1079211` · SHA-256 `5cbeecf9aa909f0acd4e80c916a82daef3c0911fe213b5d057187a98227332d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Center.Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Center.Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342","mathematical_subject":"Algebra.Groups","original_sha256":"531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/GroupTheory/Submonoid/Center.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.GroupTheory.Submonoid.Operations
import Mathlib.GroupTheory.Subsemigroup.Center


namespace GRWTSK.Algebra.GroupTheory.Center.Variant531a075954c286d0c6499bbc5353d61a93c02c9260d79398a89c023d0299a342

#align_import group_theory.submonoid.center from "leanprover-community/mathlib"@"6cb77a8eaff0ddd100e87b1591c6d3ad319514ff"

/-!
# Centers of monoids

## Main definitions

* `Submonoid.center`: the center of a monoid
* `AddSubmonoid.center`: the center of an additive monoid

We provide `Subgroup.center`, `AddSubgroup.center`, `Subsemiring.center`, and `Subring.center` in
other files.
-/


namespace Submonoid

section

variable (M : Type*) [Monoid M]

/-- The center of a monoid `M` is the set of elements that commute with everything in `M` -/
@[to_additive
      "The center of a monoid `M` is the set of elements that commute with everything in `M`"]
def center : Submonoid M where
  carrier := Set.center M
  one_mem' := Set.one_mem_center M
  mul_mem' := Set.mul_mem_center
#align submonoid.center Submonoid.center
#align add_submonoid.center AddSubmonoid.center

@[to_additive]
theorem coe_center : ↑(center M) = Set.center M :=
  rfl
#align submonoid.coe_center Submonoid.coe_center
#align add_submonoid.coe_center AddSubmonoid.coe_center

@[to_additive (attr := simp) AddSubmonoid.center_toAddSubsemigroup]
theorem center_toSubsemigroup : (center M).toSubsemigroup = Subsemigroup.center M :=
  rfl
#align submonoid.center_to_subsemigroup Submonoid.center_toSubsemigroup

variable {M}

@[to_additive]
theorem mem_center_iff {z : M} : z ∈ center M ↔ ∀ g, g * z = z * g :=
  Iff.rfl
#align submonoid.mem_center_iff Submonoid.mem_center_iff
#align add_submonoid.mem_center_iff AddSubmonoid.mem_center_iff

@[to_additive]
instance decidableMemCenter (a) [Decidable <| ∀ b : M, b * a = a * b] : Decidable (a ∈ center M) :=
  decidable_of_iff' _ mem_center_iff
#align submonoid.decidable_mem_center Submonoid.decidableMemCenter
#align add_submonoid.decidable_mem_center AddSubmonoid.decidableMemCenter

/-- The center of a monoid is commutative. -/
instance center.commMonoid : CommMonoid (center M) :=
  { (center M).toMonoid with
    mul_comm := fun _ b => Subtype.ext <| b.prop _ }

/-- The center of a monoid acts commutatively on that monoid. -/
instance center.smulCommClass_left : SMulCommClass (center M) M M
    where smul_comm m x y := (Commute.left_comm (m.prop x) y).symm
#align submonoid.center.smul_comm_class_left Submonoid.center.smulCommClass_left

/-- The center of a monoid acts commutatively on that monoid. -/
instance center.smulCommClass_right : SMulCommClass M (center M) M :=
  SMulCommClass.symm _ _ _
#align submonoid.center.smul_comm_class_right Submonoid.center.smulCommClass_right

/-! Note that `smulCommClass (center M) (center M) M` is already implied by
`Submonoid.smulCommClass_right` -/

example : SMulCommClass (center M) (center M) M := by infer_instance

end

section

variable (M : Type*) [CommMonoid M]

@[simp]
theorem center_eq_top : center M = ⊤ :=
  SetLike.coe_injective (Set.center_eq_univ M)
#align submonoid.center_eq_top Submonoid.center_eq_top

end

end Submonoid

variable (M)

/-- For a monoid, the units of the center inject into the center of the units. This is not an
equivalence in general; one case when it is is for groups with zero, which is covered in
`centerUnitsEquivUnitsCenter`. -/
@[to_additive (attr := simps! apply_coe_val)
  "For an additive monoid, the units of the center inject into the center of the units."]
def unitsCenterToCenterUnits [Monoid M] : (Submonoid.center M)ˣ →* Submonoid.center (Mˣ) :=
  (Units.map (Submonoid.center M).subtype).codRestrict _ <| fun u r ↦ Units.ext <| u.1.prop r

@[to_additive]
theorem unitsCenterToCenterUnits_injective [Monoid M] :
    Function.Injective (unitsCenterToCenterUnits M) :=
  fun _a _b h => Units.ext <| Subtype.ext <| congr_arg (Units.val ∘ Subtype.val) h

-- Guard against import creep
assert_not_exists Finset
```
