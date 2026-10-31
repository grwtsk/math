/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointLeastPrimeTypeII
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalPhysicalGramIntegrability
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelAnalyticGates
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
open GRWTSK.NumberTheory.LiouvilleRoughSignedConsumerTransfer
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-!
# Additive-gap localization of the Möbius endpoint consumer

The complete ordered Möbius endpoint cross sum is split into a forward
small-gap packet and its exact signed complement.  The literal causal response
gives a harmonic, rather than exponential, cost for each fixed additive gap:

`|packet_h(T)| <= 4 T (1 + T)`.

Consequently every family of at most `exp (o(T))` additive gaps is already
all-positive-rate.  In particular, polylogarithmic shifts and the tuned
Selberg--Dickman cutoff lie in a geometrically harmless endpoint sector.

This does not estimate the complementary exponentially-large-gap sector.
It records the precise source reduction and why termwise logarithmic Chowla
bounds, even when available for almost every shift, still leave an exponent-one
sum over the full shift range.

All source scripts remain candidates until compilation and kernel audit.
No complete endpoint estimate, unsifted energy estimate, or RH theorem is
claimed.
-/

namespace GRWTSK.NumberTheory.MoebiusEndpointGapLocalization

classical

/-- Forward packet at additive gap `h`; the opposite orientation has the same
value because the literal response Gram is symmetric. -/
def forwardGapPacket (h : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (⌊Real.exp T⌋₊ - h),
    moebiusReal m * moebiusReal (m + h) *
      pickupResponseGram T m (m + h)

/-- Both ordered orientations of every positive gap at most `H`. -/
def endpointSmallGapCross (H : ℕ) (T : ℝ) : ℝ :=
  2 * ∑ h ∈ Finset.Icc 1 H, forwardGapPacket h T

/-- Exact signed complementary endpoint sector. -/
def endpointLargeGapCross (H : ℕ) (T : ℝ) : ℝ :=
  pickupCross T - endpointSmallGapCross H T

theorem pickupCross_eq_smallGap_add_largeGap (H : ℕ) (T : ℝ) :
    pickupCross T =
      endpointSmallGapCross H T + endpointLargeGapCross H T := by
  unfold endpointLargeGapCross
  ring

/-- The forward representation is exactly the ordered double sum over
`m < n` and `n-m <= H`.  This is a finite reindexing statement, kept visible
until its Nat subtraction and `Finset.sum_bij` proof is replayed. -/
def EndpointForwardGapReindexing : Prop :=
  ∀ (H : ℕ) (T : ℝ),
    endpointSmallGapCross H T =
      ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        if m ≠ n ∧ Nat.dist m n ≤ H then
          moebiusReal m * moebiusReal n * pickupResponseGram T m n
        else 0

/-- Literal response upper bound at a positive source index. -/
theorem pickupResponse_le_two_invSqrt
    (n : ℕ) (hn : 1 ≤ n) (u : ℝ) :
    pickupResponse n u ≤ 2 * (Real.sqrt (n : ℝ))⁻¹ := by
  rw [pickupResponse_eq_positivePart n hn u]
  have hi : 0 ≤ (Real.sqrt (n : ℝ))⁻¹ := by positivity
  have hm :
      max ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2)) 0 ≤
        (Real.sqrt (n : ℝ))⁻¹ := by
    apply max_le
    · linarith [Real.exp_pos (-u / 2)]
    · exact hi
  exact mul_le_mul_of_nonneg_left hm (by norm_num)

/-- Source Gram bound before summing over an additive gap. -/
theorem pickupResponseGram_le_four_time_invSqrt
    (T : ℝ) (hT : 0 ≤ T) (m n : ℕ)
    (hm : 1 ≤ m) (hn : 1 ≤ n) :
    pickupResponseGram T m n ≤
      4 * T * (Real.sqrt (m : ℝ))⁻¹ *
        (Real.sqrt (n : ℝ))⁻¹ := by
  let c : ℝ :=
    4 * (Real.sqrt (m : ℝ))⁻¹ * (Real.sqrt (n : ℝ))⁻¹
  have hi := pickupResponse_product_intervalIntegrable m n
    (by omega) (by omega) T
  have hic : IntervalIntegrable (fun _ : ℝ => c) volume 0 T :=
    continuous_const.intervalIntegrable 0 T
  have hp (u : ℝ) :
      pickupResponse m u * pickupResponse n u ≤ c := by
    have hm0 := pickupResponse_nonneg_positive m hm u
    have hn0 := pickupResponse_nonneg_positive n hn u
    calc
      pickupResponse m u * pickupResponse n u ≤
          (2 * (Real.sqrt (m : ℝ))⁻¹) * pickupResponse n u :=
        mul_le_mul_of_nonneg_right
          (pickupResponse_le_two_invSqrt m hm u) hn0
      _ ≤ (2 * (Real.sqrt (m : ℝ))⁻¹) *
          (2 * (Real.sqrt (n : ℝ))⁻¹) :=
        mul_le_mul_of_nonneg_left
          (pickupResponse_le_two_invSqrt n hn u) (by positivity)
      _ = c := by unfold c; ring
  unfold pickupResponseGram
  calc
    (∫ u in (0 : ℝ)..T, pickupResponse m u * pickupResponse n u) ≤
        ∫ _u in (0 : ℝ)..T, c := by
      apply intervalIntegral.integral_mono_on hT hi hic
      intro u hu
      exact hp u
    _ = T * c := by simp
    _ = 4 * T * (Real.sqrt (m : ℝ))⁻¹ *
        (Real.sqrt (n : ℝ))⁻¹ := by
      unfold c
      ring

/-- On a forward gap, the reciprocal-root product is at most `1/m`. -/
theorem invSqrt_mul_invSqrt_add_le_inv
    (m h : ℕ) (hm : 1 ≤ m) :
    (Real.sqrt (m : ℝ))⁻¹ *
        (Real.sqrt ((m + h : ℕ) : ℝ))⁻¹ ≤
      (m : ℝ)⁻¹ := by
  have hm0 : (0 : ℝ) < m := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hm)
  have hle : (m : ℝ) ≤ (m + h : ℕ) := by exact_mod_cast Nat.le_add_right m h
  have hsqrt :
      Real.sqrt (m : ℝ) ≤ Real.sqrt ((m + h : ℕ) : ℝ) :=
    Real.sqrt_le_sqrt hle
  have hinv :
      (Real.sqrt ((m + h : ℕ) : ℝ))⁻¹ ≤
        (Real.sqrt (m : ℝ))⁻¹ :=
    one_div_le_one_div_of_le (Real.sqrt_pos.2 hm0) hsqrt
  have hnonneg : 0 ≤ (Real.sqrt (m : ℝ))⁻¹ := by positivity
  calc
    (Real.sqrt (m : ℝ))⁻¹ *
        (Real.sqrt ((m + h : ℕ) : ℝ))⁻¹ ≤
      (Real.sqrt (m : ℝ))⁻¹ *
        (Real.sqrt (m : ℝ))⁻¹ :=
      mul_le_mul_of_nonneg_left hinv hnonneg
    _ = (m : ℝ)⁻¹ := by
      rw [← pow_two, inv_pow, Real.sq_sqrt (Nat.cast_nonneg m)]

/-- Pointwise fixed-gap Gram cost. -/
theorem pickupResponseGram_forwardGap_le
    (T : ℝ) (hT : 0 ≤ T) (m h : ℕ) (hm : 1 ≤ m) :
    pickupResponseGram T m (m + h) ≤ 4 * T * (m : ℝ)⁻¹ := by
  have hgram := pickupResponseGram_le_four_time_invSqrt
    T hT m (m + h) hm (by omega)
  have hw := invSqrt_mul_invSqrt_add_le_inv m h hm
  calc
    pickupResponseGram T m (m + h) ≤
        4 * T * (Real.sqrt (m : ℝ))⁻¹ *
          (Real.sqrt ((m + h : ℕ) : ℝ))⁻¹ := hgram
    _ = 4 * T *
        ((Real.sqrt (m : ℝ))⁻¹ *
          (Real.sqrt ((m + h : ℕ) : ℝ))⁻¹) := by ring
    _ ≤ 4 * T * (m : ℝ)⁻¹ :=
      mul_le_mul_of_nonneg_left hw (by positivity)

/-- Exact harmonic endpoint inequality used in the analytical proof.  It is
kept as a named proposition because the casted `harmonic` normalization and
`floor (exp T)` API have not been compiled in this source. -/
def EndpointHarmonicBound : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, (m : ℝ)⁻¹) ≤ 1 + T

/-- Unconditional fixed-gap estimate obtained from the response bound,
`|mu| <= 1`, and `EndpointHarmonicBound`. -/
def ForwardGapPacketHarmonicBound : Prop :=
  EndpointHarmonicBound →
    ∀ (h : ℕ) (T : ℝ), 0 ≤ T →
      |forwardGapPacket h T| ≤ 4 * T * (1 + T)

/-- Complete small-gap absolute estimate. -/
def EndpointSmallGapAbsoluteBound : Prop :=
  ForwardGapPacketHarmonicBound →
    ∀ (H : ℕ) (T : ℝ), 0 ≤ T →
      |endpointSmallGapCross H T| ≤
        8 * (H : ℝ) * T * (1 + T)

/-- Rate-dependent additive-gap cutoff. -/
def rateGapCutoff (ε T : ℝ) : ℕ :=
  ⌊Real.exp ((ε / 4) * T)⌋₊

/-- The small-gap sector selected by `rateGapCutoff` already satisfies every
positive exponential rate.  The proof is elementary once
`EndpointSmallGapAbsoluteBound` is compiled: a quadratic polynomial is absorbed
by the remaining `3*ε/4` of the exponent. -/
def RateGapSmallSectorAllRate : Prop :=
  EndpointSmallGapAbsoluteBound →
    ∀ ε : ℝ, 0 < ε →
      ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
        ∀ T : ℝ, R ≤ T →
          |endpointSmallGapCross (rateGapCutoff ε T) T| ≤
            C * Real.exp (ε * T)

/-- The previously selected Selberg--Dickman cutoff is also `exp (o(T))`,
hence its entire additive near-diagonal sector is all-positive-rate. -/
def TunedSmallGapSectorAllRate : Prop :=
  EndpointSmallGapAbsoluteBound →
    EventualAllRateUpper
      (fun T : ℝ =>
        |endpointSmallGapCross (tunedPhysicalCutoff T) T|)

/-- Exact reduction of the endpoint sum to the large-gap complement. -/
theorem endpointSum_le_smallGap_abs_add_largeGap
    (H : ℕ) {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤
      |endpointSmallGapCross H T| +
        endpointLargeGapCross H T + 1 / 4 := by
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_smallGap_add_largeGap H T] at he
  have hs :
      endpointSmallGapCross H T ≤ |endpointSmallGapCross H T| :=
    le_abs_self _
  linarith

/-- The remaining consumer-facing arithmetic target after gap localization. -/
def LargeGapEndpointSupplier : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, R ≤ T →
        endpointLargeGapCross (rateGapCutoff ε T) T ≤
          C * Real.exp (ε * T)

/-- Exact logical return: small-gap geometry plus a signed large-gap supplier
give eventual all-positive-rate endpoint control. -/
def GapLocalizedEndpointReturn : Prop :=
  RateGapSmallSectorAllRate →
    LargeGapEndpointSupplier →
      EventualAllRateUpper endpointSum

/-- A shiftwise power-logarithmic estimate summed by absolute values over
`exp(T)` possible gaps still has rate one.  This records the quantitative
obstruction to a termwise use of fixed-log Chowla estimates. -/
def FullShiftTermwisePolylogNoGo : Prop :=
  ∀ c k : ℝ, 0 < c → 0 ≤ k →
    ¬EventualAllRateUpper
      (fun T : ℝ =>
        Real.exp T * Real.rpow (1 + T) k /
          Real.rpow (Real.log (Real.exp T)) c)

/-- Research disposition. -/
def EndpointGapLocalizationDisposition : Prop :=
  EndpointForwardGapReindexing ∧
    EndpointHarmonicBound ∧
      ForwardGapPacketHarmonicBound ∧
        EndpointSmallGapAbsoluteBound ∧
          RateGapSmallSectorAllRate ∧
            TunedSmallGapSectorAllRate ∧
              LargeGapEndpointSupplier

end GRWTSK.NumberTheory.MoebiusEndpointGapLocalization
