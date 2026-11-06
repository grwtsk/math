/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Data.Dyadic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Topology.Algebra.Polynomial
import Mathlib.Topology.Instances.Real.Lemmas
import Mathlib.Topology.Order.IntermediateValue

/-!
# Exact dyadic bracket and root ports

The polynomial has rational coefficients and is evaluated at exact dyadic points. A strict
endpoint sign change and a nonzero midpoint put exactly one of the two half-intervals under
the same sign invariant. The rational embedding takes the dyadic midpoint to the arithmetic
mean, so either half has half the width. An exact zero instead carries the original
polynomial as the root's type index. These elementary arguments support the subdivision
consumer. A strict sign change is insufficient to count or isolate every root, and a
tangential zero can occur without any sign change, as the square example below shows.
The real intermediate value theorem gives existence in the interval after the rational
embedding, with the endpoint values identified by `Polynomial.eval₂_at_apply`.

The factor edge uses `Polynomial.eval_mul` at a single point. Evaluation at a zero of
the factor makes the product zero. Transport in reverse cancels the evaluated cofactor
using its nonvanishing at that same point. `ResolvableQuinticEndpointControls` studies
sign transport at two endpoints and exhibits a positive-endpoint cofactor that vanishes
in the interior. Here `X² + 1` times `X³` provides a direct zero-cofactor test for the
degree-five to degree-two edge.
-/

set_option autoImplicit false

namespace GRWTSK.NumericalAnalysis.PolynomialCircuit

structure Eval (P : Polynomial ℚ) (x : Dyadic) where
  value : ℚ
  correct : value = P.eval x.toRat

def Eval.at (P : Polynomial ℚ) (x : Dyadic) : Eval P x :=
  ⟨P.eval x.toRat, rfl⟩

structure Root (P : Polynomial ℚ) where
  point : Dyadic
  zero : P.eval point.toRat = 0

def Root.check (P : Polynomial ℚ) (x : Dyadic) : Option (Root P) :=
  if h : P.eval x.toRat = 0 then some ⟨x, h⟩ else none

def Root.ofFactor {P Q H : Polynomial ℚ} (identity : P = Q * H) (root : Root Q) : Root P :=
  ⟨root.point, by rw [identity, Polynomial.eval_mul, root.zero, zero_mul]⟩

@[simp] theorem Root.ofFactor_point {P Q H : Polynomial ℚ}
    (identity : P = Q * H) (root : Root Q) : (root.ofFactor identity).point = root.point := rfl

def Root.toFactor {P Q H : Polynomial ℚ} (identity : P = Q * H) (root : Root P)
    (nonzero : H.eval root.point.toRat ≠ 0) : Root Q :=
  ⟨root.point, by
    have value := congrArg (fun p : Polynomial ℚ => p.eval root.point.toRat) identity
    have zero := value.symm.trans root.zero
    rw [Polynomial.eval_mul] at zero
    exact (mul_eq_zero.mp zero).resolve_right nonzero⟩

@[simp] theorem Root.toFactor_point {P Q H : Polynomial ℚ} (identity : P = Q * H) (root : Root P)
    (nonzero : H.eval root.point.toRat ≠ 0) : (root.toFactor identity nonzero).point = root.point :=
  rfl

structure Dyad (P : Polynomial ℚ) where
  lower : Dyadic
  upper : Dyadic
  ordered : lower < upper
  opposite : P.eval lower.toRat * P.eval upper.toRat < 0

def admit (P : Polynomial ℚ) (lower upper : Dyadic) : Option (Root P ⊕ Dyad P) :=
  if ordered : lower < upper then
    let a := P.eval lower.toRat
    let b := P.eval upper.toRat
    if lowerZero : a = 0 then some (.inl ⟨lower, lowerZero⟩)
    else if upperZero : b = 0 then some (.inl ⟨upper, upperZero⟩)
    else if opposite : a * b < 0 then
      some (.inr ⟨lower, upper, ordered, opposite⟩)
    else none
  else none

variable {P : Polynomial ℚ}

theorem Dyad.exists_real_zero (d : Dyad P) :
    ∃ x ∈ Set.Icc d.lower.toReal d.upper.toReal, P.eval₂ (Rat.castHom ℝ) x = 0 := by
  let f : ℝ → ℝ := fun x => P.eval₂ (Rat.castHom ℝ) x
  change 0 ∈ f '' Set.Icc d.lower.toReal d.upper.toReal
  have ordered := (Dyadic.toReal_lt_toReal.mpr d.ordered).le
  have continuous : Continuous f := P.continuous_eval₂ (Rat.castHom ℝ)
  have atPoint (x : Dyadic) : f x.toReal = ((P.eval x.toRat : ℚ) : ℝ) :=
    Polynomial.eval₂_at_apply (Rat.castHom ℝ) x.toRat
  rcases mul_neg_iff.mp d.opposite with ⟨lowerPos, upperNeg⟩ | ⟨lowerNeg, upperPos⟩
  · apply intermediate_value_Icc' ordered continuous.continuousOn
    rw [Set.mem_Icc, atPoint, atPoint]
    exact ⟨by exact_mod_cast upperNeg.le, by exact_mod_cast lowerPos.le⟩
  · apply intermediate_value_Icc ordered continuous.continuousOn
    rw [Set.mem_Icc, atPoint, atPoint]
    exact ⟨by exact_mod_cast lowerNeg.le, by exact_mod_cast upperPos.le⟩

theorem admit_root_inside {lower upper : Dyadic} {root : Root P}
    (admitted : admit P lower upper = some (.inl root)) :
    lower ≤ root.point ∧ root.point ≤ upper := by
  by_cases ordered : lower < upper
  · by_cases lowerZero : P.eval lower.toRat = 0
    · rw [show admit P lower upper = some (.inl ⟨lower, lowerZero⟩) by
        simp [admit, ordered, lowerZero]] at admitted
      have point : lower = root.point :=
        congrArg Root.point (Sum.inl.inj (Option.some.inj admitted))
      rw [← point]
      exact ⟨le_rfl, ordered.le⟩
    · by_cases upperZero : P.eval upper.toRat = 0
      · rw [show admit P lower upper = some (.inl ⟨upper, upperZero⟩) by
          simp [admit, ordered, lowerZero, upperZero]] at admitted
        have point : upper = root.point :=
          congrArg Root.point (Sum.inl.inj (Option.some.inj admitted))
        rw [← point]
        exact ⟨ordered.le, le_rfl⟩
      · by_cases opposite : P.eval lower.toRat * P.eval upper.toRat < 0 <;>
          simp [admit, ordered, lowerZero, upperZero, opposite] at admitted
  · simp [admit, ordered] at admitted

def Dyad.Contains (d : Dyad P) (x : Dyadic) : Prop := d.lower ≤ x ∧ x ≤ d.upper

instance (d : Dyad P) (x : Dyadic) : Decidable (d.Contains x) :=
  inferInstanceAs (Decidable (d.lower ≤ x ∧ x ≤ d.upper))

def Dyad.check (d : Dyad P) (x : Dyadic) : Option (Root P) :=
  if d.Contains x then Root.check P x else none

theorem Dyad.check_eq_some_iff (d : Dyad P) (x : Dyadic) (r : Root P) :
    d.check x = some r ↔ d.Contains x ∧ r.point = x := by
  by_cases hx : d.Contains x
  · rw [show d.check x = Root.check P x by simp [check, hx]]
    constructor
    · intro hr
      refine ⟨hx, ?_⟩
      unfold Root.check at hr
      split at hr
      · exact (congrArg Root.point (Option.some.inj hr)).symm
      · contradiction
    · rintro ⟨_, hp⟩
      rcases r with ⟨point, hz⟩
      change point = x at hp
      subst point
      simp [Root.check, hz]
  · simp [check, hx]

def Dyad.width (d : Dyad P) : ℚ := d.upper.toRat - d.lower.toRat

def Dyad.midpoint (d : Dyad P) : Dyadic :=
  (d.lower + d.upper) * Dyadic.ofIntWithPrec 1 1

theorem Dyad.midpoint_toRat (d : Dyad P) :
    d.midpoint.toRat = (d.lower.toRat + d.upper.toRat) / 2 := by
  have half : (Dyadic.ofIntWithPrec 1 1).toRat = (1 / 2 : ℚ) := by
    rw [Dyadic.toRat_ofIntWithPrec_eq_mul_two_pow]
    norm_num
  rw [midpoint, Dyadic.toRat_mul, Dyadic.toRat_add, half, one_div, ← div_eq_mul_inv]

theorem Dyad.lower_lt_midpoint (d : Dyad P) : d.lower < d.midpoint := by
  apply Dyadic.toRat_lt_toRat_iff.mp
  rw [midpoint_toRat]
  linarith [Dyadic.toRat_lt_toRat_iff.mpr d.ordered]

theorem Dyad.midpoint_lt_upper (d : Dyad P) : d.midpoint < d.upper := by
  apply Dyadic.toRat_lt_toRat_iff.mp
  rw [midpoint_toRat]
  linarith [Dyadic.toRat_lt_toRat_iff.mpr d.ordered]

theorem Dyad.contains_midpoint (d : Dyad P) : d.Contains d.midpoint :=
  ⟨d.lower_lt_midpoint.le, d.midpoint_lt_upper.le⟩

/-- With a nonzero midpoint, exactly one child has opposite endpoint signs. -/
theorem Dyad.one_sign_changing_half (d : Dyad P) (h : P.eval d.midpoint.toRat ≠ 0) :
    let left := P.eval d.lower.toRat * P.eval d.midpoint.toRat < 0
    let right := P.eval d.midpoint.toRat * P.eval d.upper.toRat < 0
    (left ∧ ¬ right) ∨ (¬ left ∧ right) := by
  dsimp
  rcases mul_neg_iff.mp d.opposite with ⟨hl, hu⟩ | ⟨hl, hu⟩ <;>
    rcases lt_or_gt_of_ne h with hm | hm
  · exact Or.inl ⟨mul_neg_of_pos_of_neg hl hm,
      not_lt_of_ge (mul_nonneg_of_nonpos_of_nonpos hm.le hu.le)⟩
  · exact Or.inr ⟨not_lt_of_ge (mul_nonneg hl.le hm.le), mul_neg_of_pos_of_neg hm hu⟩
  · exact Or.inr ⟨not_lt_of_ge (mul_nonneg_of_nonpos_of_nonpos hl.le hm.le),
      mul_neg_of_neg_of_pos hm hu⟩
  · exact Or.inl ⟨mul_neg_of_neg_of_pos hl hm, not_lt_of_ge (mul_nonneg hm.le hu.le)⟩

inductive Subdivision (d : Dyad P) where
  | exact (root : Root P) (atMidpoint : root.point = d.midpoint)
  | refined (next : Dyad P)
      (endpoints : (next.lower = d.lower ∧ next.upper = d.midpoint) ∨
        (next.lower = d.midpoint ∧ next.upper = d.upper))
      (halfWidth : next.width = d.width / 2)

def Dyad.subdivide (d : Dyad P) : Subdivision d :=
  let value := P.eval d.midpoint.toRat
  if zero : value = 0 then
    .exact ⟨d.midpoint, zero⟩ rfl
  else if left : P.eval d.lower.toRat * value < 0 then
    .refined ⟨d.lower, d.midpoint, d.lower_lt_midpoint, left⟩ (.inl ⟨rfl, rfl⟩) (by
      simp only [width, midpoint_toRat]
      linarith)
  else
    .refined ⟨d.midpoint, d.upper, d.midpoint_lt_upper,
      (d.one_sign_changing_half zero).elim (fun h => (left h.1).elim) And.right⟩
      (.inr ⟨rfl, rfl⟩) (by
        simp only [width, midpoint_toRat]
        linarith)

example : admit ((Polynomial.X : Polynomial ℚ) ^ 2) (-1) 1 = none := by
  have ordered : (-1 : Dyadic) < 1 := by decide
  have one : (1 : Dyadic).toRat = 1 := by decide
  norm_num [admit, ordered, one, Dyadic.toRat_neg, Polynomial.eval_pow, Polynomial.eval_X]

example :
    let Q : Polynomial ℚ := Polynomial.X ^ 2 + 1
    let H : Polynomial ℚ := Polynomial.X ^ 3
    (Q * H).eval 0 = 0 ∧ Q.eval 0 ≠ 0 := by
  norm_num [Polynomial.eval_mul, Polynomial.eval_add, Polynomial.eval_pow, Polynomial.eval_X]

end GRWTSK.NumericalAnalysis.PolynomialCircuit
