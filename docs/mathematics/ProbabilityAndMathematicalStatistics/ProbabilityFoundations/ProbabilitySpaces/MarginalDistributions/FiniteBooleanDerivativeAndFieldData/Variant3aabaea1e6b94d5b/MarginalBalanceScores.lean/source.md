# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.MarginalDistributions.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.MarginalBalanceScores

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0b79b548a2012dbdf9497d3caa034411d533544` · SHA-256 `637eee202f95d8680baca4c4b51bbf50e4a51158aa7cd0e431a024908daf61c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
MarginalBalanceScores — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c
Organized SHA-256: 4687f67b690e5415243817699c85526f104c35e7633c77671b6d20a5052ac531
PMD: 510.8.010.010.060 marginal distributions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete marginal-frequency bounds and both rational score characterizations, all private bias/variance helpers and exact width-zero convention. Original containing namespaces remain exact for historical type/method extensions; physical mathematical taxonomy is GRWTSK. No joint admission of duplicate historical declarations or provider replacement is asserted. -/

import BitMatrix.Quantization.Core
import BitMatrix.Reduction.SAT
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.DoubleCounting.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.DifferentialCountsAndParity

/-!
# Exact finite avalanche semantics

This module studies Boolean derivatives of fixed-width transformations using
`BitMatrix.Reduction.SAT.Bits`; no second bit-vector representation is introduced.

For a transformation `H` and input `x`, `localJacobian H x` is one exact
Boolean matrix.  Its `(i,j)` entry records whether output bit `j` changes when
input bit `i` is flipped at that particular input.  SAC entries are different:
they aggregate those local observations over the entire finite input domain.

Derivative values are constant on the two endpoints of every input-difference
edge.  A nonzero difference acts without fixed points, so every differential
fiber, and in particular every one-bit SAC count, is paired and therefore
even.  Injectivity rules out only the zero output difference; it does not force
the remaining differences to be balanced.  The identity permutation below is
the canonical counterexample to any claim that bijectivity alone supplies
avalanche diffusion.

The random-function weight law is binomial.  For a random permutation, the
two distinct endpoints of a fixed input edge must have distinct outputs, so
the corresponding law is the binomial law conditioned on a nonzero output
difference.  These are fixed-edge distributions (equivalently, ensemble
expectations of empirical edge histograms), not independence assertions about
all edges in one sampled function or permutation.

Finally, SAC scores measure marginal balance only.  Even perfect one-bit
marginals need not make different output-flip bits independent; the concrete
three-bit permutation in `BitMatrix.Tests.Avalanche` witnesses this with a
nonzero pair correlation.
-/

namespace BitMatrix.Dynamics.Avalanche

open BitMatrix.Reduction.SAT
open scoped BigOperators

/-! ## Exact SAC marginals and positivity scores -/

/-- A SAC count cannot exceed the finite input-domain cardinality. -/
theorem sacCount_le {n : Nat} (H : Bits n → Bits n) (i j : Fin n) :
    sacCount H i j ≤ 2 ^ n := by
  simp only [sacCount]
  calc
    (Finset.univ.filter fun x => derivativeBit H i j x = true).card ≤
        (Finset.univ : Finset (Bits n)).card := Finset.card_filter_le _ _
    _ = Fintype.card (Bits n) := Finset.card_univ
    _ = 2 ^ n := card_bits n

/-- Every exact SAC frequency is nonnegative. -/
theorem sacEntry_nonneg {n : Nat} (H : Bits n → Bits n) (i j : Fin n) :
    0 ≤ sacEntry H i j := by
  exact div_nonneg (by positivity) (by positivity)

/-- Every exact SAC frequency is at most one. -/
theorem sacEntry_le_one {n : Nat} (H : Bits n → Bits n) (i j : Fin n) :
    sacEntry H i j ≤ 1 := by
  rw [sacEntry]
  apply (div_le_one (by positivity : (0 : ℚ) < (2 : ℚ) ^ n)).2
  exact_mod_cast sacCount_le H i j

/-- Strict SAC is exactly the assertion that every rational SAC entry is `1/2`. -/
theorem strictSAC_iff_sacEntry_eq_half {n : Nat} (H : Bits n → Bits n) :
    StrictSAC H ↔ ∀ i j, sacEntry H i j = (1 / 2 : ℚ) := by
  constructor
  · intro h i j
    have hcast : (2 * sacCount H i j : Nat) = 2 ^ n := h i j
    have hcast' : (2 : ℚ) * sacCount H i j = (2 ^ n : Nat) := by
      exact_mod_cast hcast
    rw [sacEntry, div_eq_iff (by positivity : (2 : ℚ) ^ n ≠ 0)]
    norm_num at hcast'
    nlinarith
  · intro h i j
    have hij := h i j
    rw [sacEntry, div_eq_iff (by positivity : (2 : ℚ) ^ n ≠ 0)] at hij
    have hcast : ((2 * sacCount H i j : Nat) : ℚ) = (2 ^ n : Nat) := by
      push_cast
      nlinarith
    exact_mod_cast hcast

/-- On `[0,1]`, the doubled absolute bias is at most one. -/
theorem abs_two_mul_sub_one_le_one {s : ℚ} (h0 : 0 ≤ s) (h1 : s ≤ 1) :
    |2 * s - 1| ≤ 1 := by
  rw [abs_le]
  constructor <;> linarith

private theorem four_mul_variance_nonneg {s : ℚ}
    (_h0 : 0 ≤ s) (_h1 : s ≤ 1) :
    0 ≤ 4 * s * (1 - s) := by
  positivity

/-- The scaled Bernoulli variance `4s(1-s)` is bounded by one. -/
theorem four_mul_variance_le_one {s : ℚ} (_h0 : 0 ≤ s) (_h1 : s ≤ 1) :
    4 * s * (1 - s) ≤ 1 := by
  nlinarith [sq_nonneg (2 * s - 1)]

private theorem four_mul_variance_eq_one_iff {s : ℚ}
    (_h0 : 0 ≤ s) (_h1 : s ≤ 1) :
    4 * s * (1 - s) = 1 ↔ s = 1 / 2 := by
  constructor
  · intro h
    nlinarith [sq_nonneg (2 * s - 1)]
  · intro h
    rw [h]
    norm_num

/--
Average absolute-bias positivity.  At width zero there are no marginal
conditions, strict SAC is vacuous, and the score is defined to be one.
-/
def sacScore {n : Nat} (H : Bits n → Bits n) : ℚ :=
  if n = 0 then
    1
  else
    1 -
      (∑ i : Fin n, ∑ j : Fin n, |2 * sacEntry H i j - 1|) /
      ((n * n : Nat) : ℚ)

/--
Average scaled Bernoulli variance of the SAC marginals, with the same vacuous
width-zero convention as `sacScore`.
-/
def varianceScore {n : Nat} (H : Bits n → Bits n) : ℚ :=
  if n = 0 then
    1
  else
    (∑ i : Fin n, ∑ j : Fin n,
      4 * sacEntry H i j * (1 - sacEntry H i j)) /
    ((n * n : Nat) : ℚ)

private theorem bias_sum_nonneg {n : Nat} (H : Bits n → Bits n) :
    0 ≤ ∑ i : Fin n, ∑ j : Fin n, |2 * sacEntry H i j - 1| := by
  exact Finset.sum_nonneg fun _ _ =>
    Finset.sum_nonneg fun _ _ => abs_nonneg _

private theorem bias_sum_le {n : Nat} (H : Bits n → Bits n) :
    (∑ i : Fin n, ∑ j : Fin n, |2 * sacEntry H i j - 1|) ≤
      ((n * n : Nat) : ℚ) := by
  calc
    (∑ i : Fin n, ∑ j : Fin n, |2 * sacEntry H i j - 1|) ≤
        ∑ i : Fin n, ∑ _j : Fin n, (1 : ℚ) := by
          exact Finset.sum_le_sum fun i _ =>
            Finset.sum_le_sum fun j _ =>
              abs_two_mul_sub_one_le_one
                (sacEntry_nonneg H i j) (sacEntry_le_one H i j)
    _ = ((n * n : Nat) : ℚ) := by simp

private theorem variance_sum_nonneg {n : Nat} (H : Bits n → Bits n) :
    0 ≤ ∑ i : Fin n, ∑ j : Fin n,
      4 * sacEntry H i j * (1 - sacEntry H i j) := by
  exact Finset.sum_nonneg fun i _ => Finset.sum_nonneg fun j _ =>
    four_mul_variance_nonneg (sacEntry_nonneg H i j) (sacEntry_le_one H i j)

private theorem variance_sum_le {n : Nat} (H : Bits n → Bits n) :
    (∑ i : Fin n, ∑ j : Fin n,
      4 * sacEntry H i j * (1 - sacEntry H i j)) ≤
      ((n * n : Nat) : ℚ) := by
  calc
    (∑ i : Fin n, ∑ j : Fin n,
      4 * sacEntry H i j * (1 - sacEntry H i j)) ≤
        ∑ i : Fin n, ∑ _j : Fin n, (1 : ℚ) := by
          exact Finset.sum_le_sum fun i _ =>
            Finset.sum_le_sum fun j _ =>
              four_mul_variance_le_one
                (sacEntry_nonneg H i j) (sacEntry_le_one H i j)
    _ = ((n * n : Nat) : ℚ) := by simp

/-- The absolute-bias score is nonnegative. -/
theorem sacScore_nonneg {n : Nat} (H : Bits n → Bits n) :
    0 ≤ sacScore H := by
  by_cases hn : n = 0
  · simp [sacScore, hn]
  · rw [sacScore, if_neg hn]
    have hden : (0 : ℚ) < ((n * n : Nat) : ℚ) := by positivity
    have hquot :
        (∑ i : Fin n, ∑ j : Fin n, |2 * sacEntry H i j - 1|) /
            ((n * n : Nat) : ℚ) ≤ 1 :=
      (div_le_one hden).2 (bias_sum_le H)
    linarith

/-- The absolute-bias score is at most one. -/
theorem sacScore_le_one {n : Nat} (H : Bits n → Bits n) :
    sacScore H ≤ 1 := by
  by_cases hn : n = 0
  · simp [sacScore, hn]
  · rw [sacScore, if_neg hn]
    have hden : (0 : ℚ) ≤ ((n * n : Nat) : ℚ) := by positivity
    have hquot :
        0 ≤ (∑ i : Fin n, ∑ j : Fin n,
          |2 * sacEntry H i j - 1|) / ((n * n : Nat) : ℚ) :=
      div_nonneg (bias_sum_nonneg H) hden
    linarith

/-- The absolute-bias score equals one exactly at strict SAC balance. -/
theorem sacScore_eq_one_iff {n : Nat} (H : Bits n → Bits n) :
    sacScore H = 1 ↔ StrictSAC H := by
  by_cases hn : n = 0
  · subst n
    simp [sacScore, StrictSAC]
  · rw [strictSAC_iff_sacEntry_eq_half]
    constructor
    · intro hscore
      rw [sacScore, if_neg hn] at hscore
      have hden : (((n * n : Nat) : ℚ)) ≠ 0 := by positivity
      have hsum :
          (∑ i : Fin n, ∑ j : Fin n,
            |2 * sacEntry H i j - 1|) = 0 := by
        have hdiv :
            (∑ i : Fin n, ∑ j : Fin n,
              |2 * sacEntry H i j - 1|) / ((n * n : Nat) : ℚ) = 0 := by
          linarith
        exact (div_eq_zero_iff).mp hdiv |>.resolve_right hden
      intro i j
      have hi : (∑ j : Fin n, |2 * sacEntry H i j - 1|) = 0 :=
        (Finset.sum_eq_zero_iff_of_nonneg fun i _ =>
          Finset.sum_nonneg fun j _ => abs_nonneg _).mp hsum i
            (Finset.mem_univ i)
      have hij : |2 * sacEntry H i j - 1| = 0 :=
        (Finset.sum_eq_zero_iff_of_nonneg fun j _ => abs_nonneg _).mp hi j
          (Finset.mem_univ j)
      rw [abs_eq_zero] at hij
      linarith
    · intro hhalf
      rw [sacScore, if_neg hn]
      simp [hhalf]

/-- The variance score is nonnegative. -/
theorem varianceScore_nonneg {n : Nat} (H : Bits n → Bits n) :
    0 ≤ varianceScore H := by
  by_cases hn : n = 0
  · simp [varianceScore, hn]
  · rw [varianceScore, if_neg hn]
    exact div_nonneg (variance_sum_nonneg H) (by positivity)

/-- The variance score is at most one. -/
theorem varianceScore_le_one {n : Nat} (H : Bits n → Bits n) :
    varianceScore H ≤ 1 := by
  by_cases hn : n = 0
  · simp [varianceScore, hn]
  · rw [varianceScore, if_neg hn]
    exact (div_le_one (by positivity)).2 (variance_sum_le H)

/-- The variance score equals one exactly at strict SAC balance. -/
theorem varianceScore_eq_one_iff {n : Nat} (H : Bits n → Bits n) :
    varianceScore H = 1 ↔ StrictSAC H := by
  by_cases hn : n = 0
  · subst n
    simp [varianceScore, StrictSAC]
  · rw [strictSAC_iff_sacEntry_eq_half]
    constructor
    · intro hscore
      rw [varianceScore, if_neg hn] at hscore
      have hden_pos : (0 : ℚ) < ((n * n : Nat) : ℚ) := by positivity
      have hsum :
          (∑ i : Fin n, ∑ j : Fin n,
            4 * sacEntry H i j * (1 - sacEntry H i j)) =
            ((n * n : Nat) : ℚ) := by
        apply (div_eq_one_iff_eq hden_pos.ne').mp
        exact hscore
      have hdeficit :
          (∑ i : Fin n, ∑ j : Fin n,
            (1 - 4 * sacEntry H i j * (1 - sacEntry H i j))) = 0 := by
        calc
          (∑ i : Fin n, ∑ j : Fin n,
            (1 - 4 * sacEntry H i j * (1 - sacEntry H i j))) =
              (∑ i : Fin n, ((∑ _j : Fin n, (1 : ℚ)) -
                (∑ j : Fin n,
                  4 * sacEntry H i j * (1 - sacEntry H i j)))) := by
                apply Finset.sum_congr rfl
                intro i _
                exact Finset.sum_sub_distrib _ _
          _ = (∑ i : Fin n, ∑ _j : Fin n, (1 : ℚ)) -
              (∑ i : Fin n, ∑ j : Fin n,
                4 * sacEntry H i j * (1 - sacEntry H i j)) :=
                Finset.sum_sub_distrib _ _
          _ = 0 := by rw [hsum]; simp
      intro i j
      have hnonneg : ∀ (i j : Fin n),
          0 ≤ 1 - 4 * sacEntry H i j * (1 - sacEntry H i j) := by
        intro i j
        linarith [four_mul_variance_le_one
          (sacEntry_nonneg H i j) (sacEntry_le_one H i j)]
      have hi :
          (∑ j : Fin n,
            (1 - 4 * sacEntry H i j * (1 - sacEntry H i j))) = 0 :=
        (Finset.sum_eq_zero_iff_of_nonneg fun i _ =>
          Finset.sum_nonneg fun j _ => hnonneg i j).mp hdeficit i
            (Finset.mem_univ i)
      have hij :
          1 - 4 * sacEntry H i j * (1 - sacEntry H i j) = 0 :=
        (Finset.sum_eq_zero_iff_of_nonneg fun j _ => hnonneg i j).mp hi j
          (Finset.mem_univ j)
      apply (four_mul_variance_eq_one_iff
        (sacEntry_nonneg H i j) (sacEntry_le_one H i j)).mp
      linarith
    · intro hhalf
      rw [varianceScore, if_neg hn]
      norm_num [hhalf]
      exact hn


end BitMatrix.Dynamics.Avalanche
```
