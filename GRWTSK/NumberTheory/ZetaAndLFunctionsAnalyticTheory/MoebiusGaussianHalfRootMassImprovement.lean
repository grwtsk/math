/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatVanishingSchedule
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Original Möbius Gaussian heat: sharpen the ACTUAL inverse-root mass

The earlier MoebiusGaussianHeatVanishingSchedule used the
crude bound 1/sqrt(n)<=1, paying an entire exp(T) index count.
The ORIGINAL positive radius mass already has 1/sqrt(n),
and its exact closed n<=floor(exp T) inventory instead gives
 sum_(n=1)^N 1/sqrt(n) <=2 sqrt(N)<=2 exp(T/2).
This is elementary integral comparison / telescoping, and
requires NO Möbius cancellation or zero-free input.

For any s>=0, T>=0:
 weightedErrorMass(sourceHeatRadius(s),T)
             <=2 exp(T/2) s T²,
 sourceHeatRadiusEnergy(s,T)
             <=16 T⁵ s² exp(T).
In particular the stronger, still source-faithful schedule
 s_a(T)=exp(-a*T), a>=1/2, satisfies
  sourceHeatRadiusEnergy(s_a(T),T)
       <=16 T⁵ exp((1-2a)*T).
At the boundary a=1/2 the entire reconstruction error is
at most 16*T⁵ (POLYNOMIAL, already all-positive-rate).
For the older a=2 schedule it is <=16*T⁵ exp(-3*T),
an exponentially decaying improvement over the prior 16*T.

These bounds are on the COMPLETE original-source positive
reconstruction radius, with every μ(n), zero, original n,
physical response and sign retained. They do NOT bound the
heated signed observation or prove RH.

The one elementary inverse-root finite sum comparison is
an EXPLICIT unported pinned-Lean Prop target, not an axiom.
All other theorem bodies are source proof candidates;
compilation remains DEFERRED by user request.
-/

namespace GRWTSK.NumberTheory.Moebius.GaussianHalfRootMassImprovement

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.GaussianHeatStabilityReturn
open GRWTSK.NumberTheory.Moebius.GaussianHeatVanishingSchedule

/-- The independently elementary SOURCE inventory comparison:
for T>=0 the sum of the TRUE positive inverse-square-root
weights through floor(exp T) is <=2 exp(T/2).
A proof by monotone integral comparison or telescoping
sqrt(n)-sqrt(n-1) is ordinary mathematics, but its
Mathlib finite-sum port has not yet been compiled. -/
def OriginalInverseRootInventoryTarget : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    (∑ n ∈ endpointIndex T,
       (Real.sqrt (n : ℝ))⁻¹) ≤ 2 * Real.exp (T / 2)

/-- Actual heat time remains an ARTIFICIAL separate
parameter, never substituted for original physical time. -/
def rootRateHeatTime (a T : ℝ) : ℝ :=
  Real.exp (-a*T)

theorem rootRateHeatTime_nonneg (a T : ℝ) :
    0 ≤ rootRateHeatTime a T :=
  (Real.exp_pos _).le

/-- One true coefficient's source-anchored radius carries
the ORIGINAL inverse-root weight, which is nonnegative. -/
theorem radius_mass_term_le_with_weight
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T)
    {n : ℕ} (hn : n ∈ endpointIndex T) :
    sourceHeatRadius s n * (Real.sqrt (n : ℝ))⁻¹ ≤
      (s*T^2) * (Real.sqrt (n : ℝ))⁻¹ := by
  have hl := source_index_logFrequency_le hT hn
  have hsquare : (logFrequency n)^2 ≤ T^2 :=
    (sq_le_sq₀ hl.1 hT).mpr hl.2
  have hrad := sourceHeatRadius_le_time_log_sq hs n
  have hnnonneg : 0 ≤ (Real.sqrt (n : ℝ))⁻¹ :=
    inv_nonneg.mpr (Real.sqrt_nonneg _)
  have hbasic : sourceHeatRadius s n ≤ s*T^2 := by
    nlinarith [mul_le_mul_of_nonneg_left hsquare hs]
  exact mul_le_mul_of_nonneg_right hbasic hnnonneg

/-- The genuine radius sum is bounded by the inverse-root
inventory rather than the much larger cardinality exp(T).
Only the independent elementary inventory comparison
remains a visible unproved pinned-Lean proposition. -/
theorem sourceHeat_weightedMass_le_halfRoot
    (hInventory : OriginalInverseRootInventoryTarget)
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    weightedErrorMass (sourceHeatRadius s) T ≤
      2*Real.exp (T/2)*(s*T^2) := by
  have hsum :
      weightedErrorMass (sourceHeatRadius s) T ≤
      ∑ n ∈ endpointIndex T,
        (s*T^2) * (Real.sqrt (n : ℝ))⁻¹ := by
    unfold weightedErrorMass
    apply Finset.sum_le_sum
    intro n hn
    exact radius_mass_term_le_with_weight hs hT hn
  calc
    weightedErrorMass (sourceHeatRadius s) T ≤
        ∑ n ∈ endpointIndex T,
          (s*T^2) * (Real.sqrt (n : ℝ))⁻¹ := hsum
    _ = (s*T^2) *
          (∑ n ∈ endpointIndex T, (Real.sqrt (n : ℝ))⁻¹) := by
          rw [Finset.mul_sum]
    _ ≤ (s*T^2)*(2*Real.exp (T/2)) :=
      mul_le_mul_of_nonneg_left (hInventory T hT)
        (mul_nonneg hs (sq_nonneg _))
    _ = _ := by ring

/-- SOURCE-EXACT Gaussian half-root reconstruction radius.
No arithmetic power-saving or heat contraction is presumed. -/
theorem rootRateHeat_weightedMass_le
    (hInventory : OriginalInverseRootInventoryTarget)
    (a : ℝ) {T : ℝ} (hT : 0 ≤ T) :
    weightedErrorMass (sourceHeatRadius (rootRateHeatTime a T)) T ≤
      2*T^2*Real.exp ((1/2-a)*T) := by
  have h := sourceHeat_weightedMass_le_halfRoot hInventory
    (rootRateHeatTime_nonneg a T) hT
  calc
    weightedErrorMass (sourceHeatRadius (rootRateHeatTime a T)) T ≤
      2*Real.exp (T/2)*(rootRateHeatTime a T*T^2) := h
    _ = 2*T^2*Real.exp ((1/2-a)*T) := by
      unfold rootRateHeatTime
      calc
        2*Real.exp (T/2)*(Real.exp (-a*T)*T^2) =
          2*T^2*(Real.exp (T/2)*Real.exp (-a*T)) := by ring
        _ = 2*T^2*Real.exp ((1/2-a)*T) := by
          rw [← Real.exp_add]
          congr 1
          ring

/-- Squaring the complete genuine radius mass with the
original response positivity costs at most 16 T^5
times exp((1-2a)T). This is not a signed heat upper. -/
theorem rootRateHeat_radiusEnergy_le
    (hInventory : OriginalInverseRootInventoryTarget)
    (a : ℝ) {T : ℝ} (hT : 0 ≤ T) :
    sourceHeatRadiusEnergy (rootRateHeatTime a T) T ≤
      16*T^5*Real.exp ((1-2*a)*T) := by
  have hs := rootRateHeatTime_nonneg a T
  have hm := rootRateHeat_weightedMass_le hInventory a hT
  have hcert := sourceHeat_errorCertificate hs T
  have hMassNonneg :=
    weightedErrorMass_nonneg sourceHeatPhase
      (sourceHeatCoeff (rootRateHeatTime a T))
      (sourceHeatRadius (rootRateHeatTime a T)) T hcert
  have hBoundNonneg :
      0 ≤ 2*T^2*Real.exp ((1/2-a)*T) := by positivity
  have hSq :
      (weightedErrorMass (sourceHeatRadius (rootRateHeatTime a T)) T)^2 ≤
        (2*T^2*Real.exp ((1/2-a)*T))^2 :=
      (sq_le_sq₀ hMassNonneg hBoundNonneg).mpr hm
  have hRadius := heatRadiusEnergy_le_weighted_mass hs hT
  calc
    sourceHeatRadiusEnergy (rootRateHeatTime a T) T ≤
        4*T*(weightedErrorMass (sourceHeatRadius (rootRateHeatTime a T)) T)^2 :=
      hRadius
    _ ≤ 4*T*(2*T^2*Real.exp ((1/2-a)*T))^2 :=
      mul_le_mul_of_nonneg_left hSq (by positivity)
    _ = 16*T^5*Real.exp ((1-2*a)*T) := by
      have hExp :
          (Real.exp ((1/2-a)*T))^2 =
          Real.exp ((1-2*a)*T) := by
        rw [pow_two, ← Real.exp_add]
        congr 1
        ring
      rw [mul_pow,hExp]
      ring

/-- An actual nonzero Gaussian heat time FOUR times
less rapidly vanishing in the exponent than the
previous exp(-2T) schedule has only POLYNOMIAL source
reconstruction error. This is a new unconditional
ordinary-math source-specific statement, subject to
the elementary inventory Lean port above. -/
theorem halfRootHeat_radiusEnergy_le_quintic
    (hInventory : OriginalInverseRootInventoryTarget)
    {T : ℝ} (hT : 0 ≤ T) :
    sourceHeatRadiusEnergy (rootRateHeatTime (1/2) T) T ≤
      16*T^5 := by
  have h := rootRateHeat_radiusEnergy_le hInventory (1/2) hT
  have hExp : ((1:ℝ)-2*(1/2))*T = 0 := by ring
  simpa [hExp] using h

/-- A STILL MORE ACTIVE heat schedule exp(-T) (rather
than old exp(-2T)) has an exponentially decaying ORIGINAL
complete reconstruction radius <=16*T^5*exp(-T).
This is an arithmetic-free source-preserving bound. -/
theorem middleHeat_radiusEnergy_le_exponential
    (hInventory : OriginalInverseRootInventoryTarget)
    {T : ℝ} (hT : 0 ≤ T) :
    sourceHeatRadiusEnergy (rootRateHeatTime 1 T) T ≤
      16*T^5*Real.exp (-T) := by
  have h := rootRateHeat_radiusEnergy_le hInventory 1 hT
  have hExp : ((1:ℝ)-2*1)*T = -T := by ring
  simpa [hExp] using h

/-- The PREVIOUS published heat time exp(-2T) actually has
exponentially vanishing total positive source radius:
  <=16*T^5*exp(-3T), a strict asymptotic improvement
over the previous linear budget 16*T. -/
theorem oldVanishingHeat_radiusEnergy_le_exponential
    (hInventory : OriginalInverseRootInventoryTarget)
    {T : ℝ} (hT : 0 ≤ T) :
    sourceHeatRadiusEnergy (vanishingHeatTime T) T ≤
      16*T^5*Real.exp (-3*T) := by
  have h := rootRateHeat_radiusEnergy_le hInventory 2 hT
  have hExp : ((1:ℝ)-2*2)*T = -3*T := by ring
  simpa [rootRateHeatTime, vanishingHeatTime, hExp] using h

end GRWTSK.NumberTheory.Moebius.GaussianHalfRootMassImprovement
