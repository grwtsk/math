/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatStabilityReturn
import Mathlib.Tactic

/-!
# Explicit nonzero but vanishing Gaussian heat schedule with bounded error

Choose an ACTUAL positive heat time s(T)=exp(-2*T) at each nonnegative
physical endpoint T, and apply exp(-s(T)*(log n)^2) to each ORIGINAL
arithmetic integer-labelled Möbius coefficient. The source integer,
μ(n), real physical response and closed cutoff never change. Heat
time s and physical clock T remain different variables.

For n<=floor(exp T), 0<=log n<=T and |μ(n)|<=1. The elementary inequality
1-exp(-x)<=x (x>=0) implies
  eta_s(n)=|μ(n)|(1-exp(-s*(log n)^2)) <= s*T^2.
Also 1/sqrt(n)<=1 on n>=1, so the SOURCE weighted radius mass satisfies
  M_s(T)<=exp(T)*s*T^2=T^2*exp(-T)<=2.
Thus the actual positive causal reconstruction radius energy obeys
  radiusEnergy(s(T),T) <= 4*T*M_s(T)^2 <=16*T.
This costs no Mobius cancellation or all-rate arithmetic supplier:
it is merely the effect of heat time becoming tiny at large T.

This stability certificate does NOT show that the HEATED SIGNED waveform
energy itself is small. The heat multiplier tends to 1 as T grows;
an observed all-positive-rate bound remains of RH strength. The
canonical RH consumer below keeps that source-specific premise explicit.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianHeatVanishingSchedule

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.GaussianHeatStabilityReturn
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- Heat is always truly nonnegative but shrinks with the original
outer observation horizon. It is not a fixed heat-time semigroup orbit
as T moves, and does not recover arithmetic cancellation. -/
def vanishingHeatTime (T : ℝ) : ℝ := Real.exp (-2 * T)

theorem vanishingHeatTime_pos (T : ℝ) :
    0 < vanishingHeatTime T :=
  Real.exp_pos _

/-- The exact original-index radius is bounded by its Gaussian
frequency variance times the separate heat time s. -/
theorem sourceHeatRadius_le_time_log_sq
    {s : ℝ} (hs : 0 ≤ s) (n : ℕ) :
    sourceHeatRadius s n ≤ s * (logFrequency n) ^ 2 := by
  have hmu := moebiusReal_abs_le_one n
  have hfactor : 0 ≤ 1 - logHeatMultiplier s n :=
    sub_nonneg.mpr (logHeatMultiplier_le_one hs n)
  have hbasic :
      1 - logHeatMultiplier s n ≤
        s * (logFrequency n) ^ 2 := by
    have hh := Real.add_one_le_exp
      (-(s * (logFrequency n) ^ 2))
    unfold logHeatMultiplier
    linarith
  calc
    sourceHeatRadius s n =
        |moebiusReal n| * (1 - logHeatMultiplier s n) := rfl
    _ ≤ 1 * (1 - logHeatMultiplier s n) :=
      mul_le_mul_of_nonneg_right hmu hfactor
    _ ≤ s * (logFrequency n) ^ 2 := by
      simpa only [one_mul] using hbasic

/-- The ACTUAL closed original source cutoff ensures all logarithmic
frequencies in the endpoint inventory are born before physical time T. -/
theorem source_index_logFrequency_le
    {T : ℝ} (hT : 0 ≤ T)
    {n : ℕ} (hn : n ∈ endpointIndex T) :
    0 ≤ logFrequency n ∧ logFrequency n ≤ T := by
  have hn1 : 1 ≤ n := (Finset.mem_Icc.mp hn).1
  have hnreal : (1 : ℝ) ≤ n := by exact_mod_cast hn1
  have hnpos : (0 : ℝ) < n := by linarith
  have hnN : n ≤ ⌊Real.exp T⌋₊ := (Finset.mem_Icc.mp hn).2
  have hcast : (n : ℝ) ≤ Real.exp T := by
    calc
      (n : ℝ) ≤ (⌊Real.exp T⌋₊ : ℝ) := by exact_mod_cast hnN
      _ ≤ Real.exp T := Nat.floor_le (Real.exp_pos _).le
  constructor
  · exact Real.log_nonneg hnreal
  · exact (Real.log_le_iff_le_exp hnpos).mpr hcast

/-- Each original coefficient's positive-radius MASS summand is no
larger than s*T². This estimate does not require prime cancellation. -/
theorem sourceHeatMassTerm_le
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T)
    {n : ℕ} (hn : n ∈ endpointIndex T) :
    sourceHeatRadius s n * (Real.sqrt (n : ℝ))⁻¹ ≤ s * T ^ 2 := by
  have hn1 : 1 ≤ n := (Finset.mem_Icc.mp hn).1
  have hnreal : (1 : ℝ) ≤ n := by exact_mod_cast hn1
  have hsqrt : 1 ≤ Real.sqrt (n : ℝ) := by
    simpa using Real.sqrt_le_sqrt hnreal
  have hsqrtpos : 0 < Real.sqrt (n : ℝ) := by linarith
  have hinv : (Real.sqrt (n : ℝ))⁻¹ ≤ 1 := by
    change (1 : ℝ) / Real.sqrt (n : ℝ) ≤ 1
    apply (div_le_iff₀ hsqrtpos).2
    simpa only [one_mul] using hsqrt
  have hlog := source_index_logFrequency_le hT hn
  have hsq : (logFrequency n) ^ 2 ≤ T ^ 2 :=
    (sq_le_sq₀ hlog.1 hT).mpr hlog.2
  calc
    sourceHeatRadius s n * (Real.sqrt (n : ℝ))⁻¹ ≤
        sourceHeatRadius s n * 1 :=
      mul_le_mul_of_nonneg_left hinv (sourceHeatRadius_nonneg hs n)
    _ = sourceHeatRadius s n := by ring
    _ ≤ s * (logFrequency n) ^ 2 :=
      sourceHeatRadius_le_time_log_sq hs n
    _ ≤ s * T ^ 2 :=
      mul_le_mul_of_nonneg_left hsq hs

/-- The actual number of ORIGINAL source integer indices is at most
exp(T), including the N=1 and empty negative-time cases. -/
theorem endpointIndex_card_le_exp (T : ℝ) :
    ((endpointIndex T).card : ℝ) ≤ Real.exp T := by
  have hc : (endpointIndex T).card ≤ ⌊Real.exp T⌋₊ := by
    unfold endpointIndex
    simp only [Finset.card_Icc]
    omega
  calc
    ((endpointIndex T).card : ℝ) ≤ (⌊Real.exp T⌋₊ : ℝ) := by
      exact_mod_cast hc
    _ ≤ Real.exp T := Nat.floor_le (Real.exp_pos T).le

/-- Crude but source-specified upper bound; no 1/sqrt(n) estimate
stronger than <=1 is required. -/
theorem sourceHeat_weightedMass_le_exp
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    weightedErrorMass (sourceHeatRadius s) T ≤
      Real.exp T * (s * T ^ 2) := by
  calc
    weightedErrorMass (sourceHeatRadius s) T ≤
        ∑ _n ∈ endpointIndex T, s * T ^ 2 := by
      unfold weightedErrorMass
      apply Finset.sum_le_sum
      intro n hn
      exact sourceHeatMassTerm_le hs hT hn
    _ = ((endpointIndex T).card : ℝ) * (s * T ^ 2) := by
      simp [Finset.sum_const, nsmul_eq_mul]
    _ ≤ Real.exp T * (s * T ^ 2) :=
      mul_le_mul_of_nonneg_right
        (endpointIndex_card_le_exp T)
        (mul_nonneg hs (sq_nonneg T))

/-- The exponentially vanishing heat time makes the genuine source
reconstruction mass uniformly bounded: M_s(T) <= 2 for T>=0. -/
theorem vanishingHeat_weightedMass_le_two
    {T : ℝ} (hT : 0 ≤ T) :
    weightedErrorMass (sourceHeatRadius (vanishingHeatTime T)) T ≤ 2 := by
  have hb :=
    sourceHeat_weightedMass_le_exp
      (vanishingHeatTime_pos T).le hT
  have hexp : Real.exp T * Real.exp (-2 * T) = Real.exp (-T) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hpow : T ^ 2 ≤ 2 * Real.exp T := by
    have h := pow_le_factorial_mul_exp
      (by norm_num : (0 : ℝ) < 1) hT 2
    norm_num at h
    simpa only [one_mul] using h
  have hcancel : Real.exp (-T) * Real.exp T = 1 := by
    rw [← Real.exp_add]
    simp
  calc
    weightedErrorMass (sourceHeatRadius (vanishingHeatTime T)) T ≤
        Real.exp T * (vanishingHeatTime T * T ^ 2) := hb
    _ = Real.exp (-T) * T ^ 2 := by
      unfold vanishingHeatTime
      rw [show Real.exp T * (Real.exp (-2 * T) * T ^ 2) =
        (Real.exp T * Real.exp (-2 * T)) * T ^ 2 by ring,
        hexp]
    _ ≤ Real.exp (-T) * (2 * Real.exp T) :=
      mul_le_mul_of_nonneg_left hpow (Real.exp_pos _).le
    _ = 2 := by rw [show Real.exp (-T) * (2 * Real.exp T) =
        2 * (Real.exp (-T) * Real.exp T) by ring, hcancel]; ring

/-- The corresponding complete positive causal response error energy has
an UNCONDITIONAL linear-in-physical-time envelope for this particular
positive shrinking heat schedule. -/
theorem vanishingHeat_radiusEnergy_le_linear
    {T : ℝ} (hT : 0 ≤ T) :
    sourceHeatRadiusEnergy (vanishingHeatTime T) T ≤ 16 * T := by
  have hs : 0 ≤ vanishingHeatTime T :=
    (vanishingHeatTime_pos T).le
  have hc := sourceHeat_errorCertificate hs T
  have hm0 :=
    weightedErrorMass_nonneg sourceHeatPhase
      (sourceHeatCoeff (vanishingHeatTime T))
      (sourceHeatRadius (vanishingHeatTime T)) T hc
  have hm2 := vanishingHeat_weightedMass_le_two hT
  have hmsq :
      (weightedErrorMass (sourceHeatRadius (vanishingHeatTime T)) T) ^ 2 ≤
        (2 : ℝ) ^ 2 :=
    (sq_le_sq₀ hm0 (by norm_num : (0 : ℝ) ≤ 2)).mpr hm2
  have hupper :=
    heatRadiusEnergy_le_weighted_mass hs hT
  have hprod := mul_le_mul_of_nonneg_left hmsq
    (by positivity : (0 : ℝ) ≤ 4 * T)
  nlinarith

/-- In particular this nonzero Gaussian regularization incurs
subexponential positive radius energy on EVERY fixed set of scales.
This is only an ERROR certificate, not an observed energy estimate. -/
theorem vanishingHeat_radiusEnergy_subexponential
    (G : Set ℝ) :
    SubexponentialOn
      (fun T => sourceHeatRadiusEnergy (vanishingHeatTime T) T) G := by
  have hlinear : SubexponentialUpper (fun T : ℝ => 16 * T) := by
    apply subexponentialUpper_of_polynomial
      (C := (16 : ℝ)) (q := (1 : ℝ)) (by norm_num)
    intro T hT
    rw [Real.rpow_one]
    nlinarith
  apply subexponentialOn_mono (on_of_global hlinear G)
  intro T hG hT
  exact vanishingHeat_radiusEnergy_le_linear hT

/-- Full original pickup good-scale energy is equivalent to
the actual exponentially weak heat-observed signed energy, because
the full source reconstruction error was independently controlled. -/
theorem vanishingHeat_observedEnergy_iff_original
    (G : Set ℝ) :
    SubexponentialOn
      (fun T => sourceHeatEnergy (vanishingHeatTime T) T) G ↔
      SubexponentialOn pickupEnergy G :=
  heatEnergy_subexponential_iff_original
    vanishingHeatTime
    (fun T hTG hT => (vanishingHeatTime_pos T).le)
    (vanishingHeat_radiusEnergy_subexponential G)

/-- Exact canonical RH conclusion under the STILL-MISSING arithmetic
all-rate signed heat observation estimate on one fixed AffineFrequent G.
No RH witness is constructed from Gaussian smoothing. -/
theorem riemannHypothesis_of_vanishingHeat_observedEnergy
    {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hObserved : SubexponentialOn
      (fun T => sourceHeatEnergy (vanishingHeatTime T) T) G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_heat_observation_and_radius
    vanishingHeatTime hcover
    (fun T hG hT => (vanishingHeatTime_pos T).le)
    (vanishingHeat_radiusEnergy_subexponential G)
    hObserved

end GRWTSK.NumberTheory.Moebius.GaussianHeatVanishingSchedule
