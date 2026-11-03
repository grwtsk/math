/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / ELABORATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHalfRootMassImprovement
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatSharpSourceEnvelope
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Close the duplicate inverse-root inventory and saturate the radius upper

The earlier independent GaussianHalfRootMassImprovement introduced the
ordinary elementary OriginalInverseRootInventoryTarget as an explicit
unported Prop. CONCURRENT source GaussianHeatSharpSourceEnvelope already
has the exact SOURCE theorem endpoint_invsqrt_sum_le_two_sqrt_exp, using
the original integer index N=floor(exp T), and in turn the earlier
QuantitativeMertensAbsoluteAbel.invsqrt_range_sum_le_two_sqrt.
The first source proof candidate below discharges this previously
open elementary Prop, reusing the existing exact source theorem.
Its kernel validity remains NOT_RUN, not promoted.

More important, the positive reconstruction radius is bounded by BOTH
  eta_s(n)<=1 and eta_s(n)<=s*(log n)^2<=s*T^2.
Retain the MINIMUM, not only the linear term:
  m=min(1,s*T^2).
With the original true 1/sqrt n weights:
  weightedErrorMass(sourceHeatRadius(s),T)<=2*sqrt(exp T)*m,
  sourceHeatRadiusEnergy(s,T)<=16*T*exp T*m^2.
This is an exact unconditional ORDINARY mathematical envelope for
ALL nonnegative s,T, including the saturation s*T^2>1.
No signed waveform contraction, global RH, new kernel or pseudo-code
index set is presumed.
-/

namespace GRWTSK.NumberTheory.Moebius.GaussianSaturatedRadiusUpper

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.GaussianHeatStabilityReturn
open GRWTSK.NumberTheory.Moebius.GaussianHalfRootMassImprovement
open GRWTSK.NumberTheory.Moebius.GaussianHeatSharpSourceEnvelope

/-- The prior ordinary inverse-root inventory proposition is NOT a new
research postulate. It is discharged from an existing exact source theorem.
No RH-facing arithmetic hypothesis is consumed. -/
theorem originalInverseRootInventory_closed_from_existing_source :
    OriginalInverseRootInventoryTarget := by
  intro T hT
  have hs : (Real.sqrt (Real.exp T))^2 = Real.exp T :=
    Real.sq_sqrt (Real.exp_pos T).le
  have he : (Real.exp (T/2))^2 = Real.exp T := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hroot : Real.sqrt (Real.exp T) = Real.exp (T/2) := by
    nlinarith [Real.sqrt_nonneg (Real.exp T),
      (Real.exp_pos (T/2)).le]
  have hbase := endpoint_invsqrt_sum_le_two_sqrt_exp T
  simpa only [hroot] using hbase

/-- At each TRUE source index the Gaussian positive radius is at most
the minimum of its full coefficient magnitude ONE and linear heat
loss s*T^2; no replacement of original μ or squareful zero. -/
theorem sourceHeatRadius_le_saturated
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T)
    {n : ℕ} (hn : n ∈ endpointIndex T) :
    sourceHeatRadius s n ≤ min (1 : ℝ) (s*T^2) := by
  have hunit : sourceHeatRadius s n ≤ 1 :=
    (sourceHeatRadius_le_abs_moebius hs n).trans
      (moebiusReal_abs_le_one n)
  have hlog := source_index_logFrequency_le hT hn
  have hsq : (logFrequency n)^2 ≤ T^2 :=
    (sq_le_sq₀ hlog.1 hT).mpr hlog.2
  have hlinear : sourceHeatRadius s n ≤ s*T^2 :=
    (sourceHeatRadius_le_time_log_sq hs n).trans
      (mul_le_mul_of_nonneg_left hsq hs)
  exact le_min hunit hlinear

/-- The COMPLETE original weighted positive source mass, with
the ACTUAL 1/sqrt(n) causal response and saturated heat loss. -/
theorem sourceHeat_mass_le_saturated
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    weightedErrorMass (sourceHeatRadius s) T ≤
      2 * Real.sqrt (Real.exp T) * min 1 (s*T^2) := by
  let m : ℝ := min 1 (s*T^2)
  have hm : 0 ≤ m := by
    dsimp [m]
    exact le_min (by norm_num) (mul_nonneg hs (sq_nonneg T))
  have hsum :
      weightedErrorMass (sourceHeatRadius s) T ≤
        ∑ n ∈ endpointIndex T, m * (Real.sqrt (n : ℝ))⁻¹ := by
    unfold weightedErrorMass
    apply Finset.sum_le_sum
    intro n hn
    exact mul_le_mul_of_nonneg_right
      (sourceHeatRadius_le_saturated hs hT hn)
      (inv_nonneg.mpr (Real.sqrt_nonneg _))
  calc
    weightedErrorMass (sourceHeatRadius s) T ≤
        ∑ n ∈ endpointIndex T, m * (Real.sqrt (n : ℝ))⁻¹ := hsum
    _ = m * (∑ n ∈ endpointIndex T,
        (Real.sqrt (n : ℝ))⁻¹) := by rw [Finset.mul_sum]
    _ ≤ m * (2 * Real.sqrt (Real.exp T)) :=
      mul_le_mul_of_nonneg_left
        (endpoint_invsqrt_sum_le_two_sqrt_exp T) hm
    _ = 2 * Real.sqrt (Real.exp T) * min 1 (s*T^2) := by
      dsimp [m]
      ring

/-- The saturated complete ORIGINAL POSITIVE reconstruction radius.
This improves the linear heat upper whenever s*T^2>1 and retains
the already proven upper <=16*T^5*s^2*exp T when s*T^2<=1. -/
theorem sourceHeat_radiusEnergy_le_saturated
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    sourceHeatRadiusEnergy s T ≤
      16 * T * Real.exp T * (min 1 (s*T^2))^2 := by
  let m : ℝ := min 1 (s*T^2)
  have hm : 0 ≤ m := by
    dsimp [m]
    exact le_min (by norm_num) (mul_nonneg hs (sq_nonneg T))
  have hmass0 : 0 ≤ weightedErrorMass (sourceHeatRadius s) T :=
    weightedErrorMass_nonneg sourceHeatPhase (sourceHeatCoeff s)
      (sourceHeatRadius s) T (sourceHeat_errorCertificate hs T)
  have hmass : weightedErrorMass (sourceHeatRadius s) T ≤
      2 * Real.sqrt (Real.exp T) * m := by
    simpa only [m] using sourceHeat_mass_le_saturated hs hT
  have hbound0 : 0 ≤ 2 * Real.sqrt (Real.exp T) * m := by
    positivity
  have hsq :
      (weightedErrorMass (sourceHeatRadius s) T)^2 ≤
      (2 * Real.sqrt (Real.exp T) * m)^2 :=
    (sq_le_sq₀ hmass0 hbound0).mpr hmass
  have hroot : (Real.sqrt (Real.exp T))^2 = Real.exp T :=
    Real.sq_sqrt (Real.exp_pos T).le
  calc
    sourceHeatRadiusEnergy s T ≤
      4*T*(weightedErrorMass (sourceHeatRadius s) T)^2 :=
        heatRadiusEnergy_le_weighted_mass hs hT
    _ ≤ 4*T*(2*Real.sqrt (Real.exp T)*m)^2 :=
      mul_le_mul_of_nonneg_left hsq (by positivity)
    _ = 16*T*Real.exp T*(min 1 (s*T^2))^2 := by
      calc
        4*T*(2*Real.sqrt (Real.exp T)*m)^2 =
          16*T*(Real.sqrt (Real.exp T))^2*m^2 := by ring
        _ = 16*T*Real.exp T*(min 1 (s*T^2))^2 := by
          rw [hroot]
          dsimp [m]
          ring

end GRWTSK.NumberTheory.Moebius.GaussianSaturatedRadiusUpper
