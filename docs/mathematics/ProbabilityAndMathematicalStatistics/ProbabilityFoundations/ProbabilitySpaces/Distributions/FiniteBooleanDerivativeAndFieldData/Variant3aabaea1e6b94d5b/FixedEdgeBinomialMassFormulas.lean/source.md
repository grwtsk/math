# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.FiniteBooleanDerivativeAndFieldData.Variant3aabaea1e6b94d5b.FixedEdgeBinomialMassFormulas

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27e377c0a3a51daf545c16b3566116a6810d9324` · SHA-256 `5bebe3335f3b23c615686823f74a75784491442ddc0f0750e3ea53982624ad17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FixedEdgeBinomialMassFormulas — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3aabaea1e6b94d5b07c708e43795b4c39aa5a298bf88964eeb2f1f83ff5ddf0c
Organized SHA-256: 4687f67b690e5415243817699c85526f104c35e7633c77671b6d20a5052ac531
PMD: 510.8.010.010.040 distributions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact normalized rational binomial mass formulas, positive-parameter conditioning identity and marginal bias; no ensemble/sample-space construction or edge independence is added. Original containing namespaces remain exact for historical type/method extensions; physical mathematical taxonomy is GRWTSK. No joint admission of duplicate historical declarations or provider replacement is asserted. -/

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

/-! ## Exact fixed-edge random baselines -/

/-- Binomial output-difference weight mass for a uniformly random function edge. -/
def functionWeightMass (n k : Nat) : ℚ :=
  Nat.choose n k / 2 ^ n

/--
Output-difference weight mass for a uniformly random permutation edge: the
binomial law conditioned on a nonzero difference.
-/
def permutationWeightMass (n k : Nat) : ℚ :=
  if k = 0 then
    0
  else if n = 0 then
    0
  else
    Nat.choose n k / (2 ^ n - 1)

/-- The random-function fixed-edge weight masses sum to one. -/
theorem functionWeightMass_sum (n : Nat) :
    ∑ k ∈ Finset.range (n + 1), functionWeightMass n k = 1 := by
  simp only [functionWeightMass, ← Finset.sum_div, ← Nat.cast_sum]
  rw [Nat.sum_range_choose]
  norm_num

/-- A permutation edge never has zero output difference. -/
@[simp]
theorem permutationWeightMass_zero (n : Nat) :
    permutationWeightMass n 0 = 0 := by
  simp [permutationWeightMass]

/-- The positive-weight random-permutation masses sum to one. -/
theorem permutationWeightMass_sum {n : Nat} (hn : 0 < n) :
    ∑ k ∈ Finset.range (n + 1), permutationWeightMass n k = 1 := by
  have hn0 : n ≠ 0 := Nat.ne_of_gt hn
  have hmem : 0 ∈ Finset.range (n + 1) := by simp
  have hsumNat :
      ∑ k ∈ (Finset.range (n + 1)).erase 0, Nat.choose n k =
        2 ^ n - 1 := by
    have htotal := Nat.sum_range_choose n
    have herase :=
      Finset.sum_erase_add (Finset.range (n + 1)) (Nat.choose n) hmem
    simp only [Nat.choose_zero_right] at herase
    omega
  simp only [permutationWeightMass, if_neg hn0]
  rw [Finset.sum_ite]
  simp only [Finset.sum_const_zero, zero_add]
  rw [Finset.filter_ne']
  simp only [← Finset.sum_div, ← Nat.cast_sum, hsumNat]
  have hden : (0 : ℚ) < 2 ^ n - 1 := by
    exact sub_pos.mpr (by exact_mod_cast Nat.one_lt_two_pow hn0)
  have hleNat : 1 ≤ 2 ^ n :=
    Nat.one_le_iff_ne_zero.mpr (pow_ne_zero n (by decide : (2 : Nat) ≠ 0))
  rw [Nat.cast_sub hleNat, Nat.cast_one]
  norm_num
  exact hden.ne'

/-- The permutation law is the function law conditioned on positive weight. -/
theorem permutationWeightMass_eq_conditioned {n k : Nat}
    (hn : 0 < n) (hk : 0 < k) :
    permutationWeightMass n k =
      functionWeightMass n k / (1 - functionWeightMass n 0) := by
  have hn0 : n ≠ 0 := Nat.ne_of_gt hn
  have hk0 : k ≠ 0 := Nat.ne_of_gt hk
  have hpow : (2 ^ n : ℚ) ≠ 0 := by positivity
  have hden : (2 ^ n : ℚ) - 1 ≠ 0 := by
    exact (sub_pos.mpr (by exact_mod_cast Nat.one_lt_two_pow hn0)).ne'
  simp only [permutationWeightMass, functionWeightMass, if_neg hk0,
    if_neg hn0, Nat.choose_zero_right]
  field_simp [hpow, hden]
  norm_num

/-- Fixed-coordinate flip marginal under the random-permutation baseline. -/
def permutationMarginal (n : Nat) : ℚ :=
  if n = 0 then 0 else 2 ^ (n - 1) / (2 ^ n - 1)

/-- The permutation marginal exceeds one half by its exact conditioning bias. -/
theorem permutationMarginal_sub_half {n : Nat} (hn : 0 < n) :
    permutationMarginal n - 1 / 2 =
      1 / (2 * (2 ^ n - 1)) := by
  have hn0 : n ≠ 0 := Nat.ne_of_gt hn
  have hpow : (2 ^ n : ℚ) = 2 * 2 ^ (n - 1) := by
    have hnEq : n - 1 + 1 = n :=
      Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.mpr hn0)
    conv_lhs => rw [← hnEq, pow_succ]
    ring
  have hden : (2 ^ n : ℚ) - 1 ≠ 0 := by
    exact (sub_pos.mpr (by exact_mod_cast Nat.one_lt_two_pow hn0)).ne'
  simp only [permutationMarginal, if_neg hn0]
  field_simp [hden]
  rw [hpow]
  ring


end BitMatrix.Dynamics.Avalanche
```
