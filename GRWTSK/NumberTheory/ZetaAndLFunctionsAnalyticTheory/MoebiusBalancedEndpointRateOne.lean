/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimeDilationOutsideRateObstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.MoebiusVerticalLineMonotonicity
import GRWTSK.MeasureAndIntegration.FiniteResponseSum
import Mathlib

/-!
# Unconditional rate-one ceiling for the ORIGINAL balanced Möbius endpoint

The previous exact four-sector source retains all original integer
Möbius coefficients, squareful zeros, two ordered orientations and
physical-time causal kernels. The prime-dilation credit and outside
remainder must be kept BALANCED, because the outside-only rate
criterion has been disproved using unconditional classical PNT.

The original pickup source is already a Mertens velocity primitive:
  pickupVelocity u = exp(-u/2) * mertensPrefix(exp u).
The unconditional elementary |M(x)| <= x yields
  |pickupVelocity u| <= exp(u/2).
This is source-exact, needs NO Riemann Hypothesis, PNT or signed
independence assumption.

Integrating the ACTUAL original source gives
  |wholePickup T| <= 2*(exp(T/2)-1)  (T>=0),
  pickupEnergy T <= 4*(exp T-1)       (T>=0),
and hence original pickupCross T <= 4*(exp T-1), since the
genuine diagonal is nonnegative. This discharges the previously
paper-only RATE-ONE bound, rather than the older bound
  pickupEnergy <= 2*exp T * T^2.

The original three sparse sectors cost at most
  96/epsilon^2 * exp(epsilon*T).
Thus the EXACT balanced signed source R-credit (not R alone)
is unconditionally <=4*(exp T-1)+96/epsilon^2*exp(epsilon*T).
This is an exponent-ONE ceiling. It does NOT prove the
all-positive-rate epsilon<1 supplier required for RH.

The source-aware external Vinogradov-Korobov Mertens input gives
further logarithmic-power savings at exponent one. That independent
input and its real-variable transfer are explained in the review;
they are NOT imported here as an axiom or claimed as a Lean theorem.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

namespace GRWTSK.NumberTheory.Moebius.BalancedEndpointRateOne

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.PickupDyadicCoarseBounds
open GRWTSK.NumberTheory.Moebius.PrimeDilationForcedCompensation

/-- Original closed Mertens prefix only; no different coefficient
source or assumption about arithmetic cancellation. -/
theorem pickupVelocity_abs_le_exp_half (u : ℝ) :
    |pickupVelocity u| ≤ Real.exp (u / 2) := by
  have hM := mertensPrefix_abs_le (Real.exp_pos u).le
  unfold pickupVelocity
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    Real.exp (-u / 2) * |mertensPrefix (Real.exp u)| ≤
        Real.exp (-u / 2) * Real.exp u :=
      mul_le_mul_of_nonneg_left hM (Real.exp_pos _).le
    _ = Real.exp (u / 2) := by
      rw [← Real.exp_add]
      congr 1
      ring

/-- Exact elementary integral of the exp-half pointwise allowance
with the correct initial endpoint u=0. -/
theorem integral_exp_half (T : ℝ) :
    (∫ u in (0 : ℝ)..T, Real.exp (u / 2)) =
      2 * (Real.exp (T / 2) - 1) := by
  have hd (u : ℝ) :
      HasDerivAt (fun x : ℝ => 2 * Real.exp (x / 2))
        (Real.exp (u / 2)) u := by
    have hbase : HasDerivAt (fun x : ℝ => x / 2)
        (1 / 2 : ℝ) u := (hasDerivAt_id u).div_const 2
    have h := hbase.exp.const_mul 2
    convert h using 1 <;> ring
  have hi : IntervalIntegrable (fun u : ℝ => Real.exp (u / 2))
      volume 0 T :=
    (Real.continuous_exp.comp (continuous_id.div_const 2)).intervalIntegrable 0 T
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun u _ => hd u) hi]
  simp
  ring

/-- Genuine bound for the same wholePickup used by the canonical
RH endpoint source, from the Mertens step function |M(x)|<=x.
No real-time cutoff approximation or arbitrary final index. -/
theorem wholePickup_abs_le_two_exp_half {T : ℝ} (hT : 0 ≤ T) :
    |wholePickup T| ≤ 2 * (Real.exp (T / 2) - 1) := by
  have hvelocity : IntervalIntegrable pickupVelocity volume 0 T :=
    pickupVelocity_intervalIntegrable 0 T
  have habs : IntervalIntegrable (fun u : ℝ => |pickupVelocity u|)
      volume 0 T := hvelocity.abs
  have hexp : IntervalIntegrable (fun u : ℝ => Real.exp (u / 2))
      volume 0 T :=
    (Real.continuous_exp.comp (continuous_id.div_const 2)).intervalIntegrable 0 T
  calc
    |wholePickup T| = |∫ u in (0 : ℝ)..T, pickupVelocity u| := rfl
    _ ≤ ∫ u in (0 : ℝ)..T, |pickupVelocity u| :=
      intervalIntegral.abs_integral_le_integral_abs hT
    _ ≤ ∫ u in (0 : ℝ)..T, Real.exp (u / 2) := by
      apply intervalIntegral.integral_mono_on hT habs hexp
      intro u hu
      exact pickupVelocity_abs_le_exp_half u
    _ = 2 * (Real.exp (T / 2) - 1) := integral_exp_half T

/-- One full original source reading has square at most four
times exp u. The stronger initial-condition subtraction is kept
in the preceding bound and not silently discarded in the argument. -/
theorem wholePickup_sq_le_four_exp {u : ℝ} (hu : 0 ≤ u) :
    wholePickup u ^ 2 ≤ 4 * Real.exp u := by
  have h := wholePickup_abs_le_two_exp_half hu
  have hb : |wholePickup u| ≤ 2 * Real.exp (u / 2) := by
    linarith
  have hh := (sq_le_sq₀ (abs_nonneg _)
    (by positivity : 0 ≤ 2 * Real.exp (u / 2))).mpr hb
  rw [sq_abs] at hh
  calc
    wholePickup u ^ 2 ≤ (2 * Real.exp (u / 2)) ^ 2 := hh
    _ = 4 * Real.exp u := by
      rw [show Real.exp u = Real.exp (u / 2) ^ 2 by
        rw [pow_two, ← Real.exp_add]
        congr 1
        ring]
      ring

/-- Exact exponential integral with both literal original
time boundaries, never a discretized pickup or Euler-model return. -/
theorem integral_exp (T : ℝ) :
    (∫ u in (0 : ℝ)..T, Real.exp u) = Real.exp T - 1 := by
  have hi : IntervalIntegrable Real.exp volume 0 T :=
    Real.continuous_exp.intervalIntegrable 0 T
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun u _ => Real.hasDerivAt_exp u) hi]
  simp

/-- The original COMPLETE integrated Möbius pickup square,
not its positive diagonal or a scalar surrogate, has a
source-unconditional RATE-ONE ceiling with numerical constant 4. -/
theorem pickupEnergy_le_four_exp_sub_one
    {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T ≤ 4 * (Real.exp T - 1) := by
  have hsource : IntervalIntegrable
      (fun u : ℝ => wholePickup u ^ 2) volume 0 T :=
    (wholePickup_continuous.pow 2).intervalIntegrable 0 T
  have hexp : IntervalIntegrable (fun u : ℝ => 4 * Real.exp u)
      volume 0 T :=
    (continuous_const.mul Real.continuous_exp).intervalIntegrable 0 T
  unfold pickupEnergy
  calc
    (∫ u in (0 : ℝ)..T, wholePickup u ^ 2) ≤
        ∫ u in (0 : ℝ)..T, 4 * Real.exp u := by
      apply intervalIntegral.integral_mono_on hT hsource hexp
      intro u hu
      exact wholePickup_sq_le_four_exp hu.1
    _ = 4 * (Real.exp T - 1) := by
      rw [intervalIntegral.integral_const_mul, integral_exp]
      ring
      
/-- The unchanged source's positive diagonal still carries EVERY
original squarefree indicator and causal self-response. -/
theorem pickupCross_le_four_exp_sub_one
    {T : ℝ} (hT : 0 ≤ T) :
    pickupCross T ≤ 4 * (Real.exp T - 1) := by
  have hE := pickupEnergy_le_four_exp_sub_one hT
  have hsplit := pickupEnergy_eq_diagonal_add_cross hT
  have hd := pickupDiagonal_nonneg hT
  linarith

/-- Exact signed balance, including all original edge sectors, receives
the new unconditional rate-one ceiling. No unbalanced outside-only
bound is asserted. -/
theorem scheduled_balanced_upper_rate_one
    (ε T : ℝ) (hε : 0 < ε) (hT : 0 ≤ T) :
    scheduledOutside ε T - scheduledCredit ε T ≤
      4 * (Real.exp T - 1) +
        (96 / ε ^ 2) * Real.exp (ε * T) := by
  have hX := pickupCross_le_four_exp_sub_one hT
  have hg := putnam_sparse_gap_all_rate ε hε hT
  have hr := putnam_ratio_outside_gap_all_rate ε hε hT
  have hs := putnam_rationalSlope_outside_gap_ratio_all_rate ε hε hT
  have hcredit := scheduledOutside_sub_credit_eq_original_core ε T
  have hpart := pickupCross_eq_gap_ratio_slope_reduced
    (putnamRateGapSet ε T) (putnamSlopeParameterSet ε T) T
  have hgapLow : -endpointGapSetCross (putnamRateGapSet ε T) T ≤
        (32 / ε ^ 2) * Real.exp (ε * T) :=
    (neg_le_abs _).trans hg
  have hratioLow : -endpointRatioOutsideGapCross
      (putnamRateGapSet ε T) T ≤
      (32 / ε ^ 2) * Real.exp (ε * T) :=
    (neg_le_abs _).trans hr
  have hslopeLow : -endpointRationalSlopeOutsideGapRatioCross
      (putnamRateGapSet ε T)
      (putnamSlopeParameterSet ε T) T ≤
      (32 / ε ^ 2) * Real.exp (ε * T) :=
    (neg_le_abs _).trans hs
  linarith

end GRWTSK.NumberTheory.Moebius.BalancedEndpointRateOne
