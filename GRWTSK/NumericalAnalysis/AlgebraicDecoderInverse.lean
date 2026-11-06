/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumericalAnalysis.PolynomialCircuitInverse
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.NoncommRing

/-!
# Exact right-inverse jets

The residual `1 - a*u` converts the left factor `a*u` into `1 - e`. Mathlib's
finite geometric sum telescopes with this multiplication order in any ring.
The quintic correction evaluates the same sum with a shared square.
The rational circuit uses the same identity with an ordered bound. Here the
residual is a multiple of `p^n` in `ZMod (p^N)`. Raising it to the refinement
order multiplies the certified exponent, and the target ring caps it at `N`.
The canonical reduction has exactly those multiples in its kernel. In the
two-byte decoder the full-precision jet supplies the exact inverse of `2`.
Independent mathematical review remains open.
-/

set_option autoImplicit false

namespace GRWTSK.NumericalAnalysis.AlgebraicDecoder

open scoped BigOperators
open PolynomialCircuit (InverseOrder)

section Ring

variable {R : Type*} [Ring R]

def rightResidual (a u : R) : R := 1 - a * u

def rightInversePolynomial (a u : R) (k : ℕ) : R :=
  u * ∑ i ∈ Finset.range k, rightResidual a u ^ i

theorem rightResidual_polynomial (a u : R) (k : ℕ) :
    rightResidual a (rightInversePolynomial a u k) = rightResidual a u ^ k := by
  have h : a * u = 1 - rightResidual a u := by simp only [rightResidual, sub_sub_cancel]
  rw [rightResidual, rightInversePolynomial, ← mul_assoc, h, mul_neg_geom_sum, sub_sub_cancel]

def refineRightInverse (order : InverseOrder) (a u : R) : R :=
  let e := rightResidual a u
  u * (match order with
    | .quadratic => 1 + e
    | .quintic =>
      let e₂ := e * e
      (1 + e) * (1 + e₂) + e₂ * e₂)

theorem refineRightInverse_eq_polynomial (order : InverseOrder) (a u : R) :
    refineRightInverse order a u = rightInversePolynomial a u order.power := by
  cases order <;> simp only [refineRightInverse, rightInversePolynomial, InverseOrder.power,
    Finset.sum_range_succ, Finset.sum_range_zero, pow_zero, pow_one, zero_add]
  noncomm_ring

theorem rightResidual_refine (a u : R) (order : InverseOrder) :
    rightResidual a (refineRightInverse order a u) = rightResidual a u ^ order.power := by
  rw [refineRightInverse_eq_polynomial, rightResidual_polynomial]

theorem map_refineRightInverse {S : Type*} [Ring S] (f : R →+* S)
    (order : InverseOrder) (a u : R) :
    f (refineRightInverse order a u) = refineRightInverse order (f a) (f u) := by
  cases order <;> simp only [refineRightInverse, rightResidual, map_mul, map_add, map_sub, map_one]

end Ring

def precisionReduction {p N n : ℕ} (h : n ≤ N) : ZMod (p ^ N) →+* ZMod (p ^ n) :=
  ZMod.castHom (pow_dvd_pow p h) _

theorem precisionReduction_eq_zero_iff {p N n : ℕ} (h : n ≤ N) (e : ZMod (p ^ N)) :
    precisionReduction h e = 0 ↔ ∃ c, e = (p : ZMod (p ^ N)) ^ n * c := by
  constructor
  · obtain ⟨r, rfl⟩ := ZMod.intCast_surjective e
    rw [map_intCast, CharP.intCast_eq_zero_iff (ZMod (p ^ n)) (p ^ n)]
    rintro ⟨c, hc⟩
    exact ⟨(c : ZMod (p ^ N)), by rw [hc, Int.cast_mul, Int.cast_natCast, Nat.cast_pow]⟩
  · rintro ⟨c, rfl⟩
    rw [← Nat.cast_pow, map_mul, map_natCast, ZMod.natCast_self, zero_mul]

structure InvJet (p N n : ℕ) (a : ZMod (p ^ N)) where
  value : ZMod (p ^ N)
  precision_pos : 1 ≤ n
  precision_le : n ≤ N
  residual_divisible : ∃ c, rightResidual a value = (p : ZMod (p ^ N)) ^ n * c

namespace InvJet

variable {p N n : ℕ} {a : ZMod (p ^ N)}

theorem reduced_residual_zero (jet : InvJet p N n a) :
    rightResidual (precisionReduction jet.precision_le a)
      (precisionReduction jet.precision_le jet.value) = 0 := by
  have hz := (precisionReduction_eq_zero_iff jet.precision_le _).2 jet.residual_divisible
  simpa only [rightResidual, map_sub, map_one, map_mul] using hz

def refine (jet : InvJet p N n a) (order : InverseOrder) :
    InvJet p N (min N (n * order.power)) a where
  value := refineRightInverse order a jet.value
  precision_pos := le_min (jet.precision_pos.trans jet.precision_le)
    (Nat.mul_pos jet.precision_pos (by cases order <;> decide))
  precision_le := min_le_left _ _
  residual_divisible := by
    obtain ⟨c, hc⟩ := jet.residual_divisible
    rw [rightResidual_refine, hc, mul_pow, ← pow_mul]
    let m := n * order.power
    let k := min N m
    refine ⟨(p : ZMod (p ^ N)) ^ (m - k) * c ^ order.power, ?_⟩
    rw [← mul_assoc, ← pow_add, Nat.add_sub_of_le (min_le_right N m)]

theorem residual_zero (jet : InvJet p N N a) : rightResidual a jet.value = 0 := by
  obtain ⟨c, hc⟩ := jet.residual_divisible
  rw [hc, ← Nat.cast_pow, ZMod.natCast_self, zero_mul]

theorem right_inverse (jet : InvJet p N N a) : a * jet.value = 1 :=
  (sub_eq_zero.mp jet.residual_zero).symm

end InvJet

def seedTwo : InvJet 7 5 1 (2 : ZMod (7 ^ 5)) where
  value := 4
  precision_pos := by decide
  precision_le := by decide
  residual_divisible := ⟨-1, by decide⟩

def quadraticTwo : InvJet 7 5 2 (2 : ZMod (7 ^ 5)) :=
  seedTwo.refine .quadratic

def inverseTwo : InvJet 7 5 5 (2 : ZMod (7 ^ 5)) :=
  quadraticTwo.refine .quintic

theorem quadraticTwo_val : quadraticTwo.value.val = 16783 := by decide

theorem quadraticTwo_residual : rightResidual (2 : ZMod (7 ^ 5)) quadraticTwo.value = 49 :=
  by decide

theorem inverseTwo_val : inverseTwo.value.val = 8404 := by decide

end GRWTSK.NumericalAnalysis.AlgebraicDecoder
