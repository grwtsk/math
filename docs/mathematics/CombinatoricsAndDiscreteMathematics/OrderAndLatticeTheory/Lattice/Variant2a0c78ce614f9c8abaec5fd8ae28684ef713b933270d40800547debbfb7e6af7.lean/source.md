# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant2a0c78ce614f9c8abaec5fd8ae28684ef713b933270d40800547debbfb7e6af7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00239e831c09249ea504c7d655859ab537a8ee75` · SHA-256 `1352dba87e153e0741ac914001cce4da7527d277c8d1d1232dac93cd7c5c75e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MulSup.Variant558ef72f814d5a71e09a7204cdac224ca6521abcd44b8dafa275369705d4511c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"558ef72f814d5a71e09a7204cdac224ca6521abcd44b8dafa275369705d4511c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.MulSup.Variant558ef72f814d5a71e09a7204cdac224ca6521abcd44b8dafa275369705d4511c","mathematical_subject":"Algebra.OrderTheory","original_sha256":"558ef72f814d5a71e09a7204cdac224ca6521abcd44b8dafa275369705d4511c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Group/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Christopher Hoskin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christopher Hoskin, Yaël Dillies
-/
module

public import Mathlib.Algebra.Order.Group.OrderIso

/-!
# Lattice ordered groups

Lattice ordered groups were introduced by [Birkhoff][birkhoff1942]. They form the algebraic
underpinnings of vector lattices, Banach lattices, AL-space, AM-space etc.

A lattice ordered group is a type `α` satisfying:
* `Lattice α`
* `CommGroup α`
* `MulLeftMono α`
* `MulRightMono α`

This file establishes basic properties of lattice ordered groups. It is shown that when the group is
commutative, the lattice is distributive. This also holds in the non-commutative case
([Birkhoff][birkhoff1942],[Fuchs][fuchs1963]) but we do not yet have the machinery to establish this
in mathlib.

## References

* [Birkhoff, Lattice-ordered Groups][birkhoff1942]
* [Bourbaki, Algebra II][bourbaki1981]
* [Fuchs, Partially Ordered Algebraic Systems][fuchs1963]
* [Zaanen, Lectures on "Riesz Spaces"][zaanen1966]
* [Banasiak, Banach Lattices in Applications][banasiak]

## Tags

lattice, order, group
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MulSup.Variant558ef72f814d5a71e09a7204cdac224ca6521abcd44b8dafa275369705d4511c

@[expose] public section

variable {α : Type*}

section Group
variable [Lattice α] [Group α]

-- Special case of Bourbaki A.VI.9 (1)
@[to_additive]
lemma mul_sup [MulLeftMono α] (a b c : α) :
    c * (a ⊔ b) = c * a ⊔ c * b :=
  (OrderIso.mulLeft _).map_sup _ _

@[to_additive]
lemma sup_mul [MulRightMono α] (a b c : α) :
    (a ⊔ b) * c = a * c ⊔ b * c :=
  (OrderIso.mulRight _).map_sup _ _

@[to_additive]
lemma mul_inf [MulLeftMono α] (a b c : α) :
    c * (a ⊓ b) = c * a ⊓ c * b :=
  (OrderIso.mulLeft _).map_inf _ _

@[to_additive]
lemma inf_mul [MulRightMono α] (a b c : α) :
    (a ⊓ b) * c = a * c ⊓ b * c :=
  (OrderIso.mulRight _).map_inf _ _

@[to_additive]
lemma sup_div [MulRightMono α] (a b c : α) :
    (a ⊔ b) / c = a / c ⊔ b / c :=
  (OrderIso.divRight _).map_sup _ _

@[to_additive]
lemma inf_div [MulRightMono α] (a b c : α) :
    (a ⊓ b) / c = a / c ⊓ b / c :=
  (OrderIso.divRight _).map_inf _ _

section
variable [MulLeftMono α] [MulRightMono α]

@[to_additive] lemma inv_sup (a b : α) : (a ⊔ b)⁻¹ = a⁻¹ ⊓ b⁻¹ := (OrderIso.inv α).map_sup _ _

@[to_additive] lemma inv_inf (a b : α) : (a ⊓ b)⁻¹ = a⁻¹ ⊔ b⁻¹ := (OrderIso.inv α).map_inf _ _

@[to_additive]
lemma div_sup (a b c : α) : c / (a ⊔ b) = c / a ⊓ c / b := (OrderIso.divLeft c).map_sup _ _

@[to_additive]
lemma div_inf (a b c : α) : c / (a ⊓ b) = c / a ⊔ c / b := (OrderIso.divLeft c).map_inf _ _

-- In fact 0 ≤ n•a implies 0 ≤ a, see L. Fuchs, "Partially ordered algebraic systems"
-- Chapter V, 1.E
-- See also `one_le_pow_iff` for the existing version in linear orders
@[to_additive]
lemma pow_two_semiclosed
    {a : α} (ha : 1 ≤ a ^ 2) : 1 ≤ a := by
  suffices this : (a ⊓ 1) * (a ⊓ 1) = a ⊓ 1 by
    rwa [← inf_eq_right, ← mul_eq_left]
  rw [mul_inf, inf_mul, ← pow_two, mul_one, one_mul, inf_assoc, inf_left_idem, inf_comm,
    inf_assoc, inf_of_le_left ha]

end

end Group

variable [Lattice α] [CommGroup α]

-- Fuchs p67
-- Bourbaki A.VI.10 Prop 7
@[to_additive]
lemma inf_mul_sup [MulLeftMono α] (a b : α) : (a ⊓ b) * (a ⊔ b) = a * b :=
  calc
    (a ⊓ b) * (a ⊔ b) = (a ⊓ b) * (a * b * (b⁻¹ ⊔ a⁻¹)) := by
      rw [mul_sup b⁻¹ a⁻¹ (a * b), mul_inv_cancel_right, mul_inv_cancel_comm]
    _ = (a ⊓ b) * (a * b * (a ⊓ b)⁻¹) := by rw [inv_inf, sup_comm]
    _ = a * b := by rw [mul_comm, inv_mul_cancel_right]

/-- Every lattice ordered commutative group is a distributive lattice. -/
-- Non-comm case needs cancellation law https://ncatlab.org/nlab/show/distributive+lattice
@[to_additive (attr := instance_reducible)
  /-- Every lattice ordered commutative additive group is a distributive lattice -/]
def CommGroup.toDistribLattice (α : Type*) [Lattice α] [CommGroup α]
    [MulLeftMono α] : DistribLattice α where
  le_sup_inf x y z := by
    rw [← mul_le_mul_iff_left (x ⊓ (y ⊓ z)), inf_mul_sup x (y ⊓ z), ← inv_mul_le_iff_le_mul,
      le_inf_iff]
    constructor
    · rw [inv_mul_le_iff_le_mul, ← inf_mul_sup x y]
      exact mul_le_mul' (inf_le_inf_left _ inf_le_left) inf_le_left
    · rw [inv_mul_le_iff_le_mul, ← inf_mul_sup x z]
      exact mul_le_mul' (inf_le_inf_left _ inf_le_right) inf_le_right
```
