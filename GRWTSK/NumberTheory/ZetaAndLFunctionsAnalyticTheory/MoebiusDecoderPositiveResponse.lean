/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusWeightedDecoderEnergyTransfer
import Mathlib

/-!
# Optimize original Möbius decoder errors with a positive response wave

The original causal response is nonnegative, with its own exact birth and
continuous physical-time evolution. Instead of charging every original
integer the uniform envelope 2 / sqrt(n) for the WHOLE interval, use the
nonnegative radius wave R_eta(T,u) = sum_n eta_n * pickupResponse n u.

On an ORIGINAL-index ErrorCertificate,
  |errorWave(T,u)| <= R_eta(T,u) <= 2 * weightedErrorMass(eta,T).
For T >= 0, actual square energies obey
  errorEnergy(T) <= radiusEnergy(T)
  radiusEnergy(T) <= 4*T*(weightedErrorMass(eta,T))^2.
Both original and observed full signed waveform energies transfer with
2*radiusEnergy(T), without losing any mixed terms.

The radius energy equals the full ordered positive-radius response Gram,
including all diagonal and both off-diagonal orientations. A generic
response sum also has a TWO-MOMENT presentation: at each physical time,
only the active inverse-square-root prefix and active coefficient prefix
enter. The original n, closed birth, sign, zero symbol, and clock remain.

An all-positive-rate radiusEnergy upper budget on one fixed region G is
enough for a two-way observed/original energy subexponential equivalence.
A uniformly bounded weighted coefficient-error mass is ONE sufficient
supplier of that budget, not a logically necessary premise.
The original observed-energy arithmetic estimate remains OPEN and of RH
strength. No finite code or torsion size is asserted to supply it.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

universe u

/-! ## Original positive causal-response majorant -/

/-- Radii, not signed source coefficients, applied to the ORIGINAL causal
responses at every original integer in the literal final inventory. -/
def radiusWave (eta : ℕ → ℝ) (T u : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T, eta n * pickupResponse n u

theorem radiusWave_continuous (eta : ℕ → ℝ) (T : ℝ) :
    Continuous (radiusWave eta T) := by
  unfold radiusWave
  apply continuous_finsetSum
  intro n hn
  exact continuous_const.mul
    (pickupResponse_continuous (Finset.mem_Icc.mp hn).1)

/-- Nonnegativity requires REAL source-bound radii, not an arbitrary
signed weight or the positivity of the off-diagonal Möbius Gram. -/
theorem radiusWave_nonneg {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (T u : ℝ)
    (hcert : ErrorCertificate phase decode eta T) :
    0 ≤ radiusWave eta T u := by
  unfold radiusWave
  apply Finset.sum_nonneg
  intro n hn
  have heta : 0 ≤ eta n :=
    (abs_nonneg _).trans (hcert n hn)
  exact mul_nonneg heta (response_nonneg (Finset.mem_Icc.mp hn).1 u)

/-- The actual signed error waveform is dominated POINTWISE by the
positive response wave, not by a paid error on every cross pair. -/
theorem errorWave_abs_le_radiusWave {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (T u : ℝ)
    (hcert : ErrorCertificate phase decode eta T) :
    |errorWave phase decode T u| ≤ radiusWave eta T u := by
  classical
  unfold errorWave radiusWave
  calc
    |∑ n ∈ endpointIndex T,
       coefficientError phase decode n * pickupResponse n u| ≤
      ∑ n ∈ endpointIndex T,
        |coefficientError phase decode n * pickupResponse n u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ endpointIndex T, eta n * pickupResponse n u := by
      apply Finset.sum_le_sum
      intro n hn
      rw [abs_mul, abs_of_nonneg
        (response_nonneg (Finset.mem_Icc.mp hn).1 u)]
      exact mul_le_mul_of_nonneg_right
        (hcert n hn) (response_nonneg (Finset.mem_Icc.mp hn).1 u)

/-- The new time-aware response wave is below the previous uniform
inverse-square-root mass estimate, and may be far smaller near births. -/
theorem radiusWave_le_two_weightedMass {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (T u : ℝ)
    (hcert : ErrorCertificate phase decode eta T) :
    radiusWave eta T u ≤ 2 * weightedErrorMass eta T := by
  unfold radiusWave weightedErrorMass
  calc
    (∑ n ∈ endpointIndex T, eta n * pickupResponse n u) ≤
      ∑ n ∈ endpointIndex T,
        eta n * (2 * (Real.sqrt (n : ℝ))⁻¹) := by
        apply Finset.sum_le_sum
        intro n hn
        have heta : 0 ≤ eta n :=
          (abs_nonneg _).trans (hcert n hn)
        exact mul_le_mul_of_nonneg_left
          (response_le_two_inv_sqrt (Finset.mem_Icc.mp hn).1 u) heta
    _ = 2 * (∑ n ∈ endpointIndex T,
          eta n * (Real.sqrt (n : ℝ))⁻¹) := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro n hn
        ring

/-- Source-certified positive-wave energy in genuine physical time. -/
def radiusEnergy (eta : ℕ → ℝ) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, (radiusWave eta T u) ^ 2

/-- Integrating the exact pointwise domination BEFORE expanding Gram
pairs retains all signed error-wave interactions inside its square. -/
theorem errorEnergy_le_radiusEnergy {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) {T : ℝ} (hT : 0 ≤ T)
    (hcert : ErrorCertificate phase decode eta T) :
    errorEnergy phase decode T ≤ radiusEnergy eta T := by
  have he := errorWave_continuous phase decode T
  have hr := radiusWave_continuous eta T
  unfold errorEnergy radiusEnergy
  apply intervalIntegral.integral_mono_on hT
    ((he.pow 2).intervalIntegrable 0 T)
    ((hr.pow 2).intervalIntegrable 0 T)
  intro u hu
  have hdom := errorWave_abs_le_radiusWave
    phase decode eta T u hcert
  have hnonneg := radiusWave_nonneg
    phase decode eta T u hcert
  have hsq := (sq_le_sq₀ (abs_nonneg _)
    hnonneg).mpr hdom
  simpa only [sq_abs] using hsq

/-- The positive-radius energy is never larger than the old linear
time-times-squared-inverse-root mass allowance. -/
theorem radiusEnergy_le_time_mass {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) {T : ℝ} (hT : 0 ≤ T)
    (hcert : ErrorCertificate phase decode eta T) :
    radiusEnergy eta T ≤ 4 * T * (weightedErrorMass eta T) ^ 2 := by
  have hm := weightedErrorMass_nonneg phase decode eta T hcert
  have hr := radiusWave_continuous eta T
  have hbound (u : ℝ) :
      (radiusWave eta T u) ^ 2 ≤
        (2 * weightedErrorMass eta T) ^ 2 := by
    have hle := radiusWave_le_two_weightedMass
      phase decode eta T u hcert
    have hlo := radiusWave_nonneg phase decode eta T u hcert
    exact (sq_le_sq₀ hlo
      (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) hm)).mpr hle
  calc
    radiusEnergy eta T ≤
        ∫ u in (0 : ℝ)..T,
          (2 * weightedErrorMass eta T) ^ 2 := by
      unfold radiusEnergy
      apply intervalIntegral.integral_mono_on hT
        ((hr.pow 2).intervalIntegrable 0 T)
        (continuous_const.intervalIntegrable 0 T)
      intro u hu
      exact hbound u
    _ = 4 * T * (weightedErrorMass eta T) ^ 2 := by
      rw [intervalIntegral.integral_const]
      simp only [sub_zero, smul_eq_mul]
      ring

/-- Real original energy, rather than the signed off-diagonal Gram,
transfers at the sharper positive-response-radius cost. -/
theorem pickupEnergy_le_two_observed_add_radius {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) {T : ℝ} (hT : 0 ≤ T)
    (hcert : ErrorCertificate phase decode eta T) :
    pickupEnergy T ≤
      2 * observedEnergy phase decode T + 2 * radiusEnergy eta T := by
  have h := pickupEnergy_le_two_observed_add_two_error
    phase decode hT
  have he := errorEnergy_le_radiusEnergy
    phase decode eta hT hcert
  linarith

/-- The same sharper radius energy pays the opposite transport direction. -/
theorem observedEnergy_le_two_pickup_add_radius {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) {T : ℝ} (hT : 0 ≤ T)
    (hcert : ErrorCertificate phase decode eta T) :
    observedEnergy phase decode T ≤
      2 * pickupEnergy T + 2 * radiusEnergy eta T := by
  have h := observedEnergy_le_two_pickup_add_two_error
    phase decode hT
  have he := errorEnergy_le_radiusEnergy
    phase decode eta hT hcert
  linarith

/-! ## Exact full positive-radius Gram (including both orientations) -/

/-- The source's actual complete response Gram, now weighted by
nonnegative decoder error radii instead of Möbius coefficients. -/
theorem radiusEnergy_eq_fullGram (eta : ℕ → ℝ) (T : ℝ) :
    radiusEnergy eta T =
      ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        eta m * eta n * pickupResponseGram T m n := by
  let S : Finset ℕ := endpointIndex T
  have hprod (m : ℕ) (hm : m ∈ S)
      (n : ℕ) (hn : n ∈ S) :
      Continuous (fun u : ℝ =>
        (eta m * eta n) *
          (pickupResponse m u * pickupResponse n u)) := by
    exact continuous_const.mul
      ((pickupResponse_continuous (Finset.mem_Icc.mp hm).1).mul
        (pickupResponse_continuous (Finset.mem_Icc.mp hn).1))
  calc
    radiusEnergy eta T =
        ∫ u in (0 : ℝ)..T, ∑ m ∈ S, ∑ n ∈ S,
          (eta m * eta n) *
            (pickupResponse m u * pickupResponse n u) := by
      unfold radiusEnergy radiusWave
      apply intervalIntegral.integral_congr
      intro u hu
      rw [pow_two, Finset.sum_mul_sum]
      apply Finset.sum_congr rfl
      intro m hm
      apply Finset.sum_congr rfl
      intro n hn
      ring
    _ = ∑ m ∈ S, ∑ n ∈ S,
        eta m * eta n * pickupResponseGram T m n := by
      rw [intervalIntegral.integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro m hm
        rw [intervalIntegral.integral_finsetSum]
        · apply Finset.sum_congr rfl
          intro n hn
          rw [intervalIntegral.integral_const_mul]
          rfl
        · intro n hn
          exact (hprod m hm n hn).intervalIntegrable 0 T
      · intro m hm
        exact (continuous_finsetSum S
          (fun n hn => hprod m hm n hn)).intervalIntegrable 0 T

/-! ## Two active moments, as in the original five-moment source cells -/

/-- A generic active weighted prefix over the UNCHANGED final inventory.
Zero branches retain closed birth semantics. -/
def activeWeightedMoment (coeff : ℕ → ℝ) (T u : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    if Real.log (n : ℝ) ≤ u then
      coeff n * (Real.sqrt (n : ℝ))⁻¹ else 0

/-- The second active prefix: the signed coefficient mass. -/
def activeCountMoment (coeff : ℕ → ℝ) (T u : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    if Real.log (n : ℝ) ≤ u then coeff n else 0

/-- The exact response sum depends on only TWO active prefix values and
the original physical exponential clock. This is an algebraic O(1)
per-cell readout after source-indexed prefix accumulation, not new
arithmetic cancellation or a new denominator normalization. -/
theorem responseSum_eq_two_active_moments
    (coeff : ℕ → ℝ) (T u : ℝ) :
    (∑ n ∈ endpointIndex T, coeff n * pickupResponse n u) =
      2 * (activeWeightedMoment coeff T u -
        Real.exp (-u / 2) * activeCountMoment coeff T u) := by
  have hterm (n : ℕ) :
      coeff n * pickupResponse n u =
        2 * ((if Real.log (n : ℝ) ≤ u then
            coeff n * (Real.sqrt (n : ℝ))⁻¹ else 0) -
          Real.exp (-u / 2) *
            (if Real.log (n : ℝ) ≤ u then coeff n else 0)) := by
    by_cases h : Real.log (n : ℝ) ≤ u
    · simp [pickupResponse, h]
      ring
    · simp [pickupResponse, h]
  calc
    (∑ n ∈ endpointIndex T, coeff n * pickupResponse n u) =
        ∑ n ∈ endpointIndex T,
          2 * ((if Real.log (n : ℝ) ≤ u then
              coeff n * (Real.sqrt (n : ℝ))⁻¹ else 0) -
            Real.exp (-u / 2) *
              (if Real.log (n : ℝ) ≤ u then coeff n else 0)) :=
      Finset.sum_congr rfl (fun n hn => hterm n)
    _ = 2 * (activeWeightedMoment coeff T u -
          Real.exp (-u / 2) * activeCountMoment coeff T u) := by
      simp only [activeWeightedMoment, activeCountMoment,
        mul_sub, Finset.sum_sub_distrib, Finset.mul_sum]
      ring

/-- The actual signed DECODING ERROR waveform has precisely two
active source-indexed arithmetic moments per birth cell. -/
theorem errorWave_eq_two_active_moments {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (T u : ℝ) :
    errorWave phase decode T u =
      2 * (activeWeightedMoment
        (coefficientError phase decode) T u -
        Real.exp (-u / 2) *
          activeCountMoment (coefficientError phase decode) T u) := by
  exact responseSum_eq_two_active_moments
    (coefficientError phase decode) T u

/-- The positive-radius error wave has the same two-moment evaluation
pattern, retaining the actual nonnegative radii as coefficients. -/
theorem radiusWave_eq_two_active_moments
    (eta : ℕ → ℝ) (T u : ℝ) :
    radiusWave eta T u =
      2 * (activeWeightedMoment eta T u -
        Real.exp (-u / 2) * activeCountMoment eta T u) := by
  exact responseSum_eq_two_active_moments eta T u

/-! ## All-positive-rate improvement with one actual error-energy supplier -/

private theorem subexponentialOn_two {f : ℝ → ℝ} {G : Set ℝ}
    (hf : SubexponentialOn f G) :
    SubexponentialOn (fun T => 2 * f T) G := by
  intro eps heps
  obtain ⟨C, R, hC, hR, hb⟩ := hf eps heps
  refine ⟨2 * C, R, by positivity, hR, ?_⟩
  intro T hG hT
  simpa only [mul_assoc] using
    mul_le_mul_of_nonneg_left (hb T hG hT)
      (by norm_num : (0 : ℝ) ≤ 2)

private theorem subexponentialOn_add
    {f g : ℝ → ℝ} {G : Set ℝ}
    (hf : SubexponentialOn f G)
    (hg : SubexponentialOn g G) :
    SubexponentialOn (fun T => f T + g T) G := by
  intro eps heps
  obtain ⟨C, R, hC, hR, hbF⟩ := hf eps heps
  obtain ⟨D, S, hD, hS, hbG⟩ := hg eps heps
  refine ⟨C + D, max R S, add_nonneg hC hD,
    hR.trans (le_max_left R S), ?_⟩
  intro T hGT hT
  have hTR : R ≤ T := (le_max_left R S).trans hT
  have hTS : S ≤ T := (le_max_right R S).trans hT
  calc
    f T + g T ≤ C * Real.exp (eps * T) +
        D * Real.exp (eps * T) :=
      add_le_add (hbF T hGT hTR) (hbG T hGT hTS)
    _ = (C + D) * Real.exp (eps * T) := by ring

/-- The nonnegative complete radius-response energy can be controlled
on an actual fixed scale region. This premise is weaker than a fixed
uniform weighted mass bound, and is not asserted unconditionally. -/
theorem observedEnergy_subexponential_iff_of_radiusEnergy
    {Phase : Type u}
    (phase : ℝ → SourceAtom → Phase)
    (decode : ℝ → Phase → ℝ)
    (eta : ℝ → ℕ → ℝ)
    {G : Set ℝ}
    (hcert : ∀ T ∈ G, 0 ≤ T →
      ErrorCertificate (phase T) (decode T) (eta T) T)
    (hradius : SubexponentialOn
      (fun T => radiusEnergy (eta T) T) G) :
    SubexponentialOn
        (fun T => observedEnergy (phase T) (decode T) T) G ↔
      SubexponentialOn pickupEnergy G := by
  have hr2 := subexponentialOn_two hradius
  constructor
  · intro hobs
    apply subexponentialOn_mono
      (subexponentialOn_add (subexponentialOn_two hobs) hr2)
    intro T hG hT
    exact pickupEnergy_le_two_observed_add_radius
      (phase T) (decode T) (eta T) hT (hcert T hG hT)
  · intro horiginal
    apply subexponentialOn_mono
      (subexponentialOn_add (subexponentialOn_two horiginal) hr2)
    intro T hG hT
    exact observedEnergy_le_two_pickup_add_radius
      (phase T) (decode T) (eta T) hT (hcert T hG hT)

/-- The older uniform-mass hypothesis provides a sufficient source
certificate for the new, sharper positive radius energy growth premise. -/
theorem radiusEnergy_subexponential_of_uniform_mass
    {Phase : Type u}
    (phase : ℝ → SourceAtom → Phase)
    (decode : ℝ → Phase → ℝ)
    (eta : ℝ → ℕ → ℝ) {G : Set ℝ}
    (hresolution : UniformWeightedErrorOn phase decode eta G) :
    SubexponentialOn (fun T => radiusEnergy (eta T) T) G := by
  obtain ⟨C, hC, hbound⟩ := hresolution
  have hK : 0 ≤ 4 * C ^ 2 := by positivity
  have hlinear : SubexponentialUpper
      (fun T : ℝ => (4 * C ^ 2) * T) := by
    apply subexponentialUpper_of_polynomial
      (C := 4 * C ^ 2) (q := (1 : ℝ)) hK
    intro T hT
    rw [Real.rpow_one]
    exact mul_le_mul_of_nonneg_left
      (by linarith : T ≤ 1 + T) hK
  apply subexponentialOn_mono (on_of_global hlinear G)
  intro T hGT hT
  obtain ⟨hcert, hmass⟩ := hbound T hGT hT
  have hm := weightedErrorMass_nonneg
    (phase T) (decode T) (eta T) T hcert
  have hs : (weightedErrorMass (eta T) T) ^ 2 ≤ C ^ 2 :=
    (sq_le_sq₀ hm hC).mpr hmass
  have he := radiusEnergy_le_time_mass
    (phase T) (decode T) (eta T) hT hcert
  have hf := mul_le_mul_of_nonneg_left hs
    (by positivity : (0 : ℝ) ≤ 4 * T)
  nlinarith

/-- The original canonical RH target and existing energy return are
unchanged. A certified observed-energy budget and certified positive
radius-energy budget on ONE fixed affine-frequent G suffice. Neither
growth budget is supplied by the present module. -/
theorem riemannHypothesis_of_observed_and_radius_energy
    {Phase : Type u}
    (phase : ℝ → SourceAtom → Phase)
    (decode : ℝ → Phase → ℝ)
    (eta : ℝ → ℕ → ℝ)
    {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hcert : ∀ T ∈ G, 0 ≤ T →
      ErrorCertificate (phase T) (decode T) (eta T) T)
    (hradius : SubexponentialOn
      (fun T => radiusEnergy (eta T) T) G)
    (hobserved : SubexponentialOn
      (fun T => observedEnergy (phase T) (decode T) T) G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_energy_good_scales hcover
    ((observedEnergy_subexponential_iff_of_radiusEnergy
      phase decode eta hcert hradius).mp hobserved)

end GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
