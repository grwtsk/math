/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilLowSchurEnclosure

/-!
# Odd arithmetic rows and the output endpoint functional

Source: Connes--Consani--Moscovici, *Zeta Spectral Triples*,
arXiv:2511.22755v1, (3.19)--(3.20), Section 4. The literal prime signal is
REUSED from `LowSchur`, including every prime power in the support cutoff.
For sine coefficients the numerator is m*p_n - n*p_m, not m*p_m - n*p_n.
The analytical argument extracts the signed output-endpoint functional and then
the input derivative trace. It proves full remote-tail estimates of orders
L^(-1), L^(-3), and L^(-5) in the stated directions, with every pole and
boundary response retained. It gives no cofinal low-Schur sign.

Formal scope HERE: real rational row identities, a quantitative prime remainder,
finite sums, literal finite boundary signals and the normalization of the finite
output endpoint expression. Infinite-series convergence, Fourier identification,
operator norms, asymptotic tail Gram convergence and spectral consequences are
analytical work outside this module, not formal consequences of this file alone.

No replacement RH/GRH predicate, assumed cofinal certificate, or new operator
boundary condition is introduced. Compilation/elaboration, fresh kernel checking,
transitive axiom audit and independent analytical review: NOT_RUN.
Novelty: UNASSESSED. No upstream source is copied.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddOutputTrace

open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

/-- The odd prime row with its common factor 2*(-1)^(m+n)/pi removed. -/
def oddPrimeRow (T m n : ℝ) : ℝ :=
  primeRow m n (primeSignal T n) (primeSignal T m)

def oddPrimeRemainder (T m n : ℝ) : ℝ :=
  primeRemainder m n (primeSignal T n) (primeSignal T m)

/-- In the odd sector the leading signal depends on the LOW frequency. -/
theorem oddPrimeRow_split (T m n : ℝ) (hm : m ≠ 0)
    (hd : m ^ 2 - n ^ 2 ≠ 0) :
    oddPrimeRow T m n = primeSignal T n / m + oddPrimeRemainder T m n := by
  exact primeRow_split m n (primeSignal T n) (primeSignal T m) hm hd

/-- A universal rational bound used on the literal arithmetic signals. -/
theorem abs_prime_remainder_le {m n p q K : ℝ}
    (hn : 0 ≤ n) (hmn : n < m) (hp : |p| ≤ K / 2) (hq : |q| ≤ K / 2) :
    |primeRemainder m n p q| ≤ (K / 2) * (n / (m * (m - n))) := by
  have hm : 0 < m := lt_of_le_of_lt hn hmn
  have hd : 0 < m ^ 2 - n ^ 2 := by nlinarith
  have hr : 0 ≤ n / m := div_nonneg hn hm.le
  have he : |(n / m) * p - q| ≤ (n / m) * (K / 2) + K / 2 := by
    calc
      |(n / m) * p - q| ≤ |(n / m) * p| + |q| := by
        simpa using (abs_sub_le ((n / m) * p) 0 q)
      _ = (n / m) * |p| + |q| := by rw [abs_mul, abs_of_nonneg hr]
      _ ≤ (n / m) * (K / 2) + K / 2 :=
        add_le_add (mul_le_mul_of_nonneg_left hp hr) hq
  unfold primeRemainder
  rw [abs_div, abs_mul, abs_of_nonneg hn, abs_of_pos hd]
  calc
    n * |(n / m) * p - q| / (m ^ 2 - n ^ 2) ≤
        n * ((n / m) * (K / 2) + K / 2) / (m ^ 2 - n ^ 2) :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left he hn) hd.le
    _ = (K / 2) * (n * (1 + n / m) / (m ^ 2 - n ^ 2)) := by ring
    _ = (K / 2) * (n / (m * (m - n))) := by
      rw [prime_majorant_identity m n (ne_of_gt hm)
        (ne_of_gt (sub_pos.mpr hmn)) (ne_of_gt (by linarith : 0 < m + n))]

/-- This bound is on the actual finite von Mangoldt signal, not arbitrary data. -/
theorem abs_oddPrimeRemainder_le (T : ℝ) {m n : ℝ}
    (hn : 0 ≤ n) (hmn : n < m) :
    |oddPrimeRemainder T m n| ≤
      (primeMass T / 2) * (n / (m * (m - n))) := by
  exact abs_prime_remainder_le hn hmn (abs_primeSignal_le T n)
    (abs_primeSignal_le T m)

/-- The next prime term is the high signal times the input derivative trace. -/
theorem oddPrimeRow_second_split (T m n : ℝ) (hm : m ≠ 0)
    (hd : m ^ 2 - n ^ 2 ≠ 0) :
    oddPrimeRow T m n = primeSignal T n / m - n * primeSignal T m / m ^ 2 +
      n ^ 2 * oddPrimeRow T m n / m ^ 2 := by
  unfold oddPrimeRow primeRow
  field_simp [hm, hd]
  <;> ring

/-- Signed finite summation retains the first odd arithmetic functional. -/
theorem finite_odd_prime_split {ι : Type*} (I : Finset ι)
    (T m : ℝ) (n x : ι → ℝ) (hm : m ≠ 0)
    (hd : ∀ i ∈ I, m ^ 2 - (n i) ^ 2 ≠ 0) :
    (∑ i ∈ I, x i * oddPrimeRow T m (n i)) =
      (∑ i ∈ I, x i * primeSignal T (n i)) / m +
        ∑ i ∈ I, x i * oddPrimeRemainder T m (n i) := by
  have hs : (∑ i ∈ I, x i * oddPrimeRow T m (n i)) =
      ∑ i ∈ I, ((x i * primeSignal T (n i)) / m +
        x i * oddPrimeRemainder T m (n i)) := by
    apply Finset.sum_congr rfl
    intro i hi
    rw [oddPrimeRow_split T m (n i) hm (hd i hi)]
    ring
  rw [hs, Finset.sum_add_distrib]
  simp only [div_eq_mul_inv, Finset.sum_mul]

/-- The signless odd boundary summand; its source factor is -2*(-1)^(m+n)/T. -/
def oddBoundaryCore (a u v : ℝ) : ℝ :=
  u * v / ((a ^ 2 + u ^ 2) * (a ^ 2 + v ^ 2))

def oddBoundaryRemainder (a u v : ℝ) : ℝ :=
  (v / u) * a ^ 2 / ((a ^ 2 + u ^ 2) * (a ^ 2 + v ^ 2))

theorem oddBoundaryCore_split (a u v : ℝ) (hu : u ≠ 0)
    (hdu : a ^ 2 + u ^ 2 ≠ 0) (hdv : a ^ 2 + v ^ 2 ≠ 0) :
    oddBoundaryCore a u v = (v / u) / (a ^ 2 + v ^ 2) -
      oddBoundaryRemainder a u v := by
  unfold oddBoundaryCore oddBoundaryRemainder
  field_simp [hu, hdu, hdv]
  <;> ring

/-- The divided-difference form separates the next, derivative-trace term. -/
theorem odd_boundary_second_split (m n gm gn : ℝ) (hm : m ≠ 0)
    (hd : m ^ 2 - n ^ 2 ≠ 0) :
    m * n * (gn - gm) / (m ^ 2 - n ^ 2) =
      n * gn / m - n * gm / m +
        n ^ 3 * (gn - gm) / (m * (m ^ 2 - n ^ 2)) := by
  field_simp [hm, hd]
  <;> ring

/-- Retaining the odd pole gives a cubic, rather than quadratic, row remainder. -/
theorem odd_pole_split (u : ℝ) (hu : u ≠ 0) :
    u / (1 / 4 + u ^ 2) = 1 / u - 1 / (4 * u * (1 / 4 + u ^ 2)) := by
  have hd : (1 : ℝ) / 4 + u ^ 2 ≠ 0 :=
    ne_of_gt (by nlinarith [sq_nonneg u])
  field_simp [hu, hd]
  <;> ring

/-- Literal finite boundary series. Its omitted infinite tail requires a separate analytical estimate. -/
def frequency (T : ℝ) (n : ℕ) : ℝ := Real.pi * (n : ℝ) / T

def boundarySignalPartial (T : ℝ) (J n : ℕ) : ℝ :=
  ∑ j ∈ Finset.range J,
    (1 - Real.exp (-2 * (2 * (j : ℝ) + 1 / 2) * T)) /
      ((2 * (j : ℝ) + 1 / 2) ^ 2 + frequency T n ^ 2)

def derivativeTrace (M : ℕ) (x : ℕ → ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 M, (-1 : ℝ) ^ n * (n : ℝ) * x n

def sinePoleCoefficient (T : ℝ) (n : ℕ) : ℝ :=
  2 * (-1 : ℝ) ^ (n + 1) * frequency T n * Real.sinh (T / 2) /
    (Real.sqrt T * (1 / 4 + frequency T n ^ 2))

def poleMoment (M : ℕ) (T : ℝ) (x : ℕ → ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 M, x n * sinePoleCoefficient T n

def primeMoment (M : ℕ) (T : ℝ) (x : ℕ → ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 M, (-1 : ℝ) ^ n * x n * primeSignal T (n : ℝ)

def boundaryMomentPartial (M : ℕ) (T : ℝ) (J : ℕ) (x : ℕ → ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 M,
    (-1 : ℝ) ^ n * (n : ℝ) * x n * boundarySignalPartial T J n

/-- Signed arithmetic sum: do not take three separate absolute values first. -/
def leadingPartial (M : ℕ) (T : ℝ) (J : ℕ) (x : ℕ → ℝ) : ℝ :=
  -(2 / T) * boundaryMomentPartial M T J x -
    (2 / Real.pi) * primeMoment M T x +
    (4 * Real.sqrt T * Real.sinh (T / 2) / Real.pi) * poleMoment M T x

def endpointPartial (M : ℕ) (T : ℝ) (J : ℕ) (x : ℕ → ℝ) : ℝ :=
  (Real.pi / (T * Real.sqrt T)) * boundaryMomentPartial M T J x +
    (1 / Real.sqrt T) * primeMoment M T x -
    2 * Real.sinh (T / 2) * poleMoment M T x

/-- Correct Fourier normalization of the finite source endpoint expression. -/
theorem leadingPartial_eq_endpointPartial (M J : ℕ) {T : ℝ}
    (hT : 0 < T) (x : ℕ → ℝ) :
    leadingPartial M T J x =
      -(2 * Real.sqrt T / Real.pi) * endpointPartial M T J x := by
  have hs : Real.sqrt T ≠ 0 := ne_of_gt (Real.sqrt_pos.2 hT)
  unfold leadingPartial endpointPartial
  field_simp [ne_of_gt hT, hs, Real.pi_ne_zero]
  <;> ring

/-- Only the boundary-series term changes when its finite cutoff changes. -/
theorem leadingPartial_sub (M J K : ℕ) (T : ℝ) (x : ℕ → ℝ) :
    leadingPartial M T J x - leadingPartial M T K x =
      -(2 / T) * (boundaryMomentPartial M T J x - boundaryMomentPartial M T K x) := by
  unfold leadingPartial
  ring

/-- Quadratic majorization used after the three source remainders are bounded. -/
theorem three_prices_square (a b c : ℝ) :
    (a + b + c) ^ 2 ≤ 3 * (a ^ 2 + b ^ 2 + c ^ 2) := by
  nlinarith [sq_nonneg (a - b), sq_nonneg (a - c), sq_nonneg (b - c)]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddOutputTrace
