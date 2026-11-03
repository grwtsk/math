/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / SIGNED_CANCELLATION_OPEN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSignedDistanceFibers

/-!
# Exact all-positive-rate signed interfaces and conditional return

This module does NOT assume or claim a proof of signed arithmetic
cancellation. The open input is the true L1 variation of SIGNED
distance fibers, stronger than just a triangle/cardinality bound.
The existing nearcritical Euler-bank theorem alone provides only
the positive factor; the source's mixed estimates still have
rate 1/2+o(1) before this new signed input.

All proved arrows in this candidate are finite algebra or an
explicit conditional composition with the prior moving-bank
source theorem. Both ordered HL and LH orientations, the full
arbitrary Nat.dist mask, and the LL residual remain visible.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.SignedAllPositiveRateConditional

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.DyadicBirthHighLowLongGap
open GRWTSK.NumberTheory.Moebius.GrowingPrimeBankEulerCost
open GRWTSK.NumberTheory.Moebius.NearcriticalMovingBank
open GRWTSK.NumberTheory.Moebius.SignedDistanceFibers

/-- Actual physical terminal time for the original dyadic shell. -/
def shellTime (X : ℕ) : ℝ :=
  Real.log (2 * (X : ℝ))

/-- First ordered original signed high/low masked packet. -/
def originalSignedHL
    (B : PrimeBand) (a b : Bool)
    (A : Finset ℕ) (X : ℕ) : ℝ :=
  maskedTaggedBlock B.primes a b A
    (highSmoothBlock B X (shellTime X))
    (lowSmoothBlock B X (shellTime X)) (shellTime X)

/-- Second ordered original signed low/high packet; distinct tags
and coordinate ordering are not silently exchanged. -/
def originalSignedLH
    (B : PrimeBand) (a b : Bool)
    (A : Finset ℕ) (X : ℕ) : ℝ :=
  maskedTaggedBlock B.primes a b A
    (lowSmoothBlock B X (shellTime X))
    (highSmoothBlock B X (shellTime X)) (shellTime X)

/-- Genuine still-open low/low packet. -/
def originalSignedLL
    (B : PrimeBand) (a b : Bool)
    (A : Finset ℕ) (X : ℕ) : ℝ :=
  maskedTaggedBlock B.primes a b A
    (lowSmoothBlock B X (shellTime X))
    (lowSmoothBlock B X (shellTime X)) (shellTime X)

/-- Two separately oriented variation bounds, on signed
same-distance fibers rather than unsigned summands. -/
def BothOrderedVariationBound
    (B : PrimeBand) (a b : Bool) (X : ℕ) (δ : ℝ) : Prop :=
  (signedDistanceVariation B a b
      (highSmoothBlock B X (shellTime X))
      (lowSmoothBlock B X (shellTime X))
      (shellTime X) ≤
        Real.exp (δ * shellTime X) * bankSquareRootWeight B.primes) ∧
  (signedDistanceVariation B a b
      (lowSmoothBlock B X (shellTime X))
      (highSmoothBlock B X (shellTime X))
      (shellTime X) ≤
        Real.exp (δ * shellTime X) * bankSquareRootWeight B.primes)

/-- The genuinely missing arithmetic estimate. A Prop is NOT an
axiom, a theorem, a proof, or a source of evidence it holds.
The cutoff condition is the ORIGINAL selected genuine prime
membership, not an artificial fixed-bank assumption. -/
def NearcriticalSignedDistanceVariationTarget : Prop :=
  ∀ (α δ : ℝ), α < 2 → 0 < δ →
    ∃ X₀ : ℕ, ∀ X ≥ X₀, ∀ (B : PrimeBand) (a b : Bool),
      (∀ p ∈ B.primes,
        (p : ℝ) ≤ (shellTime X) ^ (2 : ℕ) *
          (Real.log (shellTime X)) ^ α) →
        BothOrderedVariationBound B a b X δ

/-- The required final mixed estimate in both ORIGINAL ordered
orientations; every finite gap mask A is quantified separately. -/
def BothOrderedSignedMixedRate
    (B : PrimeBand) (a b : Bool)
    (A : Finset ℕ) (X : ℕ) (ε : ℝ) : Prop :=
  (|originalSignedHL B a b A X| ≤
    Real.exp (ε * shellTime X)) ∧
  (|originalSignedLH B a b A X| ≤
    Real.exp (ε * shellTime X))

/-- Necessary hostile regression: if the first orientation is
uniformly small for all masks, its SIGNED gap L1 mass is small
up to factor two. -/
theorem originalSignedHL_all_masks_implies_variation
    (B : PrimeBand) (a b : Bool) (X : ℕ) (C : ℝ)
    (h : ∀ A : Finset ℕ, |originalSignedHL B a b A X| ≤ C) :
    signedDistanceVariation B a b
      (highSmoothBlock B X (shellTime X))
      (lowSmoothBlock B X (shellTime X))
      (shellTime X) ≤ 2 * C := by
  apply signedDistanceVariation_le_two_of_all_masks
    B a b
      (highSmoothBlock B X (shellTime X))
      (lowSmoothBlock B X (shellTime X))
      (shellTime X) C
  intro A
  exact h A

/-- The low/high orientation has a distinct necessary gap L1
obligation: orientation symmetry is not assumed. -/
theorem originalSignedLH_all_masks_implies_variation
    (B : PrimeBand) (a b : Bool) (X : ℕ) (C : ℝ)
    (h : ∀ A : Finset ℕ, |originalSignedLH B a b A X| ≤ C) :
    signedDistanceVariation B a b
      (lowSmoothBlock B X (shellTime X))
      (highSmoothBlock B X (shellTime X))
      (shellTime X) ≤ 2 * C := by
  apply signedDistanceVariation_le_two_of_all_masks
    B a b
      (lowSmoothBlock B X (shellTime X))
      (highSmoothBlock B X (shellTime X))
      (shellTime X) C
  intro A
  exact h A

/-- Source exact, finite conditional composition. This proves
that ONE signed gap-variation budget and ONE Euler budget imply
the requested final masked bound in BOTH orientations.
No arithmetic assertion is inferred from their names. -/
theorem bothOrderedSignedMixedRate_of_variation
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (δ η : ℝ)
    (hvariation : BothOrderedVariationBound B a b X δ)
    (hbank : bankSquareRootWeight B.primes ≤
      Real.exp (η * shellTime X)) :
    BothOrderedSignedMixedRate B a b A X (δ + η) := by
  rcases hvariation with ⟨hHL, hLH⟩
  have hcombine :
      Real.exp (δ * shellTime X) *
        Real.exp (η * shellTime X) =
          Real.exp ((δ + η) * shellTime X) := by
    rw [show (δ + η) * shellTime X =
      δ * shellTime X + η * shellTime X by ring, Real.exp_add]
  constructor
  · have hfirst :=
      maskedTaggedBlock_abs_le_signedDistanceVariation
        B a b A
          (highSmoothBlock B X (shellTime X))
          (lowSmoothBlock B X (shellTime X)) (shellTime X)
    change |originalSignedHL B a b A X| ≤ _ at hfirst
    calc
      |originalSignedHL B a b A X| ≤
          signedDistanceVariation B a b
            (highSmoothBlock B X (shellTime X))
            (lowSmoothBlock B X (shellTime X))
            (shellTime X) := hfirst
      _ ≤ Real.exp (δ * shellTime X) *
            bankSquareRootWeight B.primes := hHL
      _ ≤ Real.exp (δ * shellTime X) *
            Real.exp (η * shellTime X) :=
        mul_le_mul_of_nonneg_left hbank (Real.exp_nonneg _)
      _ = Real.exp ((δ + η) * shellTime X) := hcombine
  · have hfirst :=
      maskedTaggedBlock_abs_le_signedDistanceVariation
        B a b A
          (lowSmoothBlock B X (shellTime X))
          (highSmoothBlock B X (shellTime X)) (shellTime X)
    change |originalSignedLH B a b A X| ≤ _ at hfirst
    calc
      |originalSignedLH B a b A X| ≤
          signedDistanceVariation B a b
            (lowSmoothBlock B X (shellTime X))
            (highSmoothBlock B X (shellTime X))
            (shellTime X) := hfirst
      _ ≤ Real.exp (δ * shellTime X) *
            bankSquareRootWeight B.primes := hLH
      _ ≤ Real.exp (δ * shellTime X) *
            Real.exp (η * shellTime X) :=
        mul_le_mul_of_nonneg_left hbank (Real.exp_nonneg _)
      _ = Real.exp ((δ + η) * shellTime X) := hcombine

/-- The two orientations have the desired every-positive-rate
consequence PROVIDED the new arithmetic input is supplied as
an explicit hypothesis (sufficiency, not its converse).
The positive Euler supplier is imported, not reconstructed.
Nothing here proves the arithmetic input itself. -/
theorem bothOrderedSignedMixed_allPositiveRate_of_variation
    (hVariation : NearcriticalSignedDistanceVariationTarget)
    (α ε : ℝ) (hα : α < 2) (hε : 0 < ε) :
    ∃ X₀ : ℕ, ∀ X ≥ X₀,
      ∀ (B : PrimeBand) (a b : Bool) (A : Finset ℕ),
        (∀ p ∈ B.primes,
          (p : ℝ) ≤ (shellTime X) ^ (2 : ℕ) *
            (Real.log (shellTime X)) ^ α) →
          BothOrderedSignedMixedRate B a b A X ε := by
  have hhalf : 0 < ε / 2 := by linarith
  obtain ⟨Xv, hvar⟩ := hVariation α (ε / 2) hα hhalf
  obtain ⟨T₀, hT₀, hbank⟩ :=
    movingBank_euler_eventual α (ε / 2) hα hhalf
  refine ⟨max Xv (max 1 ⌈Real.exp T₀⌉₊), ?_⟩
  intro X hX B a b A hsupport
  have hXv : Xv ≤ X := by omega
  have hXone : 1 ≤ X := by omega
  have hceil : Real.exp T₀ ≤ (X : ℝ) := by
    have hc : Real.exp T₀ ≤ (⌈Real.exp T₀⌉₊ : ℝ) :=
      Nat.le_ceil _
    have hn : ⌈Real.exp T₀⌉₊ ≤ X := by omega
    exact hc.trans (by exact_mod_cast hn)
  have hTlarge : T₀ ≤ shellTime X := by
    have hcomp : Real.exp T₀ ≤ 2 * (X : ℝ) := by
      have hx : (0 : ℝ) ≤ (X : ℝ) := Nat.cast_nonneg _
      linarith
    calc
      T₀ = Real.log (Real.exp T₀) := (Real.log_exp _).symm
      _ ≤ Real.log (2 * (X : ℝ)) :=
        Real.log_le_log (Real.exp_pos _) hcomp
      _ = shellTime X := rfl
  have hvarBudget :
      BothOrderedVariationBound B a b X (ε / 2) :=
    hvar X hXv B a b hsupport
  have hEulerBudget :
      bankSquareRootWeight B.primes ≤
        Real.exp ((ε / 2) * shellTime X) :=
    hbank (shellTime X) hTlarge B
      (by simpa only [shellTime] using hsupport)
  have hresult :=
    bothOrderedSignedMixedRate_of_variation
      B a b A X (ε / 2) (ε / 2)
      hvarBudget hEulerBudget
  simpa [show ε / 2 + ε / 2 = ε by ring] using hresult

/-- The exact still-unproved low/low source, kept as an
independently named Prop: the empty PrimeBand specializes to
the original rough/rough source. -/
def NearcriticalSignedLowLowTarget : Prop :=
  ∀ (α ε : ℝ), α < 2 → 0 < ε →
    ∃ X₀ : ℕ, ∀ X ≥ X₀,
      ∀ (B : PrimeBand) (a b : Bool) (A : Finset ℕ),
        (∀ p ∈ B.primes,
          (p : ℝ) ≤ (shellTime X) ^ (2 : ℕ) *
            (Real.log (shellTime X)) ^ α) →
        |originalSignedLL B a b A X| ≤
          Real.exp (ε * shellTime X)

/-- The original exact remaining residual is LL+HL+LH. Once
both mixed estimates are available, the missing LL term is
still written out; nothing takes absolute values before the
source-exact four-way decomposition. -/
theorem signedResidual_abs_le_lowLow_plus_twoMixed
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (ε : ℝ)
    (hMixed : BothOrderedSignedMixedRate B a b A X ε) :
    |signedLowLowAndMixedResidual
      B a b A X (shellTime X)| ≤
      |originalSignedLL B a b A X| +
        2 * Real.exp (ε * shellTime X) := by
  rcases hMixed with ⟨hHL, hLH⟩
  change
    |originalSignedLL B a b A X +
      originalSignedHL B a b A X +
      originalSignedLH B a b A X| ≤ _
  calc
    _ ≤ |originalSignedLL B a b A X| +
        |originalSignedHL B a b A X| +
          |originalSignedLH B a b A X| := by
      exact (abs_add_le _ _).trans
        (add_le_add_right (abs_add_le _ _) _)
    _ ≤ |originalSignedLL B a b A X| +
          2 * Real.exp (ε * shellTime X) := by linarith

/-- All-positive-rate full residual up to a harmless factor 3
is CONDITIONAL on TWO separate open signed arithmetic inputs:
the gap-fiber target for both mixed sectors and the LL target.
This is not RH or an unconditional arithmetic estimate. -/
theorem signedResidual_allPositiveRate_up_to_three
    (hVariation : NearcriticalSignedDistanceVariationTarget)
    (hLowLow : NearcriticalSignedLowLowTarget)
    (α ε : ℝ) (hα : α < 2) (hε : 0 < ε) :
    ∃ X₀ : ℕ, ∀ X ≥ X₀,
      ∀ (B : PrimeBand) (a b : Bool) (A : Finset ℕ),
        (∀ p ∈ B.primes,
          (p : ℝ) ≤ (shellTime X) ^ (2 : ℕ) *
            (Real.log (shellTime X)) ^ α) →
        |signedLowLowAndMixedResidual
          B a b A X (shellTime X)| ≤
          3 * Real.exp (ε * shellTime X) := by
  obtain ⟨Xmixed, hmixed⟩ :=
    bothOrderedSignedMixed_allPositiveRate_of_variation
      hVariation α ε hα hε
  obtain ⟨Xlow, hlow⟩ := hLowLow α ε hα hε
  refine ⟨max Xmixed Xlow, ?_⟩
  intro X hX B a b A hsupport
  have hXmixed : Xmixed ≤ X := by omega
  have hXlow : Xlow ≤ X := by omega
  have hm := hmixed X hXmixed B a b A hsupport
  have hl := hlow X hXlow B a b A hsupport
  have hr :=
    signedResidual_abs_le_lowLow_plus_twoMixed B a b A X ε hm
  linarith

/-- Exact original dense rectangle remains HH plus the signed
LL/HL/LH residual, with the original Gram and every mask. -/
theorem originalDense_abs_le_HH_plus_signedResidual
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) :
    |taggedDenseRectangle B.primes a b A
      X X (shellTime X)| ≤
      |maskedTaggedBlock B.primes a b A
        (highSmoothBlock B X (shellTime X))
        (highSmoothBlock B X (shellTime X))
        (shellTime X)| +
      |signedLowLowAndMixedResidual
        B a b A X (shellTime X)| := by
  rw [taggedDense_eq_HH_add_signedResidual]
  exact abs_add_le _ _

end GRWTSK.NumberTheory.Moebius.SignedAllPositiveRateConditional
