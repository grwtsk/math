/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSquarefreeTriplingNegativePacket
import Mathlib

/-!
# Actual Möbius PNT-saving on causal dyadic signed rectangles

The PNT assertion M(x)=o(x) is independently established in classical
number theory (not an RH consequence). Its exact source specialization
and the kernel's bounded-variation Abel summation remain separately
qualified Lean interfaces, NOT assumptions suppressed in a theorem.
The mathematical proof and sharp parameter loss are in the review.

This does NOT close all-positive-rate endpoint energy, nor claim a
fresh Lean proof of the external Prime Number Theorem.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusSquarefreeTriplingNegativePacket
open GRWTSK.NumberTheory.MoebiusDenseSignedGapComplementFrontier
open GRWTSK.NumberTheory.MoebiusOddSquarefreeDoublingPacket
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

namespace GRWTSK.NumberTheory.MoebiusPNTDyadicBilinearBlock

/-- Dyadic original endpoint index block, including the literal
cutoff condition n<=floor(exp T). -/
def sourceBlock (N : ℕ) (T : ℝ) : Finset ℕ :=
  (Finset.Ioc N (2 * N)).filter (fun n => n ∈ endpointIndex T)

/-- Complete signed original causal Gram rectangle, with all squareful
zeros retained and no termwise absolute value. -/
def originalRectangle (M N : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ sourceBlock M T, ∑ n ∈ sourceBlock N T,
    moebiusReal m * moebiusReal n * pickupResponseGram T m n

/-- Genuine arithmetic input from the independent prime number theorem:
the dyadic Möbius prefix discrepancy normalized by block length. -/
def dyadicMobiusDiscrepancy (N : ℕ) : ℝ :=
  (N : ℝ)⁻¹ *
    (Finset.Icc N (2 * N)).sup'
      (by
        have h : N ∈ Finset.Icc N (2 * N) := by
          simp
          omega
        exact ⟨N,h⟩)
      (fun y => |∑ n ∈ Finset.Ioc N y, moebiusReal n|)

/-- Explicit quantitative source bridge. This is an open qualified
proposition until the pinned PNT and monotone causal Abel proof are
replayed in Lean, rather than asserted as a new arithmetic axiom. -/
def OriginalMobiusPNTBilinearBridge : Prop :=
  ∀ (M N : ℕ) (T : ℝ), 1 ≤ M → 1 ≤ N → 0 ≤ T →
    |originalRectangle M N T| ≤
      4 * dyadicMobiusDiscrepancy N * T *
        Real.sqrt (M : ℝ) * Real.sqrt (N : ℝ)

/-- The independent asymptotic, in a finite-modulus form. No RH-sized
power saving is substituted for the weaker but unconditional o(N). -/
def DyadicMobiusPNTDecay : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ N₀ : ℕ, ∀ N : ℕ, N₀ ≤ N →
      dyadicMobiusDiscrepancy N ≤ ε

/-- The exact signed residual rectangle after excluding the sparse-gap
sector and the disjoint (n,2n), (n,3n) negative pair packets.
Everything not selected stays in this finite ordered remainder. -/
def residualPair (A : Finset ℕ) (m n : ℕ) : Prop :=
  m ≠ n ∧ Nat.dist m n ∉ A ∧
    ¬ (∃ k, (m = k ∧ n = 2*k) ∨ (m = 2*k ∧ n = k)) ∧
    ¬ (∃ k, (m = k ∧ n = 3*k) ∨ (m = 3*k ∧ n = k))

def residualRectangle (A : Finset ℕ) (M N : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ sourceBlock M T, ∑ n ∈ sourceBlock N T,
    if residualPair A m n then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Explicit counted-exclusion bound, to be qualified in Lean from
the 2|A| neighbor count plus one diagonal and four possible ratio-two/three neighbors
per fixed row. Uses the actual source kernel <=4T/sqrt(mn). -/
def ResidualRectangleExclusionCost : Prop :=
  ∀ (A : Finset ℕ) (M N : ℕ) (T : ℝ),
    1 ≤ M → 1 ≤ N → 0 ≤ T →
    residualRectangle A M N T ≤
      originalRectangle M N T +
        4 * T * (2 * (A.card : ℝ) + 5) *
          Real.sqrt (M : ℝ) / Real.sqrt (N : ℝ)

/-- The precise bounded signed transfer, with both independent inputs
EXPOSED. This is not an unconditional Lean theorem of PNT cancellation. -/
theorem residualRectangle_upper_of_arithmetic_and_exclusion
    (hPNT : OriginalMobiusPNTBilinearBridge)
    (hExclude : ResidualRectangleExclusionCost)
    (A : Finset ℕ) (M N : ℕ) (T : ℝ)
    (hM : 1 ≤ M) (hN : 1 ≤ N) (hT : 0 ≤ T) :
    residualRectangle A M N T ≤
      4 * dyadicMobiusDiscrepancy N * T *
          Real.sqrt (M : ℝ) * Real.sqrt (N : ℝ) +
      4 * T * (2 * (A.card : ℝ) + 5) *
          Real.sqrt (M : ℝ) / Real.sqrt (N : ℝ) := by
  have hb := hPNT M N T hM hN hT
  have he := hExclude A M N T hM hN hT
  exact le_trans he (add_le_add_right (le_abs_self _ |>.trans hb) _)

end GRWTSK.NumberTheory.MoebiusPNTDyadicBilinearBlock
