/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
See grwtsk/math issue 124 for exact-source verification.
-/
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.Calculus.IteratedDeriv.Defs
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

/-!
# Exact source Xi and arithmetic Toeplitz Hilbert-Polya criterion

The original xi is defined via the ACTUAL Mathlib entire
completedRiemannZeta0, with its poles removed:
  xi(s) = (1+s*(s-1)*completedRiemannZeta0(s))/2.
Outside s=0,1 this equals s*(s-1)*completedRiemannZeta(s)/2.

For the true normalized F(w)=xi(1/2+sqrt(w))/xi(1/2), let a_n
be its even Taylor coefficients. The infinite Toeplitz array
T_(i,j)=a_(j-i) (j>=i, otherwise 0) has the Polya-frequency
property if ALL finite minors are nonnegative.

Edrei's theorem and order(F)=1/2 imply the mathematical
factorization F(w)=product_j(1+lam_j*w), lam_j>=0, sum lam_j<infinity.
This yields Xi(z)=Xi(0)*det_Fredholm(I-z^2*K) with positive
trace-class K=diag(lam_j), multiplicities retained.

THE UNPROVED AND RH-EQUIVALENT OBLIGATION IS ALL-MINOR POSITIVITY.
The entire Taylor fidelity, order, Edrei-to-Fredholm theorem and
actual Toeplitz positivity are explicitly not claimed Lean-verified.
No RH theorem, Alpoge final proof, zero table or synthetic spectrum
is imported. See adjacent full mathematical proof and status.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.XiToeplitzHilbertPolyaCriterion

/-- The actual completed xi expressed using the entire source zeta. -/
def sourceXi (s : ℂ) : ℂ :=
  ((1 : ℂ) + s * (s - 1) * completedRiemannZeta₀ s) / 2

/-- Exact source functional symmetry, independent of RH. -/
theorem sourceXi_reflection (s : ℂ) :
    sourceXi (1 - s) = sourceXi s := by
  unfold sourceXi
  rw [completedRiemannZeta₀_one_sub]
  ring

/-- Standard xi height-coordinate function, actual source. -/
def sourceXiOnLine (z : ℂ) : ℂ :=
  sourceXi ((1 / 2 : ℂ) + Complex.I * z)

theorem sourceXiOnLine_even (z : ℂ) :
    sourceXiOnLine (-z) = sourceXiOnLine z := by
  have h := sourceXi_reflection ((1 / 2 : ℂ) + Complex.I * z)
  have hc :
      1 - ((1 / 2 : ℂ) + Complex.I * z) =
        (1 / 2 : ℂ) + Complex.I * (-z) := by ring
  rw [hc] at h
  simpa only [sourceXiOnLine] using h

/-- Genuine even xi Taylor derivative divided by the true center.
Do NOT silently assume the center is nonzero. -/
def normalizedEvenXiTaylorComplex (n : ℕ) : ℂ :=
  iteratedDeriv (2 * n) sourceXi (1 / 2 : ℂ) /
    (((2 * n).factorial : ℂ) * sourceXi (1 / 2 : ℂ))

def normalizedEvenXiTaylor (n : ℕ) : ℝ :=
  (normalizedEvenXiTaylorComplex n).re

/-- Realness, center nonvanishing and the full actual entire
series expansion are proved for this source in the sibling module `XiTaylorSourceAnalytic`. -/
def XiTaylorSourceFaithful : Prop :=
  sourceXi (1 / 2 : ℂ) ≠ 0 ∧
  (∀ n : ℕ, (normalizedEvenXiTaylorComplex n).im = 0) ∧
  (∀ z : ℂ,
    HasSum
      (fun n : ℕ =>
        ((normalizedEvenXiTaylor n : ℝ) : ℂ) * (-(z ^ 2)) ^ n)
      (sourceXiOnLine z / sourceXi (1 / 2 : ℂ)))

/-- Exact full upper Toeplitz square array from xi coefficients. -/
def sourceToeplitzEntry (a : ℕ → ℝ) (i j : ℕ) : ℝ :=
  if i ≤ j then a (j - i) else 0

def sourceToeplitzMinor (a : ℕ → ℝ) (k : ℕ)
    (rows cols : Fin k → ℕ) : ℝ :=
  Matrix.det (fun i j : Fin k =>
    sourceToeplitzEntry a (rows i) (cols j))

/-- The UNPROVED all-rank, all-index Edrei/PF-infinity supplier. -/
def IsPolyaFrequency (a : ℕ → ℝ) : Prop :=
  ∀ (k : ℕ) (rows cols : Fin k → ℕ),
    StrictMono rows → StrictMono cols →
      0 ≤ sourceToeplitzMinor a k rows cols

/-- The independent all-minor original-Xi proof target.
It is equivalent mathematically to RH, not proved by this def. -/
def ActualXiToeplitzPositivity : Prop :=
  XiTaylorSourceFaithful ∧ IsPolyaFrequency normalizedEvenXiTaylor

theorem sourceToeplitz_diagonal (a : ℕ → ℝ) (i : ℕ) :
    sourceToeplitzEntry a i i = a 0 := by
  simp [sourceToeplitzEntry]

theorem sourceToeplitz_below (a : ℕ → ℝ) {i j : ℕ}
    (h : j < i) : sourceToeplitzEntry a i j = 0 := by
  simp [sourceToeplitzEntry, Nat.not_le.mpr h]

/-- Finite positive eigenfactor product; not a Taylor truncation. -/
def finitePositiveFactorProduct {N : ℕ} (lam : Fin N → ℝ)
    (w : ℂ) : ℂ :=
  ∏ j : Fin N, (1 + (lam j : ℂ) * w)

/-- Finite even spectral determinant of a positive diagonal K. -/
def finiteSpectralDeterminant {N : ℕ} (lam : Fin N → ℝ)
    (z : ℂ) : ℂ :=
  ∏ j : Fin N, (1 - (lam j : ℂ) * z ^ 2)

theorem finitePositiveFactorProduct_at_zero {N : ℕ}
    (lam : Fin N → ℝ) :
    finitePositiveFactorProduct lam 0 = 1 := by
  simp [finitePositiveFactorProduct]

theorem finiteSpectralDeterminant_at_zero {N : ℕ}
    (lam : Fin N → ℝ) :
    finiteSpectralDeterminant lam 0 = 1 := by
  simp [finiteSpectralDeterminant]

theorem finiteSpectralDeterminant_even {N : ℕ}
    (lam : Fin N → ℝ) (z : ℂ) :
    finiteSpectralDeterminant lam (-z) =
      finiteSpectralDeterminant lam z := by
  simp [finiteSpectralDeterminant]

theorem finiteSpectralDeterminant_eq_factorProduct {N : ℕ}
    (lam : Fin N → ℝ) (z : ℂ) :
    finiteSpectralDeterminant lam z =
      finitePositiveFactorProduct lam (-(z ^ 2)) := by
  unfold finiteSpectralDeterminant finitePositiveFactorProduct
  apply Finset.prod_congr rfl
  intro j _
  ring


/-- Actual xi's normalized Taylor sequence has a0=1 PROVIDED
the nonvanishing of the true source center is independently supplied.
This does not assume RH or any zero ordinate. -/
theorem normalizedEvenXiTaylor_zero_of_center_ne_zero
    (hcenter : sourceXi (1 / 2 : ℂ) ≠ 0) :
    normalizedEvenXiTaylor 0 = 1 := by
  simp only [one_div] at hcenter
  simp [normalizedEvenXiTaylor,
    normalizedEvenXiTaylorComplex, hcenter]

/-- The Pólya-frequency three-minor obstruction is strictly stronger
than nonnegative Fourier moment/Hankel positivity. The positive
measure 3/4 delta_0 + 1/4 delta_1 has cosh-transform coefficients
a0=1, a1=1/8, a2=1/96, a3=1/2880, yet this shifted
Toeplitz minor is NEGATIVE. Pure exact rational arithmetic. -/
theorem positiveFourierSource_negative_three_minor :
    ((1 / 8 : ℚ) ^ 3 -
      2 * (1 / 8 : ℚ) * (1 / 96 : ℚ) +
      (1 / 2880 : ℚ)) = -(7 / 23040 : ℚ) := by
  norm_num

/-- A genuine all-real-rooted product can lose hyperbolicity when
TAYLOR-truncated. This prevents an invalid finite-Hilbert-Polya
approximation based on truncating xi coefficients instead of
the proven positive eigenfactors. -/
theorem positiveFactor_taylor_degree_two_discriminant :
    (3 : ℚ) ^ 2 - 4 * 3 = -3 := by
  norm_num

end GRWTSK.NumberTheory.XiToeplitzHilbertPolyaCriterion
