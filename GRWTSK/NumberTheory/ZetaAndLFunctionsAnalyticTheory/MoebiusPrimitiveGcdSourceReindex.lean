/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction and original arithmetic source: grwtsk contributors.
Lean source-proof-candidate integration assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimitiveGcdFiniteBijection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLowGcdPrimeFreePrimitiveBridge
import Mathlib.Data.Nat.Squarefree
import Mathlib.Tactic

/-!
# Close the SOURCE-EXACT finite primitive gcd reindex target (candidate)

This bridges the ORIGINAL prime-free, low-gcd, signed ordered-pair source
to the earlier primitivePrimeFreeTripleCross at the SAME true T and Q.

Step A: unconditional finite (m,n) ↔ (g,a,b) bijection with
  g=gcd(m,n), a=m/g, b=n/g, gcd(a,b)=1,
preserving ordered pair orientations and all SOURCE mask predicates.
NO g-a or g-b coprimality guard is imposed during this reindex.

Step B: the ORIGINAL nonzero Möbius coefficient implies squarefree.
If g and a or g and b share a prime, then ga or gb is squareful,
so its original moebiusReal coefficient is EXACTLY ZERO. Only those
literal zero contributions can be dropped. Under the remaining
Coprime g a and Coprime g b the already published source theorem
otherLowGcdPair_coprime_gcdShifted_term supplies the exact
  g^(-1) mu(g)^2 mu(a)mu(b) pickupResponseGram(T-log g,a,b).
The original fixed-gcd, mask, true time shift, Q and integer endpoint
remain unchanged.

The prior ExactPrimeFreeTripleReindexTarget is instantiated by a NEW
source proof candidate here, not postulated or accepted as an axiom.
The arithmetic PrimitivePrimeFreeEveryRateOn source remains OPEN,
so there is NO unconditional RH claim.
Pinned compilation, kernel replay, axioms and imported-closure NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PrimitiveGcdSourceReindex

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LowGcdPrimeDilationNegative
open GRWTSK.NumberTheory.Moebius.LowGcdPrimeFreePrimitiveBridge
open GRWTSK.NumberTheory.Moebius.PrimitiveGcdFiniteBijection

/-- The original indexed double sum, but in correctly coprime
gcd-reduced TRIPLE coordinates WITHOUT changing the source kernel. -/
def rawPrimitiveTripleCross (Q : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ t ∈ primitivePositiveTriples ⌊Real.exp T⌋₊,
    otherLowGcdPair Q T
      (t.1 * t.2.1) (t.1 * t.2.2)

/-- The source-level ordered pair sum is EXACTLY the raw primitive
triple sum. Even squareful zero inputs are still present here. -/
theorem originalOtherLowGcdCross_eq_rawPrimitive
    (Q : Finset ℕ) (T : ℝ) :
    otherLowGcdCross Q T = rawPrimitiveTripleCross Q T := by
  classical
  let N : ℕ := ⌊Real.exp T⌋₊
  have h := orderedPairs_sum_eq_primitiveTriples N
    (otherLowGcdPair Q T)
  change
    (∑ p ∈ orderedPositivePairs N,
      otherLowGcdPair Q T p.1 p.2) =
      rawPrimitiveTripleCross Q T at h
  calc
    otherLowGcdCross Q T =
      ∑ p ∈ orderedPositivePairs N,
        otherLowGcdPair Q T p.1 p.2 := by
      unfold otherLowGcdCross orderedPositivePairs positiveIndex
        endpointIndex
      rw [Finset.sum_product]
    _ = rawPrimitiveTripleCross Q T := h

/-- The ORIGINAL μ(ga) vanishes whenever g and a are NOT coprime.
Only this exact source zero permits removal of a nonprimitive guard. -/
private theorem originalSourceKernel_zero_of_not_coprime_left
    (T : ℝ) (g a b : ℕ)
    (hga : ¬Nat.Coprime g a) :
    sourceKernel T (g * a) (g * b) = 0 := by
  have hnot : ¬Squarefree (g * a) := by
    intro hsq
    exact hga (Nat.coprime_of_squarefree_mul hsq)
  have hz : moebiusReal (g * a) = 0 := by
    simp [moebiusReal,
      ArithmeticFunction.moebius_eq_zero_of_not_squarefree hnot]
  simp [sourceKernel, hz]

private theorem originalSourceKernel_zero_of_not_coprime_right
    (T : ℝ) (g a b : ℕ)
    (hgb : ¬Nat.Coprime g b) :
    sourceKernel T (g * a) (g * b) = 0 := by
  have hnot : ¬Squarefree (g * b) := by
    intro hsq
    exact hgb (Nat.coprime_of_squarefree_mul hsq)
  have hz : moebiusReal (g * b) = 0 := by
    simp [moebiusReal,
      ArithmeticFunction.moebius_eq_zero_of_not_squarefree hnot]
  simp [sourceKernel, hz]

/-- The EXACT original low-gcd mask and original source coefficient,
now with optional g-a and g-b coprimality paid by literal μ-zero. -/
theorem otherLowGcdPair_eq_primitiveGuarded
    (Q : Finset ℕ) (T : ℝ) (g a b : ℕ)
    (hg : 1 ≤ g) (ha : 1 ≤ a) (hb : 1 ≤ b) :
    otherLowGcdPair Q T (g * a) (g * b) =
      if Nat.Coprime g a ∧ Nat.Coprime g b ∧
          IsOtherLowGcdPair Q T (g * a) (g * b)
      then
        (g : ℝ)⁻¹ * (moebiusReal g) ^ 2 *
          moebiusReal a * moebiusReal b *
            pickupResponseGram (T - Real.log (g : ℝ)) a b
      else 0 := by
  classical
  by_cases hga : Nat.Coprime g a
  · by_cases hgb : Nat.Coprime g b
    · simpa only [hga, hgb, true_and] using
        otherLowGcdPair_coprime_gcdShifted_term Q T g a b
          hg ha hb hga hgb
    · have hzero := originalSourceKernel_zero_of_not_coprime_right T g a b hgb
      rw [otherLowGcdPair_eq_originalMask]
      by_cases hmask : IsOtherLowGcdPair Q T (g * a) (g * b)
      · simp [hga, hgb, hmask, hzero]
      · simp [hmask, hgb]
  · have hzero := originalSourceKernel_zero_of_not_coprime_left T g a b hga
    rw [otherLowGcdPair_eq_originalMask]
    by_cases hmask : IsOtherLowGcdPair Q T (g * a) (g * b)
    · simp [hga, hmask, hzero]
    · simp [hmask, hga]

/-- Exact reassembly of the previous SOURCE-DEFINED primitive triple
expression. The additional g-a/g-b guards only remove source μ-zero
terms; all true original pair masks and the causal shift survive. -/
theorem rawPrimitive_eq_shiftedPrimitive
    (Q : Finset ℕ) (T : ℝ) :
    rawPrimitiveTripleCross Q T =
      primitivePrimeFreeTripleCross Q T := by
  classical
  let S : Finset ℕ := endpointIndex T
  unfold rawPrimitiveTripleCross primitivePositiveTriples
    primitivePrimeFreeTripleCross
  change
    (∑ t ∈ ((S.product (S.product S)).filter
        (fun t : ℕ × (ℕ × ℕ) =>
          Nat.Coprime t.2.1 t.2.2 ∧
            t.1 * t.2.1 ∈ S ∧ t.1 * t.2.2 ∈ S)),
      otherLowGcdPair Q T (t.1 * t.2.1) (t.1 * t.2.2)) =
    ∑ g ∈ S, ∑ a ∈ S, ∑ b ∈ S,
      if Nat.Coprime a b ∧ Nat.Coprime g a ∧ Nat.Coprime g b ∧
          g * a ∈ S ∧ g * b ∈ S ∧
          IsOtherLowGcdPair Q T (g * a) (g * b)
      then (g : ℝ)⁻¹ * (moebiusReal g) ^ 2 *
          moebiusReal a * moebiusReal b *
            pickupResponseGram (T - Real.log (g : ℝ)) a b
      else 0
  rw [Finset.sum_filter]
  simp only [Finset.sum_product]
  apply Finset.sum_congr rfl
  intro g hg
  apply Finset.sum_congr rfl
  intro a ha
  apply Finset.sum_congr rfl
  intro b hb
  have hg : 1 ≤ g := (Finset.mem_Icc.mp hg).1
  have ha : 1 ≤ a := (Finset.mem_Icc.mp ha).1
  have hb : 1 ≤ b := (Finset.mem_Icc.mp hb).1
  by_cases hab : Nat.Coprime a b
  · by_cases hga : g * a ∈ S
    · by_cases hgb : g * b ∈ S
      · have hs := otherLowGcdPair_eq_primitiveGuarded Q T
          g a b hg ha hb
        rw [hs]
        simp [hab, hga, hgb, and_assoc]
      · simp [hgb]
    · simp [hga]
  · simp [hab]

/-- Direct proof CANDIDATE of the exact old open named reindexing.
This removes one finite combinatorial/front-end bridge from the
primitive arithmetic programme. Nothing here supplies all-rate
shifted coprime bilinear cancellation. -/
theorem exactPrimeFreeTripleReindexTarget_proof :
    ExactPrimeFreeTripleReindexTarget := by
  intro Q T hT
  exact (originalOtherLowGcdCross_eq_rawPrimitive Q T).trans
    (rawPrimitive_eq_shiftedPrimitive Q T)


/-- The prior canonical RH consumer no longer needs the separate
FINITE reindexing premise if this exact candidate passes native
verification. The one genuinely deep remaining input is still the
actual original shifted, coprime, prime-free signed bilinear estimate
on a FIXED affine-frequent source-time set. -/
theorem riemannHypothesis_of_primitivePrimeFree_without_reindex_premise
    {G : Set ℝ}
    (hcover :
      GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential.AffineFrequent G)
    (hPrimitive : PrimitivePrimeFreeEveryRateOn G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_primitivePrimeFree_goodScales
    hcover exactPrimeFreeTripleReindexTarget_proof hPrimitive

end GRWTSK.NumberTheory.Moebius.PrimitiveGcdSourceReindex
