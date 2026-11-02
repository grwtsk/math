/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatSharpSourceEnvelope
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicSignedResidueWaveform
import Mathlib.Tactic

/-!
# ABSOLUTE original signed-waveform energy stability under vanishing heat

The previously published source-preserving Gaussian heat schedule
s(T)=exp(-2T) was known to pay at most 16T in positive error energy.
A true original-source inverse-sqrt population estimate sharpens this to
  B(T) <= 16 T^5 exp(-3T).
The present module upgrades the comparison of the original cumulative
physical-time signed energy to an ABSOLUTE small error, with NO arithmetic
cancellation input:

  |pickupEnergy(T) - sourceHeatEnergy(s(T),T)|
     <= 32 T^3 exp(-T) <= 192       for T>=0.

The exponential term tends to zero as T tends to infinity. This
boundedness and decay are elementary CONSEQUENCES of taking a heat time
that itself tends to zero exponentially; they do NOT supply the separate
all-positive-rate bound for either signed energy, which remains
equivalent to the original open RH-facing supplier.

The proof retains every actual source index, the full signed cross Gram,
both mixed terms in the original square, and the original physical birth.
The same comparison holds for the complete all-parity/nonunit residue
energy at the original dyadic horizons. No theta/xi/zero-side equality
is inferred from the terminology Tao or de Bruijn–Newman heat.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianHeatAbsoluteEnergyStability

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.GaussianHeatStabilityReturn
open GRWTSK.NumberTheory.Moebius.GaussianHeatVanishingSchedule
open GRWTSK.NumberTheory.Moebius.GaussianHeatSharpSourceEnvelope
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint

/-- Finite signed-square comparison: no positivity of the signed
waveforms is needed. Positivity is used only for absolute envelopes. -/
private theorem abs_sq_sub_sq_le
    (x y A B : ℝ)
    (hx : |x| ≤ A) (hy : |y| ≤ A)
    (hxy : |x - y| ≤ B) (hB : 0 ≤ B) :
    |x ^ 2 - y ^ 2| ≤ 2 * A * B := by
  have hsum : |x + y| ≤ |x| + |y| := abs_add_le x y
  have hsumA : |x| + |y| ≤ 2 * A := by linarith
  calc
    |x ^ 2 - y ^ 2| = |x - y| * |x + y| := by
      rw [show x ^ 2 - y ^ 2 = (x - y) * (x + y) by ring,
        abs_mul]
    _ ≤ |x - y| * (|x| + |y|) :=
      mul_le_mul_of_nonneg_left hsum (abs_nonneg _)
    _ ≤ B * (|x| + |y|) :=
      mul_le_mul_of_nonneg_right hxy
        (add_nonneg (abs_nonneg x) (abs_nonneg y))
    _ ≤ B * (2 * A) :=
      mul_le_mul_of_nonneg_left hsumA hB
    _ = 2 * A * B := by ring

/-- A generic finite physical-time interval comparison. If the signed
squares differ pointwise by at most K, then their actual interval
integral energies differ by at most T*K, for T>=0. -/
private theorem interval_square_integral_abs_diff
    (f g : ℝ → ℝ) (hf : Continuous f) (hg : Continuous g)
    {T K : ℝ} (hT : 0 ≤ T)
    (hpoint : ∀ u : ℝ, 0 ≤ u → u ≤ T →
      |f u ^ 2 - g u ^ 2| ≤ K) :
    |(∫ u in (0 : ℝ)..T, f u ^ 2) -
        (∫ u in (0 : ℝ)..T, g u ^ 2)| ≤ T * K := by
  have hfi : IntervalIntegrable (fun u : ℝ => f u ^ 2)
      volume 0 T := (hf.pow 2).intervalIntegrable 0 T
  have hgi : IntervalIntegrable (fun u : ℝ => g u ^ 2)
      volume 0 T := (hg.pow 2).intervalIntegrable 0 T
  have hki : IntervalIntegrable (fun _ : ℝ => K)
      volume 0 T := continuous_const.intervalIntegrable 0 T
  have hfg :
      (∫ u in (0 : ℝ)..T, f u ^ 2) ≤
        (∫ u in (0 : ℝ)..T, g u ^ 2) + T * K := by
    calc
      (∫ u in (0 : ℝ)..T, f u ^ 2) ≤
          ∫ u in (0 : ℝ)..T, g u ^ 2 + K := by
        apply intervalIntegral.integral_mono_on hT hfi (hgi.add hki)
        intro u hu
        have h := (abs_le.mp (hpoint u hu.1 hu.2)).2
        linarith
      _ = (∫ u in (0 : ℝ)..T, g u ^ 2) + T * K := by
        rw [intervalIntegral.integral_add hgi hki,
          intervalIntegral.integral_const]
        simp only [sub_zero, smul_eq_mul]
  have hgf :
      (∫ u in (0 : ℝ)..T, g u ^ 2) ≤
        (∫ u in (0 : ℝ)..T, f u ^ 2) + T * K := by
    calc
      (∫ u in (0 : ℝ)..T, g u ^ 2) ≤
          ∫ u in (0 : ℝ)..T, f u ^ 2 + K := by
        apply intervalIntegral.integral_mono_on hT hgi (hfi.add hki)
        intro u hu
        have h := (abs_le.mp (hpoint u hu.1 hu.2)).1
        linarith
      _ = (∫ u in (0 : ℝ)..T, f u ^ 2) + T * K := by
        rw [intervalIntegral.integral_add hfi hki,
          intervalIntegral.integral_const]
        simp only [sub_zero, smul_eq_mul]
  apply abs_le.mpr
  constructor <;> linarith

/-- The COMPLETE signed squares themselves are close at EVERY
physical time u in the actual window, with an exponentially small
source-indexed, birth-aware error. -/
theorem vanishingHeat_signed_square_pointwise
    {T u : ℝ} (hT : 0 ≤ T) (hu : 0 ≤ u) (huT : u ≤ T) :
    |wholePickup u ^ 2 -
      sourceHeatWave (vanishingHeatTime T) T u ^ 2| ≤
        32 * T ^ 2 * Real.exp (-T) := by
  let s : ℝ := vanishingHeatTime T
  let A : ℝ := 4 * Real.sqrt (Real.exp T)
  let B : ℝ := 4 * s * T ^ 2 * Real.sqrt (Real.exp T)
  have hs : 0 ≤ s := (vanishingHeatTime_pos T).le
  have hA : |wholePickup u| ≤ A :=
    wholePickup_abs_le_four_sqrt_exp hu huT
  have hheat : |sourceHeatWave s T u| ≤ A :=
    sourceHeatWave_abs_le_four_sqrt_exp hs T u
  have hsplit :=
    wholePickup_eq_heat_add_exact_error s hu huT
  have hdiff :
      wholePickup u - sourceHeatWave s T u =
        sourceHeatErrorWave s T u := by
    linarith
  have herr :
      |wholePickup u - sourceHeatWave s T u| ≤ B := by
    rw [hdiff]
    exact vanishingHeat_errorWave_abs_le_exponential hT u
  have hB : 0 ≤ B := by
    dsimp [B, s]
    positivity
  have hsqroot :
      Real.sqrt (Real.exp T) * Real.sqrt (Real.exp T) =
        Real.exp T := by
    nlinarith [Real.sq_sqrt (Real.exp_pos T).le]
  have hexp :
      Real.exp (-2 * T) * Real.exp T = Real.exp (-T) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    |wholePickup u ^ 2 - sourceHeatWave s T u ^ 2| ≤
        2 * A * B :=
      abs_sq_sub_sq_le _ _ A B hA hheat herr hB
    _ = 32 * T ^ 2 * Real.exp (-T) := by
      calc
        2 * A * B =
          32 * T ^ 2 *
            (s * (Real.sqrt (Real.exp T) *
              Real.sqrt (Real.exp T))) := by
          dsimp [A, B]
          ring
        _ = 32 * T ^ 2 *
            (Real.exp (-2 * T) * Real.exp T) := by
          rw [hsqroot]
          rfl
        _ = 32 * T ^ 2 * Real.exp (-T) := by
          rw [hexp]

/-- The complete original cumulative signed physical-time energy
and the actual source-preserving Gaussian heat energy differ by an
ABSOLUTELY EXPONENTIALLY DECAYING allowance.

This does NOT require a Mertens/PNT input, a signed-gram PSD claim or
the missing RH all-positive-rate arithmetic cancellation estimate. -/
theorem vanishingHeat_abs_energy_difference_exponential
    {T : ℝ} (hT : 0 ≤ T) :
    |pickupEnergy T -
      sourceHeatEnergy (vanishingHeatTime T) T| ≤
        32 * T ^ 3 * Real.exp (-T) := by
  have hsource : Continuous wholePickup := wholePickup_continuous
  have hheat : Continuous
      (sourceHeatWave (vanishingHeatTime T) T) := by
    unfold sourceHeatWave
    exact observedWave_continuous
      sourceHeatPhase (sourceHeatCoeff (vanishingHeatTime T)) T
  have hbound := interval_square_integral_abs_diff
    wholePickup (sourceHeatWave (vanishingHeatTime T) T)
    hsource hheat hT
    (fun u hu huT =>
      vanishingHeat_signed_square_pointwise hT hu huT)
  have hcomparison :
      |pickupEnergy T -
        sourceHeatEnergy (vanishingHeatTime T) T| ≤
          T * (32 * T ^ 2 * Real.exp (-T)) := by
    simpa only [pickupEnergy, sourceHeatEnergy, observedEnergy,
      sourceHeatWave] using hbound
  calc
    |pickupEnergy T - sourceHeatEnergy (vanishingHeatTime T) T| ≤
        T * (32 * T ^ 2 * Real.exp (-T)) := hcomparison
    _ = 32 * T ^ 3 * Real.exp (-T) := by ring

/-- A scale-independent finite cap follows from the elementary
third exponential Taylor term T^3 <= 6*exp T, valid for T>=0.

Unlike a growing O(T) error, this bound gives a uniform comparison
between the original and heated signed TOTAL energies on all scales. -/
theorem vanishingHeat_abs_energy_difference_le_192
    {T : ℝ} (hT : 0 ≤ T) :
    |pickupEnergy T -
      sourceHeatEnergy (vanishingHeatTime T) T| ≤ 192 := by
  have hdecay :=
    vanishingHeat_abs_energy_difference_exponential hT
  have hpower : T ^ 3 ≤ 6 * Real.exp T := by
    have h := pow_le_factorial_mul_exp
      (by norm_num : (0 : ℝ) < 1) hT 3
    norm_num at h
    simpa only [one_mul] using h
  have he : Real.exp (-T) * Real.exp T = 1 := by
    rw [← Real.exp_add]
    simp
  have hupper : 32 * T ^ 3 * Real.exp (-T) ≤ 192 := by
    calc
      32 * T ^ 3 * Real.exp (-T) =
          (32 * Real.exp (-T)) * T ^ 3 := by ring
      _ ≤ (32 * Real.exp (-T)) *
            (6 * Real.exp T) :=
        mul_le_mul_of_nonneg_left hpower (by positivity)
      _ = 192 := by
        calc
          _ = 192 * (Real.exp (-T) * Real.exp T) := by ring
          _ = 192 := by rw [he]; ring
  exact hdecay.trans hupper

/-- The complete parity/nonunit signed residue waveform energy on the
actual dyadic source agrees with the original pickup energy. Its
Gaussian approximation therefore inherits the SAME error bound. -/
theorem dyadic_residue_energy_vs_vanishing_heat
    (j d : ℕ) [NeZero d] :
    |GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeResidueEnergy j d -
      sourceHeatEnergy (vanishingHeatTime (dyadicTime j))
        (dyadicTime j)| ≤
      32 * (dyadicTime j) ^ 3 *
        Real.exp (-(dyadicTime j)) := by
  rw [GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeResidueEnergy_eq_pickupEnergy]
  exact vanishingHeat_abs_energy_difference_exponential
    (dyadicTime_nonnegative j)


/-! ## Exact original signed cross and endpoint observations -/

/-- This is the heat-smoothed FULL signed square minus the ORIGINAL
arithmetic diagonal (not the heat-modified diagonal). The distinction
is necessary for a genuine one-sided RH-facing signed source return. -/
def heatCorrectedCross (T : ℝ) : ℝ :=
  sourceHeatEnergy (vanishingHeatTime T) T - pickupDiagonal T

/-- The original signed two-orientation off-diagonal Mobius cross is
exponentially close in ABSOLUTE value to the heat-corrected signed
observation. The diagonal is carried exactly rather than smoothed,
and neither full sign nor off-diagonal term is suppressed. -/
theorem originalCross_heatCorrectedCross_abs_exponential
    {T : ℝ} (hT : 0 ≤ T) :
    |pickupCross T - heatCorrectedCross T| ≤
      32 * T ^ 3 * Real.exp (-T) := by
  have hsplit := pickupEnergy_eq_diagonal_add_cross hT
  have heq :
      pickupCross T - heatCorrectedCross T =
        pickupEnergy T -
          sourceHeatEnergy (vanishingHeatTime T) T := by
    unfold heatCorrectedCross
    linarith
  rw [heq]
  exact vanishingHeat_abs_energy_difference_exponential hT

/-- Same signed cross approximation with one global constant, without
any arithmetic cancellation beyond the exact original source algebra. -/
theorem originalCross_heatCorrectedCross_abs_le_192
    {T : ℝ} (hT : 0 ≤ T) :
    |pickupCross T - heatCorrectedCross T| ≤ 192 := by
  have hsplit := pickupEnergy_eq_diagonal_add_cross hT
  have heq :
      pickupCross T - heatCorrectedCross T =
        pickupEnergy T -
          sourceHeatEnergy (vanishingHeatTime T) T := by
    unfold heatCorrectedCross
    linarith
  rw [heq]
  exact vanishingHeat_abs_energy_difference_le_192 hT

/-- Pay the existing quarter-unit source chord/endpoint curvature
ONCE, after preserving all original signed cross terms. -/
theorem endpointSum_heatCorrectedCross_abs_exponential
    {T : ℝ} (hT : 0 ≤ T) :
    |endpointSum T - heatCorrectedCross T| ≤
      (1 / 4 : ℝ) + 32 * T ^ 3 * Real.exp (-T) := by
  have hcurve := endpointSum_error hT
  have hcross := originalCross_heatCorrectedCross_abs_exponential hT
  have hsum :
      endpointSum T - heatCorrectedCross T =
        (endpointSum T - pickupCross T) +
          (pickupCross T - heatCorrectedCross T) := by ring
  rw [hsum]
  calc
    |(endpointSum T - pickupCross T) +
        (pickupCross T - heatCorrectedCross T)| ≤
        |endpointSum T - pickupCross T| +
          |pickupCross T - heatCorrectedCross T| :=
      abs_add_le _ _
    _ ≤ (1 / 4 : ℝ) + 32 * T ^ 3 * Real.exp (-T) :=
      add_le_add hcurve hcross

/-! ## A conservative, still open heat-RH arithmetic route -/

open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- A uniformly 192-bounded difference preserves the all-positive-rate
one-sided growth class on ONE fixed set G, in BOTH directions. No
favorable scale is chosen after the exponential rate. -/
theorem heatCorrectedCross_subexponential_iff_original
    (G : Set ℝ) :
    SubexponentialOn heatCorrectedCross G ↔
      SubexponentialOn pickupCross G := by
  have hconstant :
      SubexponentialUpper (fun _ : ℝ => (192 : ℝ)) := by
    apply subexponentialUpper_of_polynomial
      (C := (192 : ℝ)) (q := (0 : ℝ)) (by norm_num)
    intro T hT
    simp
  constructor
  · intro hheat
    apply subexponentialOn_mono (add_global hheat hconstant)
    intro T hTG hT
    have hdiff := originalCross_heatCorrectedCross_abs_le_192 hT
    have hup := (abs_le.mp hdiff).2
    linarith
  · intro hcross
    apply subexponentialOn_mono (add_global hcross hconstant)
    intro T hTG hT
    have hdiff := originalCross_heatCorrectedCross_abs_le_192 hT
    have hlo := (abs_le.mp hdiff).1
    linarith

/-- The actual canonical RH implication remains CONDITIONAL on the
unproved all-positive-rate signed heat-corrected cross estimate, on
one fixed AffineFrequent set of source observation scales. The
Gaussian near-identity comparison alone does NOT supply the estimate. -/
theorem riemannHypothesis_of_heatCorrectedCross_good_scales
    {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hbudget : SubexponentialOn heatCorrectedCross G) :
    _root_.RiemannHypothesis :=
  GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion.riemannHypothesis_of_cross_good_scales
    hcover
    ((heatCorrectedCross_subexponential_iff_original G).mp hbudget)

end GRWTSK.NumberTheory.Moebius.GaussianHeatAbsoluteEnergyStability
