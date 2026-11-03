/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDivisorCausalGramCollapse
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Actual Möbius gcd/lcm sign transport on the incomparable Gram

Uses pinned Mathlib IsMultiplicative.lcm_apply_mul_gcd_apply
for the original integer Möbius, including squareful zero symbols.
Both ordered orientations and the ORIGINAL response Gram are kept.
This is a signed change of arithmetic address, not cancellation.
-/

namespace GRWTSK.NumberTheory.Moebius.IncomparableGcdLcm

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DivisorCausalGramCollapse
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII

/-- Original Möbius gcd/lcm sign identity, with no squarefree
assumption or separate treatment of zero symbols. -/
theorem moebiusReal_mul_eq_gcd_lcm (m n : ℕ) :
    moebiusReal m * moebiusReal n =
      moebiusReal (Nat.gcd m n) * moebiusReal (Nat.lcm m n) := by
  have h := (ArithmeticFunction.isMultiplicative_moebius.intCast
    (R := ℝ)).lcm_apply_mul_gcd_apply (x := m) (y := n)
  simpa only [moebiusReal, mul_comm] using h.symm

/-- Entire ordered incomparable packet at original integer indices. -/
def incomparableOriginalKernel (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ ¬ (m ∣ n ∨ n ∣ m) then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Exactly the same original signed source using gcd/lcm signs. -/
def incomparableGcdLcmKernel (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ ¬ (m ∣ n ∨ n ∣ m) then
      moebiusReal (Nat.gcd m n) * moebiusReal (Nat.lcm m n) *
        pickupResponseGram T m n
    else 0

/-- Source difference: no additive distance, ratio or diagonal
term is silently omitted. -/
theorem incomparableOriginalKernel_eq_source (T : ℝ) :
    incomparableOriginalKernel T = incomparableOrderedPacket T := by
  classical
  unfold incomparableOriginalKernel incomparableOrderedPacket
    pickupCross originalOrderedDivisibility
  simp only [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  simp only [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m ≠ n
  · by_cases hcmp : m ∣ n ∨ n ∣ m
    · simp [hmn, hcmp]
    · simp [hmn, hcmp]
  · simp [hmn]

/-- Source-exact gcd/lcm recoding of all original incomparable
ordered terms; no positivity or upper bound follows. -/
theorem incomparableGcdLcmKernel_eq_source (T : ℝ) :
    incomparableGcdLcmKernel T = incomparableOrderedPacket T := by
  rw [← incomparableOriginalKernel_eq_source]
  classical
  unfold incomparableGcdLcmKernel incomparableOriginalKernel
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n ∧ ¬ (m ∣ n ∨ n ∣ m)
  · simp only [if_pos h]
    rw [moebiusReal_mul_eq_gcd_lcm]
  · simp [h]

/-- Complete original signed source = original divisibility plus
the complete gcd/lcm incomparable sector. -/
theorem pickupCross_eq_divisor_add_incomparableGcdLcm (T : ℝ) :
    pickupCross T =
      originalOrderedDivisibility T + incomparableGcdLcmKernel T := by
  rw [incomparableGcdLcmKernel_eq_source]
  exact pickupCross_eq_divisibility_add_incomparable T

/-- Positive original integrated-square energy forces the dense
incomparable packet to compensate a negative comparable packet. -/
theorem incomparable_forced_compensation (T : ℝ) (hT : 0 ≤ T) :
    -pickupDiagonal T - originalOrderedDivisibility T ≤
      incomparableGcdLcmKernel T := by
  have hE : 0 ≤ pickupEnergy T := by
    unfold pickupEnergy
    exact intervalIntegral.integral_nonneg_of_forall hT
      (fun u => sq_nonneg (wholePickup u))
  have hsplit := pickupEnergy_eq_diagonal_add_cross hT
  rw [pickupCross_eq_divisor_add_incomparableGcdLcm] at hsplit
  linarith

/-- Source-bound quadratic necessary compensation. This is a
LOWER bound, not the missing upper estimate consumed by RH. -/
theorem incomparable_forced_quadratic (T : ℝ) (hT : 0 ≤ T) :
    -(2 * T ^ 2) - originalOrderedDivisibility T ≤
      incomparableGcdLcmKernel T := by
  have hcomp := incomparable_forced_compensation T hT
  have hD := (pickupDiagonal_quadratic_bound hT).2
  linarith

/-- Nonzero source pairs necessarily have squarefree gcd and lcm.
The original squareful zero cases remain explicitly zero. -/
theorem incomparable_nonzero_implies_squarefree_gcd_lcm
    (m n : ℕ) (h : moebiusReal m * moebiusReal n ≠ 0) :
    Squarefree (Nat.gcd m n) ∧ Squarefree (Nat.lcm m n) := by
  have hprod := moebiusReal_mul_eq_gcd_lcm m n
  have hnew : moebiusReal (Nat.gcd m n) *
      moebiusReal (Nat.lcm m n) ≠ 0 := by
    rw [← hprod]
    exact h
  have hboth : moebiusReal (Nat.gcd m n) ≠ 0 ∧
      moebiusReal (Nat.lcm m n) ≠ 0 := mul_ne_zero_iff.mp hnew
  exact ⟨(ArithmeticFunction.moebius_ne_zero_iff_squarefree).1
      (by exact_mod_cast hboth.1),
    (ArithmeticFunction.moebius_ne_zero_iff_squarefree).1
      (by exact_mod_cast hboth.2)⟩

end GRWTSK.NumberTheory.Moebius.IncomparableGcdLcm
