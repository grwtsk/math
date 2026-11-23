import Mathlib.Algebra.Ring.GeomSum
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Tactic.Ring
import Mathlib.Tactic.FieldSimp
import Mathlib.Data.Rat.Defs

/-! # Finite character sums in CM class transport

The complex character and CM lattice calculations that supply the class coordinates
are given in the adjacent manuscript. These ring identities describe the change
of representatives and the integral Fourier congruences without a class average.
-/

namespace GRWTSK.AlpogePicardClassTransport

theorem correctedValue_homothety {K : Type*} [Field K] (d m S : K)
    (hm : m ≠ 0) : (m⁻¹ * d)⁻¹ * (m⁻¹ * S) = d⁻¹ * S := by
  by_cases hd : d = 0
  · simp [hd]
  · field_simp

/-- Separate valuations for the two halves of the CM type. -/
theorem valuation_of_principal_power {I : Type*} [Fintype I]
    (h : ℚ) (hh : h ≠ 0) (s v : ℚ) (k a b : I → ℚ)
    (hp : h * v = - ∑ i, ((2 * s + k i) * (h * a i) - k i * (h * b i))) :
    v = ∑ i, (k i * b i - (2 * s + k i) * a i) := by
  apply mul_left_cancel₀ hh
  rw [hp, Finset.mul_sum, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro i _
  ring

/-- Unnormalized cyclic Fourier transform with the evaluation points given by powers of z. -/
def moment {R : Type*} [CommRing R] (z : R) (n : ℕ) (a : ℕ → R) (r : ℕ) : R :=
  ∑ m ∈ Finset.range n, a m * (z ^ m) ^ r

/-- Forward differences in the twisting character. -/
def forwardDiff {R : Type*} [CommRing R] (f : ℕ → R) : ℕ → ℕ → R
  | 0 => f
  | j+1 => fun r => forwardDiff f j (r+1) - forwardDiff f j r

theorem forwardDiff_moment {R : Type*} [CommRing R] (z : R) (n : ℕ) (a : ℕ → R)
    (j r : ℕ) : forwardDiff (moment z n a) j r =
      ∑ m ∈ Finset.range n, a m * (z ^ m) ^ r * (z ^ m - 1) ^ j := by
  induction j generalizing r with
  | zero => simp [forwardDiff, moment]
  | succ j ih =>
    simp only [forwardDiff, ih, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro m _
    simp only [pow_succ]
    ring

theorem power_sub_one_dvd_forwardDiff {R : Type*} [CommRing R] (z : R) (n : ℕ)
    (a : ℕ → R) (j r : ℕ) : (z - 1)^j ∣ forwardDiff (moment z n a) j r := by
  rw [forwardDiff_moment]
  apply Finset.dvd_sum
  intro m _
  have h : z - 1 ∣ z ^ m - 1 := by
    use ∑ i ∈ Finset.range m, z ^ i
    rw [mul_comm, geom_sum_mul]
  exact dvd_mul_of_dvd_right (pow_dvd_pow_of_dvd h j) _

open Polynomial in
/-- Integral Newton basis for the local cyclic character table. -/
noncomputable def newtonColumn {R : Type*} [CommRing R] (z : R) (j : ℕ) : R[X] :=
  ∏ i ∈ Finset.range j, (X - C (z ^ i))

theorem newtonColumn_eval {R : Type*} [CommRing R] (z : R) (j r : ℕ) :
    (newtonColumn z j).eval (z ^ r) = ∏ i ∈ Finset.range j, (z ^ r - z ^ i) := by
  simp [newtonColumn, Polynomial.eval_prod]

theorem newtonColumn_vanish {R : Type*} [CommRing R] (z : R) {j r : ℕ}
    (hr : r < j) : (newtonColumn z j).eval (z ^ r) = 0 := by
  rw [newtonColumn_eval]
  exact Finset.prod_eq_zero (Finset.mem_range.mpr hr) (sub_self _)

/-- Fraction-free pivots of the power evaluation table. -/
def newtonPivot {R : Type*} [CommRing R] (z : R) : ℕ → R
  | 0 => 1
  | j+1 => z^j * (z^(j+1) - 1) * newtonPivot z j

/-- Gaussian binomial coefficients as integral polynomials evaluated at z. -/
def gaussianEntry {R : Type*} [CommRing R] (z : R) : ℕ → ℕ → R
  | 0, 0 => 1
  | 0, _+1 => 0
  | _+1, 0 => 1
  | r+1, j+1 => z^(j+1) * gaussianEntry z r (j+1) + gaussianEntry z r j

private theorem shiftColumn {R : Type*} [CommRing R] (z : R) (j r : ℕ) :
    (newtonColumn z (j+1)).eval (z^(r+1)) =
      z^(j+1) * (newtonColumn z (j+1)).eval (z^r) +
        z^j * (z^(j+1)-1) * (newtonColumn z j).eval (z^r) := by
  rw [newtonColumn_eval, newtonColumn_eval, newtonColumn_eval,
    Finset.prod_range_succ' (fun i => z^(r+1) - z^i),
    Finset.prod_range_succ (fun i => z^r - z^i)]
  have shift (i : ℕ) : z^(r+1) - z^(i+1) = z * (z^r - z^i) := by
    simp only [pow_succ]
    ring
  simp_rw [shift]
  rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_range]
  simp only [pow_zero, pow_succ]
  ring

/-- Exact integral factorization of every Newton evaluation entry. -/
theorem newtonColumn_gaussian {R : Type*} [CommRing R] (z : R) (j r : ℕ) :
    (newtonColumn z j).eval (z^r) = gaussianEntry z r j * newtonPivot z j := by
  induction r generalizing j with
  | zero =>
    cases j with
    | zero => simp [newtonColumn, gaussianEntry, newtonPivot]
    | succ j => rw [newtonColumn_vanish z (Nat.succ_pos _), gaussianEntry, zero_mul]
  | succ r ih =>
    cases j with
    | zero => simp [newtonColumn, gaussianEntry, newtonPivot]
    | succ j =>
      rw [shiftColumn, ih, ih, gaussianEntry, newtonPivot]
      ring

theorem gaussianEntry_aboveDiagonal {R : Type*} [CommRing R] (z : R) {r j : ℕ}
    (h : r < j) : gaussianEntry z r j = 0 := by
  induction r generalizing j with
  | zero =>
    cases j with
    | zero => exact (Nat.lt_irrefl _ h).elim
    | succ _ => rfl
  | succ r ih =>
    cases j with
    | zero => exact (Nat.not_lt_zero _ h).elim
    | succ j =>
      have h' := Nat.lt_of_succ_lt_succ h
      simp [gaussianEntry, ih h', ih (Nat.lt_succ_of_lt h')]

theorem gaussianEntry_diagonal {R : Type*} [CommRing R] (z : R) (r : ℕ) :
    gaussianEntry z r r = 1 := by
  induction r with
  | zero => rfl
  | succ r ih => simp [gaussianEntry, gaussianEntry_aboveDiagonal z (Nat.lt_succ_self r), ih]

end GRWTSK.AlpogePicardClassTransport
