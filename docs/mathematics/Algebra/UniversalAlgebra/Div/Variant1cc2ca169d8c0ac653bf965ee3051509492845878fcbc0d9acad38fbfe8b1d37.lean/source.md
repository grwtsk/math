# Complete source: GRWTSK.Algebra.UniversalAlgebra.Div.Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30f18045c9bd0c81459a670605c94a11c58c7383` · SHA-256 `60aa7346f2362677266078ded4dffb64e81f2e6fa4c429ccf91818c27d4387e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.FloorDiv.Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.FloorDiv.Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Floor/Div.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.GroupWithZero.Action.Pi
public import Mathlib.Algebra.Order.Group.Nat
public import Mathlib.Algebra.Order.Module.Defs
public import Mathlib.Algebra.Order.Sub.Basic
public import Mathlib.Data.Finsupp.SMulWithZero
public import Mathlib.Order.Preorder.Finsupp

/-!
# Flooring, ceiling division

This file defines division rounded up and down.

The setup is an ordered monoid `α` acting on an ordered monoid `β`. If `a : α`, `b : β`, we would
like to be able to "divide" `b` by `a`, namely find `c : β` such that `a • c = b`.
This is of course not always possible, but in some cases at least there is a least `c` such that
`b ≤ a • c` and a greatest `c` such that `a • c ≤ b`. We call the first one the "ceiling division
of `b` by `a`" and the second one the "flooring division of `b` by `a`"

If `α` and `β` are both `ℕ`, then one can check that our flooring and ceiling divisions really are
the floor and ceil of the exact division.
If `α` is `ℕ` and `β` is the functions `ι → ℕ`, then the flooring and ceiling divisions are taken
pointwise.

In order theory terms, those operations are respectively the right and left adjoints to the map
`b ↦ a • b`.

## Main declarations

* `FloorDiv`: Typeclass for the existence of a flooring division, denoted `b ⌊/⌋ a`.
* `CeilDiv`: Typeclass for the existence of a ceiling division, denoted `b ⌈/⌉ a`.

Note in both cases we only allow dividing by positive inputs. We enforce the following junk values:
* `b ⌊/⌋ a = b ⌈/⌉ a = 0` if `a ≤ 0`
* `0 ⌊/⌋ a = 0 ⌈/⌉ a = 0`

## Notation

* `b ⌊/⌋ a` for the flooring division of `b` by `a`
* `b ⌈/⌉ a` for the ceiling division of `b` by `a`

## TODO

* `norm_num` extension
* Prove `⌈a / b⌉ = a ⌈/⌉ b` when `a, b : ℕ`
-/


namespace GRWTSK.Algebra.UniversalAlgebra.FloorDiv.Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285

public section

variable {ι α β : Type*}

section OrderedAddCommMonoid
variable (α β) [AddCommMonoid α] [PartialOrder α] [AddCommMonoid β] [PartialOrder β]
  [SMulZeroClass α β]

/-- Typeclass for division rounded down. For each `a > 0`, this asserts the existence of a right
adjoint to the map `b ↦ a • b : β → β`. -/
class FloorDiv where
  /-- Flooring division. If `a > 0`, then `b ⌊/⌋ a` is the greatest `c` such that `a • c ≤ b`. -/
  floorDiv : β → α → β
  /-- Do not use this. Use `gc_floorDiv_smul` or `gc_floorDiv_mul` instead. -/
  protected floorDiv_gc ⦃a⦄ : 0 < a → GaloisConnection (a • ·) (floorDiv · a)
  /-- Do not use this. Use `floorDiv_nonpos` instead. -/
  protected floorDiv_nonpos ⦃a⦄ : a ≤ 0 → ∀ b, floorDiv b a = 0
  /-- Do not use this. Use `zero_floorDiv` instead. -/
  protected zero_floorDiv (a) : floorDiv 0 a = 0

/-- Typeclass for division rounded up. For each `a > 0`, this asserts the existence of a left
adjoint to the map `b ↦ a • b : β → β`. -/
class CeilDiv where
  /-- Ceiling division. If `a > 0`, then `b ⌈/⌉ a` is the least `c` such that `b ≤ a • c`. -/
  ceilDiv : β → α → β
  /-- Do not use this. Use `gc_smul_ceilDiv` or `gc_mul_ceilDiv` instead. -/
  protected ceilDiv_gc ⦃a⦄ : 0 < a → GaloisConnection (ceilDiv · a) (a • ·)
  /-- Do not use this. Use `ceilDiv_nonpos` instead. -/
  protected ceilDiv_nonpos ⦃a⦄ : a ≤ 0 → ∀ b, ceilDiv b a = 0
  /-- Do not use this. Use `zero_ceilDiv` instead. -/
  protected zero_ceilDiv (a) : ceilDiv 0 a = 0

@[inherit_doc] infixl:70 " ⌊/⌋ " => FloorDiv.floorDiv
@[inherit_doc] infixl:70 " ⌈/⌉ " => CeilDiv.ceilDiv

variable {α β}

section FloorDiv
variable [FloorDiv α β] {a : α} {b c : β}

lemma gc_floorDiv_smul (ha : 0 < a) : GaloisConnection (a • · : β → β) (· ⌊/⌋ a) :=
  FloorDiv.floorDiv_gc ha

@[simp] lemma le_floorDiv_iff_smul_le (ha : 0 < a) : c ≤ b ⌊/⌋ a ↔ a • c ≤ b :=
  (gc_floorDiv_smul ha _ _).symm

@[simp] lemma floorDiv_of_nonpos (ha : a ≤ 0) (b : β) : b ⌊/⌋ a = 0 := FloorDiv.floorDiv_nonpos ha _
lemma floorDiv_zero (b : β) : b ⌊/⌋ (0 : α) = 0 := by simp
@[simp] lemma zero_floorDiv (a : α) : (0 : β) ⌊/⌋ a = 0 := FloorDiv.zero_floorDiv _

lemma smul_floorDiv_le (ha : 0 < a) : a • (b ⌊/⌋ a) ≤ b := (le_floorDiv_iff_smul_le ha).1 le_rfl

end FloorDiv

section CeilDiv
variable [CeilDiv α β] {a : α} {b c : β}

lemma gc_smul_ceilDiv (ha : 0 < a) : GaloisConnection (· ⌈/⌉ a) (a • · : β → β) :=
  CeilDiv.ceilDiv_gc ha

@[simp]
lemma ceilDiv_le_iff_le_smul (ha : 0 < a) : b ⌈/⌉ a ≤ c ↔ b ≤ a • c := gc_smul_ceilDiv ha _ _

@[simp] lemma ceilDiv_of_nonpos (ha : a ≤ 0) (b : β) : b ⌈/⌉ a = 0 := CeilDiv.ceilDiv_nonpos ha _
lemma ceilDiv_zero (b : β) : b ⌈/⌉ (0 : α) = 0 := by simp
@[simp] lemma zero_ceilDiv (a : α) : (0 : β) ⌈/⌉ a = 0 := CeilDiv.zero_ceilDiv _

lemma le_smul_ceilDiv (ha : 0 < a) : b ≤ a • (b ⌈/⌉ a) := (ceilDiv_le_iff_le_smul ha).1 le_rfl

end CeilDiv
end OrderedAddCommMonoid

section LinearOrderedAddCommMonoid
variable [AddCommMonoid α] [LinearOrder α] [AddCommMonoid β] [PartialOrder β] [SMulZeroClass α β]
  [PosSMulReflectLE α β] [FloorDiv α β] [CeilDiv α β] {a : α} {b : β}

lemma floorDiv_le_ceilDiv : b ⌊/⌋ a ≤ b ⌈/⌉ a := by
  obtain ha | ha := le_or_gt a 0
  · simp [ha]
  · exact le_of_smul_le_smul_left ((smul_floorDiv_le ha).trans <| le_smul_ceilDiv ha) ha

end LinearOrderedAddCommMonoid

section OrderedSemiring
variable [Semiring α] [PartialOrder α] [AddCommMonoid β] [PartialOrder β] [MulActionWithZero α β]

section FloorDiv
variable [FloorDiv α β] {a : α}

@[simp] lemma floorDiv_one [IsOrderedRing α] [Nontrivial α] (b : β) : b ⌊/⌋ (1 : α) = b :=
  eq_of_forall_le_iff <| fun c ↦ by simp [zero_lt_one' α]

@[simp] lemma smul_floorDiv [PosSMulMono α β] [PosSMulReflectLE α β] (ha : 0 < a) (b : β) :
    a • b ⌊/⌋ a = b :=
  eq_of_forall_le_iff <| by simp [smul_le_smul_iff_of_pos_left, ha]

end FloorDiv

section CeilDiv
variable [CeilDiv α β] {a : α}

@[simp] lemma ceilDiv_one [IsOrderedRing α] [Nontrivial α] (b : β) : b ⌈/⌉ (1 : α) = b :=
  eq_of_forall_ge_iff <| fun c ↦ by simp [zero_lt_one' α]

@[simp] lemma smul_ceilDiv [PosSMulMono α β] [PosSMulReflectLE α β] (ha : 0 < a) (b : β) :
    a • b ⌈/⌉ a = b :=
  eq_of_forall_ge_iff <| by simp [smul_le_smul_iff_of_pos_left, ha]

end CeilDiv

section FloorDiv
variable [FloorDiv α α] {a b c : α}

lemma gc_floorDiv_mul (ha : 0 < a) : GaloisConnection (a * ·) (· ⌊/⌋ a) := gc_floorDiv_smul ha
lemma le_floorDiv_iff_mul_le (ha : 0 < a) : c ≤ b ⌊/⌋ a ↔ a • c ≤ b := le_floorDiv_iff_smul_le ha

end FloorDiv

section CeilDiv
variable [CeilDiv α α] {a b c : α}

lemma gc_mul_ceilDiv (ha : 0 < a) : GaloisConnection (· ⌈/⌉ a) (a * ·) := gc_smul_ceilDiv ha
lemma ceilDiv_le_iff_le_mul (ha : 0 < a) : b ⌈/⌉ a ≤ c ↔ b ≤ a * c := ceilDiv_le_iff_le_smul ha

end CeilDiv
end OrderedSemiring

namespace Nat

instance instFloorDiv : FloorDiv ℕ ℕ where
  floorDiv := HDiv.hDiv
  floorDiv_gc a ha := by simpa [mul_comm] using Nat.galoisConnection_mul_div ha
  floorDiv_nonpos a ha b := by rw [ha.antisymm <| zero_le _, Nat.div_zero]
  zero_floorDiv := Nat.zero_div

instance instCeilDiv : CeilDiv ℕ ℕ where
  ceilDiv a b := (a + b - 1) / b
  ceilDiv_gc a ha b c := by
    simp [div_le_iff_le_mul_add_pred ha, add_assoc, tsub_add_cancel_of_le <| succ_le_iff.2 ha]
  ceilDiv_nonpos a ha b := by simp_rw [ha.antisymm <| zero_le _, Nat.div_zero]
  zero_ceilDiv a := by cases a <;> simp [Nat.div_eq_zero_iff]

@[simp] lemma floorDiv_eq_div (a b : ℕ) : a ⌊/⌋ b = a / b := rfl
lemma ceilDiv_eq_add_pred_div (a b : ℕ) : a ⌈/⌉ b = (a + b - 1) / b := rfl

end Nat

namespace Pi
variable {π : ι → Type*} [AddCommMonoid α] [PartialOrder α]
  [∀ i, AddCommMonoid (π i)] [∀ i, PartialOrder (π i)]
  [∀ i, SMulZeroClass α (π i)]

section FloorDiv
variable [∀ i, FloorDiv α (π i)]

instance instFloorDiv : FloorDiv α (∀ i, π i) where
  floorDiv f a i := f i ⌊/⌋ a
  floorDiv_gc _a ha _f _g := forall_congr' fun _i ↦ gc_floorDiv_smul ha _ _
  floorDiv_nonpos a ha f := by ext i; exact floorDiv_of_nonpos ha _
  zero_floorDiv a := by ext i; exact zero_floorDiv a

@[push ←]
lemma floorDiv_def (f : ∀ i, π i) (a : α) : f ⌊/⌋ a = fun i ↦ f i ⌊/⌋ a := rfl
@[simp] lemma floorDiv_apply (f : ∀ i, π i) (a : α) (i : ι) : (f ⌊/⌋ a) i = f i ⌊/⌋ a := rfl

end FloorDiv

section CeilDiv
variable [∀ i, CeilDiv α (π i)]

instance instCeilDiv : CeilDiv α (∀ i, π i) where
  ceilDiv f a i := f i ⌈/⌉ a
  ceilDiv_gc _a ha _f _g := forall_congr' fun _i ↦ gc_smul_ceilDiv ha _ _
  ceilDiv_nonpos a ha f := by ext i; exact ceilDiv_of_nonpos ha _
  zero_ceilDiv a := by ext; exact zero_ceilDiv _

lemma ceilDiv_def (f : ∀ i, π i) (a : α) : f ⌈/⌉ a = fun i ↦ f i ⌈/⌉ a := rfl
@[simp] lemma ceilDiv_apply (f : ∀ i, π i) (a : α) (i : ι) : (f ⌈/⌉ a) i = f i ⌈/⌉ a := rfl

end CeilDiv
end Pi

namespace Finsupp
variable [AddCommMonoid α] [PartialOrder α]
  [AddCommMonoid β] [PartialOrder β] [SMulZeroClass α β]

section FloorDiv
variable [FloorDiv α β] {f : ι →₀ β} {a : α}

noncomputable instance instFloorDiv : FloorDiv α (ι →₀ β) where
  floorDiv f a := f.mapRange (· ⌊/⌋ a) <| zero_floorDiv _
  floorDiv_gc _a ha f _g := forall_congr' fun i ↦ by
    simpa only [coe_smul, Pi.smul_apply, mapRange_apply] using gc_floorDiv_smul ha (f i) _
  floorDiv_nonpos a ha f := by ext i; exact floorDiv_of_nonpos ha _
  zero_floorDiv a := by ext; exact zero_floorDiv _

lemma floorDiv_def (f : ι →₀ β) (a : α) : f ⌊/⌋ a = f.mapRange (· ⌊/⌋ a) (zero_floorDiv _) := rfl
set_option warning.simp.otherHead false in
@[norm_cast] lemma coe_floorDiv (f : ι →₀ β) (a : α) : f ⌊/⌋ a = fun i ↦ f i ⌊/⌋ a := rfl
@[simp] lemma floorDiv_apply (f : ι →₀ β) (a : α) (i : ι) : (f ⌊/⌋ a) i = f i ⌊/⌋ a := rfl

lemma support_floorDiv_subset : (f ⌊/⌋ a).support ⊆ f.support := by
  simp +contextual [Finset.subset_iff, not_imp_not]

end FloorDiv

section CeilDiv
variable [CeilDiv α β] {f : ι →₀ β} {a : α}

noncomputable instance instCeilDiv : CeilDiv α (ι →₀ β) where
  ceilDiv f a := f.mapRange (· ⌈/⌉ a) <| zero_ceilDiv _
  ceilDiv_gc _a ha f _g := forall_congr' fun i ↦ by
    simpa only [coe_smul, Pi.smul_apply, mapRange_apply] using gc_smul_ceilDiv ha (f i) _
  ceilDiv_nonpos a ha f := by ext i; exact ceilDiv_of_nonpos ha _
  zero_ceilDiv a := by ext; exact zero_ceilDiv _

lemma ceilDiv_def (f : ι →₀ β) (a : α) : f ⌈/⌉ a = f.mapRange (· ⌈/⌉ a) (zero_ceilDiv _) := rfl
set_option warning.simp.otherHead false in
@[norm_cast] lemma coe_ceilDiv_def (f : ι →₀ β) (a : α) : f ⌈/⌉ a = fun i ↦ f i ⌈/⌉ a := rfl
@[simp] lemma ceilDiv_apply (f : ι →₀ β) (a : α) (i : ι) : (f ⌈/⌉ a) i = f i ⌈/⌉ a := rfl

lemma support_ceilDiv_subset : (f ⌈/⌉ a).support ⊆ f.support := by
  simp +contextual [Finset.subset_iff, not_imp_not]

end CeilDiv
end Finsupp

/-- This is the motivating example. -/
noncomputable example : FloorDiv ℕ (ℕ →₀ ℕ) := inferInstance
```
