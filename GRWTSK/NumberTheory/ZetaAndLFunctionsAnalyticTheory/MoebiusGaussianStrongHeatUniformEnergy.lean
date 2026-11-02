/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatIntegratedLocalStability
import Mathlib.Tactic

/-!
# Strong forward Gaussian heat gives a genuine uniform signed observation bound

Contrary to the near-identity schedule s(T)=exp(-2T), FIXED heat s>=1
suppresses the original log-frequency modes. The original integer n,
actual signed Mathlib mu(n), true causal response, squareful zero,
offdiagonal pair orientations and physical time u are NEVER replaced.

A finite source-independent telescoping estimate proves:
  sum_(1<=n<=N) (1/n)^2 <=2.
For all n>=1 and s>=1, the exact original heat factor obeys
  exp(-s*(log n)^2) <= exp(1)/n^2,
because -s*x^2+2*x<=1 by (x-1)^2+(s-1)*x^2>=0.

Hence the positive absolute weighted mass of the ACTUAL HEAT
coefficients is <=2*exp(1), uniformly in physical endpoint T,
and the COMPLETE signed heated waveform has absolute value <=4*exp(1).
Its actual signed-square physical-time integral is therefore bounded
by 16*exp(2)*T, without ANY arithmetic cancellation hypothesis.

This is a NEW noncircular bound on a truly heat-smoothed observation,
NOT on the original RH-sized signed wave. Its reconstruction residual
is exact and remains an independent arithmetic obligation. In
particular coefficient heat contraction never implies contraction of
the full signed response Gram.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianStrongHeatUniformEnergy

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- Exact finite harmonic telescope; zero and singleton supports
are retained and NO infinite summation or zeta value is imported. -/
private theorem reciprocal_telescope (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N,
      ((n : ℝ)⁻¹ - (((n + 1 : ℕ) : ℝ))⁻¹)) =
      1 - (((N + 1 : ℕ) : ℝ))⁻¹ := by
  induction N with
  | zero => simp
  | succ N ih =>
      have hs : Finset.Icc 1 (N + 1) =
          insert (N + 1) (Finset.Icc 1 N) := by
        ext n
        simp only [Finset.mem_Icc, Finset.mem_insert]
        omega
      have hn : N + 1 ∉ Finset.Icc 1 N := by simp
      rw [hs, Finset.sum_insert hn, ih]
      push_cast
      ring

/-- Each positive original integer contributes no more than twice
its elementary telescoping reciprocal difference. -/
private theorem reciprocal_square_le_tel
    (n : ℕ) (hn : 1 ≤ n) :
    ((n : ℝ)⁻¹) ^ 2 ≤
      2 * ((n : ℝ)⁻¹ - (((n + 1 : ℕ) : ℝ))⁻¹) := by
  have hp : (0 : ℝ) < n := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hnext : (0 : ℝ) < (n : ℝ) + 1 := by positivity
  have hnreal : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hc : (n : ℝ) + 1 ≤ 2 * (n : ℝ) := by linarith
  push_cast
  field_simp [hp.ne', hnext.ne']
  nlinarith

/-- A finite source-specific inverse-square inventory upper bound,
proved by a literal finite telescope, not an analytic Basel theorem. -/
theorem original_inverse_square_population_le_two (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, ((n : ℝ)⁻¹) ^ 2) ≤ 2 := by
  have hterm : 0 ≤ (((N + 1 : ℕ) : ℝ))⁻¹ := by positivity
  calc
    (∑ n ∈ Finset.Icc 1 N, ((n : ℝ)⁻¹) ^ 2) ≤
        ∑ n ∈ Finset.Icc 1 N,
          2 * ((n : ℝ)⁻¹ - (((n + 1 : ℕ) : ℝ))⁻¹) := by
      apply Finset.sum_le_sum
      intro n hn
      exact reciprocal_square_le_tel n (Finset.mem_Icc.mp hn).1
    _ = 2 * (1 - (((N + 1 : ℕ) : ℝ))⁻¹) := by
      rw [← Finset.mul_sum, reciprocal_telescope]
    _ ≤ 2 := by linarith

/-- Explicit square-completion estimate for the original
finite integer log-frequency heat multiplier at positive s>=1.
It does NOT assert any cancellation of mu(n). -/
theorem logHeatMultiplier_le_exp_inv_square
    {s : ℝ} (hs : 1 ≤ s)
    (n : ℕ) (hn : 1 ≤ n) :
    logHeatMultiplier s n ≤
      Real.exp 1 * ((n : ℝ)⁻¹) ^ 2 := by
  let x : ℝ := Real.log (n : ℝ)
  have hnpos : (0 : ℝ) < n := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hs0 : 0 ≤ s - 1 := sub_nonneg.mpr hs
  have hsquare : 0 ≤ (x - 1) ^ 2 := sq_nonneg _
  have hextra : 0 ≤ (s - 1) * x ^ 2 :=
    mul_nonneg hs0 (sq_nonneg x)
  have hexponent : -(s * x ^ 2) + 2 * x ≤ 1 := by
    nlinarith
  have hscalar :
      Real.exp (-(s * x ^ 2)) * ((n : ℝ) ^ 2) =
        Real.exp (-(s * x ^ 2) + 2 * x) := by
    have he : Real.exp x = (n : ℝ) := Real.exp_log hnpos
    calc
      Real.exp (-(s * x ^ 2)) * ((n : ℝ) ^ 2) =
          Real.exp (-(s * x ^ 2)) * Real.exp (x + x) := by
        rw [Real.exp_add, he]
        ring
      _ = Real.exp (-(s * x ^ 2) + (x + x)) := by
        rw [Real.exp_add]
      _ = Real.exp (-(s * x ^ 2) + 2 * x) := by congr 1; ring
  have hmul :
      Real.exp (-(s * x ^ 2)) * ((n : ℝ) ^ 2) ≤
        Real.exp 1 := by
    rw [hscalar]
    exact Real.exp_le_exp.mpr hexponent
  have hsquarepos : (0 : ℝ) < (n : ℝ) ^ 2 := sq_pos_of_pos hnpos
  have hdiv : Real.exp (-(s * x ^ 2)) ≤
        Real.exp 1 / ((n : ℝ) ^ 2) :=
    (le_div_iff₀ hsquarepos).mpr hmul
  simpa only [logHeatMultiplier, logFrequency,
    div_eq_mul_inv, inv_pow] using hdiv

/-- Actual heat coefficients, not a freely manufactured profile. -/
def heatedAbsoluteWeightedMass (s T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    |sourceHeatCoeff s n| * (Real.sqrt (n : ℝ))⁻¹

/-- Nonnegative mass over the ORIGINAL complete closed support. -/
theorem heatedAbsoluteWeightedMass_nonneg (s T : ℝ) :
    0 ≤ heatedAbsoluteWeightedMass s T := by
  unfold heatedAbsoluteWeightedMass
  apply Finset.sum_nonneg
  intro n hn
  exact mul_nonneg (abs_nonneg _)
    (inv_nonneg.mpr (Real.sqrt_nonneg _))

/-- Strong source heat s>=1 bounds the entire original-index
absolute weighted coefficient mass by the fixed constant 2e,
independently of endpoint T or arithmetic sign cancellation. -/
theorem heatedAbsoluteWeightedMass_le_two_exp
    {s : ℝ} (hs : 1 ≤ s) (T : ℝ) :
    heatedAbsoluteWeightedMass s T ≤ 2 * Real.exp 1 := by
  let N : ℕ := ⌊Real.exp T⌋₊
  have hsum : heatedAbsoluteWeightedMass s T ≤
      ∑ n ∈ endpointIndex T,
        Real.exp 1 * ((n : ℝ)⁻¹) ^ 2 := by
    unfold heatedAbsoluteWeightedMass
    apply Finset.sum_le_sum
    intro n hn
    have hn1 : 1 ≤ n := (Finset.mem_Icc.mp hn).1
    have hnreal : (1 : ℝ) ≤ n := by exact_mod_cast hn1
    have hsqr : 1 ≤ Real.sqrt (n : ℝ) := by
      simpa using Real.sqrt_le_sqrt hnreal
    have hsqrpos : 0 < Real.sqrt (n : ℝ) := by linarith
    have hinv : (Real.sqrt (n : ℝ))⁻¹ ≤ 1 := by
      change (1 : ℝ) / Real.sqrt (n : ℝ) ≤ 1
      apply (div_le_iff₀ hsqrpos).mpr
      simpa only [one_mul] using hsqr
    have hm : |sourceHeatCoeff s n| ≤
        Real.exp 1 * ((n : ℝ)⁻¹) ^ 2 := by
      have hh : |sourceHeatCoeff s n| =
          logHeatMultiplier s n * |moebiusReal n| := by
        unfold sourceHeatCoeff
        rw [abs_mul, abs_of_nonneg (logHeatMultiplier_pos s n).le]
      rw [hh]
      calc
        logHeatMultiplier s n * |moebiusReal n| ≤
            logHeatMultiplier s n :=
          (mul_le_mul_of_nonneg_left
            (moebiusReal_abs_le_one n)
            (logHeatMultiplier_pos s n).le).trans
              (by ring)
        _ ≤ Real.exp 1 * ((n : ℝ)⁻¹) ^ 2 :=
          logHeatMultiplier_le_exp_inv_square hs n hn1
    calc
      |sourceHeatCoeff s n| * (Real.sqrt (n : ℝ))⁻¹ ≤
          |sourceHeatCoeff s n| * 1 :=
        mul_le_mul_of_nonneg_left hinv (abs_nonneg _)
      _ = |sourceHeatCoeff s n| := by ring
      _ ≤ Real.exp 1 * ((n : ℝ)⁻¹) ^ 2 := hm
  calc
    heatedAbsoluteWeightedMass s T ≤
        ∑ n ∈ endpointIndex T,
          Real.exp 1 * ((n : ℝ)⁻¹) ^ 2 := hsum
    _ = Real.exp 1 *
          (∑ n ∈ Finset.Icc 1 N, ((n : ℝ)⁻¹) ^ 2) := by
      change (∑ n ∈ Finset.Icc 1 N,
        Real.exp 1 * ((n : ℝ)⁻¹) ^ 2) = _
      rw [Finset.mul_sum]
    _ ≤ Real.exp 1 * 2 :=
      mul_le_mul_of_nonneg_left
        (original_inverse_square_population_le_two N)
        (Real.exp_pos 1).le
    _ = 2 * Real.exp 1 := by ring

/-- The entire signed heated wave, with ALL original ordered Gram
interactions retained when squared, has a constant-in-T amplitude cap.
This is a strong-heat estimate, NOT an original-source RH estimate. -/
theorem sourceHeatWave_abs_le_four_exp
    {s : ℝ} (hs : 1 ≤ s) (T u : ℝ) :
    |sourceHeatWave s T u| ≤ 4 * Real.exp 1 := by
  have hsum : sourceHeatWave s T u =
      ∑ n ∈ endpointIndex T,
        sourceHeatCoeff s n * pickupResponse n u := by
    unfold sourceHeatWave observedWave
    apply Finset.sum_congr rfl
    intro n hn
    unfold observedCoeff sourceHeatPhase
    rw [sourceIndex_encode (Finset.mem_Icc.mp hn).1]
  rw [hsum]
  calc
    |∑ n ∈ endpointIndex T,
        sourceHeatCoeff s n * pickupResponse n u| ≤
      ∑ n ∈ endpointIndex T,
        |sourceHeatCoeff s n * pickupResponse n u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ endpointIndex T,
          2 * (|sourceHeatCoeff s n| *
            (Real.sqrt (n : ℝ))⁻¹) := by
      apply Finset.sum_le_sum
      intro n hn
      have hn1 := (Finset.mem_Icc.mp hn).1
      calc
        |sourceHeatCoeff s n * pickupResponse n u| =
            |sourceHeatCoeff s n| * pickupResponse n u := by
          rw [abs_mul, abs_of_nonneg (response_nonneg hn1 u)]
        _ ≤ |sourceHeatCoeff s n| *
              (2 * (Real.sqrt (n : ℝ))⁻¹) :=
          mul_le_mul_of_nonneg_left
            (response_le_two_inv_sqrt hn1 u)
            (abs_nonneg _)
        _ = 2 * (|sourceHeatCoeff s n| *
            (Real.sqrt (n : ℝ))⁻¹) := by ring
    _ = 2 * heatedAbsoluteWeightedMass s T := by
      unfold heatedAbsoluteWeightedMass
      rw [Finset.mul_sum]
    _ ≤ 2 * (2 * Real.exp 1) :=
      mul_le_mul_of_nonneg_left
        (heatedAbsoluteWeightedMass_le_two_exp hs T)
        (by norm_num)
    _ = 4 * Real.exp 1 := by ring

/-- A genuinely unconditional, source-specific O(T) bound for the
COMPLETE signed HEATED physical-time energy at fixed strong s>=1.
No statement about the unsmoothed pickupEnergy follows without a
separate original-source reconstruction budget. -/
theorem sourceHeatEnergy_le_linear_strong
    {s T : ℝ} (hs : 1 ≤ s) (hT : 0 ≤ T) :
    sourceHeatEnergy s T ≤ 16 * (Real.exp 1) ^ 2 * T := by
  have hcont : Continuous (sourceHeatWave s T) := by
    unfold sourceHeatWave
    exact observedWave_continuous sourceHeatPhase (sourceHeatCoeff s) T
  have hpoint (u : ℝ) :
      sourceHeatWave s T u ^ 2 ≤
        (4 * Real.exp 1) ^ 2 := by
    have h := sourceHeatWave_abs_le_four_exp hs T u
    have hsq := (sq_le_sq₀ (abs_nonneg _) (by positivity :
      0 ≤ (4 : ℝ) * Real.exp 1)).mpr h
    simpa only [sq_abs] using hsq
  have hI : IntervalIntegrable
      (fun u : ℝ => sourceHeatWave s T u ^ 2) volume 0 T :=
    (hcont.pow 2).intervalIntegrable 0 T
  have hconst : IntervalIntegrable
      (fun _ : ℝ => (4 * Real.exp 1) ^ 2) volume 0 T :=
    continuous_const.intervalIntegrable 0 T
  change (∫ u in (0 : ℝ)..T, sourceHeatWave s T u ^ 2) ≤
    16 * Real.exp 1 ^ 2 * T
  calc
    (∫ u in (0 : ℝ)..T, sourceHeatWave s T u ^ 2) ≤
        ∫ _u in (0 : ℝ)..T, (4 * Real.exp 1) ^ 2 := by
      apply intervalIntegral.integral_mono_on hT hI hconst
      intro u hu
      exact hpoint u
    _ = (4 * Real.exp 1) ^ 2 * T := by
      rw [intervalIntegral.integral_const]
      simp only [sub_zero, smul_eq_mul]
      ring
    _ = 16 * Real.exp 1 ^ 2 * T := by ring

/-- Every fixed heat s>=1 supplies its own noncircular all-positive-rate
heated observation bound on every named fixed set of scales G. -/
theorem sourceHeatEnergy_subexponential_of_strong
    {s : ℝ} (hs : 1 ≤ s) (G : Set ℝ) :
    SubexponentialOn (fun T => sourceHeatEnergy s T) G := by
  have hlinear : SubexponentialUpper
      (fun T : ℝ => (16 * Real.exp 1 ^ 2) * T) := by
    apply subexponentialUpper_of_polynomial
      (C := (16 * Real.exp 1 ^ 2 : ℝ)) (q := (1 : ℝ))
      (by positivity)
    intro T hT
    rw [Real.rpow_one]
  apply subexponentialOn_mono (on_of_global hlinear G)
  intro T hG hT
  exact sourceHeatEnergy_le_linear_strong hs hT

end GRWTSK.NumberTheory.Moebius.GaussianStrongHeatUniformEnergy
