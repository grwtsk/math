/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib

/-!
# Finite-field points of Harada's third character surface

The polynomial is `f₂` in Shinya Harada, *Hasse-Weil zeta functions of
SL₂-character varieties of arithmetic two-bridge link complements*,
arXiv:1207.6177v2 (31 January 2014), p. 1, Introduction and its unnumbered
Theorem, case `L₂ = (12/5)`.

We give an elementary affine-fiber proof. The field, polynomial and exceptional
characteristic are explicit. `Points K` is a dependent-pair presentation of the
actual polynomial solution set, not an assumed cardinality or a zeta function.

This is a source candidate: elaboration, fresh kernel replay, transitive axiom
audit and independent review are NOT_RUN. No RH/GRH, analytic continuation,
Euler-product, link-group identification or Weil-positivity theorem is asserted.
See issue #1802 and the adjacent theorem-local provenance records.

MSC2020: 14G15, 11G25.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.AlgebraicGeometry.HaradaCharacterSurface

universe u

/-- The exact affine polynomial `f₂`, with no projective points added. -/
def equation {R : Type u} [CommRing R] (x y z : R) : R :=
  z ^ 3 - x * y * z ^ 2 + (x ^ 2 + y ^ 2 - 1) * z - x * y

/-- Product form of the affine equation, valid before specialization to a field. -/
theorem equation_factorization {R : Type u} [CommRing R] (x y z : R) :
    equation x y z = (z * x - y) * (x - z * y) - z * (1 - z ^ 2) := by
  unfold equation
  ring

/-- The fiber over the third coordinate. -/
abbrev Fiber {K : Type u} [Field K] (z : K) :=
  {p : K × K // equation p.1 p.2 z = 0}

/-- All affine solutions, with the third coordinate retained explicitly. -/
abbrev Points (K : Type u) [Field K] := Σ z : K, Fiber z

private abbrev MulFiber {K : Type u} [Field K] (c : K) :=
  {p : K × K // p.1 * p.2 = c}

private theorem equation_eq_zero_iff {K : Type u} [Field K] (x y z : K) :
    equation x y z = 0 ↔ (z * x - y) * (x - z * y) = z * (1 - z ^ 2) := by
  rw [equation_factorization, sub_eq_zero]

private def forward {K : Type u} [Field K] (z : K) (p : K × K) : K × K :=
  (z * p.1 - p.2, p.1 - z * p.2)

private def backward {K : Type u} [Field K] (z : K) (p : K × K) : K × K :=
  ((p.2 - z * p.1) / (1 - z ^ 2), (z * p.2 - p.1) / (1 - z ^ 2))

private theorem backward_forward {K : Type u} [Field K]
    (z : K) (hz : 1 - z ^ 2 ≠ 0) (p : K × K) :
    backward z (forward z p) = p := by
  apply Prod.ext <;> dsimp [forward, backward] <;> field_simp [hz] <;> ring

private theorem forward_backward {K : Type u} [Field K]
    (z : K) (hz : 1 - z ^ 2 ≠ 0) (p : K × K) :
    forward z (backward z p) = p := by
  apply Prod.ext <;> dsimp [forward, backward] <;> field_simp [hz] <;> ring

private def genericFiberEquiv {K : Type u} [Field K]
    (z : K) (hz : 1 - z ^ 2 ≠ 0) : Fiber z ≃ MulFiber (z * (1 - z ^ 2)) where
  toFun p := ⟨forward z p.val, (equation_eq_zero_iff _ _ _).mp p.property⟩
  invFun p := ⟨backward z p.val, by
    apply (equation_eq_zero_iff _ _ _).mpr
    change (forward z (backward z p.val)).1 *
      (forward z (backward z p.val)).2 = z * (1 - z ^ 2)
    rw [forward_backward z hz p.val]
    exact p.property⟩
  left_inv p := Subtype.ext (backward_forward z hz p.val)
  right_inv p := Subtype.ext (forward_backward z hz p.val)

private theorem mulFiber_fst_ne_zero {K : Type u} [Field K]
    {c : K} (hc : c ≠ 0) (p : MulFiber c) : p.val.1 ≠ 0 := by
  intro h
  apply hc
  calc
    c = p.val.1 * p.val.2 := p.property.symm
    _ = 0 := by rw [h, zero_mul]

private def nonzeroMulFiberEquiv {K : Type u} [Field K]
    (c : K) (hc : c ≠ 0) : MulFiber c ≃ {x : K // x ≠ 0} where
  toFun p := ⟨p.val.1, mulFiber_fst_ne_zero hc p⟩
  invFun x := ⟨(x.val, c / x.val), by
    change x.val * (c / x.val) = c
    field_simp [x.property]⟩
  left_inv p := by
    apply Subtype.ext
    apply Prod.ext
    · rfl
    · change c / p.val.1 = p.val.2
      apply (div_eq_iff (mulFiber_fst_ne_zero hc p)).mpr
      simpa only [mul_comm] using p.property.symm
  right_inv x := Subtype.ext rfl

private noncomputable def zeroMulFiberEquiv {K : Type u} [Field K] :
    (K ⊕ {x : K // x ≠ 0}) ≃ MulFiber (0 : K) := by
  classical
  refine
    { toFun := fun s => match s with
        | Sum.inl y => ⟨(0, y), by simp⟩
        | Sum.inr x => ⟨(x.val, 0), by simp⟩
      invFun := fun p => if h : p.val.1 = 0 then Sum.inl p.val.2
        else Sum.inr ⟨p.val.1, h⟩
      left_inv := ?_
      right_inv := ?_ }
  · intro s
    cases s with
    | inl y => simp
    | inr x => simp [x.property]
  · intro p
    dsimp
    split_ifs with hx
    · apply Subtype.ext
      exact Prod.ext hx.symm rfl
    · have hy : p.val.2 = 0 := (mul_eq_zero.mp p.property).resolve_left hx
      apply Subtype.ext
      exact Prod.ext rfl hy.symm

private def zeroFiberEquiv {K : Type u} [Field K] :
    Fiber (0 : K) ≃ MulFiber (0 : K) where
  toFun p := ⟨p.val, by simpa [equation] using p.property⟩
  invFun p := ⟨p.val, by simpa [equation] using p.property⟩
  left_inv p := Subtype.ext rfl
  right_inv p := Subtype.ext rfl

private theorem equation_one_iff {K : Type u} [Field K] (x y : K) :
    equation x y 1 = 0 ↔ x = y := by
  have h : equation x y 1 = (x - y) * (x - y) := by unfold equation; ring
  rw [h]
  simp only [mul_eq_zero, or_self, sub_eq_zero]

private theorem equation_neg_one_iff {K : Type u} [Field K] (x y : K) :
    equation x y (-1) = 0 ↔ y = -x := by
  have h : equation x y (-1) = -((x + y) * (x + y)) := by
    unfold equation
    ring
  rw [h, neg_eq_zero]
  constructor
  · intro hp
    have hs : x + y = 0 := (mul_eq_zero.mp hp).elim id id
    linear_combination hs
  · intro hp
    simp [hp]

private def oneFiberEquiv {K : Type u} [Field K] : Fiber (1 : K) ≃ K where
  toFun p := p.val.1
  invFun x := ⟨(x, x), (equation_one_iff x x).mpr rfl⟩
  left_inv p := Subtype.ext (Prod.ext rfl ((equation_one_iff _ _).mp p.property))
  right_inv x := rfl

private def negOneFiberEquiv {K : Type u} [Field K] : Fiber (-1 : K) ≃ K where
  toFun p := p.val.1
  invFun x := ⟨(x, -x), (equation_neg_one_iff x (-x)).mpr rfl⟩
  left_inv p := Subtype.ext (Prod.ext rfl ((equation_neg_one_iff _ _).mp p.property).symm)
  right_inv x := rfl

private theorem sq_one_iff {K : Type u} [Field K] (z : K) :
    z ^ 2 = 1 ↔ z = 1 ∨ z = -1 := by
  constructor
  · intro h
    have hp : (z - 1) * (z + 1) = 0 := by linear_combination h
    rcases mul_eq_zero.mp hp with hp | hp
    · exact Or.inl (sub_eq_zero.mp hp)
    · right
      linear_combination hp
  · rintro (rfl | rfl) <;> ring

section Finite

variable {K : Type u} [Field K] [Fintype K] [DecidableEq K]

private theorem card_nonzero :
    Fintype.card {x : K // x ≠ 0} = Fintype.card K - 1 := by
  calc
    _ = (Finset.univ.erase (0 : K)).card :=
      Fintype.card_of_subtype _ (by intro x; simp)
    _ = _ := by simp

/-- Every fiber is counted, including all exceptional values and characteristic two. -/
theorem card_fiber (z : K) :
    Fintype.card (Fiber z) =
      if z = 0 then 2 * Fintype.card K - 1
      else if z ^ 2 = 1 then Fintype.card K else Fintype.card K - 1 := by
  have hq : 0 < Fintype.card K := Fintype.card_pos
  by_cases hz0 : z = 0
  · subst z
    rw [if_pos rfl]
    calc
      _ = Fintype.card (K ⊕ {x : K // x ≠ 0}) :=
        Fintype.card_congr (zeroFiberEquiv.trans zeroMulFiberEquiv.symm)
      _ = Fintype.card K + (Fintype.card K - 1) := by
        rw [Fintype.card_sum, card_nonzero]
      _ = _ := by omega
  · rw [if_neg hz0]
    by_cases hzsq : z ^ 2 = 1
    · rw [if_pos hzsq]
      rcases (sq_one_iff z).mp hzsq with h | h
      · subst z
        exact Fintype.card_congr oneFiberEquiv
      · subst z
        exact Fintype.card_congr negOneFiberEquiv
    · rw [if_neg hzsq]
      have hd : 1 - z ^ 2 ≠ 0 := sub_ne_zero.mpr (Ne.symm hzsq)
      calc
        _ = Fintype.card (MulFiber (z * (1 - z ^ 2))) :=
          Fintype.card_congr (genericFiberEquiv z hd)
        _ = Fintype.card {x : K // x ≠ 0} :=
          Fintype.card_congr (nonzeroMulFiberEquiv _ (mul_ne_zero hz0 hd))
        _ = _ := card_nonzero

private theorem card_fiber_add_one (z : K) :
    Fintype.card (Fiber z) + 1 = Fintype.card K +
      (if z = 0 then Fintype.card K else 0) + (if z ^ 2 = 1 then 1 else 0) := by
  rw [card_fiber]
  have hq : 0 < Fintype.card K := Fintype.card_pos
  by_cases hz0 : z = 0
  · subst z
    have hzero : ¬ (0 : K) ^ 2 = 1 := by simp
    simp only [if_pos (rfl : (0 : K) = 0), if_neg hzero]
    omega
  · by_cases hzsq : z ^ 2 = 1 <;> simp [hz0, hzsq] <;> omega

private theorem sum_sq_one :
    (∑ z : K, if z ^ 2 = 1 then (1 : ℕ) else 0) =
      if (2 : K) = 0 then 1 else 2 := by
  by_cases htwo : (2 : K) = 0
  · have hneg : (-1 : K) = 1 := by linear_combination -htwo
    have hp (z : K) : z ^ 2 = 1 ↔ z = 1 := by
      rw [sq_one_iff, hneg, or_self]
    simp only [hp, if_pos htwo]
    simp
  · have hne : (1 : K) ≠ -1 := by
      intro h
      apply htwo
      linear_combination h
    have hp (z : K) :
        (if z ^ 2 = 1 then (1 : ℕ) else 0) =
        (if z = 1 then 1 else 0) + (if z = -1 then 1 else 0) := by
      rw [sq_one_iff]
      by_cases h1 : z = 1
      · subst z
        simp [hne]
      · by_cases hm : z = -1 <;> simp [h1, hm]
    calc
      _ = ∑ z : K, ((if z = 1 then (1 : ℕ) else 0) +
          (if z = -1 then 1 else 0)) :=
        Finset.sum_congr rfl (fun z _ => hp z)
      _ = _ := by simp [Finset.sum_add_distrib, htwo]

/-- Exact point count over any finite field. No characteristic or extension degree is omitted. -/
theorem card_points :
    Fintype.card (Points K) = (Fintype.card K) ^ 2 +
      if (2 : K) = 0 then 1 else 2 := by
  have hs :
      (∑ z : K, (Fintype.card (Fiber z) + 1)) =
      ∑ z : K, (Fintype.card K + (if z = 0 then Fintype.card K else 0) +
        (if z ^ 2 = 1 then 1 else 0)) :=
    Finset.sum_congr rfl (fun z _ => card_fiber_add_one z)
  simp only [Finset.sum_add_distrib] at hs
  have hc (n : ℕ) : (∑ _z : K, n) = Fintype.card K * n := by
    simp [nsmul_eq_mul]
  have hz : (∑ z : K, if z = 0 then Fintype.card K else 0) = Fintype.card K := by
    simp
  rw [hc 1, hc (Fintype.card K), hz, sum_sq_one] at hs
  change Fintype.card (Σ z : K, Fiber z) = _
  rw [Fintype.card_sigma]
  nlinarith [hs]

/-- The characteristic-two correction, expressed by the exact field equation `2 = 0`. -/
theorem card_points_of_two_eq_zero (htwo : (2 : K) = 0) :
    Fintype.card (Points K) = (Fintype.card K) ^ 2 + 1 := by
  simpa only [if_pos htwo] using (card_points (K := K))

/-- The odd-characteristic count; the two exceptional roots remain distinct. -/
theorem card_points_of_two_ne_zero (htwo : (2 : K) ≠ 0) :
    Fintype.card (Points K) = (Fintype.card K) ^ 2 + 2 := by
  simpa only [if_neg htwo] using (card_points (K := K))

end Finite

end GRWTSK.AlgebraicGeometry.HaradaCharacterSurface
