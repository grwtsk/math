/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDenseSignedGapComplementFrontier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointLeastPrimeTypeII
import Mathlib

/-!
# Exact Möbius-specific zero packet in the dyadic dense signed complement

Every original ordered pair with a squareful endpoint has a zero
Möbius factor. The complete dense signed complement is therefore
exactly the squarefree-to-squarefree packet. No absolute values,
diagonal changes, parameter losses, or replacement arithmetic source
are introduced. This does NOT bound the surviving signed packet.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusEndpointSparseGapAllRate
open GRWTSK.NumberTheory.MoebiusDenseSignedGapComplementFrontier
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

namespace GRWTSK.NumberTheory.MoebiusDenseSquarefulZeroPacket

/-- The squarefree filter of the literal original endpoint inventory. -/
def squarefreeEndpointIndex (T : ℝ) : Finset ℕ :=
  (endpointIndex T).filter Squarefree

/-- The actual Möbius coefficient is zero at every nonsquarefree
index, including indices with any repeated prime power. -/
theorem moebiusReal_eq_zero_of_not_squarefree
    (n : ℕ) (hn : ¬Squarefree n) : moebiusReal n = 0 := by
  simp [moebiusReal, ArithmeticFunction.moebius_eq_zero_of_not_squarefree hn]

/-- An endpoint pair vanishes if either endpoint has a repeated prime.
This is source-specific exact zero, not cancellation by independence. -/
theorem endpoint_pair_zero_of_squareful
    (m n : ℕ) (T : ℝ)
    (h : ¬Squarefree m ∨ ¬Squarefree n) :
    moebiusReal m * moebiusReal n * pickupResponseGram T m n = 0 := by
  rcases h with hm | hn
  · rw [moebiusReal_eq_zero_of_not_squarefree m hm]
    ring
  · rw [moebiusReal_eq_zero_of_not_squarefree n hn]
    ring

/-- The dense distance predicate excludes exactly the dyadic sparse
distance set, while preserving both orientations and the original
fixed endpoint inventory. -/
def denseGapPair (A : Finset ℕ) (m n : ℕ) : Prop :=
  m ≠ n ∧ Nat.dist m n ∉ A

/-- Complete ordered nonsquarefree packet inside the dense complement.
All original coefficients and actual Gram products remain literal. -/
def denseSquarefulCross (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if denseGapPair A m n ∧ (¬Squarefree m ∨ ¬Squarefree n) then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- The identified dense squareful endpoint packet vanishes EXACTLY
for any gap set, so in particular for the fixed dyadic schedule. -/
theorem denseSquarefulCross_eq_zero (A : Finset ℕ) (T : ℝ) :
    denseSquarefulCross A T = 0 := by
  unfold denseSquarefulCross
  apply Finset.sum_eq_zero
  intro m hm
  apply Finset.sum_eq_zero
  intro n hn
  split_ifs with h
  · exact endpoint_pair_zero_of_squareful m n T h.2
  · rfl

/-- Complete signed squarefree-to-squarefree dense packet.
The surviving correlations are NOT claimed small. -/
def denseSquarefreeCross (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ squarefreeEndpointIndex T, ∑ n ∈ squarefreeEndpointIndex T,
    if denseGapPair A m n then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- A source-exact reduction of the existing dense signed complement
to the squarefree subinventory. Uses finite filtering only; neither
diagonal nor sparse packet is modified. -/
theorem signedGapComplement_eq_squarefreeCross
    (A : Finset ℕ) (T : ℝ) :
    signedGapComplement A T = denseSquarefreeCross A T := by
  classical
  have hfull :
      signedGapComplement A T =
        ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          if denseGapPair A m n then
            moebiusReal m * moebiusReal n * pickupResponseGram T m n
          else 0 := by
    unfold signedGapComplement pickupCross endpointGapSetCross denseGapPair
    rw [← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro m hm
    rw [← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro n hn
    by_cases hneq : m ≠ n
    · by_cases hgap : Nat.dist m n ∈ A <;> simp [hneq, hgap]
    · simp [hneq]
  rw [hfull]
  unfold denseSquarefreeCross squarefreeEndpointIndex
  have houter :
      (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        if denseGapPair A m n then
          moebiusReal m * moebiusReal n * pickupResponseGram T m n
        else 0) =
      (∑ m ∈ (endpointIndex T).filter Squarefree,
        ∑ n ∈ (endpointIndex T).filter Squarefree,
          if denseGapPair A m n then
            moebiusReal m * moebiusReal n * pickupResponseGram T m n
          else 0) := by
    rw [← Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro m hm
    by_cases hmSq : Squarefree m
    · simp only [if_pos hmSq]
      rw [← Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro n hn
      by_cases hnSq : Squarefree n
      · simp only [if_pos hnSq]
      · simp [hnSq, moebiusReal_eq_zero_of_not_squarefree n hnSq]
    · simp [hmSq, moebiusReal_eq_zero_of_not_squarefree m hmSq]
  exact houter

/-- The fixed dyadic choice changes no pointwise identity or sign. -/
theorem dyadic_signedComplement_eq_squarefreeCross (T : ℝ) :
    signedGapComplement (dyadicSparseGapSchedule T) T =
      denseSquarefreeCross (dyadicSparseGapSchedule T) T :=
  signedGapComplement_eq_squarefreeCross _ _

end GRWTSK.NumberTheory.MoebiusDenseSquarefulZeroPacket
