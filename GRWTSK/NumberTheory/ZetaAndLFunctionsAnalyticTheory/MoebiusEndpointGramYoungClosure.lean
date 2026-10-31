/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointSparseGapCounting
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalPhysicalGramIntegrability
import Mathlib

/-!
# Complete Möbius endpoint Gram Young and degree-counting transfer

Use the literal original CCC.pickupResponseGram and moebiusReal.
No signed term is discarded from the complete ordered endpoint packet.
The inequality prices absolute values only AFTER the complete signed packet
has been formed, using the original diagonal and a two-sided degree budget.

No arithmetic cancellation or RH-strength premise is introduced.
Lean source candidate only; user deferred compilation, fresh kernel replay
and transitive axiom audit.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusEndpointSparseGapCounting
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability

namespace GRWTSK.NumberTheory.MoebiusEndpointGramYoungClosure

/-- Direct continuous-interval Young inequality, with both integral
terms representing the actual squared original source functions. -/
theorem interval_gram_young
    (f g : ℝ → ℝ) (T : ℝ) (hT : 0 ≤ T)
    (hf : Continuous f) (hg : Continuous g) :
    2 * |∫ u in (0 : ℝ)..T, f u * g u| ≤
      (∫ u in (0 : ℝ)..T, f u ^ 2) +
        (∫ u in (0 : ℝ)..T, g u ^ 2) := by
  have hp : IntervalIntegrable (fun u : ℝ => f u * g u) volume 0 T :=
    (hf.mul hg).intervalIntegrable 0 T
  have ha : IntervalIntegrable (fun u : ℝ => 2 * |f u * g u|)
      volume 0 T :=
    (continuous_const.mul ((hf.mul hg).abs)).intervalIntegrable 0 T
  have hb : IntervalIntegrable (fun u : ℝ => f u ^ 2 + g u ^ 2)
      volume 0 T :=
    ((hf.pow 2).add (hg.pow 2)).intervalIntegrable 0 T
  have hf2 : IntervalIntegrable (fun u : ℝ => f u ^ 2) volume 0 T :=
    (hf.pow 2).intervalIntegrable 0 T
  have hg2 : IntervalIntegrable (fun u : ℝ => g u ^ 2) volume 0 T :=
    (hg.pow 2).intervalIntegrable 0 T
  have hfirst :=
    intervalIntegral.abs_integral_le_integral_abs
      (f := fun u : ℝ => f u * g u) hT
  have hsecond : (∫ u in (0 : ℝ)..T, 2 * |f u * g u|) ≤
      ∫ u in (0 : ℝ)..T, f u ^ 2 + g u ^ 2 := by
    apply intervalIntegral.integral_mono hT ha hb
    intro u
    exact two_abs_mul_le_sq_add_sq (f u) (g u)
  have hconst : (∫ u in (0 : ℝ)..T, 2 * |f u * g u|) =
      2 * (∫ u in (0 : ℝ)..T, |f u * g u|) := by
    rw [intervalIntegral.integral_const_mul]
  rw [intervalIntegral.integral_add hf2 hg2] at hsecond
  rw [hconst] at hsecond
  linarith

/-- Actual Möbius Gram Young inequality, with no replacement by a
surrogate kernel. The positivity of endpoint indices is structural. -/
theorem endpointMobiusGramYoung :
    EndpointMobiusGramYoung := by
  intro T hT m hm n hn
  have hmp : 0 < m := (Finset.mem_Icc.mp hm).1
  have hnp : 0 < n := (Finset.mem_Icc.mp hn).1
  let f : ℝ → ℝ := fun u => moebiusReal m * pickupResponse m u
  let g : ℝ → ℝ := fun u => moebiusReal n * pickupResponse n u
  have hf : Continuous f :=
    continuous_const.mul (pickupResponse_continuous m hmp)
  have hg : Continuous g :=
    continuous_const.mul (pickupResponse_continuous n hnp)
  have hy := interval_gram_young f g T hT hf hg
  have hpair :
      (∫ u in (0 : ℝ)..T, f u * g u) =
        moebiusReal m * moebiusReal n * pickupResponseGram T m n := by
    unfold f g pickupResponseGram
    convert (intervalIntegral.integral_const_mul
      (moebiusReal m * moebiusReal n)
      (fun u : ℝ => pickupResponse m u * pickupResponse n u)).symm using 1
    · congr 1
      funext u
      ring
  have hm2 :
      (∫ u in (0 : ℝ)..T, f u ^ 2) =
        moebiusReal m ^ 2 * pickupResponseGram T m m := by
    unfold f pickupResponseGram
    convert (intervalIntegral.integral_const_mul
      (moebiusReal m ^ 2)
      (fun u : ℝ => pickupResponse m u * pickupResponse m u)).symm using 1
    · congr 1
      funext u
      ring
  have hn2 :
      (∫ u in (0 : ℝ)..T, g u ^ 2) =
        moebiusReal n ^ 2 * pickupResponseGram T n n := by
    unfold g pickupResponseGram
    convert (intervalIntegral.integral_const_mul
      (moebiusReal n ^ 2)
      (fun u : ℝ => pickupResponse n u * pickupResponse n u)).symm using 1
    · congr 1
      funext u
      ring
  simpa only [hpair, hm2, hn2] using hy

/-- The original diagonal integrand is nonnegative at each source index,
without assuming a multiplicative-function sign bound. -/
theorem endpoint_diagonal_nonneg (T : ℝ) (hT : 0 ≤ T) (m : ℕ) :
    0 ≤ moebiusReal m ^ 2 * pickupResponseGram T m m := by
  have hg : 0 ≤ pickupResponseGram T m m := by
    unfold pickupResponseGram
    apply intervalIntegral.integral_nonneg_of_forall hT
    intro u
    exact mul_self_nonneg _
  exact mul_nonneg (sq_nonneg _) hg

/-- Full abstract ordered edge accounting. This theorem requires only
nonnegative diagonal weights and a bound on each ordered pair by its two
original endpoint diagonal terms. It does not assume cancellation. -/
theorem ordered_sparse_gram_bound
    (S A : Finset ℕ) (d : ℕ → ℝ) (B : ℕ → ℕ → ℝ)
    (hd : ∀ n ∈ S, 0 ≤ d n)
    (hy : ∀ m ∈ S, ∀ n ∈ S, 2 * |B m n| ≤ d m + d n)
    (hc : ∀ m, (S.filter fun n => m ≠ n ∧ Nat.dist m n ∈ A).card ≤
      2 * A.card)
    :
    |∑ m ∈ S, ∑ n ∈ S,
        if m ≠ n ∧ Nat.dist m n ∈ A then B m n else 0| ≤
      2 * (A.card : ℝ) * ∑ m ∈ S, d m := by
  classical
  let E : ℕ → ℕ → Prop := fun m n => m ≠ n ∧ Nat.dist m n ∈ A
  have hweighted (m : ℕ) (hm : m ∈ S) :
      ∑ n ∈ S, (if E m n then d m else 0) =
        ((S.filter fun n => E m n).card : ℝ) * d m := by
    simp only [← Finset.sum_filter, Finset.sum_const, nsmul_eq_mul]
  have hrow (m : ℕ) (hm : m ∈ S) :
      0 ≤ ∑ n ∈ S, if E m n then |B m n| else 0 := by
    apply Finset.sum_nonneg
    intro n hn
    split_ifs <;> positivity
  have habs :
      |∑ m ∈ S, ∑ n ∈ S, if E m n then B m n else 0| ≤
        ∑ m ∈ S, ∑ n ∈ S, if E m n then |B m n| else 0 := by
    calc
      _ ≤ ∑ m ∈ S, |∑ n ∈ S, if E m n then B m n else 0| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ m ∈ S, ∑ n ∈ S,
          if E m n then |B m n| else 0 := by
        apply Finset.sum_le_sum
        intro m hm
        simpa only [abs_ite, abs_zero] using
          (Finset.abs_sum_le_sum_abs (s := S)
            (f := fun n => if E m n then B m n else 0))
  have hpoint :
      2 * (∑ m ∈ S, ∑ n ∈ S,
        if E m n then |B m n| else 0) ≤
      ∑ m ∈ S, ∑ n ∈ S,
        if E m n then d m + d n else 0 := by
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro m hm
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro n hn
    by_cases h : E m n
    · simp only [if_pos h]
      exact hy m hm n hn
    · simp [h]
  have hrowbound :
      ∑ m ∈ S, ∑ n ∈ S,
        (if E m n then d m else 0) ≤
        2 * (A.card : ℝ) * ∑ m ∈ S, d m := by
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro m hm
    rw [hweighted m hm]
    have hcard := hc m
    exact mul_le_mul_of_nonneg_right
      (by exact_mod_cast hcard) (hd m hm)
  have hflip :
      (∑ m ∈ S, ∑ n ∈ S, if E m n then d n else 0) =
      ∑ m ∈ S, ∑ n ∈ S, if E m n then d m else 0 := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n hn
    have he : E m n ↔ E n m := by
      simp [E, Nat.dist_comm, ne_comm]
    split_ifs with h1 h2 <;> simp_all
  have hsplit :
      (∑ m ∈ S, ∑ n ∈ S, if E m n then d m + d n else 0) =
      (∑ m ∈ S, ∑ n ∈ S, if E m n then d m else 0) +
      (∑ m ∈ S, ∑ n ∈ S, if E m n then d n else 0) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro m hm
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n hn
    split_ifs <;> ring
  rw [hsplit, hflip] at hpoint
  have htwo := hrowbound
  have : (∑ m ∈ S, ∑ n ∈ S, if E m n then |B m n| else 0) ≤
      2 * (A.card : ℝ) * ∑ m ∈ S, d m := by linarith
  exact habs.trans this

/-- Full original Putnam sparse-gap energy estimate, conditional on no
new arithmetic hypothesis. The only source-specific analytic input is
the theorem above; the combinatorial source is separately available. -/
theorem putnamGapEnergyBound :
    PutnamGapEnergyBound := by
  intro _ _
  intro A T hT
  let S := endpointIndex T
  let d : ℕ → ℝ := fun n =>
    moebiusReal n ^ 2 * pickupResponseGram T n n
  let B : ℕ → ℕ → ℝ := fun m n =>
    moebiusReal m * moebiusReal n * pickupResponseGram T m n
  have hd : ∀ n ∈ S, 0 ≤ d n := by
    intro n hn
    exact endpoint_diagonal_nonneg T hT n
  have hy : ∀ m ∈ S, ∀ n ∈ S,
      2 * |B m n| ≤ d m + d n := by
    intro m hm n hn
    exact endpointMobiusGramYoung T hT m hm n hn
  have hc : ∀ m,
      (S.filter fun n => m ≠ n ∧ Nat.dist m n ∈ A).card ≤
        2 * A.card := by
    intro m
    exact gapSetNeighbourCount A S m
  have h := ordered_sparse_gram_bound S A d B hd hy hc
  simpa only [endpointGapSetCross, pickupDiagonal, endpointIndex, S, d, B] using h

end GRWTSK.NumberTheory.MoebiusEndpointGramYoungClosure
