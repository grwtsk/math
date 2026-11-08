/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.SchurResidualEnclosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPeriodicBoundary
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Archimedean
import Mathlib.Data.Real.Sqrt
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Arithmetic rows and endpoint cancellation for a low Weil Schur enclosure

Sources: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)--(3.20), Sections 3--4; the pinned local periodic
comparison 704c9ad46d3a27b9485f51d53fc0b67d48fec7b0. The source Fourier
convention is exp(-i*z*t), and the real cosine basis has constant mode
(2*T)^(-1/2), not T^(-1/2).

This module defines the actual finite prime signal with the von Mangoldt
weights and literal support cutoff. It proves finite-row cancellation identities
and the algebraic error-budget return. Its row variables `c`, `x` in the
sum identities are the signed cosine coefficients: c = x_0 / sqrt(2),
x_n = (-1)^n times the normalized nth coefficient. Thus c + sum x_n is
sqrt(T) times the endpoint trace. This trace is used only on finite polynomials,
never asserted to be a bounded functional on the logarithmic form domain.

The infinite boundary series, Fourier identification, full operator-domain
Schur congruence, Galerkin residual estimate and spectral inertia return are
separate analytical arguments, NOT fully formalized by this file. No cofinal
low-Schur sign, genuine-ground comparison, RH or Dirichlet GRH is claimed.

Elaboration, fresh kernel checking, transitive axiom audit and independent
analytical review: NOT_RUN. Novelty: UNASSESSED. No upstream code is copied;
Mathlib remains an Apache-2.0 dependency under the existing pin.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

/-- All integers in the support cutoff, not merely primes: prime powers are
retained by `vonMangoldt`. The redundant real test makes the endpoint explicit. -/
def activePrimePowers (T : ℝ) : Finset ℕ :=
  (Finset.range (Nat.ceil (Real.exp (2 * T)))).filter
    (fun q => 2 ≤ q ∧ (q : ℝ) < Real.exp (2 * T))

def primeWeight (q : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt q / Real.sqrt (q : ℝ)

def primeMass (T : ℝ) : ℝ :=
  2 * ∑ q ∈ activePrimePowers T, primeWeight q

/-- The literal arithmetic sine signal in the cosine matrix. -/
def primeSignal (T x : ℝ) : ℝ :=
  ∑ q ∈ activePrimePowers T,
    primeWeight q * Real.sin (Real.pi * x / T * Real.log (q : ℝ))

theorem primeWeight_nonneg (q : ℕ) : 0 ≤ primeWeight q := by
  exact div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Real.sqrt_nonneg _)

theorem primeMass_nonneg (T : ℝ) : 0 ≤ primeMass T := by
  unfold primeMass
  exact mul_nonneg (by norm_num) (Finset.sum_nonneg (fun q _ => primeWeight_nonneg q))

theorem primeSignal_zero (T : ℝ) : primeSignal T 0 = 0 := by
  simp [primeSignal]

/-- Each prime signal uses every active prime power, before absolute values. -/
theorem abs_primeSignal_le (T x : ℝ) :
    |primeSignal T x| ≤ primeMass T / 2 := by
  unfold primeSignal primeMass
  calc
    |∑ q ∈ activePrimePowers T,
        primeWeight q * Real.sin (Real.pi * x / T * Real.log (q : ℝ))| ≤
        ∑ q ∈ activePrimePowers T,
          |primeWeight q * Real.sin (Real.pi * x / T * Real.log (q : ℝ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ q ∈ activePrimePowers T, primeWeight q := by
      apply Finset.sum_le_sum
      intro q hq
      rw [abs_mul, abs_of_nonneg (primeWeight_nonneg q)]
      exact mul_le_of_le_one_right (primeWeight_nonneg q) (Real.abs_sin_le_one _)
    _ = (2 * ∑ q ∈ activePrimePowers T, primeWeight q) / 2 := by ring

/-- The rational row after the common factor -2*(-1)^(m+n)/pi is removed. -/
def primeRow (m n p q : ℝ) : ℝ := (m * p - n * q) / (m ^ 2 - n ^ 2)

def primeRemainder (m n p q : ℝ) : ℝ :=
  n * ((n / m) * p - q) / (m ^ 2 - n ^ 2)

/-- The leading term is independent of the low frequency n. -/
theorem primeRow_split (m n p q : ℝ) (hm : m ≠ 0)
    (hd : m ^ 2 - n ^ 2 ≠ 0) :
    primeRow m n p q = p / m + primeRemainder m n p q := by
  unfold primeRow primeRemainder
  field_simp [hm, hd]
  <;> ring

/-- Cancellation of the leading prime row is precisely the endpoint trace. -/
theorem finite_prime_row_split {ι : Type*} (I : Finset ι)
    (c m p : ℝ) (n q x : ι → ℝ) (hm : m ≠ 0)
    (hd : ∀ i ∈ I, m ^ 2 - (n i) ^ 2 ≠ 0) :
    c * (p / m) + ∑ i ∈ I, x i * primeRow m (n i) p (q i) =
      (c + ∑ i ∈ I, x i) * (p / m) +
        ∑ i ∈ I, x i * primeRemainder m (n i) p (q i) := by
  have hs : (∑ i ∈ I, x i * primeRow m (n i) p (q i)) =
      ∑ i ∈ I, (x i * (p / m) + x i * primeRemainder m (n i) p (q i)) := by
    apply Finset.sum_congr rfl
    intro i hi
    rw [primeRow_split m (n i) p (q i) hm (hd i hi)]
    ring
  rw [hs, Finset.sum_add_distrib, ← Finset.sum_mul]
  ring

theorem finite_prime_row_trace_zero {ι : Type*} (I : Finset ι)
    (c m p : ℝ) (n q x : ι → ℝ) (hm : m ≠ 0)
    (hd : ∀ i ∈ I, m ^ 2 - (n i) ^ 2 ≠ 0)
    (htrace : c + ∑ i ∈ I, x i = 0) :
    c * (p / m) + ∑ i ∈ I, x i * primeRow m (n i) p (q i) =
      ∑ i ∈ I, x i * primeRemainder m (n i) p (q i) := by
  rw [finite_prime_row_split I c m p n q x hm hd, htrace]
  ring

/-- The denominator simplification in the absolute prime remainder bound. -/
theorem prime_majorant_identity (m n : ℝ) (hm : m ≠ 0)
    (hminus : m - n ≠ 0) (hplus : m + n ≠ 0) :
    n * (1 + n / m) / (m ^ 2 - n ^ 2) = n / (m * (m - n)) := by
  have hd : m ^ 2 - n ^ 2 ≠ 0 := by
    rw [show m ^ 2 - n ^ 2 = (m - n) * (m + n) by ring]
    exact mul_ne_zero hminus hplus
  field_simp [hm, hminus, hplus, hd]
  <;> ring

/-- Even boundary row after its common factor 2*(-1)^(m+n)/T is removed. -/
def boundaryRow (a u v : ℝ) : ℝ :=
  a ^ 2 / ((a ^ 2 + u ^ 2) * (a ^ 2 + v ^ 2))

def boundaryRemainder (a u v : ℝ) : ℝ :=
  v ^ 2 / ((a ^ 2 + u ^ 2) * (a ^ 2 + v ^ 2))

theorem boundaryRow_split (a u v : ℝ)
    (hu : a ^ 2 + u ^ 2 ≠ 0) (hv : a ^ 2 + v ^ 2 ≠ 0) :
    boundaryRow a u v = 1 / (a ^ 2 + u ^ 2) - boundaryRemainder a u v := by
  unfold boundaryRow boundaryRemainder
  field_simp [hu, hv]
  <;> ring

/-- This identity is applied to every alpha_j before summing the boundary images. -/
theorem finite_boundary_row_split {ι : Type*} (I : Finset ι)
    (c a u : ℝ) (v x : ι → ℝ)
    (hu : a ^ 2 + u ^ 2 ≠ 0)
    (hv : ∀ i ∈ I, a ^ 2 + (v i) ^ 2 ≠ 0) :
    c * (1 / (a ^ 2 + u ^ 2)) + ∑ i ∈ I, x i * boundaryRow a u (v i) =
      (c + ∑ i ∈ I, x i) * (1 / (a ^ 2 + u ^ 2)) -
        ∑ i ∈ I, x i * boundaryRemainder a u (v i) := by
  have hs : (∑ i ∈ I, x i * boundaryRow a u (v i)) =
      ∑ i ∈ I, (x i * (1 / (a ^ 2 + u ^ 2)) -
        x i * boundaryRemainder a u (v i)) := by
    apply Finset.sum_congr rfl
    intro i hi
    rw [boundaryRow_split a u (v i) hu (hv i hi)]
    ring
  rw [hs, Finset.sum_sub_distrib, ← Finset.sum_mul]
  ring

theorem finite_boundary_row_trace_zero {ι : Type*} (I : Finset ι)
    (c a u : ℝ) (v x : ι → ℝ)
    (hu : a ^ 2 + u ^ 2 ≠ 0)
    (hv : ∀ i ∈ I, a ^ 2 + (v i) ^ 2 ≠ 0)
    (htrace : c + ∑ i ∈ I, x i = 0) :
    c * (1 / (a ^ 2 + u ^ 2)) + ∑ i ∈ I, x i * boundaryRow a u (v i) =
      -(∑ i ∈ I, x i * boundaryRemainder a u (v i)) := by
  rw [finite_boundary_row_split I c a u v x hu hv, htrace]
  ring

/-- The buffer is positive, including adjacent cutoffs M=L. -/
theorem positive_buffer {M L : ℝ} (hM : M ≤ L) (hL : 0 ≤ L) :
    0 < 1 - M / (L + 1) := by
  have hp : 0 < L + 1 := by linarith
  have hratio : M / (L + 1) < 1 := (div_lt_one hp).2 (by linarith)
  linarith

/-- A whole-tail square price, distinct from a spectral gap. -/
def tailSquarePrice (H L : ℝ) : ℝ := H ^ 2 / (3 * L ^ 3)

theorem tailSquarePrice_nonneg {H L : ℝ} (hL : 0 < L) :
    0 ≤ tailSquarePrice H L := by
  unfold tailSquarePrice
  exact div_nonneg (sq_nonneg H) (mul_nonneg (by norm_num) (pow_nonneg hL.le _))

/-- Arithmetic enclosure assembly. rfin2 retains EVERY intermediate row. -/
theorem trace_restricted_schur_enclosure
    {S U defect delta rfin2 H L : ℝ}
    (hid : S = U - defect) (hdefect : 0 ≤ defect)
    (hbound : defect ≤ (rfin2 + tailSquarePrice H L) / delta) :
    U - (rfin2 + tailSquarePrice H L) / delta ≤ S ∧ S ≤ U := by
  exact GRWTSK.LinearAlgebra.SchurResidual.split_residual_enclosure hid hdefect hbound

/-- Separate nonnegative square allowances can be combined into a quadratic
majorant; the analytical note supplies the actual source coefficients. -/
theorem two_prices_square (a b : ℝ) : (a + b) ^ 2 ≤ 2 * a ^ 2 + 2 * b ^ 2 := by
  nlinarith [sq_nonneg (a - b)]

/-- A positive upper approximation is not a positive lower enclosure. -/
theorem upper_schur_bound_does_not_imply_positive :
    (-1 : ℝ) ≤ 1 ∧ (0 : ℝ) < 1 ∧ ¬ (0 : ℝ) ≤ -1 := by
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
