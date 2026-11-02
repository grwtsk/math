/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatLocalCausalBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusUnifiedObservationPortfolio
import Mathlib.Tactic

/-!
# Integrate the active-inventory Gaussian heat cost in ORIGINAL physical time

The preceding source proves pointwise, without Möbius cancellation:
  |F(u)^2 - F_s(T,u)^2| <=32*s*u^2*exp u
  radiusWave(eta_s,T,u)^2 <=16*s^2*u^4*exp u
for s>=0, 0<=u<=T.

Integrate the real physical-time exponential instead of replacing exp u
by exp T on the entire interval. Since u^k<=T^k and
integral_0^T exp u du = exp T - 1,
we obtain for any s,T>=0:
 |pickupEnergy(T)-sourceHeatEnergy(s,T)|
   <=32*s*T^2*(exp T-1),
 sourceHeatRadiusEnergy(s,T)
   <=16*s^2*T^4*(exp T-1).

For the previously published nonzero schedule s(T)=exp(-2T):
 |H(T)-H_s(T)| <=32*T^2*exp(-T) <=64,
 B_s(T) <=16*T^4*exp(-3T).
The old original source and heat-corrected cross are equally close,
with the SAME ORIGINAL diagonal. Original endpoint curvature is paid ONCE.

This is an improved SOURCE-STABILITY estimate, not an all-rate upper
bound on either original or heated signed arithmetic energy. The
heat-corrected original cross still requires the independent RH-strength
source cancellation supplier. No Tao/Rodgers xi or zero-space intertwiner
is invented. All Lean proof scripts are candidates until native replay.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianHeatIntegratedLocalStability

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
open GRWTSK.NumberTheory.Moebius.GaussianHeatAbsoluteEnergyStability
open GRWTSK.NumberTheory.Moebius.GaussianHeatLocalCausalBounds
open GRWTSK.NumberTheory.Moebius.UnifiedObservationPortfolio
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint

/-- Source-compatible physical-time integration of a pointwise
exponential envelope. The original physical interval is [0,T]. -/
private theorem interval_integral_le_exp
    (f : ℝ → ℝ) (hf : Continuous f)
    {T K : ℝ} (hT : 0 ≤ T)
    (hpoint : ∀ u : ℝ, 0 ≤ u → u ≤ T →
      f u ≤ K * Real.exp u) :
    (∫ u in (0 : ℝ)..T, f u) ≤
      K * (Real.exp T - 1) := by
  have hExp : IntervalIntegrable (fun u : ℝ => K * Real.exp u)
      volume 0 T :=
    (continuous_const.mul Real.continuous_exp).intervalIntegrable 0 T
  calc
    (∫ u in (0 : ℝ)..T, f u) ≤
        ∫ u in (0 : ℝ)..T, K * Real.exp u := by
      apply intervalIntegral.integral_mono_on hT
        (hf.intervalIntegrable 0 T) hExp
      intro u hu
      exact hpoint u hu.1 hu.2
    _ = K * (Real.exp T - 1) := by
      rw [intervalIntegral.integral_const_mul,
        intervalIntegral.integral_exp]
      simp

/-- Two orientations of the signed-square difference are retained
by integrating both f^2-g^2 and g^2-f^2 separately. -/
private theorem interval_integral_abs_square_difference_le_exp
    (f g : ℝ → ℝ) (hf : Continuous f) (hg : Continuous g)
    {T K : ℝ} (hT : 0 ≤ T)
    (hpoint : ∀ u : ℝ, 0 ≤ u → u ≤ T →
      |f u ^ 2 - g u ^ 2| ≤ K * Real.exp u) :
    |(∫ u in (0 : ℝ)..T, f u ^ 2) -
      (∫ u in (0 : ℝ)..T, g u ^ 2)| ≤
        K * (Real.exp T - 1) := by
  have hfI : IntervalIntegrable (fun u : ℝ => f u ^ 2)
      volume 0 T := (hf.pow 2).intervalIntegrable 0 T
  have hgI : IntervalIntegrable (fun u : ℝ => g u ^ 2)
      volume 0 T := (hg.pow 2).intervalIntegrable 0 T
  have hfg : (∫ u in (0 : ℝ)..T, f u ^ 2) -
      (∫ u in (0 : ℝ)..T, g u ^ 2) ≤
        K * (Real.exp T - 1) := by
    have h := interval_integral_le_exp
      (fun u : ℝ => f u ^ 2 - g u ^ 2)
      ((hf.pow 2).sub (hg.pow 2)) hT
      (fun u hu huT => (abs_le.mp (hpoint u hu huT)).2)
    rw [intervalIntegral.integral_sub hfI hgI] at h
    exact h
  have hgf : (∫ u in (0 : ℝ)..T, g u ^ 2) -
      (∫ u in (0 : ℝ)..T, f u ^ 2) ≤
        K * (Real.exp T - 1) := by
    have h := interval_integral_le_exp
      (fun u : ℝ => g u ^ 2 - f u ^ 2)
      ((hg.pow 2).sub (hf.pow 2)) hT
      (fun u hu huT => by
        have hl := (abs_le.mp (hpoint u hu huT)).1
        linarith)
    rw [intervalIntegral.integral_sub hgI hfI] at h
    exact h
  exact abs_le.mpr ⟨by linarith, hfg⟩

/-- Stronger source-correct reconstruction radius-energy estimate.
It is general in arbitrary nonnegative artificial heat time s and
retains every original source index and causal birth. -/
theorem sourceHeatRadiusEnergy_le_local_integral
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    sourceHeatRadiusEnergy s T ≤
      16 * s ^ 2 * T ^ 4 * (Real.exp T - 1) := by
  let R : ℝ → ℝ := radiusWave (sourceHeatRadius s) T
  have hR : Continuous R := radiusWave_continuous (sourceHeatRadius s) T
  have h := interval_integral_le_exp
    (fun u : ℝ => (R u) ^ 2) (hR.pow 2) hT
    (fun u hu huT => by
      have hlocal := sourceHeat_radius_square_local_bound hs hu huT
      have hpow : u ^ 4 ≤ T ^ 4 :=
        pow_le_pow_left₀ hu huT (4 : ℕ)
      have hmul :=
        mul_le_mul_of_nonneg_left hpow
          (by positivity : 0 ≤ 16 * s ^ 2 * Real.exp u)
      calc
        R u ^ 2 ≤ 16 * s ^ 2 * u ^ 4 * Real.exp u := hlocal
        _ = (16 * s ^ 2 * Real.exp u) * u ^ 4 := by ring
        _ ≤ (16 * s ^ 2 * Real.exp u) * T ^ 4 := hmul
        _ = (16 * s ^ 2 * T ^ 4) * Real.exp u := by ring)
  simpa only [R, sourceHeatRadiusEnergy, radiusEnergy] using h

/-- The source's complete physical-time SIGNED total-square energy,
not a positive sum of individual arithmetic-mode energies, has a
strictly sharper absolute difference via active birth localization. -/
theorem sourceHeatEnergy_abs_difference_le_local_integral
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    |pickupEnergy T - sourceHeatEnergy s T| ≤
      32 * s * T ^ 2 * (Real.exp T - 1) := by
  have hf : Continuous wholePickup := wholePickup_continuous
  have hg : Continuous (sourceHeatWave s T) := by
    unfold sourceHeatWave
    exact observedWave_continuous sourceHeatPhase (sourceHeatCoeff s) T
  have h := interval_integral_abs_square_difference_le_exp
    wholePickup (sourceHeatWave s T) hf hg hT
    (fun u hu huT => by
      have hlocal := sourceHeat_signed_square_local_bound hs hu huT
      have hpow : u ^ 2 ≤ T ^ 2 :=
        (sq_le_sq₀ hu hT).mpr huT
      have hmul :=
        mul_le_mul_of_nonneg_left hpow
          (by positivity : 0 ≤ 32 * s * Real.exp u)
      calc
        |wholePickup u ^ 2 - sourceHeatWave s T u ^ 2| ≤
            32 * s * u ^ 2 * Real.exp u := hlocal
        _ = (32 * s * Real.exp u) * u ^ 2 := by ring
        _ ≤ (32 * s * Real.exp u) * T ^ 2 := hmul
        _ = (32 * s * T ^ 2) * Real.exp u := by ring)
  simpa only [pickupEnergy, sourceHeatEnergy, observedEnergy,
    sourceHeatWave] using h

/-- A convenient general artificial heat-time Lipschitz bound
against the original unsmoothed source at s=0. No sign is assigned to
the actual physical-time heat energy difference. -/
theorem sourceHeatEnergy_abs_difference_le_simple
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    |pickupEnergy T - sourceHeatEnergy s T| ≤
      32 * s * T ^ 2 * Real.exp T := by
  have h := sourceHeatEnergy_abs_difference_le_local_integral hs hT
  have hfactor : Real.exp T - 1 ≤ Real.exp T := by linarith
  have hmono := mul_le_mul_of_nonneg_left hfactor
    (by positivity : 0 ≤ 32 * s * T ^ 2)
  exact h.trans hmono

/-- The same ACTUAL shrinking heat schedule now has a radius-energy
bound smaller by a factor of T than the previous source envelope. -/
theorem vanishingHeat_radiusEnergy_local_exponential
    {T : ℝ} (hT : 0 ≤ T) :
    sourceHeatRadiusEnergy (vanishingHeatTime T) T ≤
      16 * T ^ 4 * Real.exp (-3 * T) := by
  have hs := (vanishingHeatTime_pos T).le
  have h := sourceHeatRadiusEnergy_le_local_integral hs hT
  have hexp : (Real.exp (-2 * T)) ^ 2 * Real.exp T =
      Real.exp (-3 * T) := by
    calc
      (Real.exp (-2 * T)) ^ 2 * Real.exp T =
          (Real.exp (-2 * T) * Real.exp (-2 * T)) *
            Real.exp T := by ring
      _ = Real.exp ((-2 * T) + (-2 * T) + T) := by
        rw [← Real.exp_add, ← Real.exp_add]
      _ = Real.exp (-3 * T) := by congr 1; ring
  have hcap : Real.exp T - 1 ≤ Real.exp T := by linarith
  calc
    sourceHeatRadiusEnergy (vanishingHeatTime T) T ≤
      16 * (vanishingHeatTime T) ^ 2 * T ^ 4 *
        (Real.exp T - 1) := h
    _ ≤ 16 * (vanishingHeatTime T) ^ 2 * T ^ 4 *
        Real.exp T := by
      exact mul_le_mul_of_nonneg_left hcap (by positivity)
    _ = 16 * T ^ 4 * Real.exp (-3 * T) := by
      unfold vanishingHeatTime
      calc
        16 * (Real.exp (-2 * T)) ^ 2 * T ^ 4 * Real.exp T =
          16 * T ^ 4 * ((Real.exp (-2 * T)) ^ 2 * Real.exp T) := by ring
        _ = 16 * T ^ 4 * Real.exp (-3 * T) := by rw [hexp]

/-- Same true heat source, but its TOTAL signed physical-time energy
is now O(T^2 exp(-T)) close to the original, rather than O(T^3 exp(-T)).
No arithmetic estimate, signed PSD or backwards heat inference is used. -/
theorem vanishingHeat_abs_energy_difference_local_exponential
    {T : ℝ} (hT : 0 ≤ T) :
    |pickupEnergy T -
      sourceHeatEnergy (vanishingHeatTime T) T| ≤
        32 * T ^ 2 * Real.exp (-T) := by
  have hs := (vanishingHeatTime_pos T).le
  have h := sourceHeatEnergy_abs_difference_le_simple hs hT
  calc
    |pickupEnergy T -
        sourceHeatEnergy (vanishingHeatTime T) T| ≤
      32 * vanishingHeatTime T * T ^ 2 * Real.exp T := h
    _ = 32 * T ^ 2 * Real.exp (-T) := by
      unfold vanishingHeatTime
      calc
        32 * Real.exp (-2 * T) * T ^ 2 * Real.exp T =
          32 * T ^ 2 * (Real.exp (-2 * T) * Real.exp T) := by ring
        _ = 32 * T ^ 2 * Real.exp (-T) := by
          rw [← Real.exp_add]
          congr 1
          ring

/-- Elementary global cap, stronger than the previously published 192.
No new arithmetic source information is used. -/
theorem vanishingHeat_abs_energy_difference_le_64
    {T : ℝ} (hT : 0 ≤ T) :
    |pickupEnergy T -
      sourceHeatEnergy (vanishingHeatTime T) T| ≤ 64 := by
  have hb := vanishingHeat_abs_energy_difference_local_exponential hT
  have hpow : T ^ 2 ≤ 2 * Real.exp T := by
    have h := pow_le_factorial_mul_exp
      (by norm_num : (0 : ℝ) < 1) hT 2
    norm_num at h
    simpa only [one_mul] using h
  have hmul := mul_le_mul_of_nonneg_left hpow
    (by positivity : 0 ≤ 32 * Real.exp (-T))
  have he : Real.exp (-T) * Real.exp T = 1 := by
    rw [← Real.exp_add]
    simp
  calc
    |pickupEnergy T -
        sourceHeatEnergy (vanishingHeatTime T) T| ≤
          32 * T ^ 2 * Real.exp (-T) := hb
    _ = (32 * Real.exp (-T)) * T ^ 2 := by ring
    _ ≤ (32 * Real.exp (-T)) * (2 * Real.exp T) := hmul
    _ = 64 := by
      calc
        (32 * Real.exp (-T)) * (2 * Real.exp T) =
            64 * (Real.exp (-T) * Real.exp T) := by ring
        _ = 64 := by rw [he]; ring

/-! ## Full ORIGINAL signed cross, original diagonal and endpoint -/

/-- The original signed offdiagonal cross minus the exact heat
observation with ORIGINAL diagonal removed shares exactly the signed
total energy difference. No heat-modified diagonal is substituted. -/
theorem vanishingHeat_cross_abs_difference_local_exponential
    {T : ℝ} (hT : 0 ≤ T) :
    |pickupCross T - heatCorrectedCross T| ≤
      32 * T ^ 2 * Real.exp (-T) := by
  have hsplit := pickupEnergy_eq_diagonal_add_cross hT
  have hidentity :
      pickupCross T - heatCorrectedCross T =
        pickupEnergy T - sourceHeatEnergy (vanishingHeatTime T) T := by
    unfold heatCorrectedCross
    linarith
  rw [hidentity]
  exact vanishingHeat_abs_energy_difference_local_exponential hT

/-- Source-corrected signed cross differs from actual signed source
by at most 64 for every T>=0. -/
theorem vanishingHeat_cross_abs_difference_le_64
    {T : ℝ} (hT : 0 ≤ T) :
    |pickupCross T - heatCorrectedCross T| ≤ 64 := by
  have hc := vanishingHeat_cross_abs_difference_local_exponential hT
  have hh := vanishingHeat_abs_energy_difference_le_64 hT
  have hsplit := pickupEnergy_eq_diagonal_add_cross hT
  have hidentity :
      pickupCross T - heatCorrectedCross T =
        pickupEnergy T - sourceHeatEnergy (vanishingHeatTime T) T := by
    unfold heatCorrectedCross
    linarith
  rw [hidentity]
  exact hh

/-- Original chord/endpoint curvature is paid exactly ONCE after
the full signed cross is reconstructed, not per birth or per mode. -/
theorem endpoint_heatCorrectedCross_abs_local_exponential
    {T : ℝ} (hT : 0 ≤ T) :
    |endpointSum T - heatCorrectedCross T| ≤
      (1 / 4 : ℝ) + 32 * T ^ 2 * Real.exp (-T) := by
  have hcurve := endpointSum_error hT
  have hcross := vanishingHeat_cross_abs_difference_local_exponential hT
  have htriangle : endpointSum T - heatCorrectedCross T =
      (endpointSum T - pickupCross T) +
        (pickupCross T - heatCorrectedCross T) := by ring
  rw [htriangle]
  exact (abs_add_le _ _).trans (add_le_add hcurve hcross)

/-- Complete original parity/nonunit residue energy on the SAME
dyadic horizon inherits the sharper Gaussian absolute discrepancy. -/
theorem dyadic_complete_residue_heat_abs_local_exponential
    (j d : ℕ) [NeZero d] :
    |GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeResidueEnergy j d -
      sourceHeatEnergy (vanishingHeatTime (dyadicTime j))
        (dyadicTime j)| ≤
      32 * (dyadicTime j) ^ 2 * Real.exp (-(dyadicTime j)) := by
  rw [GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform.completeResidueEnergy_eq_pickupEnergy]
  exact vanishingHeat_abs_energy_difference_local_exponential
    (dyadicTime_nonnegative j)

/-! ## Join the existing five-way original-source upper portfolio -/

/-- An independent source-certified HEAT upper may be joined to
the prior five-way original signed certificate portfolio by MINIMUM.
This leaves all existing elliptic, RS, phase and dense-gap residuals
untouched and adds a correct heat-to-original signed cross correction. -/
def heatSharpHybridUpper
    {Phase : Type*} {W : WeierstrassCurve ℤ}
    (B : GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε T : ℝ)
    (depth : ℕ → ℕ) (primes : Finset ℕ) : ℝ :=
  min (sourcePortfolioUpper B phase decode eta ε T depth primes)
    (heatCorrectedCross T + 32 * T ^ 2 * Real.exp (-T))

theorem pickupCross_le_heatSharpHybridUpper
    {Phase : Type*} {W : WeierstrassCurve ℤ}
    (B : GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε : ℝ)
    {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hp : ∀ p ∈ primes, p.Prime)
    (hcert : ErrorCertificate phase decode eta T) :
    pickupCross T ≤
      heatSharpHybridUpper B phase decode eta ε T depth primes := by
  unfold heatSharpHybridUpper
  apply le_min
  · exact cross_le_sourcePortfolioUpper
      B phase decode eta ε hT depth primes hp hcert
  · have h := vanishingHeat_cross_abs_difference_local_exponential hT
    have hupper := (abs_le.mp h).2
    linarith

theorem heatSharpHybridUpper_le_original_portfolio
    {Phase : Type*} {W : WeierstrassCurve ℤ}
    (B : GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε T : ℝ)
    (depth : ℕ → ℕ) (primes : Finset ℕ) :
    heatSharpHybridUpper B phase decode eta ε T depth primes ≤
      sourcePortfolioUpper B phase decode eta ε T depth primes := by
  unfold heatSharpHybridUpper
  exact min_le_left _ _

/-- One original endpoint quarter-unit comparison with the SIX-WAY
source portfolio, not six separate curvature payments. -/
theorem endpoint_le_heatSharpHybridUpper_quarter
    {Phase : Type*} {W : WeierstrassCurve ℤ}
    (B : GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (ε : ℝ)
    {T : ℝ} (hT : 0 ≤ T)
    (depth : ℕ → ℕ) (primes : Finset ℕ)
    (hp : ∀ p ∈ primes, p.Prime)
    (hcert : ErrorCertificate phase decode eta T) :
    endpointSum T ≤
      heatSharpHybridUpper B phase decode eta ε T depth primes +
        (1 / 4 : ℝ) := by
  have hcross := pickupCross_le_heatSharpHybridUpper
    B phase decode eta ε hT depth primes hp hcert
  have hcurve := (abs_le.mp (endpointSum_error hT)).2
  linarith


/-! ## Conservative canonical RH consumer, with arithmetic debt OPEN -/

open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- The six-way portfolio returns to the existing ORIGINAL RH criterion,
but ONLY under a genuinely established all-positive-rate bound on one
fixed AffineFrequent G. It supplies no arithmetic growth bound itself. -/
theorem riemannHypothesis_of_heatSharpHybrid_good_scales
    {Phase : Type*} {W : WeierstrassCurve ℤ}
    (B : GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.GoodPrimeBank W)
    (phase : ℝ → SourceAtom → Phase)
    (decode : ℝ → Phase → ℝ)
    (eta : ℝ → ℕ → ℝ) (εsource : ℝ → ℝ)
    (depth : ℝ → ℕ → ℕ) (primes : ℝ → Finset ℕ)
    {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hp : ∀ T ∈ G, 0 ≤ T → ∀ p ∈ primes T, p.Prime)
    (hcert : ∀ T ∈ G, 0 ≤ T →
      ErrorCertificate (phase T) (decode T) (eta T) T)
    (hbudget : SubexponentialOn
      (fun T => heatSharpHybridUpper B (phase T) (decode T)
        (eta T) (εsource T) T (depth T) (primes T)) G) :
    _root_.RiemannHypothesis := by
  apply GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion.riemannHypothesis_of_cross_good_scales
    hcover
  apply subexponentialOn_mono hbudget
  intro T hG hT
  exact pickupCross_le_heatSharpHybridUpper
    B (phase T) (decode T) (eta T) (εsource T)
    hT (depth T) (primes T) (hp T hG hT) (hcert T hG hT)

end GRWTSK.NumberTheory.Moebius.GaussianHeatIntegratedLocalStability
