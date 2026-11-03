/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / SIGNED_CANCELLATION_OPEN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusNearcriticalMovingBankQuantifier

/-!
# Actual signed Mobius/Gram gap-fiber disintegration and mask duality

Finite proofs here preserve the original taggedMoebius coefficients,
the original pickupResponseGram, diagonal exclusion, Nat.dist masks,
both ordered mixed sectors, and genuine PrimeBand definitions.

For any finite family of signed gap correlations f(d), uniform
bounds under EVERY finite deleted-distance mask imply an L1 bound
on the signed gap fibers with a factor two. The converse is the
triangle inequality. An additional signed arithmetic estimate
is still required to obtain all-positive-rate cancellation.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.SignedDistanceFibers

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.DyadicBirthHighLowLongGap
open GRWTSK.NumberTheory.Moebius.GrowingPrimeBankEulerCost
open GRWTSK.NumberTheory.Moebius.NearcriticalMovingBank

/-- All actual distance labels of the given two finite source
inventories. No artificial convolution or altered index range. -/
def distanceSupport (I J : Finset ℕ) : Finset ℕ :=
  (I.product J).image (fun mn : ℕ × ℕ => Nat.dist mn.1 mn.2)

private theorem distance_mem_support
    (I J : Finset ℕ) (m n : ℕ)
    (hm : m ∈ I) (hn : n ∈ J) :
    Nat.dist m n ∈ distanceSupport I J := by
  classical
  apply Finset.mem_image.mpr
  exact ⟨(m, n), Finset.mem_product.mpr ⟨hm, hn⟩, rfl⟩

/-- A finite masked rectangle disintegrates exactly by gap label,
for any two-variable real weight. -/
private theorem masked_rect_eq_fibers
    (I J A : Finset ℕ) (w : ℕ → ℕ → ℝ) :
    (∑ m ∈ I, ∑ n ∈ J,
      if m ≠ n ∧ Nat.dist m n ∉ A then w m n else 0) =
    ∑ d ∈ distanceSupport I J,
      if d ∉ A then
        ∑ m ∈ I, ∑ n ∈ J,
          if m ≠ n ∧ Nat.dist m n = d then w m n else 0
      else 0 := by
  classical
  let D := distanceSupport I J
  have hpoint (m n : ℕ) (hm : m ∈ I) (hn : n ∈ J) :
      (if m ≠ n ∧ Nat.dist m n ∉ A then w m n else 0) =
        ∑ d ∈ D,
          if m ≠ n ∧ Nat.dist m n ∉ A ∧ Nat.dist m n = d
          then w m n else 0 := by
    by_cases hmn : m = n
    · simp [hmn]
    · by_cases hA : Nat.dist m n ∈ A
      · simp [hmn, hA]
      · simp [hmn, hA, D, distance_mem_support I J m n hm hn,
          Finset.sum_ite_eq']
  have hswap :
      (∑ m ∈ I, ∑ n ∈ J, ∑ d ∈ D,
        if m ≠ n ∧ Nat.dist m n ∉ A ∧ Nat.dist m n = d
        then w m n else 0) =
      ∑ d ∈ D, ∑ m ∈ I, ∑ n ∈ J,
        if m ≠ n ∧ Nat.dist m n ∉ A ∧ Nat.dist m n = d
        then w m n else 0 := by
    calc
      _ = ∑ m ∈ I, ∑ d ∈ D, ∑ n ∈ J,
          if m ≠ n ∧ Nat.dist m n ∉ A ∧ Nat.dist m n = d
          then w m n else 0 := by
            apply Finset.sum_congr rfl
            intro m hm
            rw [Finset.sum_comm]
      _ = _ := by rw [Finset.sum_comm]
  have hterm (d m n : ℕ) :
      (if m ≠ n ∧ Nat.dist m n ∉ A ∧ Nat.dist m n = d
        then w m n else 0) =
      (if d ∉ A then
        (if m ≠ n ∧ Nat.dist m n = d then w m n else 0)
       else 0) := by
    by_cases hmn : m = n
    · simp [hmn]
    · by_cases hdist : Nat.dist m n = d
      · rw [hdist]
        by_cases hA : d ∈ A <;> simp [hmn, hA]
      · simp [hmn, hdist]
  calc
    _ = ∑ m ∈ I, ∑ n ∈ J, ∑ d ∈ D,
          if m ≠ n ∧ Nat.dist m n ∉ A ∧ Nat.dist m n = d
          then w m n else 0 := by
            apply Finset.sum_congr rfl
            intro m hm
            apply Finset.sum_congr rfl
            intro n hn
            exact hpoint m n hm hn
    _ = ∑ d ∈ D, ∑ m ∈ I, ∑ n ∈ J,
          if m ≠ n ∧ Nat.dist m n ∉ A ∧ Nat.dist m n = d
          then w m n else 0 := hswap
    _ = ∑ d ∈ D, ∑ m ∈ I, ∑ n ∈ J,
          if d ∉ A then
            (if m ≠ n ∧ Nat.dist m n = d then w m n else 0)
          else 0 := by
            apply Finset.sum_congr rfl
            intro d hd
            apply Finset.sum_congr rfl
            intro m hm
            apply Finset.sum_congr rfl
            intro n hn
            exact hterm d m n
    _ = ∑ d ∈ D, if d ∉ A then
          ∑ m ∈ I, ∑ n ∈ J,
            if m ≠ n ∧ Nat.dist m n = d then w m n else 0
        else 0 := by
          apply Finset.sum_congr rfl
          intro d hd
          by_cases hA : d ∉ A <;> simp [hA]

/-- Original arithmetic signs and original physical Gram at one
and only one distance d. -/
def signedDistanceFiber
    (B : PrimeBand) (a b : Bool)
    (I J : Finset ℕ) (T : ℝ) (d : ℕ) : ℝ :=
  ∑ m ∈ I, ∑ n ∈ J,
    if m ≠ n ∧ Nat.dist m n = d then
      taggedMoebius B.primes a m *
        taggedMoebius B.primes b n *
          pickupResponseGram T m n
    else 0

/-- L1 of the SIGNED distance-fiber sums, not a sum of
termwise magnitudes and not a replacement for cancellation. -/
def signedDistanceVariation
    (B : PrimeBand) (a b : Bool)
    (I J : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ d ∈ distanceSupport I J,
    |signedDistanceFiber B a b I J T d|

theorem maskedTaggedBlock_eq_fiber_sum
    (B : PrimeBand) (a b : Bool)
    (A I J : Finset ℕ) (T : ℝ) :
    maskedTaggedBlock B.primes a b A I J T =
      ∑ d ∈ distanceSupport I J,
        if d ∉ A then signedDistanceFiber B a b I J T d
        else 0 := by
  unfold maskedTaggedBlock signedDistanceFiber
  exact masked_rect_eq_fibers I J A
    (fun m n => taggedMoebius B.primes a m *
      taggedMoebius B.primes b n * pickupResponseGram T m n)

private theorem abs_mask_sum_le_variation
    (D A : Finset ℕ) (f : ℕ → ℝ) :
    |∑ d ∈ D, if d ∉ A then f d else 0| ≤
      ∑ d ∈ D, |f d| := by
  classical
  calc
    _ ≤ ∑ d ∈ D, |if d ∉ A then f d else 0| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ D, |f d| := by
      apply Finset.sum_le_sum
      intro d hd
      by_cases h : d ∈ A <;> simp [h]

/-- Genuine source estimate: every arbitrary finite gap mask is
dominated by the L1 of signed same-gap correlations. -/
theorem maskedTaggedBlock_abs_le_signedDistanceVariation
    (B : PrimeBand) (a b : Bool)
    (A I J : Finset ℕ) (T : ℝ) :
    |maskedTaggedBlock B.primes a b A I J T| ≤
      signedDistanceVariation B a b I J T := by
  rw [maskedTaggedBlock_eq_fiber_sum]
  exact abs_mask_sum_le_variation
    (distanceSupport I J) A
      (signedDistanceFiber B a b I J T)

/-- Hostile mask duality: uniform absolute cancellation under ALL
finite deleted-distance masks implies an L1 estimate for signed
gap correlations at twice the same cost. -/
private theorem variation_le_two_of_all_masks
    (D : Finset ℕ) (f : ℕ → ℝ) (C : ℝ)
    (h : ∀ A : Finset ℕ,
      |∑ d ∈ D, if d ∉ A then f d else 0| ≤ C) :
    (∑ d ∈ D, |f d|) ≤ 2 * C := by
  classical
  let N : Finset ℕ := D.filter (fun d => f d < 0)
  let P : Finset ℕ := D.filter (fun d => 0 ≤ f d)
  have hpEq :
      (∑ d ∈ D, if d ∉ N then f d else 0) =
        ∑ d ∈ D, if 0 ≤ f d then f d else 0 := by
    apply Finset.sum_congr rfl
    intro d hd
    simp only [N, Finset.mem_filter, hd, true_and, not_lt]
  have hnEq :
      (∑ d ∈ D, if d ∉ P then f d else 0) =
        ∑ d ∈ D, if f d < 0 then f d else 0 := by
    apply Finset.sum_congr rfl
    intro d hd
    simp only [P, Finset.mem_filter, hd, true_and, not_le]
  have hp :
      (∑ d ∈ D, if 0 ≤ f d then f d else 0) ≤ C := by
    have hh := h N
    rw [hpEq] at hh
    exact (le_abs_self _).trans hh
  have hn :
      - (∑ d ∈ D, if f d < 0 then f d else 0) ≤ C := by
    have hh := h P
    rw [hnEq] at hh
    exact (neg_le_abs _).trans hh
  calc
    (∑ d ∈ D, |f d|) =
        ∑ d ∈ D,
          ((if 0 ≤ f d then f d else 0) -
           (if f d < 0 then f d else 0)) := by
      apply Finset.sum_congr rfl
      intro d hd
      by_cases hnonneg : 0 ≤ f d
      · simp [hnonneg, abs_of_nonneg hnonneg, not_lt.mpr hnonneg]
      · have hneg : f d < 0 := lt_of_not_ge hnonneg
        simp [hnonneg, hneg, abs_of_neg hneg]
    _ = (∑ d ∈ D, if 0 ≤ f d then f d else 0) -
          (∑ d ∈ D, if f d < 0 then f d else 0) :=
      Finset.sum_sub_distrib
    _ ≤ 2 * C := by linarith

/-- Source-specific necessary condition for cancellation uniform
in every original Nat.dist mask, including masks chosen
adversarially from the actual signed fiber values. -/
theorem signedDistanceVariation_le_two_of_all_masks
    (B : PrimeBand) (a b : Bool) (I J : Finset ℕ)
    (T C : ℝ)
    (hA : ∀ A : Finset ℕ,
      |maskedTaggedBlock B.primes a b A I J T| ≤ C) :
    signedDistanceVariation B a b I J T ≤ 2 * C := by
  unfold signedDistanceVariation
  apply variation_le_two_of_all_masks
    (distanceSupport I J)
    (signedDistanceFiber B a b I J T) C
  intro A
  simpa only [maskedTaggedBlock_eq_fiber_sum] using hA A

end GRWTSK.NumberTheory.Moebius.SignedDistanceFibers
