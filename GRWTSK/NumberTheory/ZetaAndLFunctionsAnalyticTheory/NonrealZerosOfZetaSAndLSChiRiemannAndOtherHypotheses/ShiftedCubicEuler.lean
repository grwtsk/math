/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.QuarticZetaSourceBounds
import Mathlib.Tactic

/-!
# Shifted Euler--Maclaurin cells with complete tails

The existing cubic cell, its absolute majorant, and its parameter derivative are
reused at every real base q>=1. No new zeta function is defined. Finite summation
retains BOTH terminal endpoints; an infinite identity is obtained only after
all three terminal powers tend to zero in Re(s)>1. Normal convergence continues
the independently defined remainder to Re(s)>-2.

Consumer: HurwitzEulerSource starts at q=1+a and keeps the first term a^(-s)
separate, so no estimate requiring q>=1 is applied to a in (0,1). The subsequent
character sum retains the positive representative of the zero residue class.
The finite-sum identity and the infinite majorant use the same cell normalization.
This is classical Euler--Maclaurin summation, not a zero-free estimate.
Source comparison: NIST DLMF 25.11(iii); inherited CubicPowerSummation,
CubicRemainder, CubicRemainderHolomorphic, and QuarticApproximation.
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612; Lean v4.34.1.
AI-assisted source. Compilation, kernel checking, axiom audit and independent
review: NOT_RUN. No new axiom, admitted proof or default-import promotion.
-/

set_option autoImplicit false
noncomputable section
open Set Filter Metric
open scoped Topology BigOperators

namespace GRWTSK.NumberTheory.Conditional.ShiftedEuler

open GRWTSK.Analysis.RealAnalysis.PowerCellMajorant
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.RiemannHypothesis.CubicPowerSummation
open GRWTSK.RiemannHypothesis.CubicRemainder
open GRWTSK.RiemannHypothesis.CubicRemainderHolomorphic

/-- The full omitted family, not its first cell or a sampled approximation. -/
def remainder (q : ℝ) (s : ℂ) : ℂ :=
  ∑' k : ℕ, cellRemainder (q + (k : ℝ)) (-s)

def prefactor (s : ℂ) : ℂ := s * (s + 1) * (s + 2)

/-- The three endpoint corrections have different powers and signs. -/
def head (q : ℝ) (s : ℂ) : ℂ :=
  logPower q (1 - s) / (s - 1) + logPower q (-s) / 2 +
    s * logPower q (-s - 1) / 12

def «prefix» (q : ℝ) (N : ℕ) (s : ℂ) : ℂ :=
  ∑ k ∈ Finset.range N, logPower (q + (k : ℝ)) (-s)

/-- This is a finite identity for every positive real starting point. -/
theorem finite_prefix (q : ℝ) (positive : 0 < q) (N : ℕ)
    (s : ℂ) (pole : s ≠ 1) :
    «prefix» q N s = head q s - head (q + (N : ℝ)) s -
      prefactor s * ∑ k ∈ Finset.range N, cellRemainder (q + (k : ℝ)) (-s) := by
  have hz : -s + 1 ≠ 0 := by
    intro h
    apply pole
    linear_combination -h
  have h := finite_power_sum q positive (-s) hz N
  rw [show -s + 1 = 1 - s by ring] at h
  have quotient (A B : ℂ) : (A - B) / (1 - s) = (B - A) / (s - 1) := by
    rw [show 1 - s = -(s - 1) by ring, div_neg]
    ring
  rw [quotient] at h
  unfold «prefix» head prefactor
  calc
    _ = _ := h
    _ = _ := by ring

/-- The first omitted base is q+N, never q+N-1. -/
theorem remainder_split (q : ℝ) (base : 1 ≤ q) (N : ℕ)
    (s : ℂ) (halfPlane : -2 < s.re) :
    remainder q s =
      (∑ k ∈ Finset.range N, cellRemainder (q + (k : ℝ)) (-s)) +
        remainder (q + (N : ℝ)) s := by
  simpa only [remainder, Nat.cast_add, add_assoc, add_comm, add_left_comm] using
    ((summable_cells q base s halfPlane).sum_add_tsum_nat_add N).symm

/-- The same exact complete source is returned after any finite truncation. -/
theorem truncation_identity (q : ℝ) (base : 1 ≤ q) (N : ℕ)
    (s : ℂ) (halfPlane : -2 < s.re) (pole : s ≠ 1) :
    head q s - prefactor s * remainder q s =
      «prefix» q N s + head (q + (N : ℝ)) s -
        prefactor s * remainder (q + (N : ℝ)) s := by
  rw [finite_prefix q (zero_lt_one.trans_le base) N s pole,
    remainder_split q base N s halfPlane]
  ring

/-- A fixed shifted base does not affect the decay of the terminal powers. -/
theorem terminal_head_tendsto (q : ℝ) (positive : 0 < q)
    (s : ℂ) (halfPlane : 1 < s.re) :
    Tendsto (fun N : ℕ => head (q + (N : ℝ)) s) atTop (𝓝 0) := by
  have h1 := QuarticApproximation.terminal_shifted_power q positive (1 - s) (by
    simp only [Complex.sub_re, Complex.one_re]
    linarith)
  have h2 := QuarticApproximation.terminal_shifted_power q positive (-s) (by
    simp only [Complex.neg_re]
    linarith)
  have h3 := QuarticApproximation.terminal_shifted_power q positive (-s - 1) (by
    simp only [Complex.sub_re, Complex.neg_re, Complex.one_re]
    linarith)
  simpa only [head, zero_div, mul_zero, add_zero] using
    ((h1.div_const (s - 1)).add (h2.div_const 2)).add ((h3.const_mul s).div_const 12)

/-- Agreement with a Dirichlet series is established later; this lemma computes
only the limit of the literal ordered partial sums. -/
theorem prefix_tendsto (q : ℝ) (base : 1 ≤ q)
    (s : ℂ) (halfPlane : 1 < s.re) :
    Tendsto (fun N : ℕ => «prefix» q N s) atTop
      (𝓝 (head q s - prefactor s * remainder q s)) := by
  have pole : s ≠ 1 := by intro h; simp [h] at halfPlane
  have hp := (summable_cells q base s (by linarith)).hasSum.tendsto_sum_nat
  have ht := terminal_head_tendsto q (zero_lt_one.trans_le base) s halfPlane
  have h := ((tendsto_const_nhds (x := head q s)).sub ht).sub
    (hp.const_mul (prefactor s))
  have he := h.congr' (Eventually.of_forall
    (fun N : ℕ => (finite_prefix q (zero_lt_one.trans_le base) N s pole).symm))
  simpa only [sub_zero, remainder] using he

/-- The complete majorant is uniform in the imaginary coordinate. -/
theorem remainder_bound (q σ : ℝ) (base : 1 ≤ q) (margin : -2 < σ)
    (s : ℂ) (halfPlane : σ ≤ s.re) :
    ‖remainder q s‖ ≤ decayPower (σ + 2) q / (48 * (σ + 2)) :=
  norm_tsum_cells_le q σ base margin s halfPlane

/-- Normal convergence at an arbitrary fixed base. -/
theorem differentiableOn_remainder (q σ : ℝ) (base : 1 ≤ q) (margin : -2 < σ) :
    DifferentiableOn ℂ (remainder q) {s : ℂ | σ < s.re} := by
  exact Complex.differentiableOn_tsum_of_summable_norm
    (U := {s : ℂ | σ < s.re}) (summable_cell_majorant q σ base margin)
    (fun k => (differentiable_cell (q + (k : ℝ))
      (by linarith [Nat.cast_nonneg (α := ℝ) k])).differentiableOn)
    (isOpen_lt continuous_const Complex.continuous_re)
    (fun k s hs => norm_cell_le (q + (k : ℝ)) σ
      (by linarith [Nat.cast_nonneg (α := ℝ) k]) margin s hs.le)

theorem analyticOnNhd_remainder (q : ℝ) (base : 1 ≤ q) :
    AnalyticOnNhd ℂ (remainder q) {s : ℂ | -2 < s.re} := by
  have hd : DifferentiableOn ℂ (remainder q) {s : ℂ | -2 < s.re} := by
    intro s hs
    change -2 < s.re at hs
    let σ : ℝ := (s.re - 2) / 2
    have margin : -2 < σ := by dsimp [σ]; linarith
    have member : s ∈ {w : ℂ | σ < w.re} := by dsimp [σ]; linarith
    exact ((differentiableOn_remainder q σ base margin).differentiableAt
      ((isOpen_lt continuous_const Complex.continuous_re).mem_nhds member)).differentiableWithinAt
  exact hd.analyticOnNhd (isOpen_lt continuous_const Complex.continuous_re)

/-- A simple rational majorant for the whole omitted family on Re(s)>=0. -/
theorem remainder_bound_nonnegative (q : ℝ) (base : 1 ≤ q)
    (s : ℂ) (halfPlane : 0 ≤ s.re) :
    ‖remainder q s‖ ≤ 1 / (96 * q ^ 2) := by
  have h := remainder_bound q 0 base (by norm_num) s halfPlane
  have positive : 0 < q := zero_lt_one.trans_le base
  have decay : decayPower 2 q = 1 / q ^ 2 := by
    unfold decayPower
    rw [show -(2 : ℝ) * Real.log q = -(Real.log q + Real.log q) by ring,
      Real.exp_neg, Real.exp_add, Real.exp_log positive]
    simp [pow_two, one_div]
  norm_num only [zero_add, show (48 : ℝ) * 2 = 96 by norm_num] at h
  rw [decay] at h
  convert h using 1 <;> ring

/-- The next Bernoulli correction is inherited from the exact finite refinement,
not inferred by differentiating an error bound. -/
theorem quartic_remainder_bound (q σ : ℝ) (base : 1 ≤ q) (margin : -2 < σ)
    (s : ℂ) (halfPlane : σ ≤ s.re) :
    ‖remainder q s - logPower q (-s - 3) / 720‖ ≤
      ‖s + 3‖ * decayPower (σ + 3) q / (720 * (σ + 3)) :=
  QuarticApproximation.corrected_cubic_tail q σ base margin s halfPlane

end GRWTSK.NumberTheory.Conditional.ShiftedEuler
