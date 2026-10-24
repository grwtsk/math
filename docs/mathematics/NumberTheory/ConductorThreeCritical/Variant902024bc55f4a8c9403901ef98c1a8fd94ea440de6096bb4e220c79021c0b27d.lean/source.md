# Complete source: GRWTSK.NumberTheory.ConductorThreeCritical.Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f8ee1980d1dc64b45fc45b454199ba6683879e2` · SHA-256 `902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.AnalyticPrimeWalk
public import Surface.Core.CyclicPrimeWalkEuclidean
public import Mathlib.NumberTheory.LSeries.PrimesInAP
import Mathlib.Tactic

/-!
# Canonical conductor-three critical-decay criterion

This module closes the finite arithmetic/indexing gap left deliberately open
by `AnalyticPrimeWalk`:

* residue-one and residue-five counts are defined from `Nat.Prime`;
* the eligible-prime cutoff is the genuine `K`-th prime in those two classes;
* the eligible count at that cutoff is proved to be exactly `K`;
* the empirical discrepancy is interpreted as a continuous operator on the
  genuine Euclidean standard plane; and
* its norm is identified exactly with `sqrtThree` times the normalized signed
  residue bias.

The module then states critical decay with one canonical rate and proves that
the matrix criterion is equivalent to the scalar-bias criterion.  It does not
claim the still-unformalized analytic equivalence with conductor-three GRH.
-/

public section

namespace Surface.Core.ConductorThreeCritical

noncomputable section

open Filter
open Surface.Core.AnalyticPrimeWalk
open Surface.Core.CyclicPrimeWalk
open Surface.Core.CyclicPrimeWalkEuclidean

/-! ## Actual residue-six prime counts -/

/-- A prime in the residue-one class modulo six. -/
@[expose]
def IsResidueOnePrime (p : ℕ) : Prop :=
  p.Prime ∧ p ≡ 1 [MOD 6]

/-- A prime in the residue-five class modulo six. -/
@[expose]
def IsResidueFivePrime (p : ℕ) : Prop :=
  p.Prime ∧ p ≡ 5 [MOD 6]

/-- The eligible prime predicate used by the conductor-three walk. -/
@[expose]
def IsEligibleResidueSixPrime (p : ℕ) : Prop :=
  IsResidueOnePrime p ∨ IsResidueFivePrime p

noncomputable instance isResidueOnePrimeDecidable :
    DecidablePred IsResidueOnePrime :=
  Classical.decPred _

noncomputable instance isResidueFivePrimeDecidable :
    DecidablePred IsResidueFivePrime :=
  Classical.decPred _

noncomputable instance isEligibleResidueSixPrimeDecidable :
    DecidablePred IsEligibleResidueSixPrime :=
  Classical.decPred _

/-- Actual residue-one primes not exceeding `x`. -/
@[expose]
def actualResidueOneCount (x : ℕ) : ℕ :=
  Nat.count IsResidueOnePrime (x + 1)

/-- Actual residue-five primes not exceeding `x`. -/
@[expose]
def actualResidueFiveCount (x : ℕ) : ℕ :=
  Nat.count IsResidueFivePrime (x + 1)

/-- Canonical prime-count data, with no caller-supplied arithmetic stream. -/
@[expose]
def actualResidueSixCounts : ResidueSixCounts where
  residueOneCount := actualResidueOneCount
  residueFiveCount := actualResidueFiveCount

/-- The two residue predicates are disjoint. -/
@[surface_novel, surface_published]
theorem residuePrime_disjoint (p : ℕ) :
    ¬ (IsResidueOnePrime p ∧ IsResidueFivePrime p) := by
  rintro ⟨⟨_, hOne⟩, ⟨_, hFive⟩⟩
  have : (1 : ℕ) % 6 = 5 % 6 := hOne.symm.trans hFive
  norm_num at this

/-- Counting the eligible union is exactly the sum of the two disjoint
residue-class counts. -/
@[surface_novel, surface_published]
theorem count_eligible_eq_residue_sum (n : ℕ) :
    Nat.count IsEligibleResidueSixPrime n =
      Nat.count IsResidueOnePrime n + Nat.count IsResidueFivePrime n := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [Nat.count_succ, Nat.count_succ, Nat.count_succ, ih]
      by_cases hOne : IsResidueOnePrime n
      · have hFive : ¬ IsResidueFivePrime n := by
          intro h
          exact residuePrime_disjoint n ⟨hOne, h⟩
        simp [IsEligibleResidueSixPrime, hOne, hFive]
        omega
      · by_cases hFive : IsResidueFivePrime n
        · simp [IsEligibleResidueSixPrime, hOne, hFive]
          omega
        · simp [IsEligibleResidueSixPrime, hOne, hFive]

/-- There are infinitely many eligible primes.  It is enough to use the
residue-one progression; its inclusion into the eligible union is explicit. -/
@[surface_adapter, surface_published]
theorem infinite_eligibleResidueSixPrimes :
    Set.Infinite {p : ℕ | IsEligibleResidueSixPrime p} := by
  have hOne : Set.Infinite {p : ℕ | p.Prime ∧ p ≡ 1 [MOD 6]} :=
    Nat.infinite_setOf_prime_and_modEq (q := 6) (a := 1)
      (by norm_num) (by norm_num)
  exact hOne.mono (by
    intro p hp
    exact Or.inl hp)

/-- Cutoff containing exactly `K` eligible primes.  The zero case is assigned
cutoff zero; positive `K` uses the zero-indexed `(K-1)`-st eligible prime. -/
@[expose]
def actualEligiblePrimeCutoff (K : ℕ) : ℕ :=
  if _hK : K = 0 then 0 else Nat.nth IsEligibleResidueSixPrime (K - 1)

/-- The canonical cutoff really contains exactly `K` eligible primes. -/
@[surface_novel, surface_published]
theorem actualEligiblePrimeCutoff_indexes (K : ℕ) :
    eligibleCount actualResidueSixCounts (actualEligiblePrimeCutoff K) = K := by
  cases K with
  | zero =>
      change Nat.count IsResidueOnePrime 1 +
          Nat.count IsResidueFivePrime 1 = 0
      have hOne : Nat.count IsResidueOnePrime 1 = 0 := by
        apply Nat.count_of_forall_not
        intro m hm hPrime
        interval_cases m
        exact Nat.not_prime_zero hPrime.1
      have hFive : Nat.count IsResidueFivePrime 1 = 0 := by
        apply Nat.count_of_forall_not
        intro m hm hPrime
        interval_cases m
        exact Nat.not_prime_zero hPrime.1
      omega
  | succ K =>
      rw [eligibleCount]
      change
        Nat.count IsResidueOnePrime
              (actualEligiblePrimeCutoff (K + 1) + 1) +
            Nat.count IsResidueFivePrime
              (actualEligiblePrimeCutoff (K + 1) + 1) =
          K + 1
      rw [← count_eligible_eq_residue_sum]
      simp only [actualEligiblePrimeCutoff, Nat.succ_ne_zero, ↓reduceDIte,
        Nat.add_sub_cancel]
      exact Nat.count_nth_succ_of_infinite infinite_eligibleResidueSixPrimes K

/-! ## Genuine indexed Euclidean discrepancy operator -/

/-- Centered empirical residue weight at the canonical eligible-prime
cutoff.  This is defined for arbitrary count data so the matrix criterion has
the requested `ResidueSixCounts → Prop` shape; its canonical use is with
`actualResidueSixCounts`. -/
@[expose]
def indexedArithmeticBias (counts : ResidueSixCounts) (K : ℕ) : ℝ :=
  centeredWeight <| empiricalWeightFromCounts
    (counts.residueOneCount (actualEligiblePrimeCutoff K))
    (counts.residueFiveCount (actualEligiblePrimeCutoff K))

/-- The actual discrepancy matrix interpreted as a continuous endomorphism
of the Euclidean standard plane. -/
@[expose]
def indexedDiscrepancyOperator (counts : ResidueSixCounts) (K : ℕ) :
    StandardEuclidean →L[ℝ] StandardEuclidean :=
  discrepancyOperator <| empiricalWeightFromCounts
    (counts.residueOneCount (actualEligiblePrimeCutoff K))
    (counts.residueFiveCount (actualEligiblePrimeCutoff K))

/-- Exact indexed operator norm for arbitrary supplied count functions. -/
@[surface_novel, surface_published]
theorem indexedDiscrepancyOperator_norm
    (counts : ResidueSixCounts) (K : ℕ) :
    ‖indexedDiscrepancyOperator counts K‖ =
      sqrtThree * |indexedArithmeticBias counts K| := by
  exact discrepancyOperator_norm _

/-- Exact specialization to the genuine prime counts. -/
@[surface_novel, surface_published]
theorem actualIndexedErrorOperator_norm (K : ℕ) :
    ‖indexedDiscrepancyOperator actualResidueSixCounts K‖ =
      sqrtThree * |indexedArithmeticBias actualResidueSixCounts K| :=
  indexedDiscrepancyOperator_norm actualResidueSixCounts K

/-- At positive eligible index `K`, the actual arithmetic bias has denominator
exactly `2K`. -/
@[surface_novel, surface_published]
theorem actualIndexedArithmeticBias_eq (K : ℕ) (hK : 0 < K) :
    indexedArithmeticBias actualResidueSixCounts K =
      countDifference actualResidueSixCounts (actualEligiblePrimeCutoff K) /
        (2 * (K : ℝ)) := by
  rw [indexedArithmeticBias]
  have hCount :
      eligibleCount actualResidueSixCounts (actualEligiblePrimeCutoff K) = K :=
    actualEligiblePrimeCutoff_indexes K
  have hEligible :
      0 < eligibleCount actualResidueSixCounts (actualEligiblePrimeCutoff K) := by
    rw [hCount]
    exact hK
  rw [centeredWeightFromCounts _ _ hEligible]
  simp only [countDifference, actualResidueSixCounts, eligibleCount] at hCount ⊢
  rw [hCount]

/-- Positive-index norm displayed directly in actual count coordinates. -/
@[surface_novel, surface_published]
theorem actualIndexedErrorOperator_norm_eq_countDifference
    (K : ℕ) (hK : 0 < K) :
    ‖indexedDiscrepancyOperator actualResidueSixCounts K‖ =
      sqrtThree *
        |countDifference actualResidueSixCounts
          (actualEligiblePrimeCutoff K) / (2 * (K : ℝ))| := by
  rw [actualIndexedErrorOperator_norm,
    actualIndexedArithmeticBias_eq K hK]

/-! ## One canonical critical rate and equivalent finite criteria -/

/-- The conductor-three critical rate
`log(K+2) * sqrt(log(K+2)) / sqrt(K+2)`. -/
@[expose]
noncomputable def conductorThreeCriticalRate (K : ℕ) : ℝ :=
  Real.log ((K + 2 : ℕ) : ℝ) *
      Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) /
    Real.sqrt ((K + 2 : ℕ) : ℝ)

@[surface_novel, surface_published]
theorem conductorThreeCriticalRate_nonneg (K : ℕ) :
    0 ≤ conductorThreeCriticalRate K := by
  unfold conductorThreeCriticalRate
  positivity

@[surface_novel, surface_published]
theorem conductorThreeCriticalRate_pos (K : ℕ) :
    0 < conductorThreeCriticalRate K := by
  unfold conductorThreeCriticalRate
  have hArgument : (1 : ℝ) < ((K + 2 : ℕ) : ℝ) := by
    exact_mod_cast (by omega : 1 < K + 2)
  have hLog : 0 < Real.log ((K + 2 : ℕ) : ℝ) :=
    Real.log_pos hArgument
  have hSqrtLog : 0 < Real.sqrt (Real.log ((K + 2 : ℕ) : ℝ)) :=
    Real.sqrt_pos.2 hLog
  have hSqrtIndex : 0 < Real.sqrt ((K + 2 : ℕ) : ℝ) :=
    Real.sqrt_pos.2 (by positivity)
  positivity

/-- Eventual critical decay of the genuine Euclidean discrepancy operator. -/
@[expose]
def MatrixCriticalDecay (counts : ResidueSixCounts) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ᶠ K : ℕ in atTop,
      ‖indexedDiscrepancyOperator counts K‖ ≤
        C * conductorThreeCriticalRate K

/-- Equivalent scalar formulation in terms of the signed arithmetic bias. -/
@[expose]
def ArithmeticBiasCriticalDecay (counts : ResidueSixCounts) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ᶠ K : ℕ in atTop,
      |indexedArithmeticBias counts K| ≤
        C * conductorThreeCriticalRate K

@[surface_novel, surface_published]
theorem one_le_sqrtThree : (1 : ℝ) ≤ sqrtThree := by
  have hnonneg : 0 ≤ sqrtThree := Real.sqrt_nonneg 3
  nlinarith [sqrtThree_sq]

/-- The matrix norm criterion loses no arithmetic information: it is exactly
the scalar-bias criterion up to the fixed factor `sqrtThree`. -/
@[surface_novel, surface_published]
theorem matrixCriticalDecay_iff_arithmeticBiasCriticalDecay
    (counts : ResidueSixCounts) :
    MatrixCriticalDecay counts ↔ ArithmeticBiasCriticalDecay counts := by
  constructor
  · rintro ⟨C, hC, hEventually⟩
    refine ⟨C, hC, ?_⟩
    filter_upwards [hEventually] with K hK
    calc
      |indexedArithmeticBias counts K| ≤
          sqrtThree * |indexedArithmeticBias counts K| := by
            exact le_mul_of_one_le_left (abs_nonneg _) one_le_sqrtThree
      _ = ‖indexedDiscrepancyOperator counts K‖ :=
        (indexedDiscrepancyOperator_norm counts K).symm
      _ ≤ C * conductorThreeCriticalRate K := hK
  · rintro ⟨C, hC, hEventually⟩
    refine ⟨sqrtThree * C, mul_nonneg (Real.sqrt_nonneg 3) hC, ?_⟩
    filter_upwards [hEventually] with K hK
    rw [indexedDiscrepancyOperator_norm]
    calc
      sqrtThree * |indexedArithmeticBias counts K| ≤
          sqrtThree * (C * conductorThreeCriticalRate K) :=
        mul_le_mul_of_nonneg_left hK (Real.sqrt_nonneg 3)
      _ = (sqrtThree * C) * conductorThreeCriticalRate K := by ring

end

end Surface.Core.ConductorThreeCritical
```
