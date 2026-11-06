/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib

/-!
# Odd witnesses for a nonreal zero orbit

Consumer: the genuine Weil zero pairing, with Fourier convention exp(-i*z*t)
and conjugate-linear-first inner products. This module proves finite complex
algebra used in an analytic root-to-projection argument. It does NOT construct
an analytic quotient, a Fourier inverse, a compact test, or a zeta zero.

Prior result: H. Yoshida, "On Hermitian forms attached to zeta functions",
Adv. Stud. Pure Math. 21 (1992), 281--325, Proposition 1; the odd-test criterion
is reported explicitly in M. Suzuki, arXiv:2606.09096v3, Section 1.1. The latter
was inspected; the original 1992 proof was not independently replayed. No claim
of a new Weil criterion or unconditional RH/GRH proof is made.

Analytic use, not a Lean conclusion of this file: for an even real entire
completed function Psi and a nonreal quartet a,-a,conj(a),-conj(a), divide Psi
by [(z^2-a^2)(z^2-conj(a)^2)]^m, using the ACTUAL common multiplicity m.
Call the entire quotient G. It is nonzero at the selected orbit. Interpolate
real c,d with c+d*a^2=I/(a*G(a)). Then g(z)=z*(c+d*z^2)*G(z) is odd and real
entire and g(a)=I. F=I*g is the transform of a real odd function once Fourier
inversion and decay are justified. Each selected Weil summand is -1; all other
zero summands vanish. A purely imaginary orbit needs a TWO-point denominator,
not the quartic denominator with repeated factors. Its selector is z*G(z)/(y*G(iy)).
The subsequent source module states and prices the analytic cutoff/projection.

AI-assisted manually authored source candidates. Elaboration, fresh kernel
replay, transitive axiom audit and independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.ComplexAnalysis.OddZeroOrbitWitness

/-- Real affine interpolation coefficients; no complex coefficient is hidden. -/
def affineSlope (v w : ℂ) : ℝ := w.im / v.im

def affineIntercept (v w : ℂ) : ℝ := w.re - affineSlope v w * v.re

/-- Any value can be interpolated at a genuinely nonreal node by a real affine
polynomial. The hypothesis is what fails for a purely imaginary root squared. -/
theorem real_affine_interpolation (v w : ℂ) (hv : v.im ≠ 0) :
    (affineIntercept v w : ℂ) + (affineSlope v w : ℂ) * v = w := by
  apply Complex.ext
  · simp [affineIntercept, affineSlope, Complex.mul_re]
  · simp [affineIntercept, affineSlope, Complex.mul_im, div_mul_cancel₀ _ hv]

theorem square_im_ne_zero (a : ℂ) (hx : a.re ≠ 0) (hy : a.im ≠ 0) :
    (a ^ 2).im ≠ 0 := by
  have hid : (a ^ 2).im = 2 * a.re * a.im := by
    simp [pow_two, Complex.mul_im]
    <;> ring
  rw [hid]
  exact mul_ne_zero (mul_ne_zero (by norm_num) hx) hy

/-- The selector is built from the root and the actual quotient value there. -/
def selectorValue (a g : ℂ) : ℂ :=
  a * ((affineIntercept (a ^ 2) (Complex.I / (a * g)) : ℂ) +
    (affineSlope (a ^ 2) (Complex.I / (a * g)) : ℂ) * a ^ 2) * g

theorem selectorValue_eq_I (a g : ℂ) (hx : a.re ≠ 0) (hy : a.im ≠ 0)
    (hg : g ≠ 0) : selectorValue a g = Complex.I := by
  have ha : a ≠ 0 := by
    intro h
    apply hx
    simp [h]
  unfold selectorValue
  rw [real_affine_interpolation _ _ (square_im_ne_zero a hx hy)]
  field_simp [ha, hg]
  <;> ring

/-- Multiplication by z times an even polynomial preserves oddness. -/
def oddPolynomial (c d : ℝ) (z : ℂ) : ℂ := z * ((c : ℂ) + (d : ℂ) * z ^ 2)

theorem oddPolynomial_neg (c d : ℝ) (z : ℂ) :
    oddPolynomial c d (-z) = -oddPolynomial c d z := by
  unfold oddPolynomial
  ring

theorem oddPolynomial_conjugate (c d : ℝ) (z : ℂ) :
    oddPolynomial c d (star z) = star (oddPolynomial c d z) := by
  simp [oddPolynomial, star_mul, star_add]
  <;> ring

/-- The zero-pairing term takes TWO observations, at z and at conjugate(z).
Replacing it by normSq(value at z) would erase the negative witness. -/
def pairingTerm (atConjugate atRoot : ℂ) : ℂ := star atConjugate * atRoot

theorem imaginary_selector_pair (g : ℂ) :
    pairingTerm (Complex.I * star g) (Complex.I * g) = g ^ 2 := by
  calc
    _ = -(Complex.I ^ 2) * g ^ 2 := by
      unfold pairingTerm
      rw [star_mul, star_star, Complex.star_def, Complex.conj_I]
      ring
    _ = _ := by rw [Complex.I_sq, neg_neg, one_mul]

theorem selected_pair_negative :
    pairingTerm (1 : ℂ) (-1) = -1 ∧
      pairingTerm (-1 : ℂ) 1 = -1 := by
  norm_num [pairingTerm]

/-- Four distinct points, each with multiplicity m. This is finite algebra,
not a claim that a selected root has that multiplicity in an actual L-function. -/
theorem quartet_total (m : ℕ) :
    (m : ℂ) *
      (pairingTerm 1 (-1) + pairingTerm (-1) 1 +
        pairingTerm (-1) 1 + pairingTerm 1 (-1)) = -4 * (m : ℂ) := by
  simp [pairingTerm]
  <;> ring

/-- A purely imaginary root gives only two distinct orbit points. -/
theorem axial_total (m : ℕ) :
    (m : ℂ) * (pairingTerm 1 (-1) + pairingTerm (-1) 1) = -2 * (m : ℂ) := by
  simp [pairingTerm]
  <;> ring

/-- The averaged character form counts half the product divisor. -/
theorem averaged_quartet_total (m : ℕ) :
    ((-4 : ℂ) * (m : ℂ)) / 2 = -2 * (m : ℂ) := by ring

theorem averaged_axial_total (m : ℕ) :
    ((-2 : ℂ) * (m : ℂ)) / 2 = -(m : ℂ) := by ring

/-- Root on the imaginary axis: G(iy) is real by evenness and reality.
Both the ordinate and quotient value must actually be nonzero. -/
theorem axial_selector (y g : ℝ) (hy : y ≠ 0) (hg : g ≠ 0) :
    ((Complex.I * (y : ℂ)) * (g : ℂ)) / ((y * g : ℝ) : ℂ) = Complex.I := by
  have hyc : (y : ℂ) ≠ 0 := by exact_mod_cast hy
  have hgc : (g : ℂ) ≠ 0 := by exact_mod_cast hg
  push_cast
  field_simp [hyc, hgc]
  <;> ring

/-- Nonreal selector data are invisible to a positivity test that changes the
source pairing into separate absolute squares. -/
theorem squared_magnitudes_do_not_preserve_pairing :
    (0 : ℝ) ≤ Complex.normSq (1 : ℂ) ∧
      (0 : ℝ) ≤ Complex.normSq (-1 : ℂ) ∧
      (pairingTerm (1 : ℂ) (-1)).re < 0 := by
  norm_num [pairingTerm, Complex.normSq_apply]

end GRWTSK.ComplexAnalysis.OddZeroOrbitWitness
