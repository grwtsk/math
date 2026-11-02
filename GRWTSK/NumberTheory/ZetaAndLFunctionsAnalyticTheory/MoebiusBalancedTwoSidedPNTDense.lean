/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPNTDyadicBilinearBlock
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointLeastPrimeTypeII
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamSparseGapAllRate
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Original balanced squarefree dense Möbius correlations: both signed coordinates

The prior source MoebiusPNTDyadicBilinearBlock isolates a one-sided
PNT discrepancy. Here every ORIGINAL source integer n has a rough or
matched tag relative to an explicitly typed FINITE prime bank; both
orientations of the rough/matched interactions are retained.

The companion paper proves a new quantitative, TWO-SIDED Abel estimate:
for any fixed prime bank B, 0 < epsilon < 2, every power beta > 0, and
terminal balanced dyadic shell X < m,n <= 2X at T=log(2X),

 |dense_{a,b}(X,T,epsilon)| <= C_(B,beta,epsilon)
                                   X/(1+log X)^beta

for all X>=2 and every a,b in {rough,matched}. It follows
UNCONDITIONALLY from the classical Vinogradov-Korobov Mertens
logarithmic-power bound, exact prime-bank smooth-divisor convolution,
positive monotone causal response and the already-paid Putnam sparse
gap/diagonal. Constants are UNIFORM in the growing integer range X.
For a varying bank the paper supplies explicit finite Euler factors
which may GROW; no uniform growing-bank saving is asserted.

This is exponent ONE with logarithmic savings, NOT an all-positive-rate
RH arithmetic supplier. The new Lean source formalizes candidate finite
source accounting and the generic rank-one two-variable inequality;
the quantitative Mertens-to-block, analytic Gram interchange and
masked sparse-gap bounds are PAPER-PROVED but NOT YET LEAN FORMALIZED.
No new axiom or sorry is inserted.
-/

namespace GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.LiouvilleSignedBuchstabTypeII
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.MoebiusPNTDyadicBilinearBlock

/-- `true` means ORIGINAL least-prime tag zero (rough);
`false` means nonzero (matched). No third coefficient alphabet. -/
def taggedMoebius (P : Finset ℕ) (rough : Bool) (n : ℕ) : ℝ :=
  if rough then
    (if firstSelectedDivisor P n = 0 then moebiusReal n else 0)
  else
    (if firstSelectedDivisor P n ≠ 0 then moebiusReal n else 0)

/-- Both original source tags, without dropping zero Möbius values. -/
theorem taggedMoebius_sum (P : Finset ℕ) (n : ℕ) :
    taggedMoebius P true n + taggedMoebius P false n =
      moebiusReal n := by
  by_cases h : firstSelectedDivisor P n = 0 <;>
    simp [taggedMoebius, h]

/-- Both tag populations preserve the original {-1,0,1} bound. -/
theorem taggedMoebius_abs_le_one
    (P : Finset ℕ) (rough : Bool) (n : ℕ) :
    |taggedMoebius P rough n| ≤ 1 := by
  have hmu : |moebiusReal n| ≤ 1 := by
    rcases ArithmeticFunction.moebius_eq_or n with h | h | h <;>
      simp [moebiusReal, h]
  cases rough <;>
    by_cases h : firstSelectedDivisor P n = 0 <;>
      simp [taggedMoebius, h, hmu]

/-- The ACTUAL source squareful coefficient is zero, not omitted.
No prime-power exponent or residue is replaced by a symbol. -/
theorem taggedMoebius_zero_of_not_squarefree
    (P : Finset ℕ) (rough : Bool) (n : ℕ)
    (hn : ¬ Squarefree n) :
    taggedMoebius P rough n = 0 := by
  have hmu : moebiusReal n = 0 := by
    simp [moebiusReal,
      ArithmeticFunction.moebius_eq_zero_of_not_squarefree hn]
  cases rough <;>
    simp [taggedMoebius, hmu]

/-- Original finite clipped dyadic index inventory is reused EXACTLY. -/
def balancedBlock (X : ℕ) (T : ℝ) : Finset ℕ :=
  sourceBlock X T

/-- Full signed source rectangle for a particular ORDERED pair of tags. -/
def taggedRectangle (P : Finset ℕ)
    (a b : Bool) (M N : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ balancedBlock M T, ∑ n ∈ balancedBlock N T,
    taggedMoebius P a m * taggedMoebius P b n *
      pickupResponseGram T m n

/-- ORIGINAL masked dense rectangle; both orientations and literal
Nat.dist and endpointIndex T are retained. -/
def taggedDenseRectangle (P : Finset ℕ)
    (a b : Bool) (A : Finset ℕ) (M N : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ balancedBlock M T, ∑ n ∈ balancedBlock N T,
    if m ≠ n ∧ Nat.dist m n ∉ A then
      taggedMoebius P a m * taggedMoebius P b n *
        pickupResponseGram T m n
    else 0

/-- Same original signed dense-mask on the full source coefficients. -/
def originalDenseRectangle (A : Finset ℕ)
    (M N : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ balancedBlock M T, ∑ n ∈ balancedBlock N T,
    if m ≠ n ∧ Nat.dist m n ∉ A then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Coefficient-level four-sector identity; both RM and MR appear
separately and the actual causal kernel remains unchanged. -/
theorem tagged_pair_four_identity
    (P : Finset ℕ) (m n : ℕ) (k : ℝ) :
    moebiusReal m * moebiusReal n * k =
      taggedMoebius P true m * taggedMoebius P true n * k +
      taggedMoebius P true m * taggedMoebius P false n * k +
      taggedMoebius P false m * taggedMoebius P true n * k +
      taggedMoebius P false m * taggedMoebius P false n * k := by
  rw [← taggedMoebius_sum P m, ← taggedMoebius_sum P n]
  ring

/-- The entire ORIGINAL masked rectangle, including squareful zeros,
is exactly the sum of RR, RM, MR, and MM at identical (m,n,T).
Neither mixed orientation can be silently discarded. -/
theorem originalDenseRectangle_eq_four_tagged
    (P A : Finset ℕ) (M N : ℕ) (T : ℝ) :
    originalDenseRectangle A M N T =
      taggedDenseRectangle P true true A M N T +
      taggedDenseRectangle P true false A M N T +
      taggedDenseRectangle P false true A M N T +
      taggedDenseRectangle P false false A M N T := by
  classical
  unfold originalDenseRectangle taggedDenseRectangle
    balancedBlock
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n ∧ Nat.dist m n ∉ A
  · simp only [if_pos h]
    exact tagged_pair_four_identity P m n (pickupResponseGram T m n)
  · simp [h]

/-- An exact two-variable rank-one signed inequality.
The independent one-variable factors BOTH contribute their prefix
savings before the product is bounded. -/
theorem rankOne_two_signed_factors
    (I J : Finset ℕ) (a b w z : ℕ → ℝ) (U V : ℝ)
    (hU : 0 ≤ U) (hV : 0 ≤ V)
    (ha : |∑ m ∈ I, a m * w m| ≤ U)
    (hb : |∑ n ∈ J, b n * z n| ≤ V) :
    |∑ m ∈ I, ∑ n ∈ J,
       a m * b n * (w m * z n)| ≤ U * V := by
  have hfactor :
      (∑ m ∈ I, ∑ n ∈ J,
        a m * b n * (w m * z n)) =
      (∑ m ∈ I, a m * w m) *
        (∑ n ∈ J, b n * z n) := by
    calc
      (∑ m ∈ I, ∑ n ∈ J,
        a m * b n * (w m * z n)) =
        ∑ m ∈ I, (a m * w m) *
          (∑ n ∈ J, b n * z n) := by
          apply Finset.sum_congr rfl
          intro m hm
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro n hn
          ring
      _ = (∑ m ∈ I, a m * w m) *
            (∑ n ∈ J, b n * z n) := by
          rw [Finset.sum_mul]
  rw [hfactor, abs_mul]
  exact mul_le_mul ha hb (abs_nonneg _) hU

/-- The two mixed tags have zero diagonal intersection at EVERY
original integer n, even if n is squareful or the prime bank is empty. -/
theorem mixed_diagonal_zero (P : Finset ℕ) (n : ℕ) :
    taggedMoebius P true n * taggedMoebius P false n = 0 := by
  by_cases h : firstSelectedDivisor P n = 0 <;>
    simp [taggedMoebius, h]

/-- The same balanced shell X<n<=2X contains no ratio-two
off-diagonal edge, for any X. This avoids recycling the already
known doubling negative packet as a new cancellation estimate. -/
theorem no_doubling_inside_same_block
    (X m n : ℕ) (T : ℝ)
    (hm : m ∈ balancedBlock X T)
    (hn : n ∈ balancedBlock X T) :
    n ≠ 2 * m := by
  have hmlo : X < m := (Finset.mem_Ioc.mp
    (Finset.mem_filter.mp hm).1).1
  have hnhi : n ≤ 2 * X := (Finset.mem_Ioc.mp
    (Finset.mem_filter.mp hn).1).2
  omega

/-- Likewise ratio-three edges are outside a single balanced shell. -/
theorem no_tripling_inside_same_block
    (X m n : ℕ) (T : ℝ)
    (hm : m ∈ balancedBlock X T)
    (hn : n ∈ balancedBlock X T) :
    n ≠ 3 * m := by
  have hmlo : X < m := (Finset.mem_Ioc.mp
    (Finset.mem_filter.mp hm).1).1
  have hnhi : n ≤ 2 * X := (Finset.mem_Ioc.mp
    (Finset.mem_filter.mp hn).1).2
  omega

/-- An original unit index cannot appear in a shell above index one. -/
theorem no_prime_star_inside_same_block
    (X m : ℕ) (T : ℝ) (hX : 1 ≤ X)
    (hm : m ∈ balancedBlock X T) :
    m ≠ 1 := by
  have hmlo : X < m := (Finset.mem_Ioc.mp
    (Finset.mem_filter.mp hm).1).1
  omega

/-- Genuine finite-bank Euler factors. Their growth is EXPLICIT if the
bank depends on X; no uniform tuned-bank estimate is asserted. -/
def bankReciprocalWeight (P : Finset ℕ) : ℝ :=
  ∏ p ∈ P, (1 - (p : ℝ)⁻¹)⁻¹

def bankSquareRootWeight (P : Finset ℕ) : ℝ :=
  ∏ p ∈ P, (1 - (Real.sqrt (p : ℝ))⁻¹)⁻¹

/-- The precise paper-proved prefix envelope, using classical
|M(x)| <= C_A*x/(1+log x)^A and P-smooth convolution.
This is a DEFINITION of its explicit value, not proof of its use. -/
def twoSidedPrefixEnvelope
    (P : Finset ℕ) (A : ℕ) (CA : ℝ) (X : ℕ) : ℝ :=
  4 * CA * (1 + (2 : ℝ)^A * bankReciprocalWeight P) *
    (X : ℝ) / (1 + Real.log (X : ℝ))^A +
      (2 : ℝ)^(7/4 : ℝ) * bankSquareRootWeight P *
        (X : ℝ)^(3/4 : ℝ)

/-- The mathematically established noncircular two-sided theorem is
recorded at the ACTUAL source type and FULL quantifiers. Its Lean proof
requires a checked Mertens input, prime-smooth convolution, causal Abel,
finite integral interchange and sparse gap upper. It is NOT supplied
as an axiom, a sorry, or an unconditional Lean theorem here. -/
def BalancedDenseLogPowerFormalizationTarget : Prop :=
  ∀ (B : PrimeBand) (β ε : ℝ),
    0 < β → 0 < ε → ε < 2 →
      ∃ C : ℝ, 0 ≤ C ∧
        ∀ X : ℕ, 2 ≤ X →
          ∀ a b : Bool,
            |taggedDenseRectangle B.primes a b
              (putnamRateGapSet ε (Real.log (2 * (X : ℝ))))
              X X (Real.log (2 * (X : ℝ)))| ≤
              C * (X : ℝ) /
                (1 + Real.log (X : ℝ))^β


/-- New analytic target for a bank whose selected primes themselves
grow with X, subject to a POLYLOGARITHMIC upper cutoff.
The paper proves its exact statement from classical Mertens and
explicit Euler-factor bounds. It is NOT yet an accepted Lean theorem.
The C constant may depend on theta, beta and epsilon, but NOT on
X or on the eligible bank P_X; both mixed orientations are included. -/
def PolylogGrowingPrimeBankDenseTarget : Prop :=
  ∀ (theta beta epsilon : ℝ),
    0 < theta → theta < 2 →
    0 < beta → 0 < epsilon → epsilon < 2 →
      ∃ C : ℝ, 0 ≤ C ∧
        ∀ X : ℕ, 2 ≤ X →
          ∀ B : PrimeBand,
            (∀ p ∈ B.primes,
              (p : ℝ) ≤
                (1 + Real.log (X : ℝ)) ^ theta) →
              ∀ a b : Bool,
                |taggedDenseRectangle B.primes a b
                  (putnamRateGapSet epsilon
                    (Real.log (2 * (X : ℝ))))
                  X X (Real.log (2 * (X : ℝ)))| ≤
                    C * (X : ℝ) /
                      (1 + Real.log (X : ℝ)) ^ beta

end GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
