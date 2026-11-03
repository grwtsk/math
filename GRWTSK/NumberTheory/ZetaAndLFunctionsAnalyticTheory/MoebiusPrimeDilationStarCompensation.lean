/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimeDilationOutsideRateObstruction
import GRWTSK.MeasureAndIntegration.FiniteResponseSum
import Mathlib

/-!
# Prime-dilation star compensation in the original Möbius causal Gram

The maintained prime-dilation source proves that every original edge
`q ↔ p*q`, with `p` prime and `p ∤ q`, has negative Möbius coefficient
product.  Removing all such edges creates a large positive complement.
This file localizes that forced compensation before any global sector bound.

Fix one positive parent `q` and a finite family `P` of primes not dividing q.
On the original response vectors, form the complete Gram square of the star

  {q} ∪ {p*q : p ∈ P}.

Its exact block decomposition is

  starFullGram = starDiagonal - starCredit + starChildTypeII.

The left side is nonnegative because it is the physical-time integral of a
literal squared finite response sum.  Consequently

  starChildTypeII ≥ starCredit - starDiagonal.

When every star vertex lies in the original endpoint inventory, the star
diagonal is a sub-sum of the already proved original diagonal, hence

  starChildTypeII ≥ starCredit - 2*T^2.

For q=1 and terminal primes, the companion review combines this finite theorem
with the existing classical-PNT prime-star credit lower bound.  It follows in
ordinary mathematics that a positive prime-prime Type-II packet is itself of
order at least exp(T/2)/T up to the quadratic diagonal.  Therefore neither the
negative prime star nor the positive child packet may be required to be
subexponential separately; the source-correct target is their signed balance.

The nonseparable point-spectrum interval attached to q ↦ p*q is a distinct
spectral representation.  Its coordinate eigenvectors are orthogonal, whereas
the original causal responses have positive cross Gram after both births.
No source-preserving intertwiner or RH estimate is claimed here.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.NumberTheory.Moebius.PrimeDilationStarCompensation

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusOddPrimeDoublingNegativePacket
open GRWTSK.NumberTheory.Moebius.DenseReducedPrimeDilationCancellation

classical

/-- A finite restriction of the unchanged Möbius response source. -/
def restrictedWaveform (S : Finset ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ S, moebiusReal n * pickupResponse n u

/-- Physical-time square energy of a finite restricted source. -/
def restrictedEnergy (S : Finset ℕ) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, restrictedWaveform S u ^ 2

/-- Complete ordered Gram of the same finite restricted source. -/
def restrictedFullGram (S : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ S, ∑ n ∈ S,
    moebiusReal m * moebiusReal n * pickupResponseGram T m n

/-- Finite Fubini for an arbitrary positive-index source inventory.
This is the restricted analogue of `pickupEnergy_eq_full_gram`. -/
theorem restrictedEnergy_eq_fullGram
    (S : Finset ℕ) (T : ℝ)
    (hpos : ∀ n ∈ S, 1 ≤ n) :
    restrictedEnergy S T = restrictedFullGram S T := by
  have hprod (m : ℕ) (hm : m ∈ S) (n : ℕ) (hn : n ∈ S) :
      Continuous (fun u => moebiusReal m * moebiusReal n *
        (pickupResponse m u * pickupResponse n u)) := by
    exact continuous_const.mul
      ((pickupResponse_continuous (hpos m hm)).mul
        (pickupResponse_continuous (hpos n hn)))
  unfold restrictedEnergy restrictedWaveform
  calc
    _ = ∫ u in (0 : ℝ)..T, ∑ m ∈ S, ∑ n ∈ S,
        moebiusReal m * moebiusReal n *
          (pickupResponse m u * pickupResponse n u) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [pow_two, Finset.sum_mul_sum]
      apply Finset.sum_congr rfl
      intro m hm
      apply Finset.sum_congr rfl
      intro n hn
      ring
    _ = restrictedFullGram S T := by
      rw [intervalIntegral.integral_finsetSum]
      · unfold restrictedFullGram pickupResponseGram
        apply Finset.sum_congr rfl
        intro m hm
        rw [intervalIntegral.integral_finsetSum]
        · apply Finset.sum_congr rfl
          intro n hn
          exact intervalIntegral.integral_const_mul _ _
        · intro n hn
          exact (hprod m hm n hn).intervalIntegrable 0 T
      · intro m hm
        exact (continuous_finsetSum S
          (fun n hn => hprod m hm n hn)).intervalIntegrable 0 T

/-- Every finite restricted source Gram is nonnegative at a nonnegative
physical-time horizon. -/
theorem restrictedFullGram_nonneg
    (S : Finset ℕ) {T : ℝ} (hT : 0 ≤ T)
    (hpos : ∀ n ∈ S, 1 ≤ n) :
    0 ≤ restrictedFullGram S T := by
  rw [← restrictedEnergy_eq_fullGram S T hpos]
  unfold restrictedEnergy
  exact intervalIntegral.integral_nonneg_of_forall hT
    (fun u => sq_nonneg (restrictedWaveform S u))

/-- One positive parent and finitely many prime-dilation children. -/
def starVertices (P : Finset ℕ) (q : ℕ) : Finset ℕ :=
  insert q (P.image fun p => p * q)

/-- Source hypotheses for a genuine prime-dilation star. -/
def IsPrimeDilationStar (P : Finset ℕ) (q : ℕ) : Prop :=
  0 < q ∧ ∀ p ∈ P, Nat.Prime p ∧ ¬p ∣ q

/-- Original diagonal on the star, kept as a double-sum block so the complete
ordered source partition is literal. -/
def starDiagonal (P : Finset ℕ) (q : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ starVertices P q, ∑ n ∈ starVertices P q,
    if m = n then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Both original parent-child orientations. -/
def starParentChildPacket (P : Finset ℕ) (q : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ starVertices P q, ∑ n ∈ starVertices P q,
    if m ≠ n ∧ (m = q ∨ n = q) then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Complete ordered packet between distinct prime-dilation children. -/
def starChildTypeIIPacket (P : Finset ℕ) (q : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ starVertices P q, ∑ n ∈ starVertices P q,
    if m ≠ n ∧ m ≠ q ∧ n ≠ q then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Positive sign credit of the negative parent-child packet. -/
def starCredit (P : Finset ℕ) (q : ℕ) (T : ℝ) : ℝ :=
  -starParentChildPacket P q T

lemma mem_starVertices_of_ne_parent
    {P : Finset ℕ} {q n : ℕ}
    (hn : n ∈ starVertices P q) (hnq : n ≠ q) :
    ∃ p ∈ P, n = p * q := by
  rw [starVertices, Finset.mem_insert] at hn
  rcases hn with h | h
  · exact False.elim (hnq h)
  · rcases Finset.mem_image.mp h with ⟨p, hp, rfl⟩
    exact ⟨p, hp, rfl⟩

lemma starVertices_positive
    {P : Finset ℕ} {q n : ℕ}
    (hstar : IsPrimeDilationStar P q)
    (hn : n ∈ starVertices P q) : 0 < n := by
  by_cases hnq : n = q
  · simpa [hnq] using hstar.1
  · obtain ⟨p, hp, rfl⟩ := mem_starVertices_of_ne_parent hn hnq
    exact mul_pos (hstar.2 p hp).1.pos hstar.1

lemma starChild_coefficient
    {P : Finset ℕ} {q n : ℕ}
    (hstar : IsPrimeDilationStar P q)
    (hn : n ∈ starVertices P q) (hnq : n ≠ q) :
    moebiusReal n = -moebiusReal q := by
  obtain ⟨p, hp, rfl⟩ := mem_starVertices_of_ne_parent hn hnq
  exact moebiusReal_prime_mul_of_not_dvd p q
    (hstar.2 p hp).1 (hstar.2 p hp).2

/-- Exact diagonal/parent-child/child-child partition of the finite star Gram. -/
theorem restrictedFullGram_star_partition
    (P : Finset ℕ) (q : ℕ) (T : ℝ) :
    restrictedFullGram (starVertices P q) T =
      starDiagonal P q T + starParentChildPacket P q T +
        starChildTypeIIPacket P q T := by
  unfold restrictedFullGram starDiagonal starParentChildPacket
    starChildTypeIIPacket
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · by_cases hmq : m = q
    · simp [hmn, hmq]
    · by_cases hnq : n = q
      · simp [hmn, hmq, hnq]
      · simp [hmn, hmq, hnq]

/-- The double-sum diagonal is exactly the ordinary star diagonal sub-sum. -/
theorem starDiagonal_eq_single_sum
    (P : Finset ℕ) (q : ℕ) (T : ℝ) :
    starDiagonal P q T =
      ∑ n ∈ starVertices P q,
        moebiusReal n ^ 2 * pickupResponseGram T n n := by
  unfold starDiagonal
  apply Finset.sum_congr rfl
  intro m hm
  simp [hm, pow_two]

/-- Every parent-child source term is nonpositive. -/
theorem starParentChildPacket_nonpos
    (P : Finset ℕ) (q : ℕ) {T : ℝ}
    (hstar : IsPrimeDilationStar P q) (hT : 0 ≤ T) :
    starParentChildPacket P q T ≤ 0 := by
  unfold starParentChildPacket
  apply Finset.sum_nonpos
  intro m hm
  apply Finset.sum_nonpos
  intro n hn
  by_cases hedge : m ≠ n ∧ (m = q ∨ n = q)
  · simp only [if_pos hedge]
    rcases hedge.2 with hmq | hnq
    · subst m
      have hnparent : n ≠ q := by simpa using hedge.1.symm
      have hcoeff := starChild_coefficient hstar hn hnparent
      have hgram := pickupResponseGram_nonneg T hT q n hstar.1
        (starVertices_positive hstar hn)
      rw [hcoeff]
      exact mul_nonpos_of_nonpos_of_nonneg
        (by nlinarith [sq_nonneg (moebiusReal q)]) hgram
    · subst n
      have hmparent : m ≠ q := hedge.1
      have hcoeff := starChild_coefficient hstar hm hmparent
      have hgram := pickupResponseGram_nonneg T hT m q
        (starVertices_positive hstar hm) hstar.1
      rw [hcoeff]
      exact mul_nonpos_of_nonpos_of_nonneg
        (by nlinarith [sq_nonneg (moebiusReal q)]) hgram
  · simp [hedge]

/-- The child-child Type-II packet is termwise nonnegative: all children have
the same actual Möbius sign `-mu(q)`. -/
theorem starChildTypeIIPacket_nonneg
    (P : Finset ℕ) (q : ℕ) {T : ℝ}
    (hstar : IsPrimeDilationStar P q) (hT : 0 ≤ T) :
    0 ≤ starChildTypeIIPacket P q T := by
  unfold starChildTypeIIPacket
  apply Finset.sum_nonneg
  intro m hm
  apply Finset.sum_nonneg
  intro n hn
  by_cases hedge : m ≠ n ∧ m ≠ q ∧ n ≠ q
  · simp only [if_pos hedge]
    have hmcoeff := starChild_coefficient hstar hm hedge.2.1
    have hncoeff := starChild_coefficient hstar hn hedge.2.2
    have hgram := pickupResponseGram_nonneg T hT m n
      (starVertices_positive hstar hm) (starVertices_positive hstar hn)
    rw [hmcoeff, hncoeff]
    have hcoeffprod :
        (-moebiusReal q) * (-moebiusReal q) =
          (moebiusReal q) ^ 2 := by ring
    rw [hcoeffprod]
    exact mul_nonneg (sq_nonneg (moebiusReal q)) hgram
  · simp [hedge]

/-- The sign credit is nonnegative. -/
theorem starCredit_nonneg
    (P : Finset ℕ) (q : ℕ) {T : ℝ}
    (hstar : IsPrimeDilationStar P q) (hT : 0 ≤ T) :
    0 ≤ starCredit P q T := by
  exact neg_nonneg.mpr (starParentChildPacket_nonpos P q hstar hT)

/-- The exact local star-square inequality.  The positive child-child Type-II
packet must compensate the negative parent-child credit up to the literal star
diagonal. -/
theorem starChildTypeII_ge_credit_sub_diagonal
    (P : Finset ℕ) (q : ℕ) {T : ℝ}
    (hstar : IsPrimeDilationStar P q) (hT : 0 ≤ T) :
    starCredit P q T - starDiagonal P q T ≤
      starChildTypeIIPacket P q T := by
  have hpos : ∀ n ∈ starVertices P q, 1 ≤ n := by
    intro n hn
    have hnpos := starVertices_positive hstar hn
    omega
  have hgram := restrictedFullGram_nonneg
    (starVertices P q) hT hpos
  have hsplit := restrictedFullGram_star_partition P q T
  unfold starCredit
  linarith

/-- If the star is active in the original endpoint inventory, its diagonal is
a sub-sum of the original diagonal. -/
theorem starDiagonal_le_pickupDiagonal
    (P : Finset ℕ) (q : ℕ) {T : ℝ}
    (hstar : IsPrimeDilationStar P q) (hT : 0 ≤ T)
    (hactive : starVertices P q ⊆ endpointIndex T) :
    starDiagonal P q T ≤ pickupDiagonal T := by
  rw [starDiagonal_eq_single_sum]
  unfold pickupDiagonal endpointIndex
  apply Finset.sum_le_sum_of_subset_of_nonneg hactive
  intro n hnEndpoint hnNotStar
  exact mul_nonneg (sq_nonneg (moebiusReal n))
    (pickupResponseGram_diag_nonneg hT n)

/-- Main unconditional finite consequence in the unchanged original source.
No global sparse-sector payment is needed: compensation is localized in one
prime-dilation star. -/
theorem starChildTypeII_ge_credit_sub_quadratic
    (P : Finset ℕ) (q : ℕ) {T : ℝ}
    (hstar : IsPrimeDilationStar P q) (hT : 0 ≤ T)
    (hactive : starVertices P q ⊆ endpointIndex T) :
    starCredit P q T - 2 * T ^ 2 ≤
      starChildTypeIIPacket P q T := by
  have hlocal := starChildTypeII_ge_credit_sub_diagonal P q hstar hT
  have hdiag := starDiagonal_le_pickupDiagonal P q hstar hT hactive
  have hglobal := (pickupDiagonal_quadratic_bound hT).2
  linarith

/-- A visible finite transfer: any independently proved lower bound for the
actual star credit immediately yields a child-child Type-II lower bound with
only the original quadratic diagonal loss. -/
theorem starChildTypeII_ge_of_credit_lower
    (P : Finset ℕ) (q : ℕ) {T B : ℝ}
    (hstar : IsPrimeDilationStar P q) (hT : 0 ≤ T)
    (hactive : starVertices P q ⊆ endpointIndex T)
    (hcredit : B ≤ starCredit P q T) :
    B - 2 * T ^ 2 ≤ starChildTypeIIPacket P q T := by
  have hlocal :=
    starChildTypeII_ge_credit_sub_quadratic P q hstar hT hactive
  linarith

end GRWTSK.NumberTheory.Moebius.PrimeDilationStarCompensation
