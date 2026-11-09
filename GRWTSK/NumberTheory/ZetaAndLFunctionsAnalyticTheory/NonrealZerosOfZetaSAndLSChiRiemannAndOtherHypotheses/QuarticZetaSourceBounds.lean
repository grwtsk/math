/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.MeasureAndIntegration.QuarticRemainderRefinement
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CoreCubicApproximation

/-!
# Fourth-order estimates returned to the actual zeta source

The proved finite cell refinement is passed to the existing cubic series limit.
The terminal complex power tends to zero on its stated half-plane. Uniform
finite remainder bounds pass to that limit, giving
 |R3_tail(q,s)-q^(-s-3)/720|
   <= |s+3|*q^(-sigma-3)/(720*(sigma+3)).
The existing actual-source identity zeta-A3=-s(s+1)(s+2)*R3_tail then gives
an explicit corrected finite approximant A4_N and a complete source bound.
At Re(s)>=0 and |s|<=R the budget is
 R*(R+1)*(R+2)*(R+3)/(2160*(N+1)^3).
The natural cutoff (n+3)^2*(k+1) supplies error <=1/(2160*(k+1)^3)
on every right-strip core, without a nonvanishing premise.

This refines the repository's already identified cubic source; it does not
assume equality of a new integral model with Mathlib's zeta. It does not supply
an all-core lower bound. Primary argument: finite integration by parts, uniform
finite-sum bounds, passage to the established series limit, and source return.
Compilation, fresh kernel checking, transitive axiom audit and independent
review: NOT_RUN. No novelty claim; classical Euler--Maclaurin mathematics.
-/

set_option autoImplicit false
noncomputable section
open Set Filter Metric
open scoped Topology BigOperators

namespace GRWTSK.NumberTheory.Conditional.QuarticApproximation

open GRWTSK.Analysis.RealAnalysis.PowerCellMajorant
open GRWTSK.Analysis.RealAnalysis.QuarticRemainder
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.RiemannHypothesis.CubicPowerSummation
open GRWTSK.RiemannHypothesis.CubicRemainder
open GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation

/-- The last power vanishes only after its negative real exponent is established. -/
theorem terminal_shifted_power (q : ℝ) (positive : 0 < q) (z : ℂ) (decays : z.re < 0) :
    Tendsto (fun N : ℕ => logPower (q + (N : ℝ)) z) atTop (𝓝 0) := by
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  have diverges : Tendsto (fun N : ℕ => q + (N : ℝ)) atTop atTop := by
    simpa only [add_comm] using
      (tendsto_atTop_add_const_right _ q tendsto_natCast_atTop_atTop :
        Tendsto (fun N : ℕ => (N : ℝ) + q) atTop atTop)
  have limit := (tendsto_rpow_neg_atTop (neg_pos.mpr decays)).comp diverges
  have identity : (fun N : ℕ => ‖logPower (q + (N : ℝ)) z‖) =
      (fun N : ℕ => (q + (N : ℝ)) ^ z.re) := by
    funext N
    rw [Real.rpow_def_of_pos (by positivity)]
    simp only [logPower, Complex.norm_exp, Complex.mul_re, Complex.ofReal_re,
      Complex.ofReal_im, mul_zero, sub_zero]
    congr 1
    ring
  rw [identity]
  simpa only [Function.comp_def, neg_neg] using limit

/-- The improved remainder comes from limits of the exact finite identities. -/
theorem corrected_cubic_tail (q σ : ℝ) (base : 1 ≤ q) (margin : -2 < σ)
    (s : ℂ) (halfPlane : σ ≤ s.re) :
    ‖(∑' k : ℕ, cellRemainder (q + (k : ℝ)) (-s)) -
      logPower q (-s - 3) / 720‖ ≤
      ‖s + 3‖ * decayPower (σ + 3) q / (720 * (σ + 3)) := by
  have partialLimit := (summable_cells q base s (margin.trans_le halfPlane)).hasSum.tendsto_sum_nat
  have endpointLimit := terminal_shifted_power q (zero_lt_one.trans_le base) (-s - 3) (by
    norm_num [Complex.sub_re, Complex.neg_re]
    linarith)
  have limit := partialLimit.sub
    (((tendsto_const_nhds (x := logPower q (-s - 3))).sub endpointLimit).div_const (720 : ℂ))
  have bounded (N : ℕ) :
      ‖(∑ k ∈ Finset.range N, cellRemainder (q + (k : ℝ)) (-s)) -
        (logPower q (-s - 3) - logPower (q + (N : ℝ)) (-s - 3)) / 720‖ ≤
        ‖s + 3‖ * decayPower (σ + 3) q / (720 * (σ + 3)) := by
    rw [finite_refinement q (zero_lt_one.trans_le base) s N, add_sub_cancel_left, norm_mul]
    refine (mul_le_mul_of_nonneg_left
      (finite_bound q σ base (by linarith) s halfPlane N) (norm_nonneg _)).trans_eq ?_
    ring
  have result := le_of_tendsto limit.norm (Eventually.of_forall bounded)
  simpa only [sub_zero] using result

/-- The genuine cubic tail after N included cells, with its next correction. -/
def correctedTail (N : ℕ) (s : ℂ) : ℂ :=
  cubicRemainder s - cellPrefix N s - logPower (cutoff N) (-s - 3) / 720

theorem correctedTail_bound (N : ℕ) (σ : ℝ) (margin : -2 < σ)
    (s : ℂ) (halfPlane : σ ≤ s.re) :
    ‖correctedTail N s‖ ≤
      ‖s + 3‖ * decayPower (σ + 3) (cutoff N) / (720 * (σ + 3)) := by
  have split := cubicRemainder_eq_prefix_add_tail s (margin.trans_le halfPlane) N
  have identity : correctedTail N s =
      (∑' k : ℕ, cellRemainder (cutoff N + (k : ℝ)) (-s)) -
        logPower (cutoff N) (-s - 3) / 720 := by
    unfold correctedTail cellPrefix
    rw [split, add_sub_cancel_left]
    rfl
  rw [identity]
  exact corrected_cubic_tail (cutoff N) σ
    (by unfold cutoff; have h := Nat.cast_nonneg (α := ℝ) N; linarith) margin s halfPlane

/-- A finite formula with one more actual Bernoulli correction. -/
def approximation4 (N : ℕ) (s : ℂ) : ℂ :=
  approximation N s - s * (s + 1) * (s + 2) * logPower (cutoff N) (-s - 3) / 720

/-- Return to actual zeta using the inherited source identity, not a new premise. -/
theorem source_identity (N : ℕ) (s : ℂ) (halfPlane : -2 < s.re) (pole : s ≠ 1) :
    riemannZeta s - approximation4 N s = -(s * (s + 1) * (s + 2)) * correctedTail N s := by
  have source := zeta_sub_approximation N s halfPlane pole
  dsimp [analyticTail] at source
  dsimp [approximation4, correctedTail]
  linear_combination source

/-- Retain the real-part margin; specializing it prematurely would lose accuracy. -/
theorem source_bound (N : ℕ) (σ : ℝ) (margin : -2 < σ)
    (s : ℂ) (halfPlane : σ ≤ s.re) (pole : s ≠ 1) :
    ‖riemannZeta s - approximation4 N s‖ ≤
      ‖s‖ * ‖s + 1‖ * ‖s + 2‖ * ‖s + 3‖ *
        decayPower (σ + 3) (cutoff N) / (720 * (σ + 3)) := by
  rw [source_identity N s (margin.trans_le halfPlane) pole, norm_mul]
  refine (mul_le_mul_of_nonneg_left
    (correctedTail_bound N σ margin s halfPlane) (norm_nonneg _)).trans_eq ?_
  simp only [norm_neg, norm_mul]
  ring

/-- A rational cutoff dependence on the entire closed nonnegative half-plane. -/
theorem source_bound_nonnegative (N : ℕ) (s : ℂ) (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) :
    ‖riemannZeta s - approximation4 N s‖ ≤
      ‖s‖ * ‖s + 1‖ * ‖s + 2‖ * ‖s + 3‖ / (2160 * cutoff N ^ 3) := by
  have estimate := source_bound N 0 (by norm_num) s halfPlane pole
  have decay : decayPower 3 (cutoff N) = 1 / cutoff N ^ 3 := by
    unfold decayPower
    rw [show -(3 : ℝ) * Real.log (cutoff N) =
      -(Real.log (cutoff N) + Real.log (cutoff N) + Real.log (cutoff N)) by ring,
      Real.exp_neg, Real.exp_add, Real.exp_add, Real.exp_log (cutoff_pos N)]
    simp [pow_succ, pow_two, one_div]
  norm_num only [zero_add, show (720 : ℝ) * 3 = 2160 by norm_num] at estimate
  rw [decay] at estimate
  convert estimate using 1 <;> ring

def radiusBudget (R : ℝ) (N : ℕ) : ℝ :=
  R * (R + 1) * (R + 2) * (R + 3) / (2160 * cutoff N ^ 3)

theorem source_radius_bound (N : ℕ) (s : ℂ) {R : ℝ}
    (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) (size : ‖s‖ ≤ R) :
    ‖riemannZeta s - approximation4 N s‖ ≤ radiusBudget R N := by
  have hR : 0 ≤ R := (norm_nonneg _).trans size
  have shifted (k : ℕ) : ‖s + (k : ℂ)‖ ≤ R + k := by
    calc
      ‖s + (k : ℂ)‖ ≤ ‖s‖ + ‖(k : ℂ)‖ := norm_add_le _ _
      _ ≤ R + k := by simpa using add_le_add size (le_refl ‖(k : ℂ)‖)
  have shifted1 : ‖s + 1‖ ≤ R + 1 := by simpa using shifted 1
  have shifted2 : ‖s + 2‖ ≤ R + 2 := by simpa using shifted 2
  have shifted3 : ‖s + 3‖ ≤ R + 3 := by simpa using shifted 3
  refine (source_bound_nonnegative N s halfPlane pole).trans ?_
  apply div_le_div_of_nonneg_right _ (by have h := cutoff_pos N; positivity)
  exact mul_le_mul
    (mul_le_mul (mul_le_mul size shifted1 (norm_nonneg _) hR)
      shifted2 (norm_nonneg _) (by positivity))
    shifted3 (norm_nonneg _) (by positivity)

/-- Explicit improved cutoff; it uses no minimization or inverse oracle. -/
def coreCutoff (n k : ℕ) : ℕ := (n + 3) ^ 2 * (k + 1)

def errorRate (k : ℕ) : ℝ := 1 / (2160 * ((k : ℝ) + 1) ^ 3)

theorem cutoff_budget (n k : ℕ) : radiusBudget (n : ℝ) (coreCutoff n k) ≤ errorRate k := by
  let a : ℝ := (n : ℝ) + 3
  let b : ℝ := (k : ℝ) + 1
  have hn := Nat.cast_nonneg (α := ℝ) n
  have hk := Nat.cast_nonneg (α := ℝ) k
  have ha : 1 ≤ a := by dsimp [a]; linarith
  have ha0 : 0 ≤ a := zero_le_one.trans ha
  have hb : 0 < b := by dsimp [b]; linarith
  have first : (n : ℝ) * ((n : ℝ) + 1) * ((n : ℝ) + 2) * ((n : ℝ) + 3) ≤ a ^ 4 := by
    calc
      _ ≤ a * a * a * a := by
        apply mul_le_mul_of_nonneg_right _ ha0
        apply mul_le_mul _ (by dsimp [a]; linarith) (by linarith) (mul_nonneg ha0 ha0)
        exact mul_le_mul (by dsimp [a]; linarith) (by dsimp [a]; linarith) (by linarith) ha0
      _ = _ := by ring
  have squared : 1 ≤ a ^ 2 := by nlinarith [sq_nonneg (a - 1)]
  have higher : a ^ 4 ≤ a ^ 6 := by
    calc
      a ^ 4 = a ^ 4 * 1 := by ring
      _ ≤ a ^ 4 * a ^ 2 := mul_le_mul_of_nonneg_left squared (pow_nonneg ha0 4)
      _ = a ^ 6 := by ring
  have numerator := mul_le_mul_of_nonneg_right (first.trans higher) (pow_nonneg hb.le 3)
  have identity : a ^ 6 * b ^ 3 = (a ^ 2 * b) ^ 3 := by ring
  rw [identity] at numerator
  have cutoffIdentity : cutoff (coreCutoff n k) = a ^ 2 * b + 1 := by
    simp [cutoff, coreCutoff, a, b]
  have cube : (a ^ 2 * b) ^ 3 ≤ cutoff (coreCutoff n k) ^ 3 := by
    rw [cutoffIdentity]
    exact pow_le_pow_left₀ (by positivity) (by linarith) 3
  have combined := numerator.trans cube
  unfold radiusBudget errorRate
  change (n : ℝ) * ((n : ℝ) + 1) * ((n : ℝ) + 2) * ((n : ℝ) + 3) /
    (2160 * cutoff (coreCutoff n k) ^ 3) ≤ 1 / (2160 * b ^ 3)
  apply (div_le_div_iff₀ (by have h := cutoff_pos (coreCutoff n k); positivity)
    (by positivity)).mpr
  nlinarith only [combined]

/-- Every right core gets a supplied approximation with the complete faster tail. -/
theorem rightCore_error (n k : ℕ) (s : ℂ) (inside : s ∈ rightCore n) :
    ‖riemannZeta s - approximation4 (coreCutoff n k) s‖ ≤ errorRate k := by
  have strip := rightCore_subset n inside
  have size : ‖s‖ ≤ (n : ℝ) := by
    simpa only [mem_closedBall, dist_zero_right] using inside.1
  exact (source_radius_bound _ s (by linarith [strip.1])
    (strip_ne_one strip.2) size).trans (cutoff_budget n k)

/-- The zero-prefix bound preserves the sharper actual real-part denominator. -/
theorem zero_prefix_bound (s : ℂ) (halfPlane : -2 < s.re) (pole : s ≠ 1) :
    ‖riemannZeta s - approximation4 0 s‖ ≤
      ‖s‖ * ‖s + 1‖ * ‖s + 2‖ * ‖s + 3‖ / (720 * (s.re + 3)) := by
  simpa only [cutoff, Nat.cast_zero, zero_add, decayPower_one, mul_one] using
    source_bound 0 s.re halfPlane s le_rfl pole

end GRWTSK.NumberTheory.Conditional.QuarticApproximation
