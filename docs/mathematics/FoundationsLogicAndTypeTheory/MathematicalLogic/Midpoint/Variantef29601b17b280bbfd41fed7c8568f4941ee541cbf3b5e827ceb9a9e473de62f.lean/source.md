# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Midpoint.Variantef29601b17b280bbfd41fed7c8568f4941ee541cbf3b5e827ceb9a9e473de62f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `495a5d4d9d76f7a0b378188e8e2b479ecdf2e5de` · SHA-256 `26fe78beef3a90766d894671c02bf8fb7807a32319470786a9ac46bac1b2e0af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Midpoint.Variant258766f8f9af7ccca0ac07e60c85f66a003b39e85ef248016c24be1211a0f4f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"258766f8f9af7ccca0ac07e60c85f66a003b39e85ef248016c24be1211a0f4f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Midpoint.Variant258766f8f9af7ccca0ac07e60c85f66a003b39e85ef248016c24be1211a0f4f0","mathematical_subject":"Logic.Foundations","original_sha256":"258766f8f9af7ccca0ac07e60c85f66a003b39e85ef248016c24be1211a0f4f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/AffineSpace/Midpoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Algebra.Module.Basic
public import Mathlib.LinearAlgebra.AffineSpace.AffineEquiv

/-!
# Midpoint of a segment

## Main definitions

* `midpoint R x y`: midpoint of the segment `[x, y]`. We define it for `x` and `y`
  in a module over a ring `R` with invertible `2`.
* `AddMonoidHom.ofMapMidpoint`: construct an `AddMonoidHom` given a map `f` such that
  `f` sends zero to zero and midpoints to midpoints.

## Main theorems

* `midpoint_eq_iff`: `z` is the midpoint of `[x, y]` if and only if `x + y = z + z`,
* `midpoint_unique`: `midpoint R x y` does not depend on `R`;
* `midpoint x y` is linear both in `x` and `y`;
* `pointReflection_midpoint_left`, `pointReflection_midpoint_right`:
  `Equiv.pointReflection (midpoint R x y)` swaps `x` and `y`.

We do not mark most lemmas as `@[simp]` because it is hard to tell which side is simpler.

## Tags

midpoint, AddMonoidHom
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Midpoint.Variant258766f8f9af7ccca0ac07e60c85f66a003b39e85ef248016c24be1211a0f4f0

@[expose] public section

open AffineMap AffineEquiv

section

variable (R : Type*) {V V' P P' : Type*} [Ring R] [Invertible (2 : R)] [AddCommGroup V]
  [Module R V] [AddTorsor V P] [AddCommGroup V'] [Module R V'] [AddTorsor V' P']

/-- `midpoint x y` is the midpoint of the segment `[x, y]`. -/
def midpoint (x y : P) : P :=
  lineMap x y (⅟2 : R)

variable {R} {x y z : P}

@[simp]
theorem AffineMap.map_midpoint (f : P →ᵃ[R] P') (a b : P) :
    f (midpoint R a b) = midpoint R (f a) (f b) :=
  f.apply_lineMap a b _

@[simp]
theorem AffineEquiv.map_midpoint (f : P ≃ᵃ[R] P') (a b : P) :
    f (midpoint R a b) = midpoint R (f a) (f b) :=
  f.apply_lineMap a b _

theorem AffineEquiv.pointReflection_midpoint_left (x y : P) :
    pointReflection R (midpoint R x y) x = y := by
  rw [midpoint, pointReflection_apply, lineMap_apply, vadd_vsub, vadd_vadd, ← add_smul, ← two_mul,
    mul_invOf_self, one_smul, vsub_vadd]

@[simp]
theorem Equiv.pointReflection_midpoint_left (x y : P) :
    (Equiv.pointReflection (midpoint R x y)) x = y := by
  rw [midpoint, pointReflection_apply, lineMap_apply, vadd_vsub, vadd_vadd, ← add_smul, ← two_mul,
    mul_invOf_self, one_smul, vsub_vadd]

theorem midpoint_comm (x y : P) : midpoint R x y = midpoint R y x := by
  rw [midpoint, ← lineMap_apply_one_sub, one_sub_invOf_two, midpoint]

theorem AffineEquiv.pointReflection_midpoint_right (x y : P) :
    pointReflection R (midpoint R x y) y = x := by
  rw [midpoint_comm, AffineEquiv.pointReflection_midpoint_left]

@[simp]
theorem Equiv.pointReflection_midpoint_right (x y : P) :
    (Equiv.pointReflection (midpoint R x y)) y = x := by
  rw [midpoint_comm, Equiv.pointReflection_midpoint_left]

theorem midpoint_vsub_midpoint (p₁ p₂ p₃ p₄ : P) :
    midpoint R p₁ p₂ -ᵥ midpoint R p₃ p₄ = midpoint R (p₁ -ᵥ p₃) (p₂ -ᵥ p₄) :=
  lineMap_vsub_lineMap _ _ _ _ _

theorem midpoint_vadd_midpoint (v v' : V) (p p' : P) :
    midpoint R v v' +ᵥ midpoint R p p' = midpoint R (v +ᵥ p) (v' +ᵥ p') :=
  lineMap_vadd_lineMap _ _ _ _ _

theorem midpoint_eq_iff {x y z : P} : midpoint R x y = z ↔ pointReflection R z x = y :=
  eq_comm.trans
    ((injective_pointReflection_left_of_module R x).eq_iff'
        (AffineEquiv.pointReflection_midpoint_left x y)).symm

@[simp]
theorem midpoint_pointReflection_left (x y : P) :
    midpoint R (Equiv.pointReflection x y) y = x :=
  midpoint_eq_iff.2 <| Equiv.pointReflection_involutive _ _

@[simp]
theorem midpoint_pointReflection_right (x y : P) :
    midpoint R y (Equiv.pointReflection x y) = x :=
  midpoint_eq_iff.2 rfl

nonrec lemma AffineEquiv.midpoint_pointReflection_left (x y : P) :
    midpoint R (pointReflection R x y) y = x :=
  midpoint_pointReflection_left x y

nonrec lemma AffineEquiv.midpoint_pointReflection_right (x y : P) :
    midpoint R y (pointReflection R x y) = x :=
  midpoint_pointReflection_right x y

@[simp]
theorem midpoint_vsub_left (p₁ p₂ : P) : midpoint R p₁ p₂ -ᵥ p₁ = (⅟2 : R) • (p₂ -ᵥ p₁) :=
  lineMap_vsub_left _ _ _

@[simp]
theorem midpoint_vsub_right (p₁ p₂ : P) : midpoint R p₁ p₂ -ᵥ p₂ = (⅟2 : R) • (p₁ -ᵥ p₂) := by
  rw [midpoint_comm, midpoint_vsub_left]

@[simp]
theorem left_vsub_midpoint (p₁ p₂ : P) : p₁ -ᵥ midpoint R p₁ p₂ = (⅟2 : R) • (p₁ -ᵥ p₂) :=
  left_vsub_lineMap _ _ _

@[simp]
theorem right_vsub_midpoint (p₁ p₂ : P) : p₂ -ᵥ midpoint R p₁ p₂ = (⅟2 : R) • (p₂ -ᵥ p₁) := by
  rw [midpoint_comm, left_vsub_midpoint]

theorem midpoint_vsub (p₁ p₂ p : P) :
    midpoint R p₁ p₂ -ᵥ p = (⅟2 : R) • (p₁ -ᵥ p) + (⅟2 : R) • (p₂ -ᵥ p) := by
  rw [← vsub_sub_vsub_cancel_right p₁ p p₂, smul_sub, sub_eq_add_neg, ← smul_neg,
    neg_vsub_eq_vsub_rev, add_assoc, invOf_two_smul_add_invOf_two_smul, ← vadd_vsub_assoc,
    midpoint_comm, midpoint, lineMap_apply]

theorem vsub_midpoint (p₁ p₂ p : P) :
    p -ᵥ midpoint R p₁ p₂ = (⅟2 : R) • (p -ᵥ p₁) + (⅟2 : R) • (p -ᵥ p₂) := by
  rw [← neg_vsub_eq_vsub_rev, midpoint_vsub, neg_add, ← smul_neg, ← smul_neg, neg_vsub_eq_vsub_rev,
    neg_vsub_eq_vsub_rev]

@[simp]
theorem midpoint_sub_left (v₁ v₂ : V) : midpoint R v₁ v₂ - v₁ = (⅟2 : R) • (v₂ - v₁) :=
  midpoint_vsub_left v₁ v₂

@[simp]
theorem midpoint_sub_right (v₁ v₂ : V) : midpoint R v₁ v₂ - v₂ = (⅟2 : R) • (v₁ - v₂) :=
  midpoint_vsub_right v₁ v₂

@[simp]
theorem left_sub_midpoint (v₁ v₂ : V) : v₁ - midpoint R v₁ v₂ = (⅟2 : R) • (v₁ - v₂) :=
  left_vsub_midpoint v₁ v₂

@[simp]
theorem right_sub_midpoint (v₁ v₂ : V) : v₂ - midpoint R v₁ v₂ = (⅟2 : R) • (v₂ - v₁) :=
  right_vsub_midpoint v₁ v₂

variable (R)

@[simp]
theorem midpoint_eq_left_iff {x y : P} : midpoint R x y = x ↔ x = y := by
  rw [midpoint_eq_iff, pointReflection_self]

@[simp]
theorem left_eq_midpoint_iff {x y : P} : x = midpoint R x y ↔ x = y := by
  rw [eq_comm, midpoint_eq_left_iff]

@[simp]
theorem midpoint_eq_right_iff {x y : P} : midpoint R x y = y ↔ x = y := by
  rw [midpoint_comm, midpoint_eq_left_iff, eq_comm]

@[simp]
theorem right_eq_midpoint_iff {x y : P} : y = midpoint R x y ↔ x = y := by
  rw [eq_comm, midpoint_eq_right_iff]

theorem midpoint_eq_midpoint_iff_vsub_eq_vsub {x x' y y' : P} :
    midpoint R x y = midpoint R x' y' ↔ x -ᵥ x' = y' -ᵥ y := by
  rw [← @vsub_eq_zero_iff_eq V, midpoint_vsub_midpoint, midpoint_eq_iff, pointReflection_apply,
    vsub_eq_sub, zero_sub, vadd_eq_add, add_zero, neg_eq_iff_eq_neg, neg_vsub_eq_vsub_rev]

theorem midpoint_eq_iff' {x y z : P} : midpoint R x y = z ↔ Equiv.pointReflection z x = y :=
  midpoint_eq_iff

/-- `midpoint` does not depend on the ring `R`. -/
theorem midpoint_unique (R' : Type*) [Ring R'] [Invertible (2 : R')] [Module R' V] (x y : P) :
    midpoint R x y = midpoint R' x y :=
  (midpoint_eq_iff' R).2 <| (midpoint_eq_iff' R').1 rfl

@[simp]
theorem midpoint_self (x : P) : midpoint R x x = x :=
  lineMap_same_apply _ _

@[simp]
theorem midpoint_add_self (x y : V) : midpoint R x y + midpoint R x y = x + y :=
  calc
    midpoint R x y +ᵥ midpoint R x y = midpoint R x y +ᵥ midpoint R y x := by rw [midpoint_comm]
    _ = x + y := by rw [midpoint_vadd_midpoint, vadd_eq_add, vadd_eq_add, add_comm, midpoint_self]

theorem midpoint_zero_add (x y : V) : midpoint R 0 (x + y) = midpoint R x y :=
  (midpoint_eq_midpoint_iff_vsub_eq_vsub R).2 <| by simp

theorem midpoint_eq_smul_add (x y : V) : midpoint R x y = (⅟2 : R) • (x + y) := by
  rw [midpoint_eq_iff, pointReflection_apply, vsub_eq_sub, vadd_eq_add, sub_add_eq_add_sub, ←
    two_smul R, smul_smul, mul_invOf_self, one_smul, add_sub_cancel_left]

@[simp]
theorem midpoint_self_neg (x : V) : midpoint R x (-x) = 0 := by
  rw [midpoint_eq_smul_add, add_neg_cancel, smul_zero]

@[simp]
theorem midpoint_neg_self (x : V) : midpoint R (-x) x = 0 := by simpa using midpoint_self_neg R (-x)

@[simp]
theorem midpoint_sub_add (x y : V) : midpoint R (x - y) (x + y) = x := by
  rw [sub_eq_add_neg, ← vadd_eq_add, ← vadd_eq_add, ← midpoint_vadd_midpoint]; simp

@[simp]
theorem midpoint_add_sub (x y : V) : midpoint R (x + y) (x - y) = x := by
  rw [midpoint_comm]; simp

theorem midpoint_vsub_midpoint_same_left (p₁ p₂ p₃ : P) :
    midpoint R p₁ p₂ -ᵥ midpoint R p₁ p₃ = (⅟2 : R) • (p₂ -ᵥ p₃) := by
  rw [midpoint_vsub_midpoint, vsub_self, midpoint_eq_smul_add, zero_add]

theorem midpoint_vsub_midpoint_same_right (p₁ p₂ p₃ : P) :
    midpoint R p₁ p₃ -ᵥ midpoint R p₂ p₃ = (⅟2 : R) • (p₁ -ᵥ p₂) := by
  rw [midpoint_vsub_midpoint, vsub_self, midpoint_eq_smul_add, add_zero]

end

namespace AddMonoidHom

variable (R R' : Type*) {E F : Type*} [Ring R] [Invertible (2 : R)] [AddCommGroup E] [Module R E]
  [Ring R'] [Invertible (2 : R')] [AddCommGroup F] [Module R' F]

/-- A map `f : E → F` sending zero to zero and midpoints to midpoints is an `AddMonoidHom`. -/
def ofMapMidpoint (f : E → F) (h0 : f 0 = 0)
    (hm : ∀ x y, f (midpoint R x y) = midpoint R' (f x) (f y)) : E →+ F where
  toFun := f
  map_zero' := h0
  map_add' x y :=
    calc
      f (x + y) = f 0 + f (x + y) := by rw [h0, zero_add]
      _ = midpoint R' (f 0) (f (x + y)) + midpoint R' (f 0) (f (x + y)) :=
        (midpoint_add_self _ _ _).symm
      _ = f (midpoint R x y) + f (midpoint R x y) := by rw [← hm, midpoint_zero_add]
      _ = f x + f y := by rw [hm, midpoint_add_self]

@[simp]
theorem coe_ofMapMidpoint (f : E → F) (h0 : f 0 = 0)
    (hm : ∀ x y, f (midpoint R x y) = midpoint R' (f x) (f y)) :
    ⇑(ofMapMidpoint R R' f h0 hm) = f :=
  rfl

end AddMonoidHom
```
