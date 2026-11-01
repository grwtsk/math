/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleWeightedPrefixDoubling
import Mathlib

/-!
# Complete two-adic-chain extraction in the weighted Liouville prefix square

The predecessor source pays the coefficient-square diagonal with the exact
ratio-two packet.  This file groups every pair with the same odd core, including
all ratios `2^j`, and leaves only correlations between distinct odd cores.

For an odd core `q` and the last active level `A`, the complete ordered chain
packet has the elementary closed form

  sum_(a,b<=A) (-1)^(a+b)
    [1/(2^max(a,b) q) - 1/(N+1)]
  = (1/q) sum_(k<=A) (-1)^k/2^k
    - 1_{A even}/(N+1).

It is nonnegative and at most `1/q`.  Consequently the entire same-odd-core
packet is at most the harmonic sum and is all-positive-rate.  The unresolved
RH-strength quantity can therefore be restricted to pairs with distinct odd
cores.  The finite reindexing and closed-form evaluation are explicit named
propositions pending pinned Lean elaboration; no arithmetic cancellation for
the distinct-core remainder is assumed or proved.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.LiouvilleWeightedPrefixTwoAdicChains

open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixSquareCriterion
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixDoubling

classical

/-- The original terminal weighted-pair kernel from the prefix-square identity. -/
def weightedPairKernel (N m n : ℕ) : ℝ :=
  1 / ((max m n : ℕ) : ℝ) - 1 / (((N + 1 : ℕ) : ℝ))

/-- Complete ordered pair form, diagonal included. -/
def weightedPairForm (N : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    coefficient m * coefficient n * weightedPairKernel N m n

/-- Two positive integers lie in the same two-adic orbit when they have one
common odd core.  Existence is used here; uniqueness is part of the reindexing. -/
def SameOddCore (m n : ℕ) : Prop :=
  ∃ q a b : ℕ, 1 ≤ q ∧ ¬ 2 ∣ q ∧ m = 2 ^ a * q ∧ n = 2 ^ b * q

/-- Complete packet of all ordered pairs in one common two-adic orbit. -/
def sameOddCorePacket (N : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    if SameOddCore m n then
      coefficient m * coefficient n * weightedPairKernel N m n
    else 0

/-- Exact signed complement: all ordered pairs with distinct odd cores. -/
def distinctOddCorePacket (N : ℕ) : ℝ :=
  weightedPairForm N - sameOddCorePacket N

theorem weightedPairForm_eq_same_add_distinct (N : ℕ) :
    weightedPairForm N = sameOddCorePacket N + distinctOddCorePacket N := by
  unfold distinctOddCorePacket
  ring

/-- Active exponents in the chain with odd core `q`. -/
def twoAdicExponents (N q : ℕ) : Finset ℕ :=
  (Finset.range (N + 1)).filter (fun a => 2 ^ a * q ≤ N)

/-- Explicit complete ordered packet for one odd core. -/
def twoAdicChainPacket (N q : ℕ) : ℝ :=
  ∑ a ∈ twoAdicExponents N q, ∑ b ∈ twoAdicExponents N q,
    coefficient (2 ^ a * q) * coefficient (2 ^ b * q) *
      weightedPairKernel N (2 ^ a * q) (2 ^ b * q)

/-- A source-exact last-level condition, avoiding any hidden logarithm/floor
convention. -/
def IsTwoAdicChainHeight (N q A : ℕ) : Prop :=
  1 ≤ q ∧ ¬ 2 ∣ q ∧ 2 ^ A * q ≤ N ∧ N < 2 ^ (A + 1) * q

/-- Closed form of a complete chain packet. -/
def twoAdicChainClosedForm (N q A : ℕ) : ℝ :=
  (∑ k ∈ Finset.range (A + 1),
      (-1 : ℝ) ^ k / (((2 ^ k : ℕ) : ℝ) * (q : ℝ))) -
    (if Even A then 1 / (((N + 1 : ℕ) : ℝ)) else 0)

/-- Reindex every same-core pair by its unique odd core and two exponents. -/
def TwoAdicOrbitReindexing : Prop :=
  ∀ N : ℕ,
    sameOddCorePacket N =
      ∑ q ∈ (Finset.Icc 1 N).filter (fun q => ¬ 2 ∣ q),
        twoAdicChainPacket N q

/-- Exact finite max-level evaluation.  The proof groups ordered pairs by
`max a b`; the coefficient of level `k` is exactly `(-1)^k`. -/
def TwoAdicChainClosedFormIdentity : Prop :=
  ∀ N q A : ℕ, IsTwoAdicChainHeight N q A →
    twoAdicChainPacket N q = twoAdicChainClosedForm N q A

/-- Complete same-core packet is positive and harmonic-size only. -/
def TwoAdicInternalBounds : Prop :=
  ∀ N : ℕ,
    0 ≤ sameOddCorePacket N ∧
      sameOddCorePacket N ≤ harmonicOneTo N

/-- Exact predecessor bridge from the weighted prefix square to the complete
ordered pair form.  It follows from the predecessor shift identity by finite
upper/lower-triangle reindexing. -/
def WeightedPrefixSquarePairFormIdentity : Prop :=
  ∀ N : ℕ, discreteWeightedPrefixSquare N = weightedPairForm N

theorem discrete_eq_same_add_distinct
    (hpair : WeightedPrefixSquarePairFormIdentity) (N : ℕ) :
    discreteWeightedPrefixSquare N =
      sameOddCorePacket N + distinctOddCorePacket N := by
  rw [hpair N, weightedPairForm_eq_same_add_distinct]

theorem distinct_le_discrete_le_distinct_add_harmonic
    (hpair : WeightedPrefixSquarePairFormIdentity)
    (hbound : TwoAdicInternalBounds) (N : ℕ) :
    distinctOddCorePacket N ≤ discreteWeightedPrefixSquare N ∧
      discreteWeightedPrefixSquare N ≤
        distinctOddCorePacket N + harmonicOneTo N := by
  have hid := discrete_eq_same_add_distinct hpair N
  have hb := hbound N
  constructor <;> linarith

/-- The elementary fact that a harmonic prefix is smaller than every positive
power, with constants allowed to depend on the requested exponent. -/
def HarmonicSubpower : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ,
      harmonicOneTo N ≤ C * (((N + 1 : ℕ) : ℝ) ^ η)

/-- All-positive-rate target for the genuinely remaining distinct-core packet. -/
def DistinctOddCoreAllRate : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ,
      distinctOddCorePacket N ≤ C * (((N + 1 : ℕ) : ℝ) ^ η)

/-- Discrete endpoint formulation of the weighted-prefix supplier. -/
def DiscreteWeightedPrefixAllRate : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ,
      discreteWeightedPrefixSquare N ≤ C * (((N + 1 : ℕ) : ℝ) ^ η)

/-- The two-adic internal packet costs only a harmonic allowance, so the
weighted-prefix endpoint problem is equivalent to its distinct-odd-core
remainder. -/
theorem distinctOddCoreAllRate_iff_discrete
    (hpair : WeightedPrefixSquarePairFormIdentity)
    (hbound : TwoAdicInternalBounds)
    (hharm : HarmonicSubpower) :
    DistinctOddCoreAllRate ↔ DiscreteWeightedPrefixAllRate := by
  constructor
  · intro hcross η hη
    obtain ⟨Cc, hCc, hc⟩ := hcross η hη
    obtain ⟨Ch, hCh, hh⟩ := hharm η hη
    refine ⟨Cc + Ch, by positivity, ?_⟩
    intro N
    have hcmp := (distinct_le_discrete_le_distinct_add_harmonic
      hpair hbound N).2
    have hcN := hc N
    have hhN := hh N
    nlinarith [Real.rpow_nonneg (by positivity : (0 : ℝ) ≤ ((N + 1 : ℕ) : ℝ)) η]
  · intro hdisc η hη
    obtain ⟨C, hC, hN⟩ := hdisc η hη
    refine ⟨C, hC, ?_⟩
    intro N
    exact (distinct_le_discrete_le_distinct_add_harmonic
      hpair hbound N).1.trans (hN N)

/-- Formalization and research disposition. -/
def TwoAdicChainCriterionDisposition : Prop :=
  TwoAdicOrbitReindexing ∧
    TwoAdicChainClosedFormIdentity ∧
      TwoAdicInternalBounds ∧
        WeightedPrefixSquarePairFormIdentity ∧
          HarmonicSubpower ∧
            (DistinctOddCoreAllRate ↔ DiscreteWeightedPrefixAllRate)

end GRWTSK.NumberTheory.LiouvilleWeightedPrefixTwoAdicChains
