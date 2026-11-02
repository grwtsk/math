/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSmoothBirthSectorTransport
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# One unsigned budget for the exact dense Möbius smoothing defect

The preceding smooth-birth dense transport applied the complete signed
defect and the short-gap signed defect separately (a 2K allowance).
Here an exact *ordered* complementary-pair identity gives a single K
allowance from the complete nonnegative UNSIGNED Gram difference.

The concrete kernel-positivity and uniform integral K estimate are
identified as explicit hypotheses, not hidden arithmetic assumptions.
The accompanying independent paper argument supplies the genuine
nonnegative smooth-birth estimate for 0 < kappa <= 1 and a flat step
eta in [0,1], but its Lean proof remains NOT_RUN/NOT_FORMALIZED.

No RH cancellation theorem or Kakeya tube-to-arithmetic map is asserted.
-/

namespace GRWTSK.NumberTheory.Moebius.SmoothBirthDenseSingleBudget

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.SmoothBirthGramRegularization
open GRWTSK.NumberTheory.Moebius.SmoothBirthSectorTransport
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII

/-- General finite subtraction identity, with EVERY original ordered
index and orientation. No antisymmetry or pair multiplicity change. -/
theorem offDiagonal_sub_gap_eq_complement
    (S : Finset ℕ) (A : Finset ℕ) (f : ℕ → ℕ → ℝ) :
    (∑ m ∈ S, ∑ n ∈ S, if m ≠ n then f m n else 0) -
      (∑ m ∈ S, ∑ n ∈ S,
        if m ≠ n ∧ Nat.dist m n ∈ A then f m n else 0) =
      ∑ m ∈ S, ∑ n ∈ S,
        if m ≠ n ∧ Nat.dist m n ∉ A then f m n else 0 := by
  classical
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n
  · by_cases hA : Nat.dist m n ∈ A
    · simp [h, hA]
    · simp [h, hA]
  · simp [h]

/-- A generic signed dense-complement sum on the original finite
integer inventory, for any coefficient alphabet and kernel defect. -/
def signedComplementDefect
    (S A : Finset ℕ) (c : ℕ → ℝ) (d : ℕ → ℕ → ℝ) : ℝ :=
  ∑ m ∈ S, ∑ n ∈ S,
    if m ≠ n ∧ Nat.dist m n ∉ A then c m * c n * d m n else 0

/-- Complete UNSIGNED Gram defect over the full original ordered
square. Its diagonal terms are used only as nonnegative MAJORANTS,
not inserted into the original cross-energy. -/
def unsignedFullDefect
    (S : Finset ℕ) (d : ℕ → ℕ → ℝ) : ℝ :=
  ∑ m ∈ S, ∑ n ∈ S, d m n

/-- A SINGLE complete unsigned envelope bounds any signed dense
complement with |c(n)|<=1. This is an unconditional finite
inequality, conditional only on the displayed nonnegative kernel. -/
theorem abs_signedComplementDefect_le_unsigned
    (S A : Finset ℕ) (c : ℕ → ℝ) (d : ℕ → ℕ → ℝ)
    (hc : ∀ n ∈ S, |c n| ≤ 1)
    (hd : ∀ m ∈ S, ∀ n ∈ S, 0 ≤ d m n) :
    |signedComplementDefect S A c d| ≤ unsignedFullDefect S d := by
  classical
  have hterm (m : ℕ) (hm : m ∈ S) (n : ℕ) (hn : n ∈ S) :
      |if m ≠ n ∧ Nat.dist m n ∉ A
        then c m * c n * d m n else 0| ≤ d m n := by
    by_cases he : m ≠ n ∧ Nat.dist m n ∉ A
    · simp only [if_pos he]
      have hcoef : |c m| * |c n| ≤ (1 : ℝ) := by
        calc
          |c m| * |c n| ≤ 1 * |c n| :=
            mul_le_mul_of_nonneg_right (hc m hm) (abs_nonneg _)
          _ ≤ 1 * 1 :=
            mul_le_mul_of_nonneg_left (hc n hn) (by norm_num)
          _ = 1 := by ring
      calc
        |c m * c n * d m n| =
            (|c m| * |c n|) * d m n := by
          rw [abs_mul, abs_mul, abs_of_nonneg (hd m hm n hn)]
        _ ≤ 1 * d m n :=
          mul_le_mul_of_nonneg_right hcoef (hd m hm n hn)
        _ = d m n := one_mul _
    · simp [he, hd m hm n hn]
  unfold signedComplementDefect unsignedFullDefect
  calc
    |∑ m ∈ S, ∑ n ∈ S,
      if m ≠ n ∧ Nat.dist m n ∉ A
      then c m * c n * d m n else 0| ≤
        ∑ m ∈ S, |∑ n ∈ S,
          if m ≠ n ∧ Nat.dist m n ∉ A
          then c m * c n * d m n else 0| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ S, ∑ n ∈ S, d m n := by
      apply Finset.sum_le_sum
      intro m hm
      calc
        |∑ n ∈ S,
          if m ≠ n ∧ Nat.dist m n ∉ A
          then c m * c n * d m n else 0| ≤
            ∑ n ∈ S,
              |if m ≠ n ∧ Nat.dist m n ∉ A
                then c m * c n * d m n else 0| :=
          Finset.abs_sum_le_sum_abs _ _
        _ ≤ ∑ n ∈ S, d m n := by
          apply Finset.sum_le_sum
          intro n hn
          exact hterm m hm n hn

/-- The original Möbius coefficients have magnitude at most one.
The proof uses the genuine pinned ArithmeticFunction.moebius source. -/
theorem moebiusReal_abs_le_one (n : ℕ) :
    |moebiusReal n| ≤ 1 := by
  rcases ArithmeticFunction.moebius_eq_or n with h | h | h <;>
    simp [moebiusReal, h]

/-- Exact original long-gap source as a single ordered complement.
This is an identity of the same original kernel, NOT a new estimate. -/
theorem original_dense_eq_complement (ε T : ℝ) :
    denseLongGapSource ε T =
      signedComplementDefect (endpointIndex T) (putnamRateGapSet ε T)
        moebiusReal (pickupResponseGram T) := by
  unfold denseLongGapSource signedComplementDefect
  change
    (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      if m ≠ n then
        moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0) -
    (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      if m ≠ n ∧ Nat.dist m n ∈ putnamRateGapSet ε T then
        moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0) =
    ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      if m ≠ n ∧ Nat.dist m n ∉ putnamRateGapSet ε T then
        moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0
  exact offDiagonal_sub_gap_eq_complement _ _ _

/-- The SAME pair complement under the smoothed response kernel. -/
theorem smooth_dense_eq_complement
    (eta : ℝ → ℝ) (κ ε T : ℝ) :
    smoothDenseLongGapSource eta κ ε T =
      signedComplementDefect (endpointIndex T) (putnamRateGapSet ε T)
        moebiusReal (smoothBirthGram eta κ T) := by
  unfold smoothDenseLongGapSource signedComplementDefect
  change
    (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      if m ≠ n then
        moebiusReal m * moebiusReal n *
          smoothBirthGram eta κ T m n else 0) -
    (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      if m ≠ n ∧ Nat.dist m n ∈ putnamRateGapSet ε T then
        moebiusReal m * moebiusReal n *
          smoothBirthGram eta κ T m n else 0) =
    ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      if m ≠ n ∧ Nat.dist m n ∉ putnamRateGapSet ε T then
        moebiusReal m * moebiusReal n *
          smoothBirthGram eta κ T m n else 0
  exact offDiagonal_sub_gap_eq_complement _ _ _

/-- The original-minus-smooth dense error is a SINGLE genuine signed
sum over the complementary ordered edge inventory. -/
theorem dense_difference_eq_complement_defect
    (eta : ℝ → ℝ) (κ ε T : ℝ) :
    denseLongGapSource ε T - smoothDenseLongGapSource eta κ ε T =
      signedComplementDefect (endpointIndex T) (putnamRateGapSet ε T)
        moebiusReal
        (fun m n => pickupResponseGram T m n -
          smoothBirthGram eta κ T m n) := by
  rw [original_dense_eq_complement, smooth_dense_eq_complement]
  unfold signedComplementDefect
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m ≠ n ∧ Nat.dist m n ∉ putnamRateGapSet ε T
  · simp only [if_pos h]
    ring
  · simp [h]

/-- One unsigned source-bounded budget, without the prior factor two.
Only actual kernel nonnegativity remains a displayed hypothesis. -/
theorem dense_difference_abs_le_unsigned
    (eta : ℝ → ℝ) (κ ε T : ℝ)
    (hkernel : ∀ m ∈ endpointIndex T, ∀ n ∈ endpointIndex T,
      0 ≤ pickupResponseGram T m n - smoothBirthGram eta κ T m n) :
    |denseLongGapSource ε T - smoothDenseLongGapSource eta κ ε T| ≤
      unsignedFullDefect (endpointIndex T)
        (fun m n => pickupResponseGram T m n -
          smoothBirthGram eta κ T m n) := by
  rw [dense_difference_eq_complement_defect]
  exact abs_signedComplementDefect_le_unsigned
    (endpointIndex T) (putnamRateGapSet ε T) moebiusReal
    (fun m n => pickupResponseGram T m n -
      smoothBirthGram eta κ T m n)
    (fun n _ => moebiusReal_abs_le_one n) hkernel

/-- A SINGLE unconditional unsigned upper bound on the genuine
kernel perturbation, combined with actual kernel positivity, suffices
for the sharp one-K fixed-good-scale equivalence.
This theorem does NOT establish these two analytic hypotheses. -/
theorem denseLongGapAllRateOn_iff_smooth_single_budget
    (eta : ℝ → ℝ) (κ K : ℝ) (G : Set ℝ)
    (hK : 0 ≤ K)
    (hkernel : ∀ T : ℝ, 0 ≤ T →
      ∀ m ∈ endpointIndex T, ∀ n ∈ endpointIndex T,
        0 ≤ pickupResponseGram T m n - smoothBirthGram eta κ T m n)
    (hunsigned : ∀ T : ℝ, 0 ≤ T →
      unsignedFullDefect (endpointIndex T)
        (fun m n => pickupResponseGram T m n -
          smoothBirthGram eta κ T m n) ≤ K) :
    DenseLongGapAllRateOn G ↔
      SmoothDenseLongGapAllRateOn eta κ G := by
  change AllPositiveRateOn (fun ε T => denseLongGapSource ε T) G ↔
    AllPositiveRateOn (smoothDenseLongGapSource eta κ) G
  apply allPositiveRateOn_iff_of_uniform_error (K := K) hK
  intro ε T hε hT
  exact (dense_difference_abs_le_unsigned eta κ ε T
    (hkernel T hT)).trans (hunsigned T hT)

end GRWTSK.NumberTheory.Moebius.SmoothBirthDenseSingleBudget
