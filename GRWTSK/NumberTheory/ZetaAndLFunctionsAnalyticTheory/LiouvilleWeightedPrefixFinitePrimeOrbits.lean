/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleWeightedPrefixTwoAdicChains
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvillePrimeDelayObstruction
import Mathlib

/-!
# Finite-prime orbit extraction in the weighted Liouville prefix square

The exact two-adic extraction extends to any fixed finite prime family.  Group
positive indices by the integer remaining after every selected-prime power is
removed.  The complete same-core packet is a positive Gram packet and has only
an Euler-product times harmonic allowance.  Consequently the all-positive-rate
weighted-prefix problem is equivalent to the signed packet between distinct
selected-prime-free cores whenever that allowance is itself subpower.

The companion review proves the finite counting/Euler bound and an explicit
prime-two countermodel.  The countermodel satisfies the exact doubling sign and
all same-odd-core identities, but its distinct-odd-core packet grows linearly.
Thus no argument using only one fixed finite prime family, its exact negative
delays, and positive Gram/chain estimates can prove the actual Liouville
supplier.  A successful proof must use the actual signs at an unbounded prime
family in one complete signed aggregate.

No weighted-prefix supplier, uniform-energy theorem, RH theorem, new axiom, or
native verification assertion is introduced.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.LiouvilleWeightedPrefixFinitePrimeOrbits

open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixSquareCriterion
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixDoubling
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixTwoAdicChains
open GRWTSK.NumberTheory.LiouvillePrimeDelayObstruction

classical

/-- Every selected integer is prime. -/
def IsPrimeFinset (P : Finset ℕ) : Prop :=
  ∀ p ∈ P, Nat.Prime p

/-- All prime divisors of `d` belong to the selected finite family. -/
def SmoothOver (P : Finset ℕ) (d : ℕ) : Prop :=
  ∀ p : ℕ, Nat.Prime p → p ∣ d → p ∈ P

/-- No selected prime divides the core. -/
def FreeOf (P : Finset ℕ) (q : ℕ) : Prop :=
  ∀ p ∈ P, ¬ p ∣ q

/-- Two positive labels have the same selected-prime-free core. -/
def SamePrimeFreeCore (P : Finset ℕ) (m n : ℕ) : Prop :=
  ∃ q d e : ℕ,
    1 ≤ q ∧ 1 ≤ d ∧ 1 ≤ e ∧ FreeOf P q ∧
      SmoothOver P d ∧ SmoothOver P e ∧ m = d * q ∧ n = e * q

/-- Weighted prefix-square pair form for an arbitrary real coefficient source. -/
def weightedPairFormFor (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    a m * a n * weightedPairKernel N m n

/-- Complete same-core packet for an arbitrary coefficient source. -/
def primeOrbitInternalPacketFor
    (P : Finset ℕ) (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    if SamePrimeFreeCore P m n then
      a m * a n * weightedPairKernel N m n
    else 0

/-- Exact signed complement between distinct selected-prime-free cores. -/
def primeOrbitDistinctPacketFor
    (P : Finset ℕ) (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  weightedPairFormFor a N - primeOrbitInternalPacketFor P a N

theorem weightedPairFormFor_eq_internal_add_distinct
    (P : Finset ℕ) (a : ℕ → ℝ) (N : ℕ) :
    weightedPairFormFor a N =
      primeOrbitInternalPacketFor P a N +
        primeOrbitDistinctPacketFor P a N := by
  unfold primeOrbitDistinctPacketFor
  ring

/-- Actual Liouville same-core packet. -/
def primeOrbitInternalPacket (P : Finset ℕ) (N : ℕ) : ℝ :=
  primeOrbitInternalPacketFor P coefficient N

/-- Actual Liouville distinct-core packet. -/
def primeOrbitDistinctPacket (P : Finset ℕ) (N : ℕ) : ℝ :=
  primeOrbitDistinctPacketFor P coefficient N

/-- Absolute smooth-orbit allowance.  For a prime family this is the square of
`prod_p (1-p^(-1/2))^(-1)`. -/
def primeOrbitCost (P : Finset ℕ) : ℝ :=
  ∏ p ∈ P, ((1 - (Real.sqrt (p : ℝ))⁻¹)⁻¹) ^ 2

/-- Source-exact finite reindexing and positivity/bound package.  The review
proves the bound by grouping by the unique free core and using
`K_N(dq,eq) <= 1/(q*sqrt(d*e))`. -/
def PrimeOrbitInternalEulerBound : Prop :=
  ∀ (P : Finset ℕ), IsPrimeFinset P →
    ∀ N : ℕ,
      0 ≤ primeOrbitInternalPacket P N ∧
        primeOrbitInternalPacket P N ≤
          primeOrbitCost P * harmonicOneTo N

/-- All-positive-rate allowance for a horizon-dependent selected prime family. -/
def PrimeOrbitAllowanceAllRate (P : ℕ → Finset ℕ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ,
      primeOrbitCost (P N) * harmonicOneTo N ≤
        C * (((N + 1 : ℕ) : ℝ) ^ η)

/-- Remaining all-positive-rate arithmetic target after selected-prime orbit
packets have been paid. -/
def GrowingPrimeFreeCoreAllRate (P : ℕ → Finset ℕ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ,
      primeOrbitDistinctPacket (P N) N ≤
        C * (((N + 1 : ℕ) : ℝ) ^ η)

/-- Exact discrete weighted-prefix target. -/
def DiscreteWeightedPrefixAllRate' : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ,
      discreteWeightedPrefixSquare N ≤
        C * (((N + 1 : ℕ) : ℝ) ^ η)

/-- Exact bridge from the predecessor weighted square to the pair form. -/
def WeightedPrefixSquarePairFormIdentity' : Prop :=
  ∀ N : ℕ, discreteWeightedPrefixSquare N = weightedPairFormFor coefficient N

/-- If the internal selected-prime orbit packet has a subpower allowance, the
full endpoint supplier is equivalent to the packet between distinct free
cores.  No arithmetic cancellation is introduced by this theorem. -/
theorem growingPrimeFreeCoreAllRate_iff_discrete
    (P : ℕ → Finset ℕ)
    (hpair : WeightedPrefixSquarePairFormIdentity')
    (hbound : ∀ N : ℕ,
      0 ≤ primeOrbitInternalPacket (P N) N ∧
        primeOrbitInternalPacket (P N) N ≤
          primeOrbitCost (P N) * harmonicOneTo N)
    (hallow : PrimeOrbitAllowanceAllRate P) :
    GrowingPrimeFreeCoreAllRate P ↔ DiscreteWeightedPrefixAllRate' := by
  constructor
  · intro hcross η hη
    obtain ⟨Cc, hCc, hc⟩ := hcross η hη
    obtain ⟨Ci, hCi, hi⟩ := hallow η hη
    refine ⟨Cc + Ci, by positivity, ?_⟩
    intro N
    have hdecomp := weightedPairFormFor_eq_internal_add_distinct
      (P N) coefficient N
    have hform := hpair N
    have hcN := hc N
    have hiN := hi N
    have hbN := (hbound N).2
    rw [hform, hdecomp]
    nlinarith
  · intro hfull η hη
    obtain ⟨C, hC, hN⟩ := hfull η hη
    refine ⟨C, hC, ?_⟩
    intro N
    have hdecomp := weightedPairFormFor_eq_internal_add_distinct
      (P N) coefficient N
    have hform := hpair N
    have hnonneg := (hbound N).1
    have hfullN := hN N
    rw [hform, hdecomp] at hfullN
    linarith

/-- Initial selected-prime family. -/
def initialPrimeSet (Y : ℕ) : Finset ℕ :=
  (Finset.range (Y + 1)).filter Nat.Prime

/-- The logarithmic growing family is large enough to use unbounded actual
prime signs, while its Euler allowance is still expected to be subpower. -/
def logarithmicPrimeFamily (N : ℕ) : Finset ℕ :=
  initialPrimeSet ⌊Real.log (((N + 1 : ℕ) : ℝ))⌋₊

/-- Elementary analytic allowance recorded in the review:
`log primeOrbitCost(initialPrimeSet Y) <= B*sqrt Y`, hence the logarithmic
family satisfies every-positive-rate allowance. -/
def LogarithmicPrimeOrbitAllowance : Prop :=
  PrimeOrbitAllowanceAllRate logarithmicPrimeFamily

/-- Generic coefficient prefix. -/
def coefficientPrefixFor (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, a n

/-- Generic weighted prefix-square moment. -/
def discreteWeightedPrefixFor (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 N,
    coefficientPrefixFor a k ^ 2 / ((k : ℝ) * ((k + 1 : ℕ) : ℝ))

/-- Exact finite Fubini identity for arbitrary coefficients. -/
def GenericWeightedPairFormIdentity : Prop :=
  ∀ (a : ℕ → ℝ) (N : ℕ),
    discreteWeightedPrefixFor a N = weightedPairFormFor a N

/-- The prime-two source has a positive linear prefix and hence a linear
weighted moment.  The review gives the explicit threshold `N >= 256` for the
prefix and `N >= 512` for the moment. -/
def PrimeTwoWeightedMomentLinearLower : Prop :=
  ∀ N : ℕ, 512 ≤ N →
    (N : ℝ) / 64 ≤ discreteWeightedPrefixFor primeTwoSign N

/-- Same-odd-core coefficient products are identical for actual Liouville and
for the prime-two countermodel. -/
def PrimeTwoInternalPacketAgreement : Prop :=
  ∀ N : ℕ,
    primeOrbitInternalPacketFor {2} primeTwoSign N =
      primeOrbitInternalPacket {2} N

/-- Explicit weighted-prefix obstruction: after all two-adic chains are paid,
the prime-two countermodel still has a linearly growing distinct-odd-core
packet.  The review proves the clean bound `N/128` for `N >= 2048`. -/
def PrimeTwoDistinctOddCoreLinearLower : Prop :=
  ∀ N : ℕ, 2048 ≤ N →
    (N : ℝ) / 128 ≤
      primeOrbitDistinctPacketFor {2} primeTwoSign N

/-- Method disposition.  Fixed-prime orbit identities do not imply the actual
supplier; unbounded actual-prime arithmetic remains necessary. -/
def FinitePrimeOrbitMethodObstruction : Prop :=
  PrimeOrbitInternalEulerBound ∧
    LogarithmicPrimeOrbitAllowance ∧
      GenericWeightedPairFormIdentity ∧
        PrimeTwoWeightedMomentLinearLower ∧
          PrimeTwoInternalPacketAgreement ∧
            PrimeTwoDistinctOddCoreLinearLower

end GRWTSK.NumberTheory.LiouvilleWeightedPrefixFinitePrimeOrbits
