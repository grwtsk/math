/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.SpecialFunctions.CenteredDigammaShift
import GRWTSK.SpecialFunctions.GammaEulerLimit

/-!
# Return of the positive centered series to the actual digamma function

MSC2020: 33B15 (primary), 11M06, 11M26.

The source-local Euler-strip theorem supplies actual logarithmic-derivative
convergence. Its finite centered differences are the already summable rational
increments, so uniqueness of limits identifies their sum with Complex.digamma.
The previously retained shifted-source residual is then zero, rather than a
hypothesis. Neither the classical digamma series nor its integral formula is
assumed. The earlier finite-shift source and its historical evidence are kept.

Consumer: one-sided centered archimedean multiplier enclosures at y=t/2 for
both Dirichlet parities. Fourier integration, numerical quadrature, baseline
constant certification and full Weil positivity are not proved by this file.
SOURCE_PROOF_CANDIDATE: elaboration, kernel replay, transitive axiom audit,
and independent review NOT_RUN. No mathematical novelty claim. Refs math#1801.
See GammaEulerLimit.md and the individual declaration provenance.
-/

set_option autoImplicit false
noncomputable section

open Filter
open scoped Topology

namespace GRWTSK.SpecialFunctions.CenteredDigamma

/-- The finite Euler approximant has exactly the existing positive centered
partial sum as its logarithmic-derivative difference. The logarithmic scale
term cancels between the two actual evaluation points. -/
theorem GammaSeq_centered_eq_partialSum {sigma : ℝ} (hsigma : 0 < sigma)
    (y : ℝ) {n : ℕ} (hn : n ≠ 0) :
    (logDeriv (fun z => Complex.GammaSeq z n)
        ((sigma : ℂ) + (y : ℂ) * Complex.I)).re -
      (logDeriv (fun z => Complex.GammaSeq z n) (sigma : ℂ)).re =
        partialSum sigma y (n + 1) := by
  have hz : 0 < ((sigma : ℂ) + (y : ℂ) * Complex.I).re := by simpa using hsigma
  rw [GammaEulerLimit.logDeriv_GammaSeq hn hz,
    GammaEulerLimit.logDeriv_GammaSeq hn (z := (sigma : ℂ)) hsigma]
  simp only [Complex.sub_re, Complex.re_sum]
  calc
    _ = ∑ j ∈ Finset.range (n + 1),
        (((sigma : ℂ) + (j : ℂ))⁻¹).re -
          (((sigma : ℂ) + (y : ℂ) * Complex.I + (j : ℂ))⁻¹).re := by
      rw [Finset.sum_sub_distrib]
      ring
    _ = partialSum sigma y (n + 1) := by
      unfold partialSum
      apply Finset.sum_congr rfl
      intro j _
      have hs : 0 < sigma + (j : ℝ) :=
        add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg j)
      have hd : (sigma + (j : ℝ)) ^ 2 + y ^ 2 ≠ 0 :=
        (add_pos_of_pos_of_nonneg (sq_pos_of_pos hs) (sq_nonneg y)).ne'
      have hzarg : (sigma : ℂ) + (y : ℂ) * Complex.I + (j : ℂ) =
          ((sigma + (j : ℝ) : ℝ) : ℂ) + (y : ℂ) * Complex.I := by
        push_cast
        ring
      have hrarg : (sigma : ℂ) + (j : ℂ) = ((sigma + (j : ℝ) : ℝ) : ℂ) := by
        push_cast
        rfl
      rw [hzarg, hrarg, ← Complex.ofReal_inv, Complex.ofReal_re,
        Complex.inv_re, Complex.normSq_add_mul_I]
      simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re,
        Complex.I_re, Complex.ofReal_im, Complex.I_im, mul_zero,
        zero_mul, sub_zero, add_zero]
      unfold term
      field_simp [hs.ne', hd] <;> ring

/-- The convergent positive rational series equals the actual centered digamma.
The analytic supplier is locally uniform Euler-Gamma convergence, not an
assumed digamma positivity or residual limit. -/
theorem centered_eq_tsum {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) :
    centered sigma y = ∑' n : ℕ, term (sigma + (n : ℝ)) y := by
  have hz : 0 < ((sigma : ℂ) + (y : ℂ) * Complex.I).re := by simpa using hsigma
  have hvertical := GammaEulerLimit.logDeriv_GammaSeq_tendsto hz
  have hreal := GammaEulerLimit.logDeriv_GammaSeq_tendsto (z := (sigma : ℂ)) hsigma
  have hcenter : Tendsto
      (fun n : ℕ =>
        (logDeriv (fun z => Complex.GammaSeq z n)
          ((sigma : ℂ) + (y : ℂ) * Complex.I)).re -
        (logDeriv (fun z => Complex.GammaSeq z n) (sigma : ℂ)).re)
      atTop (𝓝 (centered sigma y)) := by
    simpa only [centered, Complex.digamma_def] using
      (Complex.continuous_re.continuousAt.tendsto.comp hvertical).sub
        (Complex.continuous_re.continuousAt.tendsto.comp hreal)
  have hcenter' : Tendsto (fun n : ℕ => partialSum sigma y (n + 1))
      atTop (𝓝 (centered sigma y)) := by
    apply hcenter.congr'
    filter_upwards [eventually_ne_atTop 0] with n hn
    exact GammaSeq_centered_eq_partialSum hsigma y hn
  have hsucc : Tendsto (fun n : ℕ => n + 1) atTop atTop := by
    apply tendsto_atTop.2
    intro b
    exact eventually_atTop.2 ⟨b, fun n hn => hn.trans (Nat.le_succ n)⟩
  have hsum : Tendsto (fun n : ℕ => partialSum sigma y (n + 1)) atTop
      (𝓝 (∑' n : ℕ, term (sigma + (n : ℝ)) y)) :=
    (summable_terms hsigma y).hasSum.tendsto_sum_nat.comp hsucc
  exact tendsto_nhds_unique hcenter' hsum

/-- Unconditional centered-digamma sign and rational growth budget. -/
theorem centered_bounds {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) :
    0 ≤ centered sigma y ∧ centered sigma y ≤ remainderBudget sigma y := by
  rw [centered_eq_tsum hsigma y]
  exact tsum_terms_bounds hsigma y

/-- Complete omitted-series enclosure now returned to the actual special function. -/
theorem centered_tail_enclosure {sigma : ℝ} (hsigma : 0 < sigma)
    (y : ℝ) (N : ℕ) :
    0 ≤ centered sigma y - partialSum sigma y N ∧
      centered sigma y - partialSum sigma y N ≤
        remainderBudget (sigma + (N : ℝ)) y := by
  rw [centered_eq_tsum hsigma y]
  exact series_tail_enclosure hsigma y N

/-- Actual-source enclosure uniformly covering every frequency in a bounded window. -/
theorem centered_tail_enclosure_on_window {sigma : ℝ} (hsigma : 0 < sigma)
    {Y y : ℝ} (hY : 0 ≤ Y) (hy : |y| ≤ Y) (N : ℕ) :
    0 ≤ centered sigma y - partialSum sigma y N ∧
      centered sigma y - partialSum sigma y N ≤
        remainderBudget (sigma + (N : ℝ)) Y := by
  rw [centered_eq_tsum hsigma y]
  exact series_tail_enclosure_on_window hsigma hY hy N

/-- The exact residual left by CenteredDigammaShift has now been identified as zero. -/
theorem shifted_residual_tendsto_zero {sigma : ℝ} (hsigma : 0 < sigma) (y : ℝ) :
    Tendsto (fun N : ℕ => centered (sigma + (N : ℝ)) y) atTop (𝓝 0) := by
  have h := shifted_residual_tendsto hsigma y
  rw [centered_eq_tsum hsigma y, sub_self] at h
  exact h

/-- Quantitative zero-residual bound on an entire bounded imaginary window. -/
theorem shifted_residual_window_bounds {sigma : ℝ} (hsigma : 0 < sigma)
    {Y y : ℝ} (hY : 0 ≤ Y) (hy : |y| ≤ Y) (N : ℕ) :
    0 ≤ centered (sigma + (N : ℝ)) y ∧
      centered (sigma + (N : ℝ)) y ≤ remainderBudget (sigma + (N : ℝ)) Y := by
  have h := centered_tail_enclosure_on_window hsigma hY hy N
  have heq := centered_sub_shift_nat hsigma y N
  constructor <;> linarith [h.1, h.2]

/-- Genuine two-parity actual-value enclosures at spectral frequency t=2.
These are bounds for centered values, not just finite recurrence drops. -/
theorem parity_centered_enclosure_regression :
    (64 / 17 : ℝ) ≤ centered (1 / 4) 1 ∧
      centered (1 / 4) 1 ≤ 9768 / 2125 ∧
      (64 / 75 : ℝ) ≤ centered (3 / 4) 1 ∧
      centered (3 / 4) 1 ≤ 30952 / 25725 := by
  have he := centered_tail_enclosure (sigma := (1 / 4 : ℝ)) (by norm_num) 1 1
  have ho := centered_tail_enclosure (sigma := (3 / 4 : ℝ)) (by norm_num) 1 1
  norm_num [partialSum, term, remainderBudget] at he ho
  constructor
  · linarith [he.1]
  constructor
  · linarith [he.2]
  constructor
  · linarith [ho.1]
  · linarith [ho.2]

end GRWTSK.SpecialFunctions.CenteredDigamma
