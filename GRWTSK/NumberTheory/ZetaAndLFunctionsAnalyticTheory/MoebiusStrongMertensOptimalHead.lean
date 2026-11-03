/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongMertensAbel
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Sharpen the finite PNT-Mertens Abel HEAD from K to 2 sqrt(K)

The previous original-source Mertens-Abel transfer used the crude
head sum bound K. The ACTUAL positive reciprocal-square-root
Abel widths permit a genuinely sharper cutoff dependence:
  |sampleResidue(N+1)| <= 2 sqrt(K)+2 delta sqrt(N)
under precisely the previously named ACTUAL Mertens tail
  |M(n)| <= delta*n for n>=K.

No analytic Mertens theorem is assumed unconditionally; the
prefix-tail proposition remains explicit and its external PNT
proof has not been ported into the pinned Lean environment.

The head estimate is the finite original sum of weighted
Abel widths, bounded by the same sum up to K, whose existing
finite square-root estimate is source-proved. This improvement
is useful when choosing K on a scale-dependent schedule
for an external explicit zero-free-region Mertens envelope.
-/

namespace GRWTSK.NumberTheory.Moebius.StrongMertensOptimalHead

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.StrongMertensAbel

/-- EXACT finite early original Mertens-Abel contributions.
The strict n<K boundary is the same as twoZoneMertensBudget. -/
def earlyAbelPrefix (K N : ℕ) : Finset ℕ :=
  (Finset.range N).filter (fun k => k + 1 < K)

/-- The finite nonnegative head price, with the actual original
arithmetic weight n*(1/sqrt n -1/sqrt(n+1)). -/
def earlyAbelCost (K N : ℕ) : ℝ :=
  ∑ k ∈ earlyAbelPrefix K N,
    ((k + 1 : ℕ) : ℝ) * abelWidth k

/-- The source early head is a subset of the genuine full range K:
there is no cutoff shift or omitted n=1 contribution. -/
theorem earlyAbelPrefix_subset (K N : ℕ) :
    earlyAbelPrefix K N ⊆ Finset.range K := by
  intro k hk
  have h := (Finset.mem_filter.mp hk).2
  simp only [Finset.mem_range]
  omega

/-- Quantitative improvement: the early actual Mertens-Abel head
pays at most 2 sqrt(K), never K, for ANY horizon N. -/
theorem earlyAbelCost_le_two_sqrt (K N : ℕ) :
    earlyAbelCost K N ≤ 2 * Real.sqrt (K : ℝ) := by
  calc
    earlyAbelCost K N ≤
        ∑ k ∈ Finset.range K,
          ((k + 1 : ℕ) : ℝ) * abelWidth k :=
      Finset.sum_le_sum_of_subset_of_nonneg
        (earlyAbelPrefix_subset K N)
        (fun k hk hnot =>
          mul_nonneg (Nat.cast_nonneg _) (abelWidth_nonneg k))
    _ ≤ 2 * Real.sqrt (K : ℝ) :=
      abelWidth_weighted_sum_le_two_sqrt K

/-- The previous two-zone budget splits into the much smaller
actual HEAD (not merely the number K of possible coefficients)
and the delta-weighted WHOLE original Abel first moment. -/
theorem twoZone_budget_le_sqrt_head
    (K N : ℕ) (δ : ℝ) (hδ : 0 ≤ δ) :
    (∑ k ∈ Finset.range N,
      twoZoneMertensBudget K δ (k+1) * abelWidth k) ≤
    earlyAbelCost K N +
      δ * (∑ k ∈ Finset.range N,
        ((k+1 : ℕ) : ℝ) * abelWidth k) := by
  have hpoint (k : ℕ) (hk : k ∈ Finset.range N) :
      twoZoneMertensBudget K δ (k+1) * abelWidth k ≤
      (if k + 1 < K then ((k+1 : ℕ) : ℝ) * abelWidth k else 0) +
        δ * ((k+1 : ℕ) : ℝ) * abelWidth k := by
    by_cases h : k + 1 < K
    · simp only [twoZoneMertensBudget, if_pos h]
      have hpos : 0 ≤ ((k+1 : ℕ) : ℝ) * abelWidth k :=
        mul_nonneg (Nat.cast_nonneg _) (abelWidth_nonneg k)
      nlinarith [mul_nonneg hδ hpos]
    · simp [twoZoneMertensBudget, h]
  have hsum :
      (∑ k ∈ Finset.range N,
        twoZoneMertensBudget K δ (k+1) * abelWidth k) ≤
      ∑ k ∈ Finset.range N,
        ((if k+1 < K then ((k+1 : ℕ) : ℝ)*abelWidth k else 0) +
          δ * ((k+1 : ℕ) : ℝ)*abelWidth k) := by
    apply Finset.sum_le_sum
    intro k hk
    exact hpoint k hk
  have hhead :
      (∑ k ∈ Finset.range N,
        if k + 1 < K then ((k+1 : ℕ) : ℝ)*abelWidth k else 0) =
      earlyAbelCost K N := by
    simp [earlyAbelCost, earlyAbelPrefix, Finset.sum_filter]
  calc
    _ ≤ ∑ k ∈ Finset.range N,
        ((if k+1 < K then ((k+1 : ℕ) : ℝ)*abelWidth k else 0) +
          δ * ((k+1 : ℕ) : ℝ)*abelWidth k) := hsum
    _ = earlyAbelCost K N +
        δ * (∑ k ∈ Finset.range N,
          ((k+1 : ℕ) : ℝ)*abelWidth k) := by
      rw [Finset.sum_add_distrib, hhead, Finset.mul_sum]

/-- Stronger finite source transfer, with the sharp square-root
scale of the actual positive finite HEAD.
This is conditional ONLY on the literal PNT-Mertens prefix tail,
not on RH or on a bound for the desired strong packet. -/
theorem sampleResidue_abs_le_sqrtHead
    (K N : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ) :
    |sampleResidue (N+1)| ≤
      2 * Real.sqrt (K : ℝ) + 2 * δ * Real.sqrt (N : ℝ) := by
  have hsrc := sampleResidue_abs_le_twoZone K N δ hM
  have hhead := earlyAbelCost_le_two_sqrt K N
  have hsplit := twoZone_budget_le_sqrt_head K N δ hδ
  have hfull := abelWidth_weighted_sum_le_two_sqrt N
  have hδfull := mul_le_mul_of_nonneg_left hfull hδ
  linarith

/-- At the ORIGINAL log-integer birth times the complete physical
pickup inherits the better 4 sqrt(K) head. -/
theorem wholePickup_log_nat_abs_le_sqrtHead
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ)
    (n : ℕ) (hn : 1 ≤ n) :
    |wholePickup (Real.log (n : ℝ))| ≤
      4 * Real.sqrt (K : ℝ) +
        4 * δ * Real.sqrt (n : ℝ) := by
  have he := wholePickup_log_eq_sampleResidue hn
  have hN : n - 1 + 1 = n := Nat.sub_add_cancel hn
  have hb := sampleResidue_abs_le_sqrtHead K (n-1) δ hδ hM
  rw [hN] at hb
  have hs : Real.sqrt (n-1 : ℕ) ≤ Real.sqrt (n : ℝ) :=
    Real.sqrt_le_sqrt (by exact_mod_cast Nat.sub_le n 1)
  have hmul := mul_le_mul_of_nonneg_left hs
    (by positivity : 0 ≤ 4 * δ)
  rw [he, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  linarith

end GRWTSK.NumberTheory.Moebius.StrongMertensOptimalHead
