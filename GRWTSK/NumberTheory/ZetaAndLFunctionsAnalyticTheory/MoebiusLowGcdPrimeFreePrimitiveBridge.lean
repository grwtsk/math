/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction and original arithmetic source: grwtsk contributors.
Lean source-proof-candidate integration assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLowGcdPrimeDilationNegative
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalGcdTimeShift
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusIncomparableGcdLcm
import Mathlib

/-!
# Genuine gcd/lcm and causal-time-shift adapters for the prime-free core

The remaining signed original low-GCD dense core is disjoint from:
1. selected small additive distances,
2. selected integer-multiple ratios outside them,
3. the original large-GCD sector outside those,
4. the nonpositive large-prime dilation packet inside the low-GCD core.

A surviving ORIGINAL ordered source entry (m,n) is never reindexed by
an artificial residue or squarefree model. The exact original
Möbius sign product has the unconditional arithmetic identity
  mu(m)*mu(n) = mu(gcd m n)*mu(lcm m n),
including the true zero contributions.

For any independently supplied squarefree gcd factorization
m=g*a, n=g*b, the existing actual causal identity says
  sourceKernel(T,g*a,g*b) =
    g^(-1)*mu(a)*mu(b)*pickupResponseGram(T-log g,a,b).
The reduced Gram is at the TRUE shifted horizon; this is not
pickupResponseGram(T,a,b) and not a new analytic estimate.

This module transports that identity into the exact surviving prime-free
low-GCD dense pair mask, without pretending the full (m,n) -> (g,a,b)
sum has been reindexed. Full source-exact triple reindexing, primitive
bilinear cancellation, and RH-strength growth remain OPEN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.LowGcdPrimeFreePrimitiveBridge

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint
open GRWTSK.NumberTheory.Moebius.SparseHighGcdDenseCore
open GRWTSK.NumberTheory.Moebius.DenseCoreRowControlVariate
open GRWTSK.NumberTheory.Moebius.LowGcdPrimeDilationNegative
open GRWTSK.NumberTheory.Moebius.DenseReducedPrimeDilationCancellation
open GRWTSK.NumberTheory.Moebius.CausalGcdTimeShift
open GRWTSK.NumberTheory.Moebius.IncomparableGcdLcm

/-- The full ORIGINAL mask, not just the Möbius sign part. -/
def IsOtherLowGcdPair (Q : Finset ℕ) (T : ℝ)
    (m n : ℕ) : Prop :=
  ¬ IsPrimeDilation m n ∧
    Nat.gcd m n ≤ fixedGcdCutoff T ∧
      m ≠ n ∧ Nat.dist m n ∉ Q ∧
        ¬ (∃ q ∈ Q, n = q * m ∨ m = q * n)

/-- All nested original selector layers are equivalent to a single
source-visible predicate; this does NOT eliminate any source term. -/
theorem otherLowGcdPair_eq_originalMask
    (Q : Finset ℕ) (T : ℝ) (m n : ℕ) :
    otherLowGcdPair Q T m n =
      if IsOtherLowGcdPair Q T m n then
        sourceKernel T m n else 0 := by
  classical
  by_cases hp : IsPrimeDilation m n
  · simp [otherLowGcdPair, IsOtherLowGcdPair, hp]
  · by_cases hg : Nat.gcd m n ≤ fixedGcdCutoff T
    · by_cases hc : m ≠ n ∧ Nat.dist m n ∉ Q ∧
        ¬ (∃ q ∈ Q, n = q * m ∨ m = q * n)
      · simp [otherLowGcdPair, IsOtherLowGcdPair,
          lowGcdDensePair, denseCoreSignedPair,
          hp, hg, hc, sourceKernel]
      · simp [otherLowGcdPair, IsOtherLowGcdPair,
          lowGcdDensePair, denseCoreSignedPair, hp, hg, hc]
    · simp [otherLowGcdPair, IsOtherLowGcdPair, hp,
        lowGcdDensePair, hg]

/-- Exact existing Möbius gcd/lcm identity on the actual UNPAID
signed source entry, including true squareful-zero coefficients. -/
theorem otherLowGcdPair_eq_gcdLcmSign
    (Q : Finset ℕ) (T : ℝ) (m n : ℕ) :
    otherLowGcdPair Q T m n =
      if IsOtherLowGcdPair Q T m n then
        moebiusReal (Nat.gcd m n) *
          moebiusReal (Nat.lcm m n) *
            pickupResponseGram T m n
      else 0 := by
  rw [otherLowGcdPair_eq_originalMask]
  by_cases hm : IsOtherLowGcdPair Q T m n
  · simp only [if_pos hm, sourceKernel]
    rw [moebiusReal_mul_eq_gcd_lcm]
  · simp [hm]

/-- The exact positive integer gcd factor is not removed from the
causal birth/response window. This is a TERMWISE squarefree
source equality with actual reduced indices and shifted T. -/
theorem otherLowGcdPair_gcdShifted_term
    (Q : Finset ℕ) (T : ℝ) (g a b : ℕ)
    (hg : 1 ≤ g) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hga : Squarefree (g * a))
    (hgb : Squarefree (g * b)) :
    otherLowGcdPair Q T (g * a) (g * b) =
      if IsOtherLowGcdPair Q T (g * a) (g * b) then
        (g : ℝ)⁻¹ * moebiusReal a * moebiusReal b *
          pickupResponseGram (T - Real.log (g : ℝ)) a b
      else 0 := by
  rw [otherLowGcdPair_eq_originalMask]
  by_cases hm : IsOtherLowGcdPair Q T (g * a) (g * b)
  · simp only [if_pos hm]
    exact originalSignedKernel_gcd_timeShift T g a b
      hg ha hb hga hgb
  · simp [hm]

/-- The source mask itself still requires the ORIGINAL gcd cutoff,
not a fabricated cutoff at T-log g. -/
theorem otherLowGcdPair_implies_original_fixedGcd
    (Q : Finset ℕ) (T : ℝ) (m n : ℕ)
    (h : IsOtherLowGcdPair Q T m n) :
    Nat.gcd m n ≤ fixedGcdCutoff T := h.2.1

/-- Distinct m,n and both original pair orientations survive the
gcd/lcm sign re-expression; the original selector is symmetric. -/
theorem otherLowGcdPair_mask_symm
    (Q : Finset ℕ) (T : ℝ) (m n : ℕ) :
    IsOtherLowGcdPair Q T m n ↔
      IsOtherLowGcdPair Q T n m := by
  constructor
  · rintro ⟨hp, hg, hne, hgap, hratio⟩
    refine ⟨?_, ?_, Ne.symm hne, ?_, ?_⟩
    · intro hswap
      apply hp
      rcases hswap with ⟨p,q,hpr,hcop,hq, hor⟩
      refine ⟨p,q,hpr,hcop,hq, ?_⟩
      rcases hor with hforward | hreverse
      · exact Or.inr hforward
      · exact Or.inl hreverse
    · simpa [Nat.gcd_comm] using hg
    · simpa [Nat.dist_comm] using hgap
    · intro hrat
      apply hratio
      rcases hrat with ⟨q,hq,h1|h2⟩
      · exact ⟨q,hq,Or.inr h1⟩
      · exact ⟨q,hq,Or.inl h2⟩
  · intro h
    have h' := (show IsOtherLowGcdPair Q T n m →
      IsOtherLowGcdPair Q T m n from by
        rintro ⟨hp, hg, hne, hgap, hratio⟩
        refine ⟨?_, ?_, Ne.symm hne, ?_, ?_⟩
        · intro hswap
          apply hp
          rcases hswap with ⟨p,q,hpr,hcop,hq, hor⟩
          refine ⟨p,q,hpr,hcop,hq, ?_⟩
          rcases hor with hforward | hreverse
          · exact Or.inr hforward
          · exact Or.inl hreverse
        · simpa [Nat.gcd_comm] using hg
        · simpa [Nat.dist_comm] using hgap
        · intro hrat
          apply hratio
          rcases hrat with ⟨q,hq,h1|h2⟩
          · exact ⟨q,hq,Or.inr h1⟩
          · exact ⟨q,hq,Or.inl h2⟩)
    exact h' h

end GRWTSK.NumberTheory.Moebius.LowGcdPrimeFreePrimitiveBridge
