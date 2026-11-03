/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatVanishingSchedule
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusQuantitativeMertensAbsoluteAbel
import Mathlib.Tactic

/-!
# Exponentially vanishing original-source Gaussian heat reconstruction

The existing shrinking heat schedule s(T)=exp(-2T) has a far stronger
unconditional error estimate than the earlier M(T)<=2 and B(T)<=16T.

The repository already proves the ORIGINAL inverse-square-root inventory
estimate (QuantitativeMertensAbsoluteAbel.invsqrt_range_sum_le_two_sqrt):
  sum_{1<=n<=N} 1/sqrt(n) <= 2 sqrt(N).
This finite arithmetic-independent lemma, together with the exact cutoff
N=floor(exp T) and 1-exp(-x)<=x, gives for T>=0

  M_heat(T) <= 2 exp(-2T) T^2 sqrt(exp T)
  B_heat(T) <= 16 T^5 exp(-3T).

No cancellation of original signed Möbius coefficients is used. The error
wave remains the COMPLETE original source-minus-heat response waveform.

This module additionally bounds the actual original and heat-observed
SIGNED waveforms (not merely coefficient-l2) by the same finite absolute
causal envelope 4 sqrt(exp T). The signed physical energy itself is
NOT claimed to contract under Gaussian coefficient heat.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianHeatSharpSourceEnvelope

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.GaussianHeatStabilityReturn
open GRWTSK.NumberTheory.Moebius.GaussianHeatVanishingSchedule
open GRWTSK.NumberTheory.Moebius.QuantitativeMertensAbsoluteAbel

/-- Match an ORIGINAL closed positive prefix with a zero-based consecutive
range. Unlike residue compression, no source index is changed. -/
private theorem positive_Icc_sum_eq_range (f : ℕ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, f n) =
      ∑ k ∈ Finset.range N, f (k + 1) := by
  induction N with
  | zero => simp
  | succ N ih =>
      have hs :
          Finset.Icc 1 (N + 1) =
            insert (N + 1) (Finset.Icc 1 N) := by
        ext n
        simp only [Finset.mem_Icc, Finset.mem_insert]
        omega
      have hn : N + 1 ∉ Finset.Icc 1 N := by simp
      rw [hs, Finset.sum_insert hn, Finset.sum_range_succ, ← ih]
      ring

/-- Existing Mathlib-pinned inverse-sqrt source bound in the literal
closed original endpoint inventory, including n=1. -/
theorem endpoint_invsqrt_sum_le_two_sqrt_exp (T : ℝ) :
    (∑ n ∈ endpointIndex T,
      (Real.sqrt (n : ℝ))⁻¹) ≤
        2 * Real.sqrt (Real.exp T) := by
  let N : ℕ := ⌊Real.exp T⌋₊
  have hN : (N : ℝ) ≤ Real.exp T :=
    Nat.floor_le (Real.exp_pos T).le
  have hroot : Real.sqrt (N : ℝ) ≤
      Real.sqrt (Real.exp T) := Real.sqrt_le_sqrt hN
  calc
    (∑ n ∈ endpointIndex T, (Real.sqrt (n : ℝ))⁻¹) =
        ∑ k ∈ Finset.range N,
          (Real.sqrt (((k + 1 : ℕ) : ℝ)))⁻¹ := by
      simpa only [endpointIndex, N] using
        (positive_Icc_sum_eq_range
          (fun n : ℕ => (Real.sqrt (n : ℝ))⁻¹) N)
    _ ≤ 2 * Real.sqrt (N : ℝ) :=
      invsqrt_range_sum_le_two_sqrt N
    _ ≤ 2 * Real.sqrt (Real.exp T) := by linarith

/-- The existing source-specific exact heat coefficient radii are
pointwise at most s*T² for every original index n<=exp T. The old
mass sum is now controlled with the full inverse-sqrt population,
not merely the number of source indices. -/
theorem sourceHeat_mass_le_two_sqrt_exp
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    weightedErrorMass (sourceHeatRadius s) T ≤
      2 * s * T ^ 2 * Real.sqrt (Real.exp T) := by
  have hterms :
      weightedErrorMass (sourceHeatRadius s) T ≤
        ∑ n ∈ endpointIndex T,
          (s * T ^ 2) * (Real.sqrt (n : ℝ))⁻¹ := by
    unfold weightedErrorMass
    apply Finset.sum_le_sum
    intro n hn
    have hlog := source_index_logFrequency_le hT hn
    have hsq : logFrequency n ^ 2 ≤ T ^ 2 :=
      (sq_le_sq₀ hlog.1 hT).mpr hlog.2
    have hc : sourceHeatRadius s n ≤ s * T ^ 2 := by
      exact (sourceHeatRadius_le_time_log_sq hs n).trans
        (mul_le_mul_of_nonneg_left hsq hs)
    exact mul_le_mul_of_nonneg_right hc
      (inv_nonneg.mpr (Real.sqrt_nonneg _))
  calc
    weightedErrorMass (sourceHeatRadius s) T ≤
        ∑ n ∈ endpointIndex T,
          (s * T ^ 2) * (Real.sqrt (n : ℝ))⁻¹ := hterms
    _ = (s * T ^ 2) *
          (∑ n ∈ endpointIndex T,
            (Real.sqrt (n : ℝ))⁻¹) := by
      rw [Finset.mul_sum]
    _ ≤ (s * T ^ 2) *
          (2 * Real.sqrt (Real.exp T)) :=
      mul_le_mul_of_nonneg_left
        (endpoint_invsqrt_sum_le_two_sqrt_exp T)
        (mul_nonneg hs (sq_nonneg T))
    _ = 2 * s * T ^ 2 * Real.sqrt (Real.exp T) := by ring

/-- The actual chosen nonzero and vanishing heat schedule has a
source-correct error mass with squared exponential decay; no
unproved PNT/Mertens input or signed Gram positivity is involved. -/
theorem vanishingHeat_mass_sharp
    {T : ℝ} (hT : 0 ≤ T) :
    weightedErrorMass
      (sourceHeatRadius (vanishingHeatTime T)) T ≤
        2 * Real.exp (-2 * T) * T ^ 2 *
          Real.sqrt (Real.exp T) :=
  sourceHeat_mass_le_two_sqrt_exp
    (vanishingHeatTime_pos T).le hT

/-- The complete positive response Gram energy has a genuinely
EXPONENTIALLY DECAYING source-reconstruction envelope, strictly
stronger than the prior unconditional <=16T bound.

All original indexed Möbius coefficients remain in the source and
the heat input is the actual positive schedule exp(-2T). -/
theorem vanishingHeat_radiusEnergy_exponential
    {T : ℝ} (hT : 0 ≤ T) :
    sourceHeatRadiusEnergy (vanishingHeatTime T) T ≤
      16 * T ^ 5 * Real.exp (-3 * T) := by
  let s := vanishingHeatTime T
  have hs : 0 ≤ s := (vanishingHeatTime_pos T).le
  have hcert := sourceHeat_errorCertificate hs T
  have hm0 :
      0 ≤ weightedErrorMass (sourceHeatRadius s) T :=
    weightedErrorMass_nonneg sourceHeatPhase
      (sourceHeatCoeff s) (sourceHeatRadius s) T hcert
  have hm : weightedErrorMass (sourceHeatRadius s) T ≤
      2 * s * T ^ 2 * Real.sqrt (Real.exp T) :=
    sourceHeat_mass_le_two_sqrt_exp hs hT
  have hb0 : 0 ≤ 2 * s * T ^ 2 * Real.sqrt (Real.exp T) := by
    positivity
  have hsq :
      weightedErrorMass (sourceHeatRadius s) T ^ 2 ≤
      (2 * s * T ^ 2 * Real.sqrt (Real.exp T)) ^ 2 :=
    (sq_le_sq₀ hm0 hb0).mpr hm
  have hradius :=
    heatRadiusEnergy_le_weighted_mass hs hT
  have hsqroot :
      (Real.sqrt (Real.exp T)) ^ 2 = Real.exp T :=
    Real.sq_sqrt (Real.exp_pos T).le
  have hexp :
      (Real.exp (-2 * T)) ^ 2 * Real.exp T =
      Real.exp (-3 * T) := by
    calc
      (Real.exp (-2 * T)) ^ 2 * Real.exp T =
          (Real.exp (-2 * T) * Real.exp (-2 * T)) *
            Real.exp T := by ring
      _ = Real.exp ((-2 * T) + (-2 * T) + T) := by
        rw [← Real.exp_add, ← Real.exp_add]
      _ = Real.exp (-3 * T) := by
        congr 1
        ring
  calc
    sourceHeatRadiusEnergy s T ≤
        4 * T * weightedErrorMass (sourceHeatRadius s) T ^ 2 :=
      hradius
    _ ≤ 4 * T *
          (2 * s * T ^ 2 * Real.sqrt (Real.exp T)) ^ 2 :=
      mul_le_mul_of_nonneg_left hsq (by positivity)
    _ = 16 * T ^ 5 *
          (s ^ 2 * (Real.sqrt (Real.exp T)) ^ 2) := by ring
    _ = 16 * T ^ 5 * Real.exp (-3 * T) := by
      dsimp [s, vanishingHeatTime]
      rw [hsqroot, hexp]

/-- Generic complete original causal response with source-labelled
real coefficients of absolute magnitude at most one. Signed pair
orientations are not made positive; this is only an ABSOLUTE envelope. -/
theorem source_response_wave_abs_le_four_sqrt_exp
    (coeff : ℕ → ℝ) (T u : ℝ)
    (hc : ∀ n ∈ endpointIndex T, |coeff n| ≤ 1) :
    |∑ n ∈ endpointIndex T, coeff n * pickupResponse n u| ≤
      4 * Real.sqrt (Real.exp T) := by
  classical
  calc
    |∑ n ∈ endpointIndex T,
       coeff n * pickupResponse n u| ≤
      ∑ n ∈ endpointIndex T,
        |coeff n * pickupResponse n u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ endpointIndex T,
          2 * (Real.sqrt (n : ℝ))⁻¹ := by
      apply Finset.sum_le_sum
      intro n hn
      have hn1 : 1 ≤ n := (Finset.mem_Icc.mp hn).1
      calc
        |coeff n * pickupResponse n u| =
            |coeff n| * pickupResponse n u := by
          rw [abs_mul, abs_of_nonneg (response_nonneg hn1 u)]
        _ ≤ pickupResponse n u := by
          simpa only [one_mul] using
            mul_le_mul_of_nonneg_right (hc n hn)
              (response_nonneg hn1 u)
        _ ≤ 2 * (Real.sqrt (n : ℝ))⁻¹ :=
          response_le_two_inv_sqrt hn1 u
    _ = 2 * (∑ n ∈ endpointIndex T,
          (Real.sqrt (n : ℝ))⁻¹) := by
      rw [Finset.mul_sum]
    _ ≤ 4 * Real.sqrt (Real.exp T) := by
      have h := mul_le_mul_of_nonneg_left
        (endpoint_invsqrt_sum_le_two_sqrt_exp T)
        (by norm_num : (0 : ℝ) ≤ 2)
      nlinarith

/-- The actual ORIGINAL Mobius physical-time pickup wave is controlled
by a square-root-population absolute bound on every source window.
This is not a signed cancellation estimate. -/
theorem wholePickup_abs_le_four_sqrt_exp
    {T u : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    |wholePickup u| ≤ 4 * Real.sqrt (Real.exp T) := by
  rw [wholePickup_fixed_inventory hu huT]
  apply source_response_wave_abs_le_four_sqrt_exp
  intro n hn
  exact moebiusReal_abs_le_one n

/-- The EXACT heat observable has the same ABSOLUTE bound, because
its scalar coefficient is μ(n) times a multiplier in [0,1].
This does not imply the physical-time signed energy contracts. -/
theorem sourceHeatWave_abs_le_four_sqrt_exp
    {s : ℝ} (hs : 0 ≤ s) (T u : ℝ) :
    |sourceHeatWave s T u| ≤ 4 * Real.sqrt (Real.exp T) := by
  have hsum :
      sourceHeatWave s T u =
        ∑ n ∈ endpointIndex T,
          sourceHeatCoeff s n * pickupResponse n u := by
    unfold sourceHeatWave observedWave
    apply Finset.sum_congr rfl
    intro n hn
    unfold observedCoeff sourceHeatPhase
    rw [sourceIndex_encode (Finset.mem_Icc.mp hn).1]
  rw [hsum]
  apply source_response_wave_abs_le_four_sqrt_exp
  intro n hn
  have hc :
      |sourceHeatCoeff s n| =
        logHeatMultiplier s n * |moebiusReal n| := by
    unfold sourceHeatCoeff
    rw [abs_mul, abs_of_nonneg (logHeatMultiplier_pos s n).le]
  rw [hc]
  calc
    logHeatMultiplier s n * |moebiusReal n| ≤
        1 * |moebiusReal n| :=
      mul_le_mul_of_nonneg_right
        (logHeatMultiplier_le_one hs n) (abs_nonneg _)
    _ ≤ 1 := by
      simpa only [one_mul] using moebiusReal_abs_le_one n

/-- The exact source-minus-heat wave has a physically UNIFORM
pointwise bound throughout the complete original observation window.
It is zero at the unit birth and retains every squareful zero. -/
theorem vanishingHeat_errorWave_abs_le_exponential
    {T : ℝ} (hT : 0 ≤ T) (u : ℝ) :
    |sourceHeatErrorWave (vanishingHeatTime T) T u| ≤
      4 * Real.exp (-2 * T) * T ^ 2 *
        Real.sqrt (Real.exp T) := by
  have hs : 0 ≤ vanishingHeatTime T :=
    (vanishingHeatTime_pos T).le
  have hcert := sourceHeat_errorCertificate hs T
  have h := errorWave_abs_le_two_mass
    sourceHeatPhase (sourceHeatCoeff (vanishingHeatTime T))
    (sourceHeatRadius (vanishingHeatTime T)) T u hcert
  have hm := vanishingHeat_mass_sharp hT
  have hh := mul_le_mul_of_nonneg_left hm
    (by norm_num : (0 : ℝ) ≤ 2)
  change |sourceHeatErrorWave (vanishingHeatTime T) T u| ≤
    4 * Real.exp (-2 * T) * T ^ 2 *
      Real.sqrt (Real.exp T)
  calc
    |sourceHeatErrorWave (vanishingHeatTime T) T u| ≤
      2 * weightedErrorMass
        (sourceHeatRadius (vanishingHeatTime T)) T := h
    _ ≤ 2 * (2 * Real.exp (-2 * T) * T ^ 2 *
      Real.sqrt (Real.exp T)) := hh
    _ = 4 * Real.exp (-2 * T) * T ^ 2 *
      Real.sqrt (Real.exp T) := by ring

end GRWTSK.NumberTheory.Moebius.GaussianHeatSharpSourceEnvelope
