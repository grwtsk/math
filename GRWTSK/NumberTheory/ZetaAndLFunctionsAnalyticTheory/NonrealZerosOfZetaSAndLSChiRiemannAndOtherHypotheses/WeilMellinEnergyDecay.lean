/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilContourWeight
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilFourierSupportQuadrature

/-!
# Derivative-energy decay of the actual signed Weil contour weight

MSC2020: 11M26 (primary), 11M41, 42A38, 30C15.

Reuse the literal correlation weight and its reflected-product theorem. The
undivided Fourier integration-by-parts estimate removes the unnecessary zeroth
moment from the high-frequency bound. Support supplies the derivative L1 cost
from the actual derivative energy. No new Mellin transform, zero divisor,
arithmetic form or RH target is defined here.

The companion gives a separate WRITTEN Jensen argument, including conductor-one
pole removal, for a uniform local zero-count constant 108. It then obtains a
complete signed-zero tail bounded by
  432*A*exp(2*A*b)*(2*log(4*q*T)+1)/T * integral norm(f')^2
when all source zeros obey abs(re rho - 1/2) <= b and T >= 1.
The ordinary strip b=1/2 is unconditional; b=3/8 is a separately identified
stronger source supplier. The count, infinite sum, full explicit-formula return
and matrix consequences are not additional Lean declarations in this file.

SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel replay,
transitive axiom audit, independent review and numerical certification NOT_RUN.
Source: grwtsk/math@af9b7a05afbf79d4def070fa96f9091b2f177160.
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Coordination: math#1801, scope comment 6828336051. Originality UNASSESSED.
Individual literal-statement provenance and the analytical companion are adjacent.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped ContDiff ComplexConjugate BigOperators

namespace GRWTSK.NumberTheory.WeilMellinEnergyDecay

open WeilNegativeWitness WeilFourierQuadrature WeilFourierSupportQuadrature
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

/-- The derivative has the same compact support and smoothness. Its actual L1
norm is paid by the existing support-moment theorem, without dividing by mass. -/
theorem admissible_derivative_l1_sq_le_energy
    {f : ℝ → ℂ} (hf : Admissible f) {A : ℝ} (hA : 0 < A)
    (hs : tsupport f ⊆ Icc (-A) A) :
    (∫ x : ℝ, ‖deriv f x‖) ^ 2 ≤ 2 * A * (∫ x : ℝ, ‖deriv f x‖ ^ 2) := by
  have hd : Admissible (deriv f) :=
    ⟨(contDiff_infty_iff_deriv.mp hf.1).2, hf.2.deriv⟩
  have hsupport : ∀ x, x ∉ Icc (-A) A → deriv f x = 0 := by
    intro x hx
    by_contra hn
    have hm : x ∈ tsupport (deriv f) := subset_closure hn
    exact hx (hs (tsupport_deriv_subset hm))
  have hm := admissible_supported_moment_bounds hd hA hsupport
  simpa only [l1Mass] using hm.1

/-- An undivided bound on the original complex correlation weight, valid also
on the real axis. Only taking a norm removes the sign of the reflected pairing. -/
theorem norm_contour_weight_mul_im_sq_le
    {f : ℝ → ℂ} (hf : Admissible f) {A : ℝ} (hA : 0 < A)
    (hs : tsupport f ⊆ Icc (-A) A) (s : ℂ) :
    s.im ^ 2 * ‖∫ r : ℝ, correlation f r *
      Complex.exp ((s - 1 / 2) * (r : ℂ))‖ ≤
      (2 * A * Real.exp (2 * A * |s.re - 1 / 2|)) *
        (∫ x : ℝ, ‖deriv f x‖ ^ 2) := by
  let z : ℂ := spectralCoordinate s
  let F : ℂ → ℂ := fun w =>
    ∫ x : ℝ, f x * Complex.exp (Complex.I * w * (x : ℂ))
  let J : ℝ := ∫ x : ℝ, ‖deriv f x‖
  let E : ℝ := Real.exp (A * |z.im|)
  have hJ0 : 0 ≤ J := integral_nonneg fun x => norm_nonneg _
  have hE0 : 0 ≤ E := (Real.exp_pos _).le
  have h0 : ‖z‖ * ‖F z‖ ≤ E * J := by
    simpa only [pow_one, Function.iterate_one] using
      norm_fourier_integral_mul_pow_le f A hf.1 hf.2 hs 1 z
  have h1 : ‖z‖ * ‖F (conj z)‖ ≤ E * J := by
    simpa only [pow_one, Function.iterate_one, Complex.norm_conj,
      Complex.conj_im, abs_neg] using
      norm_fourier_integral_mul_pow_le f A hf.1 hf.2 hs 1 (conj z)
  have hmul := mul_le_mul h0 h1
    (mul_nonneg (norm_nonneg _) (norm_nonneg _)) (mul_nonneg hE0 hJ0)
  have hW : ‖∫ r : ℝ, correlation f r *
      Complex.exp ((s - 1 / 2) * (r : ℂ))‖ = ‖F z‖ * ‖F (conj z)‖ := by
    rw [correlation_contour_weight_eq_reflected_product f A
      (hf.1.continuous.integrable_of_hasCompactSupport hf.2) (supported_of_tsupport hs)]
    simp only [norm_mul, Complex.norm_conj]
  have hn : ‖z‖ = ‖s - 1 / 2‖ := by
    simp only [z, spectralCoordinate, norm_mul, norm_neg, Complex.norm_I, one_mul]
  have him : |s.im| ≤ ‖z‖ := by
    rw [hn]
    simpa using Complex.abs_im_le_norm (s - 1 / 2)
  have hsq : s.im ^ 2 ≤ ‖z‖ ^ 2 := by
    nlinarith [sq_abs s.im, norm_nonneg z]
  have hJ := admissible_derivative_l1_sq_le_energy hf hA hs
  have he : E ^ 2 = Real.exp (2 * A * |s.re - 1 / 2|) := by
    dsimp only [E, z]
    rw [spectralCoordinate_im, abs_sub_comm, pow_two, ← Real.exp_add]
    congr 1
    ring
  calc
    _ ≤ ‖z‖ ^ 2 * ‖∫ r : ℝ, correlation f r *
        Complex.exp ((s - 1 / 2) * (r : ℂ))‖ :=
      mul_le_mul_of_nonneg_right hsq (norm_nonneg _)
    _ = (‖z‖ * ‖F z‖) * (‖z‖ * ‖F (conj z)‖) := by rw [hW]; ring
    _ ≤ (E * J) * (E * J) := hmul
    _ = E ^ 2 * J ^ 2 := by ring
    _ ≤ E ^ 2 * (2 * A * (∫ x : ℝ, ‖deriv f x‖ ^ 2)) :=
      mul_le_mul_of_nonneg_left hJ (sq_nonneg E)
    _ = _ := by rw [he]; ring

/-- A genuine strip supplier is retained explicitly. The source weight is
unchanged, and division occurs only after the positive height cutoff is fixed. -/
theorem norm_contour_weight_le_strip_energy
    {f : ℝ → ℂ} (hf : Admissible f) {A : ℝ} (hA : 0 < A)
    (hs : tsupport f ⊆ Icc (-A) A) (b : ℝ) (s : ℂ)
    (hb : |s.re - 1 / 2| ≤ b) {T : ℝ} (hT : 0 < T)
    (hheight : T ≤ |s.im|) :
    ‖∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))‖ ≤
      (2 * A * Real.exp (2 * A * b) / T ^ 2) *
        (∫ x : ℝ, ‖deriv f x‖ ^ 2) := by
  have hsq : T ^ 2 ≤ s.im ^ 2 := by
    nlinarith [sq_abs s.im, abs_nonneg s.im]
  have hmass : 0 ≤ ∫ x : ℝ, ‖deriv f x‖ ^ 2 :=
    integral_nonneg fun x => sq_nonneg _
  have he : Real.exp (2 * A * |s.re - 1 / 2|) ≤ Real.exp (2 * A * b) :=
    Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hb (by positivity))
  have hbound : T ^ 2 * ‖∫ r : ℝ, correlation f r *
      Complex.exp ((s - 1 / 2) * (r : ℂ))‖ ≤
      (2 * A * Real.exp (2 * A * b)) * (∫ x : ℝ, ‖deriv f x‖ ^ 2) := by
    calc
      _ ≤ s.im ^ 2 * ‖∫ r : ℝ, correlation f r *
          Complex.exp ((s - 1 / 2) * (r : ℂ))‖ :=
        mul_le_mul_of_nonneg_right hsq (norm_nonneg _)
      _ ≤ (2 * A * Real.exp (2 * A * |s.re - 1 / 2|)) *
          (∫ x : ℝ, ‖deriv f x‖ ^ 2) := norm_contour_weight_mul_im_sq_le hf hA hs s
      _ ≤ _ := mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left he (by positivity)) hmass
  calc
    _ ≤ ((2 * A * Real.exp (2 * A * b)) *
        (∫ x : ℝ, ‖deriv f x‖ ^ 2)) / T ^ 2 := by
      apply (le_div_iff₀ (sq_pos_of_pos hT)).2
      simpa only [mul_comm] using hbound
    _ = _ := by ring

/-- Finite bands of the actual continued Dirichlet source retain every analytic
multiplicity. The ordinary critical strip supplies b=1/2, including conductor
one. This does not assume a zero-count envelope or any arithmetic sign. -/
theorem finite_source_band_norm_sum_le
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q)
    (S : Finset (CriticalStripZero chi))
    {f : ℝ → ℂ} (hf : Admissible f) {A : ℝ} (hA : 0 < A)
    (hs : tsupport f ⊆ Icc (-A) A) {T : ℝ} (hT : 0 < T)
    (hheight : ∀ rho ∈ S, T ≤ |rho.1.im|) :
    (∑ rho ∈ S, ‖(zeroMultiplicity chi rho : ℂ) *
      ∫ r : ℝ, correlation f r * Complex.exp ((rho.1 - 1 / 2) * (r : ℂ))‖) ≤
      ((2 * A * Real.exp A / T ^ 2) * (∫ x : ℝ, ‖deriv f x‖ ^ 2)) *
        (∑ rho ∈ S, (zeroMultiplicity chi rho : ℝ)) := by
  classical
  have hpoint (rho : CriticalStripZero chi) (hrho : rho ∈ S) :
      ‖(zeroMultiplicity chi rho : ℂ) *
        ∫ r : ℝ, correlation f r * Complex.exp ((rho.1 - 1 / 2) * (r : ℂ))‖ ≤
      ((2 * A * Real.exp A / T ^ 2) * (∫ x : ℝ, ‖deriv f x‖ ^ 2)) *
        (zeroMultiplicity chi rho : ℝ) := by
    have hb : |rho.1.re - 1 / 2| ≤ (1 / 2 : ℝ) :=
      abs_le.mpr ⟨by linarith [rho.2.2.1], by linarith [rho.2.2.2]⟩
    have hw := norm_contour_weight_le_strip_energy hf hA hs (1 / 2) rho.1 hb hT
      (hheight rho hrho)
    rw [show 2 * A * (1 / 2 : ℝ) = A by ring] at hw
    rw [norm_mul, Complex.norm_natCast]
    simpa only [mul_comm] using
      mul_le_mul_of_nonneg_left hw (Nat.cast_nonneg (zeroMultiplicity chi rho))
  calc
    _ ≤ ∑ rho ∈ S,
        (((2 * A * Real.exp A / T ^ 2) * (∫ x : ℝ, ‖deriv f x‖ ^ 2)) *
          (zeroMultiplicity chi rho : ℝ)) := Finset.sum_le_sum hpoint
    _ = _ := by rw [Finset.mul_sum]

end GRWTSK.NumberTheory.WeilMellinEnergyDecay
