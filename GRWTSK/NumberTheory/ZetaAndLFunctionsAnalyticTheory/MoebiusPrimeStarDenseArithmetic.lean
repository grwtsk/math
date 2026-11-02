/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSmoothBirthDenseSingleBudget
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOddPrimeDoublingNegativePacket
import Mathlib.NumberTheory.Chebyshev
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Actual dense prime-star signed packet, ordered complement and positive countersector

The source is unchanged CCC.pickupCross. Its literal endpoint inventory,
additive Putnam gap exclusion, integer indices, Möbius zero symbols,
both pair orientations and physical-time response Gram are preserved.

The prime-star packet is the two-orientation selection (1,p),(p,1)
for original prime p with p-1 outside the selected additive gap set.
Each actual signed entry is negative from mu(1)=1, mu(p)=-1 and the
nonnegative actual response Gram. The surviving dense signed complement
is an explicit original-edge sum, not an unconstrained residual.

The accompanying paper proves the quantitative star-credit bound
using PINNED Mathlib Chebyshev theta estimates, WITHOUT PNT/RH:
for any fixed 0<epsilon<2 and all sufficiently large T,
the selected original dense packet is <=
  -(Real.exp (-3/2)/2) * Real.exp (T/2) / T.
This full real-analytic Chebyshev/kernel count is NOT yet a Lean theorem.

A separate prime-prime original dense subpacket is positive; the paper
shows it has larger exponential order. Therefore the negative credit
alone does NOT imply complete dense signed cancellation or RH.
-/

namespace GRWTSK.NumberTheory.Moebius.PrimeStarDenseArithmetic

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.SmoothBirthDenseSingleBudget
open GRWTSK.NumberTheory.MoebiusOddPrimeDoublingNegativePacket

private def signedTerm (T : ℝ) (e : ℕ × ℕ) : ℝ :=
  moebiusReal e.1 * moebiusReal e.2 * pickupResponseGram T e.1 e.2

/-- The EXACT original ordered complement of the chosen finite
additive gap set. Neither orientation is collapsed. -/
def denseOrderedEdges (A : Finset ℕ) (T : ℝ) : Finset (ℕ × ℕ) :=
  ((endpointIndex T).product (endpointIndex T)).filter
    (fun e => e.1 ≠ e.2 ∧ Nat.dist e.1 e.2 ∉ A)

/-- Prime endpoints p belong to the ORIGINAL source inventory and
their gap p-1 from the anchor n=1 is outside A. -/
def starPrimeIndices (A : Finset ℕ) (T : ℝ) : Finset ℕ :=
  (endpointIndex T).filter
    (fun p => Nat.Prime p ∧ Nat.dist 1 p ∉ A)

private def forwardStar (p : ℕ) : ℕ × ℕ := (1, p)
private def reverseStar (p : ℕ) : ℕ × ℕ := (p, 1)

/-- BOTH original orientations, once each. -/
def starOrderedEdges (A : Finset ℕ) (T : ℝ) : Finset (ℕ × ℕ) :=
  ((starPrimeIndices A T).image forwardStar) ∪
    ((starPrimeIndices A T).image reverseStar)

/-- The actual original signed selected packet. -/
def primeStarPacket (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ e ∈ starOrderedEdges A T, signedTerm T e

/-- EVERY unmatched original dense pair remains, including rough,
both mixed orientations, matched, and prime-prime pairs. -/
def remainingDenseAfterStar (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ e ∈ denseOrderedEdges A T,
    if e ∈ starOrderedEdges A T then 0 else signedTerm T e

private theorem forwardStar_injective : Function.Injective forwardStar := by
  intro a b h
  exact congrArg Prod.snd h

private theorem reverseStar_injective : Function.Injective reverseStar := by
  intro a b h
  exact congrArg Prod.fst h

private theorem starPrimeIndices_prime (A : Finset ℕ) (T : ℝ)
    (p : ℕ) (hp : p ∈ starPrimeIndices A T) : Nat.Prime p :=
  (Finset.mem_filter.mp hp).2.1

/-- Forward (1,p) and reverse (q,1) cannot coincide because all
source-selected p,q are prime and therefore not 1. -/
private theorem star_orientations_disjoint (A : Finset ℕ) (T : ℝ) :
    Disjoint ((starPrimeIndices A T).image forwardStar)
      ((starPrimeIndices A T).image reverseStar) := by
  classical
  apply Finset.disjoint_left.mpr
  intro e he hr
  obtain ⟨p, hp, rfl⟩ := Finset.mem_image.mp he
  obtain ⟨q, hq, heq⟩ := Finset.mem_image.mp hr
  have hq1 : q = 1 := by
    have hfst := congrArg Prod.fst heq
    simp [forwardStar, reverseStar] at hfst
    omega
  exact (starPrimeIndices_prime A T q hq).ne_one hq1

/-- The selected packet is precisely a sum over each original prime
once, with both pair orientations. -/
theorem primeStarPacket_eq_prime_sum (A : Finset ℕ) (T : ℝ) :
    primeStarPacket A T =
      ∑ p ∈ starPrimeIndices A T,
        (signedTerm T (1, p) + signedTerm T (p, 1)) := by
  classical
  have hdis := star_orientations_disjoint A T
  have hf :
      (∑ e ∈ (starPrimeIndices A T).image forwardStar, signedTerm T e) =
        ∑ p ∈ starPrimeIndices A T, signedTerm T (forwardStar p) :=
    Finset.sum_image (s := starPrimeIndices A T)
      (f := forwardStar) (g := signedTerm T)
      (fun a _ b _ h => forwardStar_injective h)
  have hr :
      (∑ e ∈ (starPrimeIndices A T).image reverseStar, signedTerm T e) =
        ∑ p ∈ starPrimeIndices A T, signedTerm T (reverseStar p) :=
    Finset.sum_image (s := starPrimeIndices A T)
      (f := reverseStar) (g := signedTerm T)
      (fun a _ b _ h => reverseStar_injective h)
  unfold primeStarPacket starOrderedEdges
  rw [Finset.sum_union hdis, hf, hr, ← Finset.sum_add_distrib]
  rfl

private theorem primeStar_pair_eq_neg_two (T : ℝ) (p : ℕ)
    (hp : Nat.Prime p) :
    signedTerm T (1, p) + signedTerm T (p, 1) =
      -2 * pickupResponseGram T 1 p := by
  have h1 : moebiusReal 1 = 1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_one]
  have hpneg : moebiusReal p = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime hp]
  have hsym := pickupResponseGram_symmetric T p 1
  simp only [signedTerm] 
  rw [h1, hpneg, hsym]
  ring

/-- An exact source-specific signed credit, not a bound derived
from a nonnegative or surrogate replacement Gram. -/
theorem primeStarPacket_eq_negative_gram (A : Finset ℕ) (T : ℝ) :
    primeStarPacket A T =
      -2 * (∑ p ∈ starPrimeIndices A T, pickupResponseGram T 1 p) := by
  rw [primeStarPacket_eq_prime_sum]
  calc
    (∑ p ∈ starPrimeIndices A T,
      (signedTerm T (1, p) + signedTerm T (p, 1))) =
        ∑ p ∈ starPrimeIndices A T, -2 * pickupResponseGram T 1 p := by
          apply Finset.sum_congr rfl
          intro p hp
          exact primeStar_pair_eq_neg_two T p (starPrimeIndices_prime A T p hp)
    _ = -2 * (∑ p ∈ starPrimeIndices A T, pickupResponseGram T 1 p) := by
      rw [Finset.mul_sum]

theorem primeStarPacket_nonpos (A : Finset ℕ) (T : ℝ)
    (hT : 0 ≤ T) : primeStarPacket A T ≤ 0 := by
  rw [primeStarPacket_eq_negative_gram]
  have hnonneg :
      0 ≤ ∑ p ∈ starPrimeIndices A T, pickupResponseGram T 1 p := by
    apply Finset.sum_nonneg
    intro p hp
    exact pickupResponseGram_nonneg T hT 1 p (by omega)
      (starPrimeIndices_prime A T p hp).pos
  linarith

/-- A star prime is in the SAME original signed dense complement:
the index 1 is automatically present whenever a prime is. -/
theorem starOrderedEdges_subset_dense (A : Finset ℕ) (T : ℝ) :
    starOrderedEdges A T ⊆ denseOrderedEdges A T := by
  classical
  intro e he
  rcases Finset.mem_union.mp he with hf | hr
  · obtain ⟨p, hp, rfl⟩ := Finset.mem_image.mp hf
    have h := Finset.mem_filter.mp hp
    have hpS : p ∈ endpointIndex T := h.1
    have hpprime : Nat.Prime p := h.2.1
    have hgap : Nat.dist 1 p ∉ A := h.2.2
    have h1 : 1 ∈ endpointIndex T := by
      apply Finset.mem_Icc.mpr
      have hh := (Finset.mem_Icc.mp hpS).2
      exact ⟨le_rfl, hpprime.one_le.trans hh⟩
    have hne : (1 : ℕ) ≠ p := Ne.symm hpprime.ne_one
    simp [forwardStar, denseOrderedEdges, h1, hpS, hne, hgap]
  · obtain ⟨p, hp, rfl⟩ := Finset.mem_image.mp hr
    have h := Finset.mem_filter.mp hp
    have hpS : p ∈ endpointIndex T := h.1
    have hpprime : Nat.Prime p := h.2.1
    have hgap : Nat.dist 1 p ∉ A := h.2.2
    have h1 : 1 ∈ endpointIndex T := by
      apply Finset.mem_Icc.mpr
      have hh := (Finset.mem_Icc.mp hpS).2
      exact ⟨le_rfl, hpprime.one_le.trans hh⟩
    have hgapR : Nat.dist p 1 ∉ A := by
      simpa [Nat.dist_comm] using hgap
    simp [reverseStar, denseOrderedEdges, hpS, h1, hpprime.ne_one, hgapR]

/-- Reindex the EXACT original signed dense complement by its original
finite ordered edge inventory. -/
theorem denseLongGapSource_eq_ordered_edges (ε T : ℝ) :
    denseLongGapSource ε T =
      ∑ e ∈ denseOrderedEdges (putnamRateGapSet ε T) T, signedTerm T e := by
  rw [original_dense_eq_complement]
  unfold signedComplementDefect denseOrderedEdges signedTerm
  simp only [Finset.sum_filter, Finset.sum_product]

/-- The literal original signed remainder is the explicit dense edge
complement. This is not merely 'source minus chosen packet' as a new
free residual, and no other prime or mixed term is discarded. -/
theorem denseLongGapSource_eq_star_add_remaining (ε T : ℝ) :
    denseLongGapSource ε T =
      primeStarPacket (putnamRateGapSet ε T) T +
        remainingDenseAfterStar (putnamRateGapSet ε T) T := by
  classical
  let A := putnamRateGapSet ε T
  let D := denseOrderedEdges A T
  let E := starOrderedEdges A T
  have hsubset : E ⊆ D := starOrderedEdges_subset_dense A T
  have hstar :
      (∑ e ∈ D, if e ∈ E then signedTerm T e else 0) =
        ∑ e ∈ E, signedTerm T e := by
    calc
      (∑ e ∈ D, if e ∈ E then signedTerm T e else 0) =
          ∑ e ∈ E, if e ∈ E then signedTerm T e else 0 := by
            apply Finset.sum_subset hsubset
            intro e he hnot
            simp [hnot]
      _ = ∑ e ∈ E, signedTerm T e := by simp
  rw [denseLongGapSource_eq_ordered_edges]
  change (∑ e ∈ D, signedTerm T e) =
    (∑ e ∈ E, signedTerm T e) +
      ∑ e ∈ D, if e ∈ E then 0 else signedTerm T e
  rw [← hstar, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro e he
  by_cases h : e ∈ E <;> simp [h]

/-- Fixed REAL logarithmic band used for the Chebyshev lower bound.
The original endpoint inventory is retained even for small T. -/
def widePrimeWindow (T : ℝ) : Finset ℕ :=
  (endpointIndex T).filter
    (fun p => Nat.Prime p ∧ Real.exp (T - 7) < (p : ℝ) ∧
      (p : ℝ) ≤ Real.exp (T - 3))

/-- The hostile positive PRIME-PRIME sector, still inside the
ORIGINAL dense complement whenever its additive gap is outside A. -/
def primePrimeDenseEdges (A : Finset ℕ) (T : ℝ) : Finset (ℕ × ℕ) :=
  ((widePrimeWindow T).product (widePrimeWindow T)).filter
    (fun e => e.1 ≠ e.2 ∧ Nat.dist e.1 e.2 ∉ A)

def primePrimeDensePacket (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ e ∈ primePrimeDenseEdges A T, signedTerm T e

theorem primePrimeDenseEdges_subset_dense (A : Finset ℕ) (T : ℝ) :
    primePrimeDenseEdges A T ⊆ denseOrderedEdges A T := by
  classical
  intro e he
  obtain ⟨hpair, hgap⟩ := Finset.mem_filter.mp he
  obtain ⟨hm, hn⟩ := Finset.mem_product.mp hpair
  have hmS : e.1 ∈ endpointIndex T := (Finset.mem_filter.mp hm).1
  have hnS : e.2 ∈ endpointIndex T := (Finset.mem_filter.mp hn).1
  simp [denseOrderedEdges, hmS, hnS, hgap]

theorem primePrimeDensePacket_nonneg (A : Finset ℕ) (T : ℝ)
    (hT : 0 ≤ T) : 0 ≤ primePrimeDensePacket A T := by
  unfold primePrimeDensePacket
  apply Finset.sum_nonneg
  intro e he
  have hpair := (Finset.mem_filter.mp he).1
  obtain ⟨hm, hn⟩ := Finset.mem_product.mp hpair
  have hpm : Nat.Prime e.1 := (Finset.mem_filter.mp hm).2.1
  have hpn : Nat.Prime e.2 := (Finset.mem_filter.mp hn).2.1
  have hmu_m : moebiusReal e.1 = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime hpm]
  have hmu_n : moebiusReal e.2 = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime hpn]
  have hk := pickupResponseGram_nonneg T hT e.1 e.2 hpm.pos hpn.pos
  simpa [signedTerm, hmu_m, hmu_n] using hk

end GRWTSK.NumberTheory.Moebius.PrimeStarDenseArithmetic
