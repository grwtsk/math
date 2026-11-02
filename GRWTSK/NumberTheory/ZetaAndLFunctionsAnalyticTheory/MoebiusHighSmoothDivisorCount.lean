/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothRoughCollapse
import Mathlib

/-!
# Actual high-smooth source cardinality from the finite half-Euler moment

Every ORIGINAL n in highSmoothBlock has a genuine positive smooth
divisor d above the original cutoff Q=N*exp(-2*sqrt(log N)), N=2X.

Cover the original source filter by the union of actual integer
multiples for all such d; pinned Mathlib counts each divisor fiber
as EXACTLY floor(N/d), retaining every repeated prime power and n=1.
The divisor cover can overlap: card_biUnion_le pays the overlaps
in the safe direction and never assumes independent arithmetic signs.

The real quotient bound floor(N/d)<=N/d and a pointwise square-root
inequality valid for d>Q yield
   card(highSmoothBlock) <= sqrt(N)*exp(sqrt(log N))
       * sum_(smooth positive d<=N) 1/sqrt(d).

The published FiniteSmoothEulerMoments B is explicitly passed as an
independent proposition. The resulting theorem has the EXACT target
type of HighSmoothCountFormalizationTarget; the uniform Euler moment
itself is NOT claimed proved, nor is any all-rate signed correlation.
No replacement kernel, selected support, or adjusted prime bank.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.HighSmoothDivisorCount

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusPNTDyadicBilinearBlock
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs

/-- The actual *positive* eligible smooth divisors up to the original
unclipped dyadic endpoint, with its strict REAL cutoff. -/
def largeSmoothDivisors (B : PrimeBand) (X : ℕ) : Finset ℕ :=
  (Finset.Icc 1 (2 * X)).filter (fun d =>
    bankSmooth B.primes d ∧ nearSquareRootCut (2 * X) < (d : ℝ))

/-- Genuine positive source indices n<=N that are multiples of d,
not an invented arithmetic multiplicity. -/
def positiveMultiples (N d : ℕ) : Finset ℕ :=
  (Finset.Ioc 0 N).filter (fun n => d ∣ n)

/-- Exact pinned Mathlib arithmetic for the actual positive multiples. -/
theorem positiveMultiples_card (N d : ℕ) :
    (positiveMultiples N d).card = N / d := by
  change ((Finset.Ioc 0 N).filter (fun n => d ∣ n)).card = N / d
  exact Nat.Ioc_filter_dvd_card_eq_div N d

/-- Every actual high-smooth source index is covered by at least one
of the ORIGINAL smooth divisor fibers. A potentially clipped
balancedBlock is never enlarged by equality; only subset is used. -/
theorem highSmooth_subset_divisor_union
    (B : PrimeBand) (X : ℕ) (T : ℝ) :
    highSmoothBlock B X T ⊆
      (largeSmoothDivisors B X).biUnion
        (fun d => positiveMultiples (2 * X) d) := by
  classical
  intro n hn
  obtain ⟨hnBlock, ⟨d, hdn, hdSmooth, hdLarge⟩⟩ :
      n ∈ balancedBlock X T ∧ hasNearMaximalSmoothDivisor B X n :=
    Finset.mem_filter.mp hn
  have hnIoc : n ∈ Finset.Ioc X (2 * X) := by
    have h := hnBlock
    change n ∈ (Finset.Ioc X (2 * X)).filter
      (fun k => k ∈ endpointIndex T) at h
    exact (Finset.mem_filter.mp h).1
  have hnBounds := Finset.mem_Ioc.mp hnIoc
  have hnPos : 0 < n := by omega
  have hdRealPos : (0 : ℝ) < (d : ℝ) :=
    (nearSquareRootCut_nonneg (2 * X)).trans_lt hdLarge
  have hdPos : 0 < d := by exact_mod_cast hdRealPos
  have hdLe : d ≤ 2 * X :=
    (Nat.le_of_dvd hnPos hdn).trans hnBounds.2
  apply Finset.mem_biUnion.mpr
  refine ⟨d, ?_, ?_⟩
  · exact Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr ⟨hdPos, hdLe⟩, ⟨hdSmooth, hdLarge⟩⟩
  · exact Finset.mem_filter.mpr
      ⟨Finset.mem_Ioc.mpr ⟨hnPos, hnBounds.2⟩, hdn⟩

/-- Unconditional finite *integer* counting consequence. Every
multiple is counted at most once within its own divisor fiber, and
overlap between distinct fibers is only an upper allowance. -/
theorem highSmooth_card_le_sum_quotients
    (B : PrimeBand) (X : ℕ) (T : ℝ) :
    (highSmoothBlock B X T).card ≤
      ∑ d ∈ largeSmoothDivisors B X, (2 * X) / d := by
  classical
  calc
    (highSmoothBlock B X T).card ≤
        ((largeSmoothDivisors B X).biUnion
          (fun d => positiveMultiples (2 * X) d)).card :=
      Finset.card_le_card (highSmooth_subset_divisor_union B X T)
    _ ≤ ∑ d ∈ largeSmoothDivisors B X,
          (positiveMultiples (2 * X) d).card :=
      Finset.card_biUnion_le
    _ = ∑ d ∈ largeSmoothDivisors B X, (2 * X) / d := by
      apply Finset.sum_congr rfl
      intro d hd
      exact positiveMultiples_card (2 * X) d

/-- The REAL original quotient N/d is bounded by the true
half-moment kernel sqrt(N)*exp(sqrt(log N))/sqrt(d), for every
actual smooth divisor d satisfying the exact strict real cutoff.
This is elementary real algebra and does not use any Möbius signs. -/
private theorem real_quotient_le_sqrt_exp_halfweight
    (N d : ℕ) (hN : 0 < N)
    (hd : nearSquareRootCut N < (d : ℝ)) :
    (N : ℝ) / (d : ℝ) ≤
      Real.sqrt (N : ℝ) *
        Real.exp (Real.sqrt (Real.log (N : ℝ))) *
          (Real.sqrt (d : ℝ))⁻¹ := by
  let s : ℝ := Real.sqrt (Real.log (N : ℝ))
  let E : ℝ := Real.exp s
  have hEpos : 0 < E := Real.exp_pos _
  have hEne : E ≠ 0 := ne_of_gt hEpos
  have hExp : Real.exp (-2 * s) = E⁻¹ ^ 2 := by
    dsimp [E]
    rw [show (-2 : ℝ) * s = -s + -s by ring,
      Real.exp_add, Real.exp_neg]
    ring
  have hQmul : nearSquareRootCut N * E ^ 2 = (N : ℝ) := by
    change (N : ℝ) * Real.exp (-2 * s) * E ^ 2 = (N : ℝ)
    rw [hExp]
    field_simp [hEne]
  have hdpos : (0 : ℝ) < (d : ℝ) :=
    (nearSquareRootCut_nonneg N).trans_lt hd
  have hScaled : (N : ℝ) ≤ (d : ℝ) * E ^ 2 := by
    calc
      (N : ℝ) = nearSquareRootCut N * E ^ 2 := hQmul.symm
      _ ≤ (d : ℝ) * E ^ 2 :=
        mul_le_mul_of_nonneg_right hd.le (sq_nonneg _)
  have hNroot : Real.sqrt (N : ℝ) ^ 2 = (N : ℝ) :=
    Real.sq_sqrt (Nat.cast_nonneg N)
  have hDroot : Real.sqrt (d : ℝ) ^ 2 = (d : ℝ) :=
    Real.sq_sqrt hdpos.le
  have hSqScaled :
      (Real.sqrt (N : ℝ)) ^ 2 ≤
        (E * Real.sqrt (d : ℝ)) ^ 2 := by
    rw [hNroot, mul_pow, hDroot]
    nlinarith [hScaled]
  have hrootBound :
      Real.sqrt (N : ℝ) ≤ E * Real.sqrt (d : ℝ) :=
    (sq_le_sq₀ (Real.sqrt_nonneg _)
      (mul_nonneg hEpos.le (Real.sqrt_nonneg _))).mp hSqScaled
  have hCross :
      (N : ℝ) * Real.sqrt (d : ℝ) ≤
        (Real.sqrt (N : ℝ) * E) * (d : ℝ) := by
    calc
      (N : ℝ) * Real.sqrt (d : ℝ) =
          Real.sqrt (N : ℝ) *
            (Real.sqrt (N : ℝ) * Real.sqrt (d : ℝ)) := by
        rw [← hNroot]
        ring
      _ ≤ Real.sqrt (N : ℝ) *
            ((E * Real.sqrt (d : ℝ)) * Real.sqrt (d : ℝ)) :=
        mul_le_mul_of_nonneg_left
          (mul_le_mul_of_nonneg_right hrootBound (Real.sqrt_nonneg _))
          (Real.sqrt_nonneg _)
      _ = (Real.sqrt (N : ℝ) * E) * (d : ℝ) := by
        rw [← hDroot]
        ring
  have hRatio :
      (N : ℝ) / (d : ℝ) ≤
        (Real.sqrt (N : ℝ) * E) / Real.sqrt (d : ℝ) :=
    (div_le_div_iff₀ hdpos (Real.sqrt_pos.2 hdpos)).2 hCross
  simpa [E, s, div_eq_mul_inv, mul_assoc] using hRatio

/-- The actual finite smooth half-moment dominates the restricted
large-divisor sum with NO independent arithmetic hypothesis. -/
theorem largeSmooth_halfMoment_le
    (B : PrimeBand) (X : ℕ) (hX : 1 ≤ X)
    (hMoments : FiniteSmoothEulerMoments B) :
    (∑ d ∈ largeSmoothDivisors B X,
       (Real.sqrt (d : ℝ))⁻¹) ≤
      bankSquareRootWeight B.primes := by
  let D : Finset ℕ := largeSmoothDivisors B X
  have hSub : D ⊆ Finset.Icc 1 (2 * X) :=
    Finset.filter_subset _ _
  calc
    (∑ d ∈ D, (Real.sqrt (d : ℝ))⁻¹) =
        ∑ d ∈ D,
          if bankSmooth B.primes d then
            (Real.sqrt (d : ℝ))⁻¹ else 0 := by
      apply Finset.sum_congr rfl
      intro d hd
      simp [(Finset.mem_filter.mp hd).2.1]
    _ ≤ ∑ d ∈ Finset.Icc 1 (2 * X),
          if bankSmooth B.primes d then
            (Real.sqrt (d : ℝ))⁻¹ else 0 := by
      apply Finset.sum_le_sum_of_subset_of_nonneg hSub
      intro d hdI hdNot
      split_ifs <;> positivity
    _ ≤ bankSquareRootWeight B.primes := (hMoments (2 * X) (by omega)).2

/-- Actual complete high-smooth cardinality bound, conditional ONLY
on the separately named finite smooth half-Euler moments. This is
the exact numerical statement of the old high-cardinality PROP,
without enlarging the source block or changing its real cutoff. -/
theorem highSmooth_card_le_of_finiteMoments
    (B : PrimeBand) (X : ℕ) (T : ℝ)
    (hX : 1 ≤ X) (hMoments : FiniteSmoothEulerMoments B) :
    ((highSmoothBlock B X T).card : ℝ) ≤
      Real.sqrt (2 * (X : ℝ)) *
        Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) *
          bankSquareRootWeight B.primes := by
  let N : ℕ := 2 * X
  let D : Finset ℕ := largeSmoothDivisors B X
  have hN : 0 < N := by dsimp [N]; omega
  have hCount := highSmooth_card_le_sum_quotients B X T
  have hMass := largeSmooth_halfMoment_le B X hX hMoments
  have hFactor :
      0 ≤ Real.sqrt (N : ℝ) *
        Real.exp (Real.sqrt (Real.log (N : ℝ))) :=
    mul_nonneg (Real.sqrt_nonneg _) (Real.exp_pos _).le
  have hEstimate :
      ((highSmoothBlock B X T).card : ℝ) ≤
        (Real.sqrt (N : ℝ) *
          Real.exp (Real.sqrt (Real.log (N : ℝ)))) *
            bankSquareRootWeight B.primes := by
    calc
      ((highSmoothBlock B X T).card : ℝ) ≤
          ∑ d ∈ D, (((N / d : ℕ) : ℝ)) := by
        exact_mod_cast hCount
      _ ≤ ∑ d ∈ D, (N : ℝ) / (d : ℝ) := by
        apply Finset.sum_le_sum
        intro d hd
        exact Nat.cast_div_le
      _ ≤ ∑ d ∈ D,
          (Real.sqrt (N : ℝ) *
            Real.exp (Real.sqrt (Real.log (N : ℝ)))) *
              (Real.sqrt (d : ℝ))⁻¹ := by
        apply Finset.sum_le_sum
        intro d hd
        exact real_quotient_le_sqrt_exp_halfweight N d hN
          (Finset.mem_filter.mp hd).2.2
      _ = (Real.sqrt (N : ℝ) *
          Real.exp (Real.sqrt (Real.log (N : ℝ)))) *
            (∑ d ∈ D, (Real.sqrt (d : ℝ))⁻¹) := by
        rw [Finset.mul_sum]
      _ ≤ (Real.sqrt (N : ℝ) *
          Real.exp (Real.sqrt (Real.log (N : ℝ)))) *
            bankSquareRootWeight B.primes :=
        mul_le_mul_of_nonneg_left hMass hFactor
  simpa only [N, Nat.cast_mul, Nat.cast_ofNat, mul_assoc] using hEstimate

/-- The old HighSmoothCountFormalizationTarget now has an explicit
candidate proof when the independently exposed finite Euler moments
are provided for every finite genuine-prime bank. No analytic premise
is silently declared true. -/
theorem highSmoothCountTarget_of_finiteMoments
    (hMoments : ∀ B : PrimeBand, FiniteSmoothEulerMoments B) :
    HighSmoothCountFormalizationTarget := by
  intro B X hX
  exact highSmooth_card_le_of_finiteMoments B X
    (Real.log (2 * (X : ℝ))) hX (hMoments B)

end GRWTSK.NumberTheory.Moebius.HighSmoothDivisorCount
