/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatAbsoluteEnergyStability
import Mathlib.Tactic

/-!
# Exact causal horizon restriction and local Gaussian heat stability

This source improves the earlier full-horizon Gaussian heat energy estimate
without changing the actual integer source, Mobius coefficient, signed
physical response, birth convention or ordered off-diagonal Gram.

At physical time u<=T, EVERY original index n>floor(exp u) contributes
exactly ZERO: its causal pickupResponse(n,u) has not yet been born.
The same identity holds for arbitrary source-labelled scalar coefficients,
the heat-smoothed signed observation, the exact signed reconstruction error
and the nonnegative decoder-radius response wave.

Using the ACTUAL active inventory at u, rather than the larger final
inventory at T, gives for all s>=0 and 0<=u<=T:

 |wholePickup(u)|, |sourceHeatWave(s,T,u)| <=4 sqrt(exp u);
 |sourceHeatErrorWave(s,T,u)| <=4 s u^2 sqrt(exp u);
 radiusWave(sourceHeatRadius(s),T,u) <=4 s u^2 sqrt(exp u);
 |wholePickup(u)^2-sourceHeatWave(s,T,u)^2| <=32 s u^2 exp u;
 radiusWave(sourceHeatRadius(s),T,u)^2 <=16 s^2 u^4 exp u.

All of these bounds are absolute and arithmetic-independent; they are
not cancellation or heat contraction of the signed original Gram.
They enable one full power of T to be removed from previous
integrated reconstruction bounds in the subsequent module.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianHeatLocalCausalBounds

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
open GRWTSK.NumberTheory.Moebius.GaussianHeatSharpSourceEnvelope

/-- Entire source-indexed coefficient sums restrict EXACTLY to the
indices whose causal responses are born by time u, for EVERY coeff.
There is no nonlocal tail and no assumption of arithmetic randomness. -/
theorem responseSum_horizon_restrict
    (coeff : ℕ → ℝ) {u T : ℝ} (huT : u ≤ T) :
    (∑ n ∈ endpointIndex T, coeff n * pickupResponse n u) =
      ∑ n ∈ endpointIndex u, coeff n * pickupResponse n u := by
  have hsub : endpointIndex u ⊆ endpointIndex T := by
    intro n hn
    rcases Finset.mem_Icc.mp hn with ⟨hn1, hnN⟩
    exact Finset.mem_Icc.mpr
      ⟨hn1, hnN.trans (Nat.floor_mono (Real.exp_le_exp.mpr huT))⟩
  symm
  apply Finset.sum_subset hsub
  intro n hnT hnnot
  have hn1 : 1 ≤ n := (Finset.mem_Icc.mp hnT).1
  have hfuture : ¬ Real.log (n : ℝ) ≤ u := by
    intro hlog
    exact hnnot (Finset.mem_Icc.mpr
      ⟨hn1, (pickup_log_le_iff_closed_cutoff hn1 u).mp hlog⟩)
  simp [pickupResponse, hfuture]

/-- Literal heated SIGNED source wave uses only already-born
original integers, with the same heat parameter s. -/
theorem sourceHeatWave_horizon_restrict
    (s : ℝ) {u T : ℝ} (huT : u ≤ T) :
    sourceHeatWave s T u = sourceHeatWave s u u := by
  unfold sourceHeatWave observedWave
  exact responseSum_horizon_restrict
    (fun n => observedCoeff sourceHeatPhase (sourceHeatCoeff s) n) huT

/-- The EXACT original-minus-heat signed source wave has the same
causal restriction. Its mixed terms were not discarded. -/
theorem sourceHeatErrorWave_horizon_restrict
    (s : ℝ) {u T : ℝ} (huT : u ≤ T) :
    sourceHeatErrorWave s T u = sourceHeatErrorWave s u u := by
  unfold sourceHeatErrorWave errorWave
  exact responseSum_horizon_restrict
    (coefficientError sourceHeatPhase (sourceHeatCoeff s)) huT

/-- Positive absolute response radii are also causal. This holds
for arbitrary real radii, not only source-certified ones. -/
theorem radiusWave_horizon_restrict
    (eta : ℕ → ℝ) {u T : ℝ} (huT : u ≤ T) :
    radiusWave eta T u = radiusWave eta u u := by
  unfold radiusWave
  exact responseSum_horizon_restrict eta huT

/-- The nonnegative heat-error radius at the ACTUAL physical time u
costs only active source indices n<=exp u. The final horizon T no
longer enters this arithmetic-independent bound. -/
theorem sourceHeatRadiusWave_local_bound
    {s u : ℝ} (hs : 0 ≤ s) (hu : 0 ≤ u) :
    radiusWave (sourceHeatRadius s) u u ≤
      4 * s * u ^ 2 * Real.sqrt (Real.exp u) := by
  have hcert := sourceHeat_errorCertificate hs u
  have hr := radiusWave_le_two_weightedMass
    sourceHeatPhase (sourceHeatCoeff s) (sourceHeatRadius s)
    u u hcert
  have hm := sourceHeat_mass_le_two_sqrt_exp hs hu
  have hmul := mul_le_mul_of_nonneg_left hm
    (by norm_num : (0 : ℝ) ≤ 2)
  calc
    radiusWave (sourceHeatRadius s) u u ≤
      2 * weightedErrorMass (sourceHeatRadius s) u := hr
    _ ≤ 2 * (2 * s * u ^ 2 * Real.sqrt (Real.exp u)) := hmul
    _ = 4 * s * u ^ 2 * Real.sqrt (Real.exp u) := by ring

/-- Source heat-error wave is bounded by the actual nonnegative
radius, at the physical time u not at the terminal time T. -/
theorem sourceHeatErrorWave_local_bound
    {s u : ℝ} (hs : 0 ≤ s) (hu : 0 ≤ u) :
    |sourceHeatErrorWave s u u| ≤
      4 * s * u ^ 2 * Real.sqrt (Real.exp u) := by
  have hcert := sourceHeat_errorCertificate hs u
  have hr := errorWave_abs_le_radiusWave
    sourceHeatPhase (sourceHeatCoeff s) (sourceHeatRadius s)
    u u hcert
  exact hr.trans (sourceHeatRadiusWave_local_bound hs hu)

/-- The last inventory can be arbitrarily larger than the active
inventory, yet later births contribute exactly zero in error space. -/
theorem sourceHeatErrorWave_local_bound_on
    {s u T : ℝ} (hs : 0 ≤ s) (hu : 0 ≤ u) (huT : u ≤ T) :
    |sourceHeatErrorWave s T u| ≤
      4 * s * u ^ 2 * Real.sqrt (Real.exp u) := by
  rw [sourceHeatErrorWave_horizon_restrict s huT]
  exact sourceHeatErrorWave_local_bound hs hu

/-- Source and heat signed wave amplitudes have equal
ARITHMETIC-INDEPENDENT active-inventory absolute envelopes. -/
theorem source_and_heat_abs_le_active
    {s u T : ℝ} (hs : 0 ≤ s) (hu : 0 ≤ u) (huT : u ≤ T) :
    |wholePickup u| ≤ 4 * Real.sqrt (Real.exp u) ∧
    |sourceHeatWave s T u| ≤ 4 * Real.sqrt (Real.exp u) := by
  constructor
  · exact wholePickup_abs_le_four_sqrt_exp hu (le_refl u)
  · rw [sourceHeatWave_horizon_restrict s huT]
    exact sourceHeatWave_abs_le_four_sqrt_exp hs u u

/-- The square of the actual original and heated SIGNED waves differs
only by a local-in-u error envelope. No positive-sign assumption is
made on either complete arithmetic wave. -/
theorem sourceHeat_signed_square_local_bound
    {s u T : ℝ} (hs : 0 ≤ s) (hu : 0 ≤ u) (huT : u ≤ T) :
    |wholePickup u ^ 2 - sourceHeatWave s T u ^ 2| ≤
      32 * s * u ^ 2 * Real.exp u := by
  let A : ℝ := 4 * Real.sqrt (Real.exp u)
  let B : ℝ := 4 * s * u ^ 2 * Real.sqrt (Real.exp u)
  have hbounds := source_and_heat_abs_le_active hs hu huT
  have hd := wholePickup_eq_heat_add_exact_error s hu huT
  have herr : |wholePickup u - sourceHeatWave s T u| ≤ B := by
    have hrel : wholePickup u - sourceHeatWave s T u =
        sourceHeatErrorWave s T u := by linarith
    rw [hrel]
    exact sourceHeatErrorWave_local_bound_on hs hu huT
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hsum := abs_add_le (wholePickup u) (sourceHeatWave s T u)
  have hsumBound : |wholePickup u| + |sourceHeatWave s T u| ≤ 2 * A := by
    dsimp [A]
    linarith [hbounds.1, hbounds.2]
  have hroot :
      Real.sqrt (Real.exp u) * Real.sqrt (Real.exp u) =
        Real.exp u := by
    rw [← pow_two, Real.sq_sqrt (Real.exp_pos u).le]
  calc
    |wholePickup u ^ 2 - sourceHeatWave s T u ^ 2| =
        |wholePickup u - sourceHeatWave s T u| *
          |wholePickup u + sourceHeatWave s T u| := by
      rw [show wholePickup u ^ 2 - sourceHeatWave s T u ^ 2 =
        (wholePickup u - sourceHeatWave s T u) *
          (wholePickup u + sourceHeatWave s T u) by ring, abs_mul]
    _ ≤ B * (2 * A) := by
      calc
        _ ≤ |wholePickup u - sourceHeatWave s T u| *
              (|wholePickup u| + |sourceHeatWave s T u|) :=
          mul_le_mul_of_nonneg_left hsum (abs_nonneg _)
        _ ≤ B * (|wholePickup u| + |sourceHeatWave s T u|) :=
          mul_le_mul_of_nonneg_right herr
            (add_nonneg (abs_nonneg _) (abs_nonneg _))
        _ ≤ B * (2 * A) :=
          mul_le_mul_of_nonneg_left hsumBound hB
    _ = 32 * s * u ^ 2 * Real.exp u := by
      calc
        B * (2 * A) =
            32 * s * u ^ 2 *
              (Real.sqrt (Real.exp u) * Real.sqrt (Real.exp u)) := by
          dsimp [B, A]
          ring
        _ = 32 * s * u ^ 2 * Real.exp u := by rw [hroot]

/-- The squared original positive radius wave is controlled by an
active-population heat envelope, not the full terminal mass bound. -/
theorem sourceHeat_radius_square_local_bound
    {s u T : ℝ} (hs : 0 ≤ s) (hu : 0 ≤ u) (huT : u ≤ T) :
    (radiusWave (sourceHeatRadius s) T u) ^ 2 ≤
      16 * s ^ 2 * u ^ 4 * Real.exp u := by
  have hcert := sourceHeat_errorCertificate hs u
  have hzero : 0 ≤ radiusWave (sourceHeatRadius s) u u :=
    radiusWave_nonneg
      sourceHeatPhase (sourceHeatCoeff s) (sourceHeatRadius s)
      u u hcert
  have hupper := sourceHeatRadiusWave_local_bound hs hu
  have hcap : 0 ≤ 4 * s * u ^ 2 * Real.sqrt (Real.exp u) := by
    positivity
  have hsq := (sq_le_sq₀ hzero hcap).mpr hupper
  rw [radiusWave_horizon_restrict (sourceHeatRadius s) huT]
  calc
    radiusWave (sourceHeatRadius s) u u ^ 2 ≤
        (4 * s * u ^ 2 * Real.sqrt (Real.exp u)) ^ 2 := hsq
    _ = 16 * s ^ 2 * u ^ 4 *
        (Real.sqrt (Real.exp u)) ^ 2 := by ring
    _ = 16 * s ^ 2 * u ^ 4 * Real.exp u := by
      rw [Real.sq_sqrt (Real.exp_pos u).le]

end GRWTSK.NumberTheory.Moebius.GaussianHeatLocalCausalBounds
