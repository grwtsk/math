/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteInvariantDiffusers
import Mathlib

/-!
# Tunable lossless Weil-coordinate diffusion with a sharp recovery price

This improves the fixed-gap finite Weil diffuser, NOT the original
arithmetic source or a new spectral semigroup. For a source-index
involution S with S^2 = I and scalar r ≠ 0, set

  H_r = ((1+r) I + (1-r) S)/2,
  R_r = ((1+r) I - (1-r) S)/(2r).

The inverse and semigroup identities are exact:
  R_r H_r = H_r R_r = I,   H_r H_s = H_(r*s).
For real 0 ≤ r ≤ 1, H_r is a nonnegative Markov pair step
with mass one in each source column. The existing step H_(1/2)
is recovered definitionally as a special case. For r=1 the step
is identity. All fixed points, in particular the scalar zeta-pole
coordinate supplied by Involution.withPole, stay unchanged.

For two real sites a,b the exact identity is
  ||H_r(a,b)||² = ((a+b)² + r²(a-b)²)/2,
  ||R_r(a,b)||² = ((a+b)² + r^(-2)(a-b)²)/2.
Thus, when 0<r≤1,
  ||R_r(a,b)||² ≤ r^(-2) ||(a,b)||².
The bound is SHARP on an antisymmetric site pair, a=-b.
The earlier fixed-gap inverse can cost four times squared error;
choosing r=3/4 lowers this maximum to 16/9. A zero gap would
erase antisymmetric data and is correctly excluded.

For any ORIGINAL real finite quadratic A,
  Q_r(w) = quadratic A (R_r w)
retains the exact signed source, and all-vector positivity is
equivalent in the original and diffused coordinates. The same
algebraic coordinate maps act on complex individual-character
coefficients, without taking absolute values or erasing phases.
No theta-weighted or physical-L2 norm identification is inferred.

This is a rational/real/complex FINITE coordinate transform.
The source-specific margin-consuming theorem, including actual
zeta pole, complete remote residual and full high-complement
premises, is in WeilDiffusionCertifiedMarginReturn. The source
cannot acquire positivity from Markov nonnegativity alone.

Proof comparison: the new free parameter r and exact semigroup
permit trading numerical smoothing against source-return error.
This is standard two-eigenspace linear algebra, not an independent
RH/GRH argument or a novelty claim. Counterexample: r=0 sends
(a,-a) to zero, so no inverse/source-return exists.

SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTIC_REVIEW_NOT_RUN.
Source base: grwtsk/math@859cb74d7b56cd6c744aab5e449ec09b906f862e.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FiniteInvariantDiffusion.Involution

open Matrix
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

variable {ι : Type*} (d : Involution ι)

/-- Source-indexed Euler heat. The same field formula covers real and
complex Weil coefficient carriers; nothing is averaged across sectors. -/
def heatField {K : Type*} [Field K] [CharZero K]
    (r : K) (v : ι → K) (i : ι) : K :=
  ((1+r) * v i + (1-r) * v (d.swap i)) / 2

/-- Exact inverse of the nonzero-gap heat, not a positive Markov kernel. -/
def recoverField {K : Type*} [Field K] [CharZero K]
    (r : K) (w : ι → K) (i : ι) : K :=
  ((1+r) * w i - (1-r) * w (d.swap i)) / (2*r)

theorem recover_heatField {K : Type*} [Field K] [CharZero K]
    (r : K) (hr : r ≠ 0) (v : ι → K) :
    d.recoverField r (d.heatField r v) = v := by
  funext i
  change
    ((1+r) * (((1+r)*v i + (1-r)*v (d.swap i))/2) -
      (1-r) * (((1+r)*v (d.swap i) +
        (1-r)*v (d.swap (d.swap i)))/2)) / (2*r) = v i
  rw [d.involutive i]
  have hden : (2 : K) * r ≠ 0 := mul_ne_zero (by norm_num) hr
  apply (div_eq_iff hden).2
  ring

theorem heat_recoverField {K : Type*} [Field K] [CharZero K]
    (r : K) (hr : r ≠ 0) (w : ι → K) :
    d.heatField r (d.recoverField r w) = w := by
  funext i
  change
    ((1+r) * (((1+r)*w i - (1-r)*w (d.swap i))/(2*r)) +
      (1-r) * (((1+r)*w (d.swap i) -
        (1-r)*w (d.swap (d.swap i)))/(2*r))) / 2 = w i
  rw [d.involutive i]
  have hden : (2 : K) * r ≠ 0 := mul_ne_zero (by norm_num) hr
  field_simp [hden]
  ring

/-- The step remains exactly the identity on r=1, including every
fixed-point pole, and preserves its original signed source at r≠0. -/
theorem heatField_one {K : Type*} [Field K] [CharZero K]
    (v : ι → K) : d.heatField (1 : K) v = v := by
  funext i
  simp [heatField]

/-- Two heat steps compose multiplicatively in the contrast gap.
Different gaps commute ONLY here because the same involution is used.
Different source involutions or character sectors need not commute. -/
theorem heatField_mul {K : Type*} [Field K] [CharZero K]
    (r s : K) (v : ι → K) :
    d.heatField r (d.heatField s v) = d.heatField (r*s) v := by
  funext i
  change
    ((1+r) * (((1+s)*v i + (1-s)*v (d.swap i))/2) +
      (1-r) * (((1+s)*v (d.swap i) +
        (1-s)*v (d.swap (d.swap i)))/2))/2 =
      ((1+r*s)*v i + (1-r*s)*v (d.swap i))/2
  rw [d.involutive i]
  ring

/-- The earlier fixed two-site Markov step is precisely gap 1/2. -/
theorem heatField_half_eq_heatReal (v : ι → ℝ) :
    d.heatField (1/2 : ℝ) v = d.heatReal v := by
  funext i
  change
    ((1+(1/2:ℝ))*v i + (1-(1/2:ℝ))*v (d.swap i))/2 =
      (3*v i + v (d.swap i))/4
  ring

theorem recoverField_half_eq_recoverReal (v : ι → ℝ) :
    d.recoverField (1/2 : ℝ) v = d.recoverReal v := by
  funext i
  change
    ((1+(1/2:ℝ))*v i - (1-(1/2:ℝ))*v (d.swap i)) /
      (2*(1/2:ℝ)) =
      (3*v i - v (d.swap i))/2
  ring

/-- Exactly the Markov layer: positive weights require 0≤r≤1. -/
theorem heatField_real_nonneg (r : ℝ)
    (hr0 : 0 ≤ r) (hr1 : r ≤ 1)
    (v : ι → ℝ) (hv : ∀ i, 0 ≤ v i) :
    ∀ i, 0 ≤ d.heatField r v i := by
  intro i
  unfold heatField
  exact div_nonneg
    (add_nonneg
      (mul_nonneg (by linarith) (hv i))
      (mul_nonneg (by linarith) (hv (d.swap i))))
    (by norm_num)

/-- Every fixed coordinate is EXACTLY unchanged, without error. -/
theorem heatField_fixed {K : Type*} [Field K] [CharZero K]
    (r : K) (v : ι → K) (i : ι) (hfix : d.swap i = i) :
    d.heatField r v i = v i := by
  simp only [heatField, hfix]
  ring

theorem heatField_pole_fixed {κ : Type*} (physical : Involution κ)
    (r : ℝ) (v : (κ ⊕ Unit) → ℝ) :
    physical.withPole.heatField r v (.inr ()) = v (.inr ()) := by
  exact (physical.withPole).heatField_fixed r v (.inr ()) rfl

/-- Exact contrast gap in the two-site squared energy. -/
theorem twoSite_heatField_energy (r a b : ℝ) :
    (((1+r)*a + (1-r)*b)/2)^2 +
      (((1+r)*b + (1-r)*a)/2)^2 =
      ((a+b)^2 + r^2*(a-b)^2)/2 := by
  ring

/-- The inverse keeps mean energy and amplifies contrast by r^(-2).
Do not replace this metric by the diffused Euclidean norm. -/
theorem twoSite_recoverField_energy (r a b : ℝ) (hr : r ≠ 0) :
    (((1+r)*a - (1-r)*b)/(2*r))^2 +
      (((1+r)*b - (1-r)*a)/(2*r))^2 =
      ((a+b)^2 + (a-b)^2/r^2)/2 := by
  field_simp [hr]
  ring

/-- Sharp two-site upper error cost: 1/r^2, equal on antisymmetric
data. The original 4 at r=1/2 is only one possible design point. -/
theorem twoSite_recoverField_cost (r a b : ℝ)
    (hr : 0 < r) (hr1 : r ≤ 1) :
    (((1+r)*a - (1-r)*b)/(2*r))^2 +
      (((1+r)*b - (1-r)*a)/(2*r))^2 ≤
      (a^2+b^2)/r^2 := by
  have hrr : 0 ≤ 1-r^2 := by nlinarith [mul_nonneg hr.le (sub_nonneg.mpr hr1)]
  have hid :
      (a^2+b^2) - r^2 *
        (((1+r)*a - (1-r)*b)/(2*r))^2 -
        r^2 * (((1+r)*b - (1-r)*a)/(2*r))^2 =
        ((1-r^2)/2)*(a+b)^2 := by
    field_simp [hr.ne']
    ring
  have hnonneg : 0 ≤ ((1-r^2)/2)*(a+b)^2 :=
    mul_nonneg (div_nonneg hrr (by norm_num)) (sq_nonneg _)
  apply (le_div_iff₀ (pow_pos hr 2)).2
  nlinarith [hid, hnonneg]

/-- Inverse-transformed source quadratic, INCLUDING any signed pole,
complex-character source realization or remote allowance already in A. -/
def sourceQuadraticWithGap [Fintype ι]
    (r : ℝ) (A : Matrix ι ι ℝ) (w : ι → ℝ) : ℝ :=
  quadratic A (d.recoverField r w)

theorem sourceQuadraticWithGap_return [Fintype ι]
    (r : ℝ) (hr : r ≠ 0)
    (A : Matrix ι ι ℝ) (v : ι → ℝ) :
    d.sourceQuadraticWithGap r A (d.heatField r v) =
      quadratic A v := by
  simp only [sourceQuadraticWithGap, d.recover_heatField r hr]

theorem sourceQuadraticWithGap_nonneg_iff [Fintype ι]
    (r : ℝ) (hr : r ≠ 0)
    (A : Matrix ι ι ℝ) :
    (∀ w, 0 ≤ d.sourceQuadraticWithGap r A w) ↔
      (∀ v, 0 ≤ quadratic A v) := by
  constructor
  · intro h v
    simpa only [d.sourceQuadraticWithGap_return r hr A v] using
      h (d.heatField r v)
  · intro h w
    exact h (d.recoverField r w)

end GRWTSK.NumberTheory.WeilQuadraticForm.FiniteInvariantDiffusion.Involution
