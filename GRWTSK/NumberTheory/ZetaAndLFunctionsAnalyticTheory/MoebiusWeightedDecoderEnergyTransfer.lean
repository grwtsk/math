/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFinitePhaseDecoderBudget
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.MertensSignedPairDescent
import Mathlib

/-!
# Weighted decoder errors before the complete Möbius square

The original pickup is an exact finite sum of the causal response functions
on every nonnegative observation window. A phase-only coefficient decoder
can be used without the previous absolute ordered-pair errorEnvelope if its
TRUE original-index coefficient errors have a controlled weighted l1 mass.

For every n >= 1 and every real u, the original nonnegative response obeys
    0 <= pickupResponse n u <= 2 / sqrt(n).
For source-certified |mu(n)-a(n)| <= eta(n) at every original endpoint index,
the actual error waveform satisfies
    |sum_n (mu(n)-a(n)) pickupResponse n u|
       <= 2 * sum_n eta(n) / sqrt(n).
Integrating its square gives an exact physical-time allowance
    errorEnergy(T) <= 4*T*(weightedErrorMass(T))^2   for T >= 0.
The complete original energy is bounded by
    pickupEnergy(T) <= 2*observedEnergy(T)
                         + 8*T*(weightedErrorMass(T))^2.
The reverse bound also holds. All original diagonal and mixed signed terms
are retained inside the waveform before it is squared.

If the independently certified mass is uniformly bounded on ONE fixed
region G, subexponential observed energy on G is equivalent to the original
pickup energy being subexponential on that same G. This is a genuinely
smaller observation-error obligation than bounding every pairwise absolute
Gram error; in particular a fixed number of corrupted source coefficients
with a bounded weighted total can be harmless. The observed-energy estimate
remains a separate, RH-strength arithmetic supplier.

This is NOT a positivity claim about the signed off-diagonal pickupCross.
No finite phase/torsion size, RS code, Rank32 character table or M23 group
action automatically provides the coefficient error certificates or the
all-positive-rate observed-energy bound.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

universe u

/-- The original causal response is bounded by twice its inverse-square-root
weight, even before any observation time or source inventory is chosen. -/
theorem response_le_two_inv_sqrt {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    pickupResponse n u ≤ 2 * (Real.sqrt (n : ℝ))⁻¹ := by
  unfold pickupResponse
  split_ifs with h
  · have hp := Real.exp_pos (-u / 2)
    linarith
  · have hi : 0 ≤ (Real.sqrt (n : ℝ))⁻¹ :=
      inv_nonneg.mpr (Real.sqrt_nonneg _)
    linarith

/-- The positivity here is about each *causal response*, not about the
signed Gram or individual Möbius coefficients. -/
theorem response_abs_le_two_inv_sqrt {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    |pickupResponse n u| ≤ 2 * (Real.sqrt (n : ℝ))⁻¹ := by
  rw [abs_of_nonneg (response_nonneg hn u)]
  exact response_le_two_inv_sqrt hn u

/-- Original finite closed inventory with arbitrary decoded real coefficients. -/
def observedWave {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (T u : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T, observedCoeff phase decode n * pickupResponse n u

/-- The ORIGINAL minus decoded source, without deleting zeros, mixed signs,
late births or repeated finite phase labels. -/
def errorWave {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (T u : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T, coefficientError phase decode n * pickupResponse n u

/-- An observed finite-response waveform is continuous at every birth
because the ORIGINAL pickupResponse has zero value at its birth. -/
theorem observedWave_continuous {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ) (T : ℝ) :
    Continuous (observedWave phase decode T) := by
  unfold observedWave
  apply continuous_finsetSum
  intro n hn
  exact continuous_const.mul
    (pickupResponse_continuous (Finset.mem_Icc.mp hn).1)

/-- Exactly the same source-defined continuity for a signed error wave. -/
theorem errorWave_continuous {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ) (T : ℝ) :
    Continuous (errorWave phase decode T) := by
  unfold errorWave
  apply continuous_finsetSum
  intro n hn
  exact continuous_const.mul
    (pickupResponse_continuous (Finset.mem_Icc.mp hn).1)

/-- This is NOT a new arithmetic waveform: the original wholePickup is
the observed waveform PLUS its complete source-minus-decoded error,
at every physical time between zero and the original final cutoff. -/
theorem wholePickup_eq_observed_add_error {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    {T u : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    wholePickup u = observedWave phase decode T u +
      errorWave phase decode T u := by
  rw [wholePickup_fixed_inventory hu huT]
  change (∑ n ∈ endpointIndex T, moebiusReal n * pickupResponse n u) =
    observedWave phase decode T u + errorWave phase decode T u
  unfold observedWave errorWave
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  unfold coefficientError
  ring

/-- The correct inverse-square-root sensitivity mass over exactly the
original integer support. No squarefree truncation or phase aliasing. -/
def weightedErrorMass (eta : ℕ → ℝ) (T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T, eta n * (Real.sqrt (n : ℝ))⁻¹

/-- The source-certified radii make the mass nonnegative. -/
theorem weightedErrorMass_nonneg {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (T : ℝ)
    (hcert : ErrorCertificate phase decode eta T) :
    0 ≤ weightedErrorMass eta T := by
  unfold weightedErrorMass
  apply Finset.sum_nonneg
  intro n hn
  have he : 0 ≤ eta n := (abs_nonneg _).trans (hcert n hn)
  exact mul_nonneg he (inv_nonneg.mpr (Real.sqrt_nonneg _))

/-- Pointwise signed error-wave bound in terms of the actual absolute
coefficient errors, rather than exponentially many ordered Gram pairs. -/
theorem errorWave_abs_le_two_mass {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (T u : ℝ)
    (hcert : ErrorCertificate phase decode eta T) :
    |errorWave phase decode T u| ≤ 2 * weightedErrorMass eta T := by
  classical
  unfold errorWave
  calc
    |∑ n ∈ endpointIndex T,
       coefficientError phase decode n * pickupResponse n u| ≤
      ∑ n ∈ endpointIndex T,
        |coefficientError phase decode n * pickupResponse n u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ n ∈ endpointIndex T,
          |coefficientError phase decode n| * pickupResponse n u := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [abs_mul, abs_of_nonneg
        (response_nonneg (Finset.mem_Icc.mp hn).1 u)]
    _ ≤ ∑ n ∈ endpointIndex T,
          eta n * (2 * (Real.sqrt (n : ℝ))⁻¹) := by
      apply Finset.sum_le_sum
      intro n hn
      have he := hcert n hn
      have hr := response_le_two_inv_sqrt (Finset.mem_Icc.mp hn).1 u
      exact mul_le_mul he hr
        (response_nonneg (Finset.mem_Icc.mp hn).1 u)
        ((abs_nonneg _).trans he)
    _ = 2 * weightedErrorMass eta T := by
      simp only [weightedErrorMass, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      ring

/-- Square error AFTER summing every signed original index, rather than
summing absolute values of all pairs. -/
def errorEnergy {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, errorWave phase decode T u ^ 2

/-- Decoded observable energy, still a signed waveform squared only after
the whole original-index inventory has been assembled. -/
def observedEnergy {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, observedWave phase decode T u ^ 2

/-- The complete decoder error energy has a linear-in-time envelope when
the weighted error mass is bounded. No pair count appears. -/
theorem errorEnergy_le_time_mass {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) {T : ℝ} (hT : 0 ≤ T)
    (hcert : ErrorCertificate phase decode eta T) :
    errorEnergy phase decode T ≤ 4 * T * (weightedErrorMass eta T) ^ 2 := by
  have hm : 0 ≤ weightedErrorMass eta T :=
    weightedErrorMass_nonneg phase decode eta T hcert
  have hb (u : ℝ) :
      errorWave phase decode T u ^ 2 ≤
        (2 * weightedErrorMass eta T) ^ 2 := by
    have h := errorWave_abs_le_two_mass phase decode eta T u hcert
    have hs := (sq_le_sq₀ (abs_nonneg _)
      (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) hm)).mpr h
    simpa only [sq_abs] using hs
  have hc : Continuous (fun u : ℝ => errorWave phase decode T u ^ 2) :=
    (errorWave_continuous phase decode T).pow 2
  calc
    errorEnergy phase decode T ≤
        ∫ u in (0 : ℝ)..T, (2 * weightedErrorMass eta T) ^ 2 := by
      unfold errorEnergy
      apply intervalIntegral.integral_mono_on hT
        (hc.intervalIntegrable 0 T)
        (continuous_const.intervalIntegrable 0 T)
      intro u hu
      exact hb u
    _ = 4 * T * (weightedErrorMass eta T) ^ 2 := by
      rw [intervalIntegral.integral_const]
      simp only [sub_zero, smul_eq_mul]
      ring

/-- Energy of the original signed waveform is controlled by decoded
energy and the exact finite error-wave energy. Mixed terms are paid by
the pointwise two-vector Young inequality, not silently deleted. -/
theorem pickupEnergy_le_two_observed_add_two_error {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T ≤
      2 * observedEnergy phase decode T +
        2 * errorEnergy phase decode T := by
  have hobs := observedWave_continuous phase decode T
  have herr := errorWave_continuous phase decode T
  have ho : IntervalIntegrable
      (fun u : ℝ => 2 * observedWave phase decode T u ^ 2)
      volume 0 T :=
    (continuous_const.mul (hobs.pow 2)).intervalIntegrable 0 T
  have he : IntervalIntegrable
      (fun u : ℝ => 2 * errorWave phase decode T u ^ 2)
      volume 0 T :=
    (continuous_const.mul (herr.pow 2)).intervalIntegrable 0 T
  calc
    pickupEnergy T ≤ ∫ u in (0 : ℝ)..T,
        2 * observedWave phase decode T u ^ 2 +
          2 * errorWave phase decode T u ^ 2 := by
      unfold pickupEnergy
      apply intervalIntegral.integral_mono_on hT
        ((wholePickup_continuous.pow 2).intervalIntegrable 0 T)
        ((continuous_const.mul (hobs.pow 2)).add
          (continuous_const.mul (herr.pow 2))).intervalIntegrable 0 T
      intro u hu
      rw [wholePickup_eq_observed_add_error
        phase decode hu.1 hu.2]
      nlinarith [sq_nonneg
        (observedWave phase decode T u - errorWave phase decode T u)]
    _ = 2 * observedEnergy phase decode T +
          2 * errorEnergy phase decode T := by
      rw [intervalIntegral.integral_add ho he,
        intervalIntegral.integral_const_mul,
        intervalIntegral.integral_const_mul]
      rfl

/-- The reverse energy transfer holds with the SAME error wave; thus a
controlled decoding error preserves the full energy growth class in both
directions, not just one implication. -/
theorem observedEnergy_le_two_pickup_add_two_error {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    {T : ℝ} (hT : 0 ≤ T) :
    observedEnergy phase decode T ≤
      2 * pickupEnergy T + 2 * errorEnergy phase decode T := by
  have hobs := observedWave_continuous phase decode T
  have herr := errorWave_continuous phase decode T
  have ho : IntervalIntegrable (fun u : ℝ => 2 * wholePickup u ^ 2)
      volume 0 T :=
    (continuous_const.mul (wholePickup_continuous.pow 2)).intervalIntegrable 0 T
  have he : IntervalIntegrable
      (fun u : ℝ => 2 * errorWave phase decode T u ^ 2)
      volume 0 T :=
    (continuous_const.mul (herr.pow 2)).intervalIntegrable 0 T
  calc
    observedEnergy phase decode T ≤ ∫ u in (0 : ℝ)..T,
        2 * wholePickup u ^ 2 +
          2 * errorWave phase decode T u ^ 2 := by
      unfold observedEnergy
      apply intervalIntegral.integral_mono_on hT
        ((hobs.pow 2).intervalIntegrable 0 T)
        ((continuous_const.mul (wholePickup_continuous.pow 2)).add
          (continuous_const.mul (herr.pow 2))).intervalIntegrable 0 T
      intro u hu
      have hsplit := wholePickup_eq_observed_add_error
        phase decode hu.1 hu.2
      have hdec :
          observedWave phase decode T u =
            wholePickup u - errorWave phase decode T u := by
        linarith
      rw [hdec]
      nlinarith [sq_nonneg (wholePickup u + errorWave phase decode T u)]
    _ = 2 * pickupEnergy T + 2 * errorEnergy phase decode T := by
      rw [intervalIntegral.integral_add ho he,
        intervalIntegral.integral_const_mul,
        intervalIntegral.integral_const_mul]
      rfl

/-- Pairwise absolute errorEnvelope need not be subexponential: the
SOURCE-faithful energy comparison costs only a quadratic weighted mass
and one factor of real physical time. -/
theorem pickupEnergy_le_observed_add_weighted_mass {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) {T : ℝ} (hT : 0 ≤ T)
    (hcert : ErrorCertificate phase decode eta T) :
    pickupEnergy T ≤ 2 * observedEnergy phase decode T +
      8 * T * (weightedErrorMass eta T) ^ 2 := by
  have h0 := pickupEnergy_le_two_observed_add_two_error phase decode hT
  have h1 := errorEnergy_le_time_mass phase decode eta hT hcert
  nlinarith

/-- The converse quantitative comparison costs the identical actual
error-wave allowance. -/
theorem observedEnergy_le_pickup_add_weighted_mass {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) {T : ℝ} (hT : 0 ≤ T)
    (hcert : ErrorCertificate phase decode eta T) :
    observedEnergy phase decode T ≤ 2 * pickupEnergy T +
      8 * T * (weightedErrorMass eta T) ^ 2 := by
  have h0 := observedEnergy_le_two_pickup_add_two_error phase decode hT
  have h1 := errorEnergy_le_time_mass phase decode eta hT hcert
  nlinarith

/-! ## Uniform bounded weighted mass preserves good-scale growth -/

/-- This condition is about the REAL decoder errors on the unchanged
source support, not the number of bits or torsion points. -/
def UniformWeightedErrorOn {Phase : Type u}
    (phase : ℝ → SourceAtom → Phase)
    (decode : ℝ → Phase → ℝ)
    (eta : ℝ → ℕ → ℝ) (G : Set ℝ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    (∀ T ∈ G, 0 ≤ T →
      ErrorCertificate (phase T) (decode T) (eta T) T ∧
        weightedErrorMass (eta T) T ≤ C)

/-- Multiplication by two and a fixed nonnegative linear-time cost
preserve every-positive-rate upper control on exactly the same G. -/
private theorem subexponentialOn_two_mul_add_linear
    {f : ℝ → ℝ} {G : Set ℝ} {C : ℝ}
    (hC : 0 ≤ C) (hf : SubexponentialOn f G) :
    SubexponentialOn (fun T => 2 * f T + C * T) G := by
  have htwo : SubexponentialOn (fun T => 2 * f T) G := by
    intro ε hε
    obtain ⟨A, R, hA, hR, hb⟩ := hf ε hε
    refine ⟨2 * A, R, by positivity, hR, ?_⟩
    intro T hTG hT
    simpa only [mul_assoc] using
      mul_le_mul_of_nonneg_left (hb T hTG hT)
        (by norm_num : (0 : ℝ) ≤ 2)
  have hlinear : SubexponentialUpper (fun T : ℝ => C * T) := by
    apply subexponentialUpper_of_polynomial (C := C) (q := (1 : ℝ)) hC
    intro T hT
    rw [Real.rpow_one]
    exact mul_le_mul_of_nonneg_left (by linarith : T ≤ 1 + T) hC
  exact add_global htwo hlinear

/-- The old pairwise absolute decoder envelope has been replaced by an
independently certified UNIFORMLY BOUNDED inverse-sqrt coefficient-error
mass. Both full energies have exactly the same good-scale subexponential
growth obligation; no coefficient cancellation has been constructed. -/
theorem observedEnergy_subexponential_iff_pickupEnergy
    {Phase : Type u}
    (phase : ℝ → SourceAtom → Phase)
    (decode : ℝ → Phase → ℝ)
    (eta : ℝ → ℕ → ℝ) {G : Set ℝ}
    (hresolution : UniformWeightedErrorOn phase decode eta G) :
    SubexponentialOn
        (fun T => observedEnergy (phase T) (decode T) T) G ↔
      SubexponentialOn pickupEnergy G := by
  obtain ⟨C, hC, hcert⟩ := hresolution
  have hK : 0 ≤ 8 * C ^ 2 := by positivity
  constructor
  · intro hobs
    apply subexponentialOn_mono
      (subexponentialOn_two_mul_add_linear hK hobs)
    intro T hTG hT
    obtain ⟨hc, hb⟩ := hcert T hTG hT
    have hm := weightedErrorMass_nonneg
      (phase T) (decode T) (eta T) T hc
    have hs : weightedErrorMass (eta T) T ^ 2 ≤ C ^ 2 :=
      (sq_le_sq₀ hm hC).mpr hb
    calc
      pickupEnergy T ≤
          2 * observedEnergy (phase T) (decode T) T +
            8 * T * weightedErrorMass (eta T) T ^ 2 :=
        pickupEnergy_le_observed_add_weighted_mass
          (phase T) (decode T) (eta T) hT hc
      _ ≤ 2 * observedEnergy (phase T) (decode T) T +
          8 * C ^ 2 * T := by
        have hk := mul_le_mul_of_nonneg_left hs
          (by positivity : (0 : ℝ) ≤ 8 * T)
        nlinarith
  · intro horiginal
    apply subexponentialOn_mono
      (subexponentialOn_two_mul_add_linear hK horiginal)
    intro T hTG hT
    obtain ⟨hc, hb⟩ := hcert T hTG hT
    have hm := weightedErrorMass_nonneg
      (phase T) (decode T) (eta T) T hc
    have hs : weightedErrorMass (eta T) T ^ 2 ≤ C ^ 2 :=
      (sq_le_sq₀ hm hC).mpr hb
    calc
      observedEnergy (phase T) (decode T) T ≤
          2 * pickupEnergy T + 8 * T * weightedErrorMass (eta T) T ^ 2 :=
        observedEnergy_le_pickup_add_weighted_mass
          (phase T) (decode T) (eta T) hT hc
      _ ≤ 2 * pickupEnergy T + 8 * C ^ 2 * T := by
        have hk := mul_le_mul_of_nonneg_left hs
          (by positivity : (0 : ℝ) ≤ 8 * T)
        nlinarith

/-- Existing genuine good-scale/energy-abscissa return. Unlike the
previous phase envelope method, this consumer does not need an independent
all-positive-rate estimate for every original decoded-pair error. The
uniform weighted decoder mass remains a REAL independently verified premise;
the observed signed waveform energy remains the hard arithmetic supplier. -/
theorem riemannHypothesis_of_observedEnergy_uniform_weighted_error
    {Phase : Type u}
    (phase : ℝ → SourceAtom → Phase)
    (decode : ℝ → Phase → ℝ)
    (eta : ℝ → ℕ → ℝ) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hresolution : UniformWeightedErrorOn phase decode eta G)
    (hobserved : SubexponentialOn
      (fun T => observedEnergy (phase T) (decode T) T) G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_energy_good_scales hcover
    ((observedEnergy_subexponential_iff_pickupEnergy
      phase decode eta hresolution).mp hobserved)

end GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
