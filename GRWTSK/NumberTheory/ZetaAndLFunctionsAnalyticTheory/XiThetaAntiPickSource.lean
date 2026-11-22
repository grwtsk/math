/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean v4.34.1, Mathlib d13f23b7.
Elaboration, fresh kernel replay and transitive axiom audit: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiThetaSchurSource
import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.Tactic

/-!
# True Xi anti-Pick source: all-upper-half-plane signed sign gate

Retain EXACT original XiTaylorSourceFaithful, sourceXi and the
normalizedEvenXiTaylor coefficient source. Do not fit zeros or
invent a new completed zeta. The genuine Fourier theta formula
and full complex Hadamard anti-Pick equivalence are proved
mathematically in the adjacent XiThetaAntiPickSource.md, but are
NOT formalized or independently proved in this Lean file.

The all-w anti-Pick inequality below is an RH-EQUIVALENT, OPEN
independent supplier. The finite one/two-factor identities are
elementary unconditional examples only. A positive Fourier
measure need not satisfy the requested sign.
NO Alpoge final RH theorem, no RH axiom, no imported zeta zeros.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.XiThetaAntiPickSource

open GRWTSK.NumberTheory.XiToeplitzHilbertPolyaCriterion

/-- The same TRUE source xi even Taylor coefficients, with the
square argument w. Its full analytic convergence and identity with
sourceXi are retained in the separate XiTaylorSourceFaithful. -/
def xiSquareTaylorSeries (w : ℂ) : ℂ :=
  ∑' n : ℕ, ((normalizedEvenXiTaylor n : ℝ) : ℂ) * w ^ n

/-- The genuine anti-Pick numerator contains NO division by F.
At a hypothetical zero, this expression is still defined. -/
def xiAntiPickNumerator (w : ℂ) : ℝ :=
  ((deriv xiSquareTaylorSeries w) *
    Complex.conj (xiSquareTaylorSeries w)).im

/-- This is the OPEN genuine RH-equivalent source assertion.
The Taylor fidelity is required to prevent nonsummable/incorrect
sequence values being silently treated as the actual xi function. -/
def ActualXiAntiPick : Prop :=
  XiTaylorSourceFaithful ∧
    ∀ w : ℂ, 0 < w.im → xiAntiPickNumerator w ≤ 0

/-- A TRUE single positive spectral factor. The multiplicity issue
is handled by retaining all factors in any subsequent product. -/
def linearSpectralFactor (lam : ℝ) (w : ℂ) : ℂ :=
  1 + (lam : ℂ) * w

def oneFactorNumerator (lam : ℝ) (w : ℂ) : ℝ :=
  ((lam : ℂ) * Complex.conj (linearSpectralFactor lam w)).im

theorem one_factor_numerator_identity (lam : ℝ) (w : ℂ) :
    oneFactorNumerator lam w = -(lam ^ 2) * w.im := by
  simp [oneFactorNumerator, linearSpectralFactor,
    Complex.mul_im, Complex.conj_re, Complex.conj_im,
    Complex.add_re, Complex.add_im,
    Complex.ofReal_re, Complex.ofReal_im]
  ring

theorem one_factor_antiPick_of_upper (lam : ℝ) (w : ℂ)
    (hw : 0 ≤ w.im) :
    oneFactorNumerator lam w ≤ 0 := by
  rw [one_factor_numerator_identity]
  exact mul_nonpos_of_nonpos_of_nonneg
    (neg_nonpos.mpr (sq_nonneg lam)) hw

/-- Exact two-factor source, with both terms separately retained:
there is no fictitious one-dimensional zero-counting measure. -/
def twoFactorValue (u v : ℝ) (w : ℂ) : ℂ :=
  linearSpectralFactor u w * linearSpectralFactor v w

def twoFactorDerivative (u v : ℝ) (w : ℂ) : ℂ :=
  (u : ℂ) * linearSpectralFactor v w +
    (v : ℂ) * linearSpectralFactor u w

theorem two_factor_numerator_identity (u v : ℝ) (w : ℂ) :
    (twoFactorDerivative u v w *
      Complex.conj (twoFactorValue u v w)).im =
      -w.im *
       (u ^ 2 *
          ((linearSpectralFactor v w).re ^ 2 +
            (linearSpectralFactor v w).im ^ 2) +
        v ^ 2 *
          ((linearSpectralFactor u w).re ^ 2 +
            (linearSpectralFactor u w).im ^ 2)) := by
  simp [twoFactorDerivative, twoFactorValue, linearSpectralFactor,
    Complex.mul_im, Complex.mul_re, Complex.conj_re, Complex.conj_im,
    Complex.add_re, Complex.add_im,
    Complex.ofReal_re, Complex.ofReal_im]
  ring

theorem two_factor_antiPick_of_upper (u v : ℝ) (w : ℂ)
    (hw : 0 ≤ w.im) :
    (twoFactorDerivative u v w *
      Complex.conj (twoFactorValue u v w)).im ≤ 0 := by
  rw [two_factor_numerator_identity]
  have hv : 0 ≤
      (linearSpectralFactor v w).re ^ 2 +
        (linearSpectralFactor v w).im ^ 2 := by
    positivity
  have hu : 0 ≤
      (linearSpectralFactor u w).re ^ 2 +
        (linearSpectralFactor u w).im ^ 2 := by
    positivity
  have hsum : 0 ≤
    u ^ 2 *
      ((linearSpectralFactor v w).re ^ 2 +
        (linearSpectralFactor v w).im ^ 2) +
    v ^ 2 *
      ((linearSpectralFactor u w).re ^ 2 +
        (linearSpectralFactor u w).im ^ 2) := by
    positivity
  exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hw) hsum

/-- Quadratic Taylor-level diagnostic at imaginary w=i*y.
This is only the local log-trace condition; it is not a proof
of the full all-complex Xi anti-Pick sign. -/
def quadraticValueAtImaginary (a b y : ℝ) : ℂ :=
  ⟨1 - b * y ^ 2, a * y⟩

def quadraticDerivativeAtImaginary (a b y : ℝ) : ℂ :=
  ⟨a, 2 * b * y⟩

theorem quadratic_antiPick_identity (a b y : ℝ) :
    (quadraticDerivativeAtImaginary a b y *
      Complex.conj (quadraticValueAtImaginary a b y)).im =
        (2 * b - a ^ 2) * y - 2 * b ^ 2 * y ^ 3 := by
  simp [quadraticDerivativeAtImaginary, quadraticValueAtImaginary,
    Complex.mul_im, Complex.conj_re, Complex.conj_im]
  ring

/-- The positive Fourier/cosh source 3/4 δ0 + 1/4 δ1 has
a1=1/8, a2=1/96, and the WRONG logarithmic sign at zero.
A complete rational interval certificate at w=i/10 is supplied
by scripts/verify_xi_theta_antipick_source.py. -/
theorem hostile_positive_cosine_source_wrong_local_sign :
    (2 * (1 / 96 : ℚ) - (1 / 8 : ℚ) ^ 2) = 1 / 192 := by
  norm_num


/-- The first-order imaginary coefficient of the ACTUAL double theta
integrand Q_w(u)*conj(P_w(v)) at w=iy, y→0+, has this exact
signed form. The analytic remainder is recorded in the adjacent
mathematical source, not proved by this finite algebra. -/
theorem theta_integrand_first_order_signed_identity (u v : ℝ) :
    u ^ 4 / 12 - u ^ 2 * v ^ 2 / 4 =
      u ^ 2 / 12 * (u ^ 2 - 3 * v ^ 2) := by
  ring

/-- A strictly positive first-order imaginary contribution
near u=1, v=0 (and hence v>0 small by continuity). -/
theorem theta_integrand_first_order_positive_at_boundary :
    (1 : ℝ) ^ 4 / 12 -
      (1 : ℝ) ^ 2 * (0 : ℝ) ^ 2 / 4 = 1 / 12 := by
  norm_num

/-- A strictly negative first-order imaginary contribution
at u=v=1. The true theta density is positive at both sectors. -/
theorem theta_integrand_first_order_negative_at_diagonal :
    (1 : ℝ) ^ 4 / 12 -
      (1 : ℝ) ^ 2 * (1 : ℝ) ^ 2 / 4 = -(1 / 6) := by
  norm_num


/-- The EXACT denominator-cleared numerator for the two-point
Hilbert–Pólya Pick kernel. The actual source is xiSquareTaylorSeries,
NOT an arbitrary fitted zero table. -/
def twoPointNumerator (F Fprime : ℂ → ℂ) (w v : ℂ) : ℂ :=
  F w * Complex.conj (Fprime v) -
    Fprime w * Complex.conj (F v)

def xiTwoPointPickKernel (w v : ℂ) : ℂ :=
  twoPointNumerator xiSquareTaylorSeries
    (deriv xiSquareTaylorSeries) w v /
      (w - Complex.conj v)

/-- The full RH-equivalent kernel positivity is OPEN, not a theorem.
Only genuinely upper-half-plane arguments are admitted. -/
def ActualXiPositivePickKernel : Prop :=
  XiTaylorSourceFaithful ∧
  ∀ (k : ℕ) (w : Fin k → ℂ),
    (∀ i, 0 < (w i).im) →
      ∀ c : Fin k → ℂ,
        0 ≤ (∑ i : Fin k, ∑ j : Fin k,
          Complex.conj (c i) *
            xiTwoPointPickKernel (w i) (w j) *
              (c j)).re

/-- Upper-half-plane inputs never meet a conjugate-denominator pole.
This does not assert F itself has no zero. -/
theorem upper_halfplane_conjugate_denominator_ne_zero
    (w v : ℂ) (hw : 0 < w.im) (hv : 0 < v.im) :
    w - Complex.conj v ≠ 0 := by
  intro h
  have heq : w = Complex.conj v := sub_eq_zero.mp h
  have hh : w.im = -v.im := by
    rw [heq, Complex.conj_im]
  linarith

/-- One finite positive factor gives EXACT cleared two-point kernel
lam² with its multiplicity; the general trace-class result needs
the original analytic factorization of the TRUE Xi source. -/
theorem one_factor_two_point_numerator
    (lam : ℝ) (w v : ℂ) :
    linearSpectralFactor lam w * Complex.conj (lam : ℂ) -
      (lam : ℂ) * Complex.conj (linearSpectralFactor lam v) =
        ((lam : ℂ) ^ 2) * (w - Complex.conj v) := by
  simp [linearSpectralFactor]
  ring

end GRWTSK.NumberTheory.XiThetaAntiPickSource
