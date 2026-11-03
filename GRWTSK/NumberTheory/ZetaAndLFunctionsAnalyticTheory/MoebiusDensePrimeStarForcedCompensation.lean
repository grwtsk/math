/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDensePrimeStarCancellation
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Signed prime/composite compensation in the ACTUAL n=1 Möbius row

The previous source isolates an exponentially large negative prime-star
packet in the original dense ordered Gram. This module prevents its
misinterpretation as a net RH gain: it retains the positive/negative
composite and short-gap source rows exactly, rather than defining
an unrestricted signed remainder.

The complete PAPER argument uses the unconditional classical
quantitative Mertens estimate |M(x)| << x/(1+log x)^3
and the original response identity to show that, for any
0<epsilon<2, the dense composite n=1 row is EVENTUALLY
>= (c/2)*exp(T/2)/T, where c is the actual prime-star constant.
This is forced POSITIVE signed arithmetic compensation, not RH.

The quantitative log-power/Mertens and weighted-kernel bounds are
NOT formalized in Lean in this module. The Lean candidate below
constructs the actual finite three-sector row and the exact
comparison from independently measured numeric allowances.
-/

namespace GRWTSK.NumberTheory.Moebius.DensePrimeStarForcedCompensation

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusOddPrimeDoublingNegativePacket

/-- BOTH ordered orientations against source index one have this
literal coefficient; mu(1)=1, and original K is symmetric. -/
def unitRowTerm (T : ℝ) (n : ℕ) : ℝ :=
  2 * moebiusReal n * pickupResponseGram T 1 n

/-- All actual integer indices n>=2, no surrogate or short cutoff. -/
def completeUnitRow (T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    if 1 < n then unitRowTerm T n else 0

/-- Prime endpoints with the ORIGINAL additive distance outside A.
Every such coefficient is -1. -/
def densePrimeUnitRow (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    if 1 < n ∧ Nat.Prime n ∧ Nat.dist 1 n ∉ A then
      unitRowTerm T n else 0

/-- Every nonprime n>=2 remains present, including squareful
zero coefficients and both signs of squarefree composites. -/
def denseCompositeUnitRow (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    if 1 < n ∧ ¬Nat.Prime n ∧ Nat.dist 1 n ∉ A then
      unitRowTerm T n else 0

/-- Original source's entire n=1 short-gap row, INCLUDING prime
and composite integer endpoints (but excluding the diagonal n=1). -/
def shortUnitRow (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    if 1 < n ∧ Nat.dist 1 n ∈ A then
      unitRowTerm T n else 0

/-- Exact finite three-way partition of the complete ORIGINAL signed
unit-index row, with the original sparse cutoff and all zero symbols. -/
theorem completeUnitRow_eq_prime_add_composite_add_short
    (A : Finset ℕ) (T : ℝ) :
    completeUnitRow T =
      densePrimeUnitRow A T +
        denseCompositeUnitRow A T + shortUnitRow A T := by
  classical
  unfold completeUnitRow densePrimeUnitRow denseCompositeUnitRow
    shortUnitRow
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hn1 : 1 < n
  · by_cases hp : Nat.Prime n
    · by_cases hgap : Nat.dist 1 n ∈ A
      · simp [hn1, hp, hgap]
      · simp [hn1, hp, hgap]
    · by_cases hgap : Nat.dist 1 n ∈ A
      · simp [hn1, hp, hgap]
      · simp [hn1, hp, hgap]
  · simp [hn1]

/-- The unit-row term is the genuine two ordered pair orientations
(1,n) and (n,1), not a single unoriented edge. -/
theorem unitRowTerm_eq_two_original_orientations
    (T : ℝ) (n : ℕ) :
    unitRowTerm T n =
      moebiusReal 1 * moebiusReal n * pickupResponseGram T 1 n +
        moebiusReal n * moebiusReal 1 * pickupResponseGram T n 1 := by
  have h1 : moebiusReal 1 = 1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_one]
  have hsym := pickupResponseGram_symmetric T n 1
  unfold unitRowTerm
  rw [h1, hsym]
  ring

/-- Every original prime endpoint in the dense n=1 row contributes
nonpositively; the proof reads actual mu(p), not an encoded bit. -/
theorem densePrimeUnitRow_nonpos
    (A : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    densePrimeUnitRow A T ≤ 0 := by
  unfold densePrimeUnitRow
  apply Finset.sum_nonpos
  intro n hn
  by_cases hs : 1 < n ∧ Nat.Prime n ∧ Nat.dist 1 n ∉ A
  · simp only [if_pos hs]
    have hp : Nat.Prime n := hs.2.1
    have hmu : moebiusReal n = -1 := by
      simp [moebiusReal, ArithmeticFunction.moebius_apply_prime hp]
    have hK := pickupResponseGram_nonneg T hT 1 n
      (by omega) hp.pos
    unfold unitRowTerm
    rw [hmu]
    nlinarith
  · simp [hs]

/-- A purely finite source-algebra consequence. A large negative
prime packet combined with SMALL complete/short rows FORCES a
large positive signed composite packet. The displayed estimates
must be independently supplied; this is NOT a cancellation axiom. -/
theorem denseCompositeUnitRow_ge_of_independent_bounds
    (A : Finset ℕ) (T c E F : ℝ)
    (hprime : densePrimeUnitRow A T ≤ -c)
    (hfull : |completeUnitRow T| ≤ E)
    (hshort : |shortUnitRow A T| ≤ F) :
    c - E - F ≤ denseCompositeUnitRow A T := by
  have hsplit := completeUnitRow_eq_prime_add_composite_add_short A T
  have hrow := (abs_le.mp hfull).1
  have hshortUpper := (abs_le.mp hshort).2
  linarith

end GRWTSK.NumberTheory.Moebius.DensePrimeStarForcedCompensation
