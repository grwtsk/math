/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianHeatSignedEvolution
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.GoodScaleEnergyCriterion
import Mathlib.Tactic

/-!
# The exact signed residual required after the strong-heat radius no-go

The original source is Mathlib's genuine Moebius coefficient at each positive
integer in endpointIndex(T), with its original causal pickupResponse.
Fix s >= 1. The heated energy is O(T), but the positive error-radius energy
has an unconditional exponential lower bound (see the separate squarefree
source). Therefore the mathematically correct source-preserving replacement
is the ACTUAL signed increment D_s = W_0 - W_s, squared only after all
original integer contributions are summed.

The exact finite arithmetic requirement is, on ONE fixed G:
  for every eps > 0, exists C >= 0 and T1 >= 0 such that
  for all T in G, T >= T1,
    integral(0,T) [sum_{1<=n<=floor(exp T)}
       mu(n)*(1-exp(-s*(log n)^2))*pickupResponse(n,u)]^2 du
      <= C*exp(eps*T).

Since the separately proved heated energy is O(T), this signed residual
condition is equivalent to the same all-positive-rate class for the
UNSMOOTHED pickupEnergy. It is an UNPROVED ARITHMETIC CANCELLATION SUPPLIER,
not a theorem asserting that such a supplier holds. The finite Gram retains
both ordered off-diagonal (m,n) and (n,m) terms and both heat/residual
mixed orientations. Nothing here proves RH, positive-radius cancellation,
monotonicity in heat time, or any zero-rate estimate.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianStrongHeatSignedResidualCriterion

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
open GRWTSK.NumberTheory.Moebius.GaussianHeatSignedEvolution
open GRWTSK.NumberTheory.Moebius.GaussianStrongHeatUniformEnergy
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- The exact original-index SIGNED difference coefficient: never its abs. -/
def signedResidualCoeff (s : ℝ) (n : ℕ) : ℝ :=
  moebiusReal n * (1 - logHeatMultiplier s n)

/-- The source's exact heat increment is the full finite signed sum. -/
theorem signedResidualWave_eq_original_sum (s T u : ℝ) :
    heatIncrementWave 0 s T u =
      ∑ n ∈ endpointIndex T,
        signedResidualCoeff s n * pickupResponse n u := by
  rw [heatIncrementWave_eq_source_sum]
  apply Finset.sum_congr rfl
  intro n hn
  simp only [signedResidualCoeff, sourceHeatCoeff_zero_time]

/-- The original-minus-heat decoder error agrees with the increment. -/
theorem signedResidualWave_eq_sourceError (s T u : ℝ) :
    heatIncrementWave 0 s T u = sourceHeatErrorWave s T u := by
  rw [signedResidualWave_eq_original_sum]
  unfold sourceHeatErrorWave errorWave
  apply Finset.sum_congr rfl
  intro n hn
  rw [sourceHeatCoeff_error s n (Finset.mem_Icc.mp hn).1]
  rfl

/-- The residual energy is a genuine signed L2 physical-time square. -/
def signedResidualEnergy (s T : ℝ) : ℝ :=
  heatIncrementEnergy 0 s T

/-- Identification with the previous actual source decoder's ERROR energy. -/
theorem signedResidualEnergy_eq_sourceErrorEnergy (s T : ℝ) :
    signedResidualEnergy s T =
      errorEnergy sourceHeatPhase (sourceHeatCoeff s) T := by
  unfold signedResidualEnergy heatIncrementEnergy errorEnergy
  apply intervalIntegral.integral_congr
  intro u hu
  exact congrArg (fun z : ℝ => z ^ 2)
    (signedResidualWave_eq_sourceError s T u)

/-- The complete ordered signed quadratic keeps all (m,n) and (n,m).
This reuses the existing finite Gram expansion algebraically for an
ARBITRARY real coefficient function; no positivity hypothesis is used. -/
theorem signedResidualEnergy_eq_complete_signedGram (s T : ℝ) :
    signedResidualEnergy s T =
      ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        signedResidualCoeff s m * signedResidualCoeff s n *
          pickupResponseGram T m n := by
  have heq : signedResidualEnergy s T =
      radiusEnergy (signedResidualCoeff s) T := by
    unfold signedResidualEnergy heatIncrementEnergy radiusEnergy
    apply intervalIntegral.integral_congr
    intro u hu
    change (heatIncrementWave 0 s T u) ^ 2 =
      (radiusWave (signedResidualCoeff s) T u) ^ 2
    rw [signedResidualWave_eq_original_sum]
    rfl
  rw [heq]
  exact radiusEnergy_eq_fullGram (signedResidualCoeff s) T

/-- The reverse signed mixed orientation is retained explicitly,
independently of whether its value is positive or negative. -/
def signedMixedReverse (s T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T,
    heatIncrementWave 0 s T u * sourceHeatWave s T u

theorem signedMixedReverse_eq_forward (s T : ℝ) :
    signedMixedReverse s T = heatMixedEnergy 0 s T := by
  unfold signedMixedReverse heatMixedEnergy
  apply intervalIntegral.integral_congr
  intro u hu
  simp only [zero_add]
  ring

/-- Zero heat recovers the original physical-time wave on [0,T]. -/
theorem zeroHeatWave_eq_original {T u : ℝ}
    (hu : 0 ≤ u) (huT : u ≤ T) :
    sourceHeatWave 0 T u = wholePickup u := by
  rw [wholePickup_fixed_inventory hu huT]
  unfold sourceHeatWave observedWave
  apply Finset.sum_congr rfl
  intro n hn
  unfold observedCoeff sourceHeatPhase
  rw [sourceIndex_encode (Finset.mem_Icc.mp hn).1]
  rw [sourceHeatCoeff_zero_time]

/-- The zero-heat observation is not a different arithmetic energy. -/
theorem zeroHeatEnergy_eq_original (T : ℝ) (hT : 0 ≤ T) :
    sourceHeatEnergy 0 T = pickupEnergy T := by
  change (∫ u in (0 : ℝ)..T, sourceHeatWave 0 T u ^ 2) =
    (∫ u in (0 : ℝ)..T, wholePickup u ^ 2)
  apply intervalIntegral.integral_congr
  intro u hu
  rw [zeroHeatWave_eq_original hu.1 hu.2]

/-- BOTH signed heat/residual mixed orientations remain in this EXACT
physical-time identity; the second is not discarded on PSD grounds. -/
theorem pickupEnergy_exact_signedResidual_balance
    (s T : ℝ) (hT : 0 ≤ T) :
    pickupEnergy T =
      sourceHeatEnergy s T + heatMixedEnergy 0 s T +
        signedMixedReverse s T + signedResidualEnergy s T := by
  calc
    pickupEnergy T = sourceHeatEnergy 0 T :=
      (zeroHeatEnergy_eq_original T hT).symm
    _ = sourceHeatEnergy s T + 2 * heatMixedEnergy 0 s T +
          heatIncrementEnergy 0 s T := by
      simpa only [zero_add] using
        sourceHeatEnergy_exact_signed_balance (0 : ℝ) s T
    _ = sourceHeatEnergy s T + heatMixedEnergy 0 s T +
          signedMixedReverse s T + signedResidualEnergy s T := by
      rw [signedMixedReverse_eq_forward]
      unfold signedResidualEnergy
      ring

/-- The original energy cannot exceed twice the heated plus twice the
ACTUAL signed residual energy. No positive-radius term is introduced. -/
theorem pickupEnergy_le_two_heat_add_signedResidual
    (s T : ℝ) (hT : 0 ≤ T) :
    pickupEnergy T ≤
      2 * sourceHeatEnergy s T + 2 * signedResidualEnergy s T := by
  have h := pickupEnergy_le_two_observed_add_two_error
    sourceHeatPhase (sourceHeatCoeff s) hT
  simpa only [sourceHeatEnergy, signedResidualEnergy_eq_sourceErrorEnergy]
    using h

/-- Conversely the error wave must be small whenever BOTH original and
heated waves are small. This is the reverse Young inequality on the exact
three signed physical-time waveforms, not a coefficient-space norm claim. -/
theorem signedResidualEnergy_le_two_original_add_heat
    (s T : ℝ) (hT : 0 ≤ T) :
    signedResidualEnergy s T ≤
      2 * pickupEnergy T + 2 * sourceHeatEnergy s T := by
  have ho : Continuous wholePickup := wholePickup_continuous
  have hh : Continuous (sourceHeatWave s T) := by
    unfold sourceHeatWave
    exact observedWave_continuous sourceHeatPhase (sourceHeatCoeff s) T
  have hd : Continuous (sourceHeatErrorWave s T) := by
    unfold sourceHeatErrorWave
    exact errorWave_continuous sourceHeatPhase (sourceHeatCoeff s) T
  have hi0 : IntervalIntegrable
      (fun u : ℝ => 2 * wholePickup u ^ 2) volume 0 T :=
    (continuous_const.mul (ho.pow 2)).intervalIntegrable _ _
  have hih : IntervalIntegrable
      (fun u : ℝ => 2 * sourceHeatWave s T u ^ 2) volume 0 T :=
    (continuous_const.mul (hh.pow 2)).intervalIntegrable _ _
  have hbound :
      (∫ u in (0 : ℝ)..T, sourceHeatErrorWave s T u ^ 2) ≤
      ∫ u in (0 : ℝ)..T,
        2 * wholePickup u ^ 2 + 2 * sourceHeatWave s T u ^ 2 := by
    apply intervalIntegral.integral_mono_on hT
      ((hd.pow 2).intervalIntegrable 0 T)
      (hi0.add hih)
    intro u hu
    have hid := wholePickup_eq_heat_add_exact_error s hu.1 hu.2
    have hdiff : sourceHeatErrorWave s T u =
        wholePickup u - sourceHeatWave s T u := by
      linarith
    rw [hdiff]
    nlinarith [sq_nonneg (wholePickup u + sourceHeatWave s T u)]
  calc
    signedResidualEnergy s T =
        (∫ u in (0 : ℝ)..T, sourceHeatErrorWave s T u ^ 2) := by
      rw [signedResidualEnergy_eq_sourceErrorEnergy]
      rfl
    _ ≤ ∫ u in (0 : ℝ)..T,
          2 * wholePickup u ^ 2 + 2 * sourceHeatWave s T u ^ 2 := hbound
    _ = 2 * pickupEnergy T + 2 * sourceHeatEnergy s T := by
      rw [intervalIntegral.integral_add hi0 hih,
        intervalIntegral.integral_const_mul,
        intervalIntegral.integral_const_mul]
      rfl

private theorem subexponentialOn_twice
    {f : ℝ → ℝ} {G : Set ℝ}
    (hf : SubexponentialOn f G) :
    SubexponentialOn (fun T => 2 * f T) G := by
  intro ε hε
  obtain ⟨C, T₁, hC, hT₁, hbound⟩ := hf ε hε
  refine ⟨2 * C, T₁, by positivity, hT₁, ?_⟩
  intro T hG hT
  simpa only [mul_assoc] using
    mul_le_mul_of_nonneg_left (hbound T hG hT)
      (by norm_num : (0 : ℝ) ≤ 2)

private theorem subexponentialOn_plus
    {f g : ℝ → ℝ} {G : Set ℝ}
    (hf : SubexponentialOn f G) (hg : SubexponentialOn g G) :
    SubexponentialOn (fun T => f T + g T) G := by
  intro ε hε
  obtain ⟨C, T₁, hC, hT₁, hboundF⟩ := hf ε hε
  obtain ⟨D, T₂, hD, hT₂, hboundG⟩ := hg ε hε
  refine ⟨C + D, max T₁ T₂, add_nonneg hC hD,
    hT₁.trans (le_max_left _ _), ?_⟩
  intro T hG hT
  calc
    f T + g T ≤ C * Real.exp (ε * T) + D * Real.exp (ε * T) :=
      add_le_add (hboundF T hG ((le_max_left _ _).trans hT))
        (hboundG T hG ((le_max_right _ _).trans hT))
    _ = (C + D) * Real.exp (ε * T) := by ring

/-- The EXACT missing quantified cancellation estimate. G is chosen
before eps, and the full signed original residual is squared AFTER sum. -/
def SignedResidualCancellationOn (s : ℝ) (G : Set ℝ) : Prop :=
  SubexponentialOn (fun T => signedResidualEnergy s T) G

/-- With FIXED s>=1, the genuine signed residual condition is NECESSARY
and SUFFICIENT for controlling the ORIGINAL unsmoothed energy on the SAME
set G. This proves no bound for the required residual itself. -/
theorem signedResidualCancellation_iff_originalEnergy
    {s : ℝ} (hs : 1 ≤ s) (G : Set ℝ) :
    SignedResidualCancellationOn s G ↔
      SubexponentialOn pickupEnergy G := by
  have hheat : SubexponentialOn (fun T => sourceHeatEnergy s T) G :=
    sourceHeatEnergy_subexponential_of_strong hs G
  constructor
  · intro hres
    apply subexponentialOn_mono
      (subexponentialOn_plus (subexponentialOn_twice hheat)
        (subexponentialOn_twice hres))
    intro T hG hT
    exact pickupEnergy_le_two_heat_add_signedResidual s T hT
  · intro horiginal
    apply subexponentialOn_mono
      (subexponentialOn_plus (subexponentialOn_twice horiginal)
        (subexponentialOn_twice hheat))
    intro T hG hT
    exact signedResidualEnergy_le_two_original_add_heat s T hT

/-- Conditional consumer ONLY: this theorem DOES NOT supply the
arithmetic signed cancellation premise or establish canonical RH. -/
theorem riemannHypothesis_of_signedResidualCancellation
    {s : ℝ} (hs : 1 ≤ s) {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hcancel : SignedResidualCancellationOn s G) :
    _root_.RiemannHypothesis := by
  exact riemannHypothesis_of_energy_good_scales hcover
    ((signedResidualCancellation_iff_originalEnergy hs G).mp hcancel)

end GRWTSK.NumberTheory.Moebius.GaussianStrongHeatSignedResidualCriterion
