/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Data.Real.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Omega
import Mathlib.Tactic.NormNum

/-!
# Scalar and finite-sum components of the Weil boundary-periodization comparison

Analytical proof and exact-source return:
  documentation/mathematics/_support/reviews/weil-periodic-boundary.md

Sources: Connes--Consani--Moscovici, arXiv:2511.22755v1, (3.7)--(3.20),
and Connes--van Suijlekom, arXiv:2511.23257v1, (6), Remark 4.3, Theorem 6.1.
The note proves an exact bounded periodic comparison for the full arithmetic
Weil operator, including its operator core, explicit high-frequency lower
bounds and buffered mixed-block estimates. These are not cofinal ground-state
separation or normalized ground-state convergence.

THIS FILE contains only the rational algebra and finite-sum sign components.
It does NOT formalize the infinite kernel sum, Schur test, maximal form-domain
identity, essential self-adjointness, prime Fourier coefficients, prolate domain
membership, or the full analytical theorem. Its scalar hypotheses are not
assertions that the remaining arithmetic low-block estimates have been proved.

Elaboration: NOT_RUN. Fresh kernel checking: NOT_RUN. Transitive axiom audit:
NOT_RUN. Independent analytical review: NOT_RUN. Novelty: UNASSESSED.
No root import, dependency pin, or existing proof status is changed.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PeriodicBoundary

/-- Summand in the convergent digamma difference series, with `a > 0`. -/
def multiplierSummand (a b : ℝ) : ℝ := b ^ 2 / (a * (a ^ 2 + b ^ 2))

/-- Rational identity behind the positive series for the archimedean symbol. -/
theorem multiplierSummand_eq (a b : ℝ) (ha : a ≠ 0)
    (hd : a ^ 2 + b ^ 2 ≠ 0) :
    multiplierSummand a b = 1 / a - a / (a ^ 2 + b ^ 2) := by
  unfold multiplierSummand
  field_simp [ha, hd]
  <;> ring

/-- Each summand is nonnegative; the series and domain passage are analytical. -/
theorem multiplierSummand_nonneg {a b : ℝ} (ha : 0 < a) :
    0 ≤ multiplierSummand a b := by
  exact div_nonneg (sq_nonneg b)
    (mul_nonneg ha.le (add_nonneg (sq_nonneg a) (sq_nonneg b)))

/-- Numerator of the derivative used in the integral-test comparison. -/
theorem multiplierDerivative_numerator {a b : ℝ} :
    -(b ^ 2 * (3 * a ^ 2 + b ^ 2)) ≤ 0 := by
  have h : 0 ≤ b ^ 2 * (3 * a ^ 2 + b ^ 2) :=
    mul_nonneg (sq_nonneg b)
      (add_nonneg (mul_nonneg (by norm_num) (sq_nonneg a)) (sq_nonneg b))
  exact neg_nonpos.mpr h

/-- The Fourier-matrix numerator is controlled by its two denominators. -/
theorem modeGram_identity (a x y : ℝ) :
    (a ^ 2 + x ^ 2) * (a ^ 2 + y ^ 2) - (a ^ 2 - x * y) ^ 2 =
      a ^ 2 * (x + y) ^ 2 := by
  ring

/-- Squared version of the coefficient estimate for the boundary kernel. -/
theorem modeGram_bound (a x y : ℝ) :
    (a ^ 2 - x * y) ^ 2 ≤ (a ^ 2 + x ^ 2) * (a ^ 2 + y ^ 2) := by
  have h := mul_nonneg (sq_nonneg a) (sq_nonneg (x + y))
  rw [← modeGram_identity a x y] at h
  exact sub_nonneg.mp h

/-- Simplification of the geometric-image coefficient, with `p = exp(a*T)`. -/
theorem imageCoefficient_identity (p : ℝ) (hp : p ≠ 0)
    (hp2 : p ^ 2 - 1 ≠ 0) :
    8 * ((p - p⁻¹) / 2) ^ 2 / (p ^ 2 - 1) = 2 * (1 - (p⁻¹) ^ 2) := by
  field_simp [hp, hp2]
  <;> ring

/-- Finite partial rank decomposition with real hyperbolic moments. -/
def finiteImageForm {ι : Type*} (I : Finset ι) (w c s : ι → ℝ) : ℝ :=
  ∑ i ∈ I, w i * ((c i) ^ 2 - (s i) ^ 2)

/-- Even vectors have zero odd moments, so each finite partial form is positive. -/
theorem finiteImageForm_even_nonneg {ι : Type*} (I : Finset ι)
    (w c s : ι → ℝ) (hw : ∀ i ∈ I, 0 ≤ w i)
    (hs : ∀ i ∈ I, s i = 0) :
    0 ≤ finiteImageForm I w c s := by
  unfold finiteImageForm
  apply Finset.sum_nonneg
  intro i hi
  rw [hs i hi]
  simpa using mul_nonneg (hw i hi) (sq_nonneg (c i))

/-- Odd vectors have zero even moments, giving the opposite form sign. -/
theorem finiteImageForm_odd_nonpos {ι : Type*} (I : Finset ι)
    (w c s : ι → ℝ) (hw : ∀ i ∈ I, 0 ≤ w i)
    (hc : ∀ i ∈ I, c i = 0) :
    finiteImageForm I w c s ≤ 0 := by
  unfold finiteImageForm
  apply Finset.sum_nonpos
  intro i hi
  rw [hc i hi]
  simpa using mul_nonpos_of_nonneg_of_nonpos (hw i hi)
    (neg_nonpos.mpr (sq_nonneg (s i)))

/-- The nonzero frequency buffer used before summing prime matrix coefficients. -/
theorem bufferedFrequencyDistance {M N m n : ℤ}
    (hMN : M < N) (hn : |n| ≤ M) (hm : N < |m|) :
    N - M < |m - n| := by
  have htri := abs_add_le (m - n) n
  have heq : m - n + n = m := by omega
  rw [heq] at htri
  omega

/-- The explicit cutoff makes the odd pole-tail loss at most one. -/
theorem poleTailLoss_le_one {a N : ℝ} (hN : 0 < N) (haN : a ≤ N) :
    a / N ≤ 1 := by
  apply (div_le_iff₀ hN).2
  simpa using haN

/-- Scalar assembly of the actual high-frequency floor proved in the note. -/
theorem highTailFloor {c m k h p b : ℝ}
    (hm : b + 1 + k + h - c ≤ m) (hp : p ≤ 1) :
    b ≤ c + m - k - h - p := by
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.PeriodicBoundary
