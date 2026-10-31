/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleRoughUpperCancellation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelCausalKernel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupEndpointQuadrature
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleRoughCausalBuchstab
open GRWTSK.NumberTheory.LiouvilleRoughUpperCancellation
open GRWTSK.NumberTheory.LiouvilleDoubleAbelCausalKernel
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-!
# Tuned rough cancellation at the signed endpoint and double-Abel consumers

The tuned Selberg--Dickman estimate controls the actual Liouville source after
removing all primes below a horizon-dependent cutoff.  This module records the
next exact source comparisons.

* On squarefree integers the Möbius and Liouville coefficients agree.  The
  discrepancy on a rough support is therefore carried only by rough squareful
  integers.  Their prefix and causal-waveform costs are recorded explicitly.
* The RH-facing Möbius endpoint cross sum is split into its rough--rough sector
  and the complete signed complementary sector.
* The Liouville double-Abel positive-gap aggregate is split in the same way.
* A generic logical theorem proves that an exponent-one positive allowance
  cannot be inserted into an all-positive-rate consumer merely by addition.

The difficult analytic bounds and the squarefree source comparison remain
named propositions until their Mathlib interfaces and external inputs are
formalized and replayed.  No new estimate for the complete endpoint sum,
unsifted Liouville energy, or the Riemann Hypothesis is asserted.
-/

namespace GRWTSK.NumberTheory.LiouvilleRoughSignedConsumerTransfer

classical

/-- Actual Möbius prefix restricted to integers having no prime divisor at
most `Y`. -/
def roughMoebiusPrefix (Y N : ℕ) : ℝ :=
  ∑ n ∈ (Finset.Icc 1 N).filter (roughAbove Y), moebiusReal n

/-- Actual Möbius causal waveform on the same rough support. -/
def roughMoebiusWaveform (Y : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ (Finset.Icc 1 ⌊Real.exp u⌋₊).filter (roughAbove Y),
    moebiusReal n * pickupResponse n u

/-- Energy of the rough Möbius causal waveform. -/
def roughMoebiusEnergy (Y : ℕ) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, |roughMoebiusWaveform Y u| ^ 2

/-- The exact finite prefix defect is supported on nonsquarefree rough
integers.  A union bound over `p^2 ∣ n`, followed by
`sum_{m>Y} m^{-2} ≤ 1/Y`, gives the displayed constant.

This remains a named proposition pending the coefficient and finite-union
Mathlib proof. -/
def RoughMoebiusLiouvillePrefixDefect : Prop :=
  ∀ (Y N : ℕ), 1 ≤ Y →
    |roughMoebiusPrefix Y N - roughPrefixAbove Y N| ≤
      (N : ℝ) / (Y : ℝ)

/-- The causal response satisfies `r_n(u) ≤ 2/sqrt n`.  Counting
`n = p^2 m` and summing `m^{-1/2}` gives a waveform defect at most
`4 exp(u/2)/Y`.

This remains a named proposition pending the finite response-sum proof. -/
def RoughMoebiusLiouvilleWaveformDefect : Prop :=
  ∀ (Y : ℕ) (u : ℝ), 1 ≤ Y →
    |roughMoebiusWaveform Y u - roughWaveformAbove Y u| ≤
      4 * Real.exp (u / 2) / (Y : ℝ)

/-- Elementary scalar square transfer used by the waveform comparison. -/
theorem sq_le_two_sq_add_of_abs_sub_le
    {a b d : ℝ} (hd : 0 ≤ d) (h : |a - b| ≤ d) :
    a ^ 2 ≤ 2 * b ^ 2 + 2 * d ^ 2 := by
  have hs : (a - b) ^ 2 ≤ d ^ 2 := by
    exact (sq_le_sq₀ (abs_nonneg (a - b)) hd).2 (by simpa [sq_abs] using h)
  nlinarith [sq_nonneg (a - 2 * b)]

/-- Integrating the preceding pointwise defect gives
`E_mu,Y(T) ≤ 2 E_lambda,Y(T) + 32 (exp T - 1)/Y^2`.

This remains a named proposition because the interval-integral qualification
has not yet been replayed. -/
def RoughMoebiusEnergyTransfer : Prop :=
  RoughMoebiusLiouvilleWaveformDefect →
    ∀ (Y : ℕ) (T : ℝ), 1 ≤ Y → 0 ≤ T →
      roughMoebiusEnergy Y T ≤
        2 * roughEnergyAbove Y T +
          32 * (Real.exp T - 1) / (Y : ℝ) ^ 2

/-- At the tuned cutoff the squareful defect is exponentially smaller than the
published rough-Liouville allowance, so the same exponent-one upper estimate
holds for the rough Möbius source. -/
def TunedRoughMoebiusCausalEnergyUpper : Prop :=
  TunedRoughCausalEnergyUpper →
    RoughMoebiusEnergyTransfer →
      ∃ C T₀ : ℝ, 0 ≤ C ∧ 3 ≤ T₀ ∧
        ∀ T : ℝ, T₀ ≤ T →
          roughMoebiusEnergy (tunedPhysicalCutoff T) T ≤
            C * tunedEnergyAllowance T

/-- Ordered rough--rough sector of the actual Möbius pickup cross energy. -/
def endpointRoughCross (Y : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      if m ≠ n ∧ roughAbove Y m ∧ roughAbove Y n then
        moebiusReal m * moebiusReal n * pickupResponseGram T m n
      else 0

/-- Complete complementary endpoint sector.  It retains rough--nonrough,
nonrough--rough and nonrough--nonrough interactions with their original signs. -/
def endpointComplementaryCross (Y : ℕ) (T : ℝ) : ℝ :=
  pickupCross T - endpointRoughCross Y T

theorem pickupCross_eq_rough_add_complement
    (Y : ℕ) (T : ℝ) :
    pickupCross T =
      endpointRoughCross Y T + endpointComplementaryCross Y T := by
  unfold endpointComplementaryCross
  ring

def tunedEndpointRoughCross (T : ℝ) : ℝ :=
  endpointRoughCross (tunedPhysicalCutoff T) T

def tunedEndpointComplementaryCross (T : ℝ) : ℝ :=
  endpointComplementaryCross (tunedPhysicalCutoff T) T

/-- Diagonal term for the rough Möbius response Gram. -/
def roughMoebiusDiagonal (Y : ℕ) (T : ℝ) : ℝ :=
  ∑ n ∈ (Finset.Icc 1 ⌊Real.exp T⌋₊).filter (roughAbove Y),
    moebiusReal n ^ 2 * pickupResponseGram T n n

/-- Finite Fubini expansion of the rough Möbius energy into diagonal and
ordered off-diagonal sectors. -/
def RoughMoebiusEnergySplit : Prop :=
  ∀ (Y : ℕ) (T : ℝ), 0 ≤ T →
    roughMoebiusEnergy Y T =
      roughMoebiusDiagonal Y T + endpointRoughCross Y T

/-- The diagonal response Gram is nonnegative. -/
def RoughMoebiusDiagonalNonnegative : Prop :=
  ∀ (Y : ℕ) (T : ℝ), 0 ≤ T →
    0 ≤ roughMoebiusDiagonal Y T

/-- The tuned rough endpoint sector inherits the rough Möbius energy allowance.
This is still an exponent-one allowance. -/
def TunedEndpointRoughCrossUpper : Prop :=
  TunedRoughMoebiusCausalEnergyUpper →
    RoughMoebiusEnergySplit →
      RoughMoebiusDiagonalNonnegative →
        ∃ C T₀ : ℝ, 0 ≤ C ∧ 3 ≤ T₀ ∧
          ∀ T : ℝ, T₀ ≤ T →
            tunedEndpointRoughCross T ≤ C * tunedEnergyAllowance T

/-- Exact endpoint comparison after the rough/complementary split. -/
theorem endpointSum_le_tuned_sector_split
    {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤
      tunedEndpointRoughCross T +
        tunedEndpointComplementaryCross T + 1 / 4 := by
  have h := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_rough_add_complement
    (tunedPhysicalCutoff T) T] at h
  simpa [tunedEndpointRoughCross, tunedEndpointComplementaryCross] using
    (show endpointSum T ≤
      endpointRoughCross (tunedPhysicalCutoff T) T +
        endpointComplementaryCross (tunedPhysicalCutoff T) T + 1 / 4 by
      linarith)

/-- The exact signed remainder condition that would let the tuned sector enter
the endpoint consumer before a positive allowance is paid. -/
def TunedEndpointSignedRemainderSupplier : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, R ≤ T →
        tunedEndpointComplementaryCross T ≤
          -tunedEndpointRoughCross T + C * Real.exp (ε * T)

theorem endpointSum_le_of_tuned_signed_remainder
    {T C ε : ℝ} (hT : 0 ≤ T)
    (hrem : tunedEndpointComplementaryCross T ≤
      -tunedEndpointRoughCross T + C * Real.exp (ε * T)) :
    endpointSum T ≤ C * Real.exp (ε * T) + 1 / 4 := by
  have hsplit := endpointSum_le_tuned_sector_split hT
  linarith

/-- Rough-restricted actual Liouville pair on the double-Abel lattice. -/
def roughSignedPair (Y N m g : ℕ) : ℝ :=
  if roughAbove Y m ∧ roughAbove Y (m + g) then
    signedPair N m g
  else 0

/-- Rough--rough part of the complete positive-gap aggregate. -/
def roughPositiveGapAggregate (Y N : ℕ) : ℝ :=
  ∑ mg ∈ lattice N,
    roughSignedPair Y N mg.1 mg.2 *
      causalKernel (Real.log (N : ℝ)) mg.1 mg.2

/-- All remaining signed sectors of the positive-gap aggregate. -/
def complementaryPositiveGapAggregate (Y N : ℕ) : ℝ :=
  positiveGapAggregate N - roughPositiveGapAggregate Y N

theorem positiveGapAggregate_eq_rough_add_complement
    (Y N : ℕ) :
    positiveGapAggregate N =
      roughPositiveGapAggregate Y N +
        complementaryPositiveGapAggregate Y N := by
  unfold complementaryPositiveGapAggregate
  ring

def tunedDoubleAbelRoughAggregate (N : ℕ) : ℝ :=
  roughPositiveGapAggregate
    (tunedPhysicalCutoff (Real.log (N : ℝ))) N

def tunedDoubleAbelComplementaryAggregate (N : ℕ) : ℝ :=
  complementaryPositiveGapAggregate
    (tunedPhysicalCutoff (Real.log (N : ℝ))) N

/-- The tuned rough Liouville positive-gap sector is bounded by the tuned rough
causal energy, modulo the exact diagonal/boundary identification. -/
def TunedDoubleAbelRoughAggregateUpper : Prop :=
  TunedRoughCausalEnergyUpper →
    ∃ C N₀ : ℝ, 0 ≤ C ∧ 2 ≤ N₀ ∧
      ∀ N : ℕ, N₀ ≤ N →
        tunedDoubleAbelRoughAggregate N ≤
          C * tunedEnergyAllowance (Real.log (N : ℝ))

/-- Exact signed remainder condition for using the tuned estimate inside the
double-Abel consumer. -/
def TunedDoubleAbelSignedRemainderSupplier : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, 2 ≤ N →
        tunedDoubleAbelComplementaryAggregate N ≤
          -tunedDoubleAbelRoughAggregate N +
            C * (N : ℝ) ^ ε

theorem positiveGapAggregate_le_of_tuned_remainder
    {N : ℕ} {C ε : ℝ}
    (hrem : tunedDoubleAbelComplementaryAggregate N ≤
      -tunedDoubleAbelRoughAggregate N + C * (N : ℝ) ^ ε) :
    positiveGapAggregate N ≤ C * (N : ℝ) ^ ε := by
  rw [positiveGapAggregate_eq_rough_add_complement
    (tunedPhysicalCutoff (Real.log (N : ℝ))) N]
  simpa [tunedDoubleAbelRoughAggregate,
    tunedDoubleAbelComplementaryAggregate] using
      (show roughPositiveGapAggregate
          (tunedPhysicalCutoff (Real.log (N : ℝ))) N +
          complementaryPositiveGapAggregate
            (tunedPhysicalCutoff (Real.log (N : ℝ))) N ≤
            C * (N : ℝ) ^ ε by
        linarith)

/-- Eventual all-positive-rate upper control, separated from any specific
consumer. -/
def EventualAllRateUpper (f : ℝ → ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, R ≤ T → f T ≤ C * Real.exp (ε * T)

theorem zero_eventualAllRateUpper :
    EventualAllRateUpper (fun _ : ℝ => 0) := by
  intro ε hε
  exact ⟨0, 0, le_rfl, le_rfl, fun T hT => by simp⟩

/-- A generic rule that tries to consume one sector only through a positive
upper allowance and then adds an independently subexponential remainder. -/
def PositiveAllowanceRule (allowance : ℝ → ℝ) : Prop :=
  ∀ (sector remainder : ℝ → ℝ),
    (∀ T : ℝ, 0 ≤ T → sector T ≤ allowance T) →
      EventualAllRateUpper remainder →
        EventualAllRateUpper (fun T => sector T + remainder T)

theorem positiveAllowanceRule_implies_allowance_allRate
    {allowance : ℝ → ℝ}
    (h : PositiveAllowanceRule allowance) :
    EventualAllRateUpper allowance := by
  have hh := h allowance (fun _ : ℝ => 0)
    (fun T hT => le_rfl) zero_eventualAllRateUpper
  simpa using hh

theorem no_positiveAllowanceRule_of_not_allRate
    {allowance : ℝ → ℝ}
    (h : ¬ EventualAllRateUpper allowance) :
    ¬ PositiveAllowanceRule allowance := by
  intro hrule
  exact h (positiveAllowanceRule_implies_allowance_allRate hrule)

/-- The tuned energy allowance has exponential rate one, not all-positive-rate
growth.  This elementary asymptotic statement remains a named proposition
pending the logarithmic positivity thresholds and `exp`/polynomial API proof. -/
def TunedEnergyAllowanceNotAllRate : Prop :=
  ¬ EventualAllRateUpper tunedEnergyAllowance

theorem tuned_positive_allowance_rule_fails
    (h : TunedEnergyAllowanceNotAllRate) :
    ¬ PositiveAllowanceRule tunedEnergyAllowance :=
  no_positiveAllowanceRule_of_not_allRate h

/-- The recent polylogarithmic growing-shift range is asymptotically far below
the tuned Selberg cutoff.  This records only the parameter comparison; it does
not import any external Chowla theorem. -/
def TunedCutoffDominatesEveryPolylogShift : Prop :=
  ∀ κ : ℝ, 0 < κ →
    ∃ T₀ : ℝ, 3 ≤ T₀ ∧
      ∀ T : ℝ, T₀ ≤ T →
        T ^ κ < (tunedPhysicalCutoff T : ℝ)

/-- Research disposition: the tuned rough estimate transfers to the rough
Möbius sector, but endpoint and double-Abel completion require a signed
complementary-sector estimate.  Positive insertion of the exponent-one
allowance is logically insufficient. -/
def RoughSignedConsumerDisposition : Prop :=
  TunedRoughMoebiusCausalEnergyUpper ∧
    TunedEnergyAllowanceNotAllRate ∧
      TunedEndpointSignedRemainderSupplier ∧
        TunedDoubleAbelSignedRemainderSupplier

end GRWTSK.NumberTheory.LiouvilleRoughSignedConsumerTransfer
