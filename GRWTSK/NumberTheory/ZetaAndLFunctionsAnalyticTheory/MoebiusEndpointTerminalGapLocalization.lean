/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointGapLocalization
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleRoughSignedConsumerTransfer
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointGapLocalization
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-!
# Terminal anti-diagonal localization of the Möbius endpoint consumer

The complete ordered endpoint cross is split into three exact pieces:

* additive gaps at most a chosen lower cutoff;
* additive gaps within a chosen width of the maximal possible gap;
* the signed middle-gap complement.

The later response vanishes linearly at birth.  Its Gram against an earlier
response therefore vanishes quadratically in the terminal birth collar.
For a terminal width `M` this gives the source-bound estimate

`|X_terminal(M,T)| <= 16 * sqrt 2 * M^(7/2) / N^(5/2)`

when `N=floor(exp T)` and `2*M <= N`.

Choosing `M=floor(exp(2*T/3))` gives `O(exp(-T/6))`.  Thus both ends of the
additive-gap range are geometrically harmless.  The remaining arithmetic
supplier is a complete signed middle-gap aggregate.

The source also records the sharp logical limitation of outer-shift moment
bounds: normalized fixed moments alone allow a constant positive packet family,
so they cannot control a signed sum over exponentially many gaps.

All source scripts remain candidates until compilation and kernel audit.
No complete endpoint estimate, unsifted energy estimate, or RH theorem is
claimed.
-/

namespace GRWTSK.NumberTheory.MoebiusEndpointTerminalGapLocalization

classical

/-- Both ordered orientations whose additive distance is within `M` of the
maximal endpoint distance.  The condition is written without Nat subtraction:
`N <= dist m n + M`. -/
def endpointTerminalGapCross (M : ℕ) (T : ℝ) : ℝ :=
  let N := ⌊Real.exp T⌋₊
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ N ≤ Nat.dist m n + M then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Algebraically exact remaining sector after removing the existing small-gap
packet and the terminal anti-diagonal packet. -/
def endpointMiddleGapCross (H M : ℕ) (T : ℝ) : ℝ :=
  pickupCross T -
    endpointSmallGapCross H T -
      endpointTerminalGapCross M T

theorem pickupCross_eq_small_middle_terminal
    (H M : ℕ) (T : ℝ) :
    pickupCross T =
      endpointSmallGapCross H T +
        endpointMiddleGapCross H M T +
          endpointTerminalGapCross M T := by
  unfold endpointMiddleGapCross
  ring

/-- The robust terminal width used in the analytical estimate. -/
def terminalGapWidth (T : ℝ) : ℕ :=
  ⌊Real.exp ((2 / 3 : ℝ) * T)⌋₊

/-- Elementary exponential inequality used at a causal birth:
`2(1-exp(-v/2)) <= v` for `v >= 0`. -/
theorem two_mul_one_sub_exp_neg_half_le
    {v : ℝ} (hv : 0 ≤ v) :
    2 * (1 - Real.exp (-v / 2)) ≤ v := by
  have h := Real.add_one_le_exp (-v / 2)
  linarith

/-- Exact geometric estimate proved in the companion review.

For `N=floor(exp T)`, `2*M <= N`, and an ordered pair in the terminal sector,
write the later index as `n=N-j`.  Then `m+j <= M` and
`T-log n <= 2(j+1)/N`.  Linear birth vanishing gives
`K_T(m,n) <= 4*sqrt(2)*(j+1)^2/(N^(5/2)*sqrt m)`.  Summing both orientations
gives the displayed constant.

This remains a named proposition until the finite reindexing and real-cast
inequalities are replayed. -/
def TerminalGapAbsoluteBound : Prop :=
  ∀ (M : ℕ) (T : ℝ), 0 ≤ T →
    let N := ⌊Real.exp T⌋₊
    1 ≤ N → 2 * M ≤ N →
      |endpointTerminalGapCross M T| ≤
        16 * Real.sqrt 2 *
          (M : ℝ) ^ 3 * Real.sqrt (M : ℝ) /
            ((N : ℝ) ^ 2 * Real.sqrt (N : ℝ))

/-- The direct exponentially decaying tuned terminal bound. -/
def TunedTerminalGapDecayBound : Prop :=
  ∃ R : ℝ, 0 ≤ R ∧
    ∀ T : ℝ, R ≤ T →
      |endpointTerminalGapCross (terminalGapWidth T) T| ≤
        128 * Real.exp (-T / 6)

/-- The tuned terminal anti-diagonal is exponentially decaying:
`|X_terminal| <= 128 exp(-T/6)` eventually. -/
def TunedTerminalGapDecay : Prop :=
  TerminalGapAbsoluteBound → TunedTerminalGapDecayBound

/-- In particular the tuned terminal sector satisfies every positive
exponential rate. -/
def TunedTerminalGapSectorAllRate : Prop :=
  EventualAllRateUpper
    (fun T : ℝ =>
      |endpointTerminalGapCross (terminalGapWidth T) T|)

theorem tunedTerminalGapDecayBound_to_allRate
    (h : TunedTerminalGapDecayBound) :
    TunedTerminalGapSectorAllRate := by
  obtain ⟨R₀, hR₀, hb⟩ := h
  intro ε hε
  refine ⟨128, R₀, by norm_num, hR₀, ?_⟩
  intro T hT
  have hT0 : 0 ≤ T := hR₀.trans hT
  have hmono : Real.exp (-T / 6) ≤ Real.exp (ε * T) := by
    apply Real.exp_le_exp.mpr
    nlinarith
  exact (hb T hT).trans (mul_le_mul_of_nonneg_left hmono (by norm_num))

/-- The remaining source-facing arithmetic statement after paying both
geometric ends of the gap range. -/
def MiddleGapEndpointSupplier : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, R ≤ T →
        endpointMiddleGapCross
            (rateGapCutoff ε T) (terminalGapWidth T) T ≤
          C * Real.exp (ε * T)

/-- Endpoint comparison with all three sectors visible. -/
theorem endpointSum_le_small_terminal_middle
    (H M : ℕ) {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤
      |endpointSmallGapCross H T| +
        |endpointTerminalGapCross M T| +
          endpointMiddleGapCross H M T + 1 / 4 := by
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_small_middle_terminal H M T] at he
  have hs :
      endpointSmallGapCross H T ≤ |endpointSmallGapCross H T| :=
    le_abs_self _
  have ht :
      endpointTerminalGapCross M T ≤ |endpointTerminalGapCross M T| :=
    le_abs_self _
  linarith

/-- Exact logical return after both geometric sectors have been paid. -/
theorem twoSidedGapLocalizedEndpointReturn
    (hsmallBound : EndpointSmallGapAbsoluteBound)
    (hsmallTransfer : RateGapSmallSectorAllRate)
    (hterminal : TunedTerminalGapSectorAllRate)
    (hmiddle : MiddleGapEndpointSupplier) :
    EventualAllRateUpper endpointSum := by
  have hsmall := hsmallTransfer hsmallBound
  intro ε hε
  obtain ⟨Cs, Rs, hCs, hRs, hs⟩ := hsmall ε hε
  obtain ⟨Ct, Rt, hCt, hRt, ht⟩ := hterminal ε hε
  obtain ⟨Cm, Rm, hCm, hRm, hm⟩ := hmiddle ε hε
  let R := max Rs (max Rt Rm)
  refine ⟨Cs + Ct + Cm + 1 / 4, R, by positivity, by
    dsimp [R]
    positivity, ?_⟩
  intro T hT
  have hTs : Rs ≤ T := (le_max_left Rs (max Rt Rm)).trans hT
  have hTt : Rt ≤ T :=
    (le_trans (le_max_left Rt Rm) (le_max_right Rs (max Rt Rm))).trans hT
  have hTm : Rm ≤ T :=
    (le_trans (le_max_right Rt Rm) (le_max_right Rs (max Rt Rm))).trans hT
  have hT0 : 0 ≤ T := le_trans hRs hTs
  have hbase := endpointSum_le_small_terminal_middle
    (rateGapCutoff ε T) (terminalGapWidth T) hT0
  have hsT := hs T hTs
  have htT := ht T hTt
  have hmT := hm T hTm
  have hexp : 1 ≤ Real.exp (ε * T) := by
    exact Real.one_le_exp (mul_nonneg hε.le hT0)
  nlinarith

/-- Constant packet families saturate normalized second-moment information.
This is the exact logical fixture behind the long-shift moment obstruction. -/
theorem constant_packet_second_moment
    (S : Finset ℕ) (B : ℝ) :
    (∑ _h ∈ S, B ^ 2) = (S.card : ℝ) * B ^ 2 := by
  simp [Finset.sum_const, nsmul_eq_mul]

theorem constant_packet_outer_sum
    (S : Finset ℕ) (B : ℝ) :
    (∑ _h ∈ S, B) = (S.card : ℝ) * B := by
  simp [Finset.sum_const, nsmul_eq_mul]

/-- A fixed-moment theorem with no signed outer-mean information is logically
compatible with an aligned packet family and therefore cannot by itself prove
an all-positive-rate sum over `exp(T)` gaps. -/
def FixedMomentOnlyLargeGapNoGo : Prop :=
  ∀ p : ℕ, 1 ≤ p →
    ∃ (a : ℕ → ℝ),
      (∀ h : ℕ, a h = 1) ∧
      (∀ H : ℕ, 1 ≤ H →
        (∑ h ∈ Finset.Icc 1 H, |a h| ^ p) = H) ∧
      (∀ H : ℕ, 1 ≤ H →
        (∑ h ∈ Finset.Icc 1 H, a h) = H)

theorem fixedMomentOnlyLargeGapNoGo :
    FixedMomentOnlyLargeGapNoGo := by
  intro p hp
  refine ⟨fun _ => 1, by simp, ?_, ?_⟩
  · intro H hH
    simp [Finset.card_Icc, hH]
  · intro H hH
    simp [Finset.card_Icc, hH]

/-- Research disposition. -/
def TerminalGapLocalizationDisposition : Prop :=
  TerminalGapAbsoluteBound ∧
    TunedTerminalGapDecay ∧
      TunedTerminalGapSectorAllRate ∧
        MiddleGapEndpointSupplier ∧
          FixedMomentOnlyLargeGapNoGo

end GRWTSK.NumberTheory.MoebiusEndpointTerminalGapLocalization
