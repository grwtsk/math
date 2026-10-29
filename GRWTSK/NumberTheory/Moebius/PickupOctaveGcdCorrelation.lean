/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupGcdReindex
import GRWTSK.NumberTheory.Moebius.PickupGcdSupport
import GRWTSK.NumberTheory.Moebius.PickupGcdOuterSector

/-!
# The prescribed signed octave in squarefree gcd coordinates

The actual cell-pair kernel consumes the positive ordered-pair gcd bijection.
Its source products are then factored using the maintained zero-preserving
restricted Mobius identity. Quotient coprimality and both gcd/quotient masks
remain explicit. The squarefree gcd weight is the actual coefficient mu(d)^2;
zero source coefficients and both orderings are retained.

The outer gcd sector has a proved nonpositive sign, by the actual doubling
identity and actual kernel positivity. Only that sector is removed in the
one-sided bound. No estimate of the remaining signed inner correlation is
assumed or proved here. In particular no growth exponent improves and no new
conditional RH interface is introduced.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay, transitive axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupOctaveGcdCorrelation

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupDyadicIncrement
open GRWTSK.NumberTheory.Moebius.PickupOctavePairKernel
open GRWTSK.NumberTheory.Moebius.PickupGcdReindex
open GRWTSK.NumberTheory.Moebius.PickupGcdSupport
open GRWTSK.NumberTheory.Moebius.PickupGcdOuterSector

/-- The remaining signed coprime quotient kernel at one actual source cell.
The gcd weight is outside this sum; neither required coprimality mask is lost. -/
def coprimeCellCorrelation (N d : ℕ) : ℝ :=
  ∑ a ∈ Finset.Icc 1 N, ∑ b ∈ Finset.Icc 1 N,
    if Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N ∧
        Nat.Coprime d a ∧ Nat.Coprime d b then
      moebiusReal a * moebiusReal b * cellPairKernel N (d * a) (d * b)
    else 0

/-- The actual gcd-row source factorization includes all zero coefficients.
It does not infer multiplicativity from quotient coprimality alone. -/
theorem gcdCellBlock_eq_squarefree_weight (N d : ℕ) :
    gcdCellBlock N d = moebiusReal d ^ 2 * coprimeCellCorrelation N d := by
  unfold gcdCellBlock coprimeCellCorrelation
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro a _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro b _
  by_cases hbase : Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N
  · by_cases hmask : Nat.Coprime d a ∧ Nat.Coprime d b
    · have hfull : Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N ∧
          Nat.Coprime d a ∧ Nat.Coprime d b :=
        ⟨hbase.1, hbase.2.1, hbase.2.2.1, hbase.2.2.2, hmask.1, hmask.2⟩
      rw [if_pos hbase, if_pos hfull, moebius_pair_product_eq_masked, if_pos hmask]
      ring
    · have hfull : ¬ (Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N ∧
          Nat.Coprime d a ∧ Nat.Coprime d b) := by
        intro h
        exact hmask h.2.2.2.2
      rw [if_pos hbase, if_neg hfull, moebius_pair_product_eq_masked, if_neg hmask]
      ring
  · have hfull : ¬ (Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N ∧
        Nat.Coprime d a ∧ Nat.Coprime d b) := by
      intro h
      exact hbase ⟨h.1, h.2.1, h.2.2.1, h.2.2.2.1⟩
    rw [if_neg hbase, if_neg hfull, mul_zero]

/-- This is where the generic index bijection is consumed by the original
signed cell expression, with its actual kernel and literal source cutoffs. -/
theorem birthExpression_eq_gcdCellSum {N : ℕ} (hN : 1 ≤ N) :
    birthExpression N = ∑ d ∈ Finset.Icc 1 N, gcdCellBlock N d := by
  rw [birthExpression_eq_ordered hN]
  exact sum_orderedPairs_eq_gcd_sum N
    (fun n m => moebiusReal n * moebiusReal m * cellPairKernel N n m)

/-- Isolate the actual squarefree gcd coefficient from the remaining signed
coprime quotient kernel. Neither quotient orientation is identified with the other. -/
theorem birthExpression_eq_squarefree_gcd_correlation {N : ℕ} (hN : 1 ≤ N) :
    birthExpression N =
      ∑ d ∈ Finset.Icc 1 N, moebiusReal d ^ 2 * coprimeCellCorrelation N d := by
  rw [birthExpression_eq_gcdCellSum hN]
  exact Finset.sum_congr rfl (fun d _ => gcdCellBlock_eq_squarefree_weight N d)

/-- Exact signed octave expression, before any sector comparison or growth bound. -/
theorem dyadic_increment_eq_squarefree_gcd_correlation (j : ℕ) :
    dyadicBirthSum (j + 1) - dyadicBirthSum j =
      ∑ k ∈ Finset.range (2 ^ j), ∑ d ∈ Finset.Icc 1 (2 ^ j + k),
        moebiusReal d ^ 2 * coprimeCellCorrelation (2 ^ j + k) d := by
  rw [dyadicBirthSum_sub]
  apply Finset.sum_congr rfl
  intro k _
  apply birthExpression_eq_squarefree_gcd_correlation
  have : 0 < 2 ^ j := by positivity
  omega

/-- Only gcds with 3*d<=N remain in this signed arithmetic upper comparison.
This is an explicit finite expression, not a supplied cancellation certificate. -/
def smallGcdOctaveRemainder (j : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (2 ^ j), smallGcdCellRemainder (2 ^ j + k)

/-- The nonpositive outer gcd sector can be removed safely. Its remaining
weighted correlation has no all-scale upper estimate in this source. -/
theorem dyadic_increment_le_smallGcdOctaveRemainder (j : ℕ) :
    dyadicBirthSum (j + 1) - dyadicBirthSum j ≤ smallGcdOctaveRemainder j := by
  rw [dyadicBirthSum_sub]
  unfold smallGcdOctaveRemainder
  apply Finset.sum_le_sum
  intro k _
  have hN : 1 ≤ 2 ^ j + k := by
    have : 0 < 2 ^ j := by positivity
    omega
  rw [birthExpression_eq_gcdCellSum hN]
  exact gcdCellSum_le_smallGcdCellRemainder _

/-- The exact remaining weighted signed correlation after the proved outer
sector sign deduction. The three coprimalities and both cutoffs are retained. -/
theorem smallGcdOctaveRemainder_eq_squarefree_correlation (j : ℕ) :
    smallGcdOctaveRemainder j =
      ∑ k ∈ Finset.range (2 ^ j), ∑ d ∈ Finset.Icc 1 (2 ^ j + k),
        if 3 * d ≤ 2 ^ j + k then
          moebiusReal d ^ 2 * coprimeCellCorrelation (2 ^ j + k) d else 0 := by
  unfold smallGcdOctaveRemainder smallGcdCellRemainder
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro d _
  by_cases h : 3 * d ≤ 2 ^ j + k
  · rw [if_pos h, if_pos h, gcdCellBlock_eq_squarefree_weight]
  · rw [if_neg h, if_neg h]

end GRWTSK.NumberTheory.Moebius.PickupOctaveGcdCorrelation
