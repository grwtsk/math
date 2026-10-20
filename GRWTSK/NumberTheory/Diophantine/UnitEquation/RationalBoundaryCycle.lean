/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.

A guarded rational boundary-chart cycle for u+v=1. The cycle and reflection
act on arithmetic ratios, not on an ellipse, a Frey two-torsion translation,
a waveform phase, or a geometric open cover. All divisions have nonzero
inputs in UnitPair. The old affine height and actual rational-prime support
are used. Three chart returns do not change arithmetic height or depth.
Unelaborated source proof scripts: NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Padics.RationalPairSupport
import GRWTSK.NumberTheory.Height.RationalVectorAffineHeight
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryCycle

open GRWTSK.NumberTheory.Padics.RationalPairSupport
open GRWTSK.NumberTheory.Height.RationalVectorAffineHeight
open GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm

/-- Nonzero rational solutions; positivity is NOT imposed on transformed charts. -/
@[ext] structure UnitPair where
  left : ℚ
  right : ℚ
  left_ne : left ≠ 0
  right_ne : right ≠ 0
  sum_one : left + right = 1

/-- Preserve the three observation slots: zero, first ratio, NEGATIVE second ratio. -/
def values (q : UnitPair) : Fin 3 → ℚ := ![0,q.left,-q.right]

def mirror (q : UnitPair) : UnitPair where
  left := q.right
  right := q.left
  left_ne := q.right_ne
  right_ne := q.left_ne
  sum_one := by simpa only [add_comm] using q.sum_one

/-- A genuine order-three rational chart map, not geometric torsion translation. -/
def cycle (q : UnitPair) : UnitPair where
  left := 1 / q.right
  right := -q.left / q.right
  left_ne := div_ne_zero one_ne_zero q.right_ne
  right_ne := div_ne_zero (neg_ne_zero.mpr q.left_ne) q.right_ne
  sum_one := by
    rw [← add_div]
    apply (div_eq_iff q.right_ne).mpr
    linarith [q.sum_one]

@[simp] theorem mirror_twice (q : UnitPair) : mirror (mirror q) = q := by
  apply UnitPair.ext <;> rfl

theorem cycle_twice_values (q : UnitPair) :
    (cycle (cycle q)).left = -q.right / q.left ∧
    (cycle (cycle q)).right = 1 / q.left := by
  constructor <;> dsimp [cycle] <;> field_simp [q.left_ne,q.right_ne] <;> ring

@[simp] theorem cycle_thrice (q : UnitPair) : cycle (cycle (cycle q)) = q := by
  apply UnitPair.ext <;> dsimp [cycle] <;>
    field_simp [q.left_ne,q.right_ne] <;> ring

/-- Reflection reverses this chart cycle. -/
theorem mirror_cycle_mirror (q : UnitPair) :
    mirror (cycle (mirror q)) = cycle (cycle q) := by
  apply UnitPair.ext
  · change -q.right / q.left = (cycle (cycle q)).left
    exact (cycle_twice_values q).1.symm
  · change 1 / q.left = (cycle (cycle q)).right
    exact (cycle_twice_values q).2.symm

/-- The rational cycle has no fixed point, so its actual primitive period is three. -/
theorem cycle_ne_self (q : UnitPair) : cycle q ≠ q := by
  intro h
  have hu : 1 / q.right = q.left := congrArg UnitPair.left h
  have hm : q.left * q.right = 1 := ((div_eq_iff q.right_ne).mp hu).symm
  nlinarith [q.sum_one, sq_nonneg (q.left-q.right)]

theorem cycle_twice_ne_self (q : UnitPair) : cycle (cycle q) ≠ q := by
  intro h
  have hh := congrArg cycle h
  rw [cycle_thrice] at hh
  exact cycle_ne_self q hh.symm

/-- Both ratios have the same reduced denominator, because their sum is one. -/
theorem ratio_denominators (q : UnitPair) : q.left.den = q.right.den := by
  have hu : q.left = 1 - q.right := by linarith [q.sum_one]
  rw [hu]
  simpa using Rat.intCast_sub_den (1 : ℤ) q.right

theorem denominator_right (q : UnitPair) : denominator (values q) = q.right.den := by
  apply Nat.dvd_antisymm
  · apply (denominator_dvd_iff _ _).mpr
    intro i
    fin_cases i <;> simp [values,ratio_denominators q]
  · have h := (denominator_dvd_iff (values q) _).mp (dvd_refl _) (2 : Fin 3)
    simpa [values] using h

theorem denominator_left (q : UnitPair) : denominator (values q) = q.left.den := by
  rw [denominator_right,ratio_denominators]

/-- The numerator selected as the next denominator is retained exactly, including all powers. -/
theorem cycle_denominator (q : UnitPair) :
    denominator (values (cycle q)) = q.right.num.natAbs := by
  rw [denominator_left]
  change (1 / q.right).den = _
  simp [one_div,Rat.den_inv,Rat.num_ne_zero.mpr q.right_ne]

theorem cycle_twice_denominator (q : UnitPair) :
    denominator (values (cycle (cycle q))) = q.left.num.natAbs := by
  rw [denominator_right,(cycle_twice_values q).2]
  simp [one_div,Rat.den_inv,Rat.num_ne_zero.mpr q.left_ne]

theorem values_numerator (q : UnitPair) :
    numerator (values q) 1 = q.left.num ∧
    numerator (values q) 2 = -q.right.num := by
  constructor
  · simp [numerator,denominator_left,values,mul_comm,Rat.mul_den_eq_num]
  · simp [numerator,denominator_right,values,mul_neg,mul_comm,Rat.mul_den_eq_num]

theorem values_max (q : UnitPair) : maxAbs (values q) = max |q.left| |q.right| := by
  apply le_antisymm
  · apply (maxAbs_le_iff _ _).mpr
    intro i
    fin_cases i
    · simpa [values] using (abs_nonneg q.left).trans (le_max_left |q.left| |q.right|)
    · simpa [values] using le_max_left |q.left| |q.right|
    · simpa [values] using le_max_right |q.left| |q.right|
  · exact max_le (by simpa [values] using entry_le (values q) 1)
      (by simpa [values] using entry_le (values q) 2)

/-- A sign/permutation of the homogeneous coordinates preserves THIS affine-pair height. -/
theorem mirror_height (q : UnitPair) : height (values (mirror q)) = height (values q) := by
  simp only [height,denominator_right,values_max,mirror,ratio_denominators q,max_comm]

theorem cycle_height (q : UnitPair) : height (values (cycle q)) = height (values q) := by
  have hv : |q.right| ≠ 0 := abs_ne_zero.mpr q.right_ne
  have hn : (q.right.num.natAbs : ℚ) = (q.right.den : ℚ) * |q.right| := by
    have ha : (q.right.num.natAbs : ℚ) = |(q.right.num : ℚ)| := by
      exact_mod_cast (Int.natCast_natAbs q.right.num)
    rw [ha,← Rat.mul_den_eq_num,abs_mul,abs_of_nonneg (Nat.cast_nonneg _)]
    ring
  have h1 : |q.right| * (1 / |q.right|) = 1 := by field_simp [hv]
  have h2 : |q.right| * (|q.left| / |q.right|) = |q.left| := by field_simp [hv]
  rw [height,cycle_denominator,values_max,height,denominator_right,values_max,hn]
  change (q.right.den : ℚ) * |q.right| *
    max 1 (max |1/q.right| | -q.left/q.right|) = _
  rw [abs_div,abs_one,abs_div,abs_neg,mul_assoc,
    mul_max_of_nonneg _ _ (abs_nonneg q.right),
    mul_max_of_nonneg _ _ (abs_nonneg q.right),mul_one,h1,h2]
  simp only [max_assoc,max_left_comm,max_comm]

/-- The two signed valuations transform by an invertible integral matrix. -/
theorem cycle_valuations (q : UnitPair) (p : ℕ) (hp : p.Prime) :
    padicValRat p (cycle q).left = -padicValRat p q.right ∧
    padicValRat p (cycle q).right = padicValRat p q.left-padicValRat p q.right := by
  letI : Fact p.Prime := ⟨hp⟩
  constructor
  · simp [cycle,one_div]
  · simpa only [cycle,padicValRat.neg] using
      padicValRat.div (p := p) (neg_ne_zero.mpr q.left_ne) q.right_ne

/-- u+v=1 is essential for depth invariance, although support invariance needs less. -/
theorem valuation_alternatives (q : UnitPair) (p : ℕ) (hp : p.Prime) :
    padicValRat p q.left = padicValRat p q.right ∨
    padicValRat p q.left = 0 ∨ padicValRat p q.right = 0 := by
  letI : Fact p.Prime := ⟨hp⟩
  by_cases he : padicValRat p q.left = padicValRat p q.right
  · exact Or.inl he
  · right
    have hsum : q.left+q.right ≠ 0 := by rw [q.sum_one]; norm_num
    have h := padicValRat.add_eq_min hsum q.left_ne q.right_ne he
    rw [q.sum_one,padicValRat.one] at h
    rcases le_total (padicValRat p q.left) (padicValRat p q.right) with hl | hl
    · exact Or.inl (by simpa only [min_eq_left hl] using h.symm)
    · exact Or.inr (by simpa only [min_eq_right hl] using h.symm)

theorem mirror_depth (q : UnitPair) (p : ℕ) :
    boundaryDepth p (mirror q).left (mirror q).right = boundaryDepth p q.left q.right := by
  simp only [boundaryDepth,mirror,max_comm]

theorem cycle_depth (q : UnitPair) (p : ℕ) (hp : p.Prime) :
    boundaryDepth p (cycle q).left (cycle q).right = boundaryDepth p q.left q.right := by
  rw [boundaryDepth,(cycle_valuations q p hp).1,(cycle_valuations q p hp).2]
  rcases valuation_alternatives q p hp with h | h | h <;>
    simp [boundaryDepth,h,max_comm]

theorem mirror_support (q : UnitPair) :
    pairSupport (mirror q).left (mirror q).right = pairSupport q.left q.right := by
  simp only [pairSupport,mirror,Finset.union_comm]

theorem cycle_support (q : UnitPair) :
    pairSupport (cycle q).left (cycle q).right = pairSupport q.left q.right := by
  ext p
  by_cases hp : p.Prime
  · rw [mem_pairSupport_iff _ _ (cycle q).left_ne (cycle q).right_ne p hp,
      mem_pairSupport_iff _ _ q.left_ne q.right_ne p hp,
      (cycle_valuations q p hp).1,(cycle_valuations q p hp).2]
    omega
  · have hL : p ∉ pairSupport (cycle q).left (cycle q).right :=
      fun h => hp (pairSupport_prime _ _ p h)
    have hR : p ∉ pairSupport q.left q.right := fun h => hp (pairSupport_prime _ _ p h)
    simp [hL,hR]

/-- Six LABELLED charts; exceptional inputs can have fewer than six distinct values. -/
def rotate (q : UnitPair) : Fin 3 → UnitPair := ![q,cycle q,cycle (cycle q)]

def chart (q : UnitPair) (j : Fin 3) (reflected : Bool) : UnitPair :=
  if reflected then mirror (rotate q j) else rotate q j

theorem chart_height (q : UnitPair) (j : Fin 3) (reflected : Bool) :
    height (values (chart q j reflected)) = height (values q) := by
  cases reflected <;> fin_cases j <;>
    simp [chart,rotate,mirror_height,cycle_height]

theorem chart_support (q : UnitPair) (j : Fin 3) (reflected : Bool) :
    pairSupport (chart q j reflected).left (chart q j reflected).right =
      pairSupport q.left q.right := by
  cases reflected <;> fin_cases j <;>
    simp [chart,rotate,mirror_support,cycle_support]

theorem chart_depth (q : UnitPair) (j : Fin 3) (reflected : Bool) (p : ℕ) (hp : p.Prime) :
    boundaryDepth p (chart q j reflected).left (chart q j reflected).right =
      boundaryDepth p q.left q.right := by
  cases reflected <;> fin_cases j <;>
    simp [chart,rotate,mirror_depth,cycle_depth,hp]

/-- A rational stabilizer fixture: six chart labels do NOT mean six distinct observations. -/
def halfPair : UnitPair where
  left := 1/2
  right := 1/2
  left_ne := by norm_num
  right_ne := by norm_num
  sum_one := by norm_num

theorem halfPair_mirror_fixed : mirror halfPair = halfPair := by
  apply UnitPair.ext <;> rfl

end GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryCycle
