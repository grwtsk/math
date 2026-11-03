/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusNearSquareRootEulerPrefix
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusBalancedTwoSidedPNTDense
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Genuine original-source high-smooth-divisor dense pair sector

The selected subset of original indices n retains the original
taggedMoebius coefficients and original pickupResponseGram. No
convolution-component coefficients, replacement signs or surrogate
kernel are introduced. The high-smooth support uses a divisor d|n
with d genuinely P-smooth and d>nearSquareRootCut(2*X).

For a complete dyadic block and T=log(2*X), the paper proof derives
card(highBlock) <= sqrt(2*X)*exp(sqrt(T))*V_P,
and for EVERY finite gap mask A the genuine signed high/high masked
source has absolute value <= 8*T*exp(2*sqrt(T))*V_P^2.
The bounds remain explicit PROPOSITIONAL Lean targets until the
finite Euler moments and support-counting API are checked.

Unlike an artificial rough/matched convolution-component split, this
is a genuine subset of the original source pairs. Both mixed
orientations remain in the exact four-way high/low partition.
-/

namespace GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix

/-- An ORIGINAL integer index carrying a true P-smooth divisor
strictly above the fixed near-maximal dyadic real cutoff. -/
def hasNearMaximalSmoothDivisor
    (B : PrimeBand) (X n : ℕ) : Prop :=
  ∃ d : ℕ, d ∣ n ∧ bankSmooth B.primes d ∧
    nearSquareRootCut (2 * X) < (d : ℝ)

/-- Filter of the existing source-clipped, endpoint-indexed
balancedBlock. There is no enlarged or altered birth inventory. -/
noncomputable def highSmoothBlock
    (B : PrimeBand) (X : ℕ) (T : ℝ) : Finset ℕ := by
  classical
  exact (balancedBlock X T).filter
    (hasNearMaximalSmoothDivisor B X)

/-- The complementary ORIGINAL source indices, not a new
arithmetic coefficient class. -/
noncomputable def lowSmoothBlock
    (B : PrimeBand) (X : ℕ) (T : ℝ) : Finset ℕ := by
  classical
  exact (balancedBlock X T).filter
    (fun n => ¬hasNearMaximalSmoothDivisor B X n)

theorem highLow_union_eq_originalBlock
    (B : PrimeBand) (X : ℕ) (T : ℝ) :
    highSmoothBlock B X T ∪ lowSmoothBlock B X T =
      balancedBlock X T := by
  classical
  ext n
  simp only [highSmoothBlock, lowSmoothBlock,
    Finset.mem_union, Finset.mem_filter]
  constructor
  · rintro (⟨hn, _⟩ | ⟨hn, _⟩) <;> exact hn
  · intro hn
    by_cases hd : hasNearMaximalSmoothDivisor B X n
    · exact Or.inl ⟨hn, hd⟩
    · exact Or.inr ⟨hn, hd⟩

theorem highLow_disjoint
    (B : PrimeBand) (X : ℕ) (T : ℝ) :
    Disjoint (highSmoothBlock B X T) (lowSmoothBlock B X T) := by
  classical
  apply Finset.disjoint_left.mpr
  intro n hnH hnL
  exact (Finset.mem_filter.mp hnL).2 (Finset.mem_filter.mp hnH).2

/-- The literal original signed tagged dense mask, but with
explicit selections of already-present integer indices. -/
def maskedTaggedBlock
    (P : Finset ℕ) (a b : Bool) (A I J : Finset ℕ)
    (T : ℝ) : ℝ :=
  ∑ m ∈ I, ∑ n ∈ J,
    if m ≠ n ∧ Nat.dist m n ∉ A then
      taggedMoebius P a m * taggedMoebius P b n *
        pickupResponseGram T m n
    else 0

/-- Elementary two-coordinate partition of a finite sum: this
uses real sum algebra, no arithmetic cancellation hypothesis. -/
private theorem sum_two_axis_partition
    (S H L : Finset ℕ) (hUnion : H ∪ L = S)
    (hDisjoint : Disjoint H L) (f : ℕ → ℕ → ℝ) :
    (∑ m ∈ S, ∑ n ∈ S, f m n) =
      (∑ m ∈ H, ∑ n ∈ H, f m n) +
      (∑ m ∈ H, ∑ n ∈ L, f m n) +
      (∑ m ∈ L, ∑ n ∈ H, f m n) +
      (∑ m ∈ L, ∑ n ∈ L, f m n) := by
  rw [← hUnion]
  simp only [Finset.sum_union hDisjoint,
    Finset.sum_add_distrib]
  ring

/-- Exact reconstruction of PREEXISTING taggedDenseRectangle
on the actual same dyadic shell. HH, HL, LH and LL retain
ordered orientations, original signed coefficients, physical Gram,
diagonal exclusion and the same arbitrary additive-gap mask A. -/
theorem taggedDenseRectangle_eq_four_smooth_strata
    (B : PrimeBand) (a b : Bool)
    (A : Finset ℕ) (X : ℕ) (T : ℝ) :
    taggedDenseRectangle B.primes a b A X X T =
      maskedTaggedBlock B.primes a b A
        (highSmoothBlock B X T) (highSmoothBlock B X T) T +
      maskedTaggedBlock B.primes a b A
        (highSmoothBlock B X T) (lowSmoothBlock B X T) T +
      maskedTaggedBlock B.primes a b A
        (lowSmoothBlock B X T) (highSmoothBlock B X T) T +
      maskedTaggedBlock B.primes a b A
        (lowSmoothBlock B X T) (lowSmoothBlock B X T) T := by
  unfold taggedDenseRectangle maskedTaggedBlock
  exact sum_two_axis_partition
    (balancedBlock X T)
    (highSmoothBlock B X T)
    (lowSmoothBlock B X T)
    (highLow_union_eq_originalBlock B X T)
    (highLow_disjoint B X T)
    (fun m n =>
      if m ≠ n ∧ Nat.dist m n ∉ A then
        taggedMoebius B.primes a m * taggedMoebius B.primes b n *
          pickupResponseGram T m n
      else 0)

/-- Mathematical supplier target from the finite smooth
1/2-Euler moment and counting multiples: each source index
with a large P-smooth divisor is counted at least once. -/
def HighSmoothCountFormalizationTarget : Prop :=
  ∀ (B : PrimeBand) (X : ℕ), 1 ≤ X →
    ((highSmoothBlock B X (Real.log (2 * (X : ℝ)))).card : ℝ) ≤
      Real.sqrt (2 * (X : ℝ)) *
        Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) *
          bankSquareRootWeight B.primes

/-- Complete ORIGINAL signed high/high masked Gram estimate.
Its source identity is above; the elementary analytic upper
proof and the finite checks are in the review. This declaration
is a PROPOSITIONAL verification target, NOT a theorem or axiom. -/
def HighSmoothDenseFormalizationTarget : Prop :=
  ∀ (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ), 1 ≤ X →
      |maskedTaggedBlock B.primes a b A
        (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
        (Real.log (2 * (X : ℝ)))| ≤
      8 * Real.log (2 * (X : ℝ)) *
        Real.exp (2 * Real.sqrt (Real.log (2 * (X : ℝ)))) *
          (bankSquareRootWeight B.primes) ^ 2

end GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
