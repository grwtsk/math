# Complete source: GRWTSK.Algebra.UniversalAlgebra.ApproximationCorollaries.Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e81ffcf31e24f1558804cfccec857ec0a72802bb` · SHA-256 `79cd13fad0fec42b9400f4e627c8eb82835b43994b92fe131de4a4e1f73b6ecb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.GeneralizedContinuedFractionOfIsSimpleContinuedFraction.Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.GeneralizedContinuedFractionOfIsSimpleContinuedFraction.Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/ContinuedFractions/Computation/ApproximationCorollaries.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kevin Kappelmann. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Kappelmann
-/
import Mathlib.Algebra.ContinuedFractions.Computation.Approximations
import Mathlib.Algebra.ContinuedFractions.ConvergentsEquiv
import Mathlib.Algebra.Order.Archimedean
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Topology.Order.Basic


namespace GRWTSK.Algebra.UniversalAlgebra.GeneralizedContinuedFractionOfIsSimpleContinuedFraction.Variant3c8c8a9a1827037babee8e0577afc35a6cef05be2c257375a25b9d936d217f7a

#align_import algebra.continued_fractions.computation.approximation_corollaries from "leanprover-community/mathlib"@"f0c8bf9245297a541f468be517f1bde6195105e9"

/-!
# Corollaries From Approximation Lemmas (`Algebra.ContinuedFractions.Computation.Approximations`)

## Summary

We show that the generalized_continued_fraction given by `GeneralizedContinuedFraction.of` in fact
is a (regular) continued fraction. Using the equivalence of the convergents computations
(`GeneralizedContinuedFraction.convergents` and `GeneralizedContinuedFraction.convergents'`) for
continued fractions (see `Algebra.ContinuedFractions.ConvergentsEquiv`), it follows that the
convergents computations for `GeneralizedContinuedFraction.of` are equivalent.

Moreover, we show the convergence of the continued fractions computations, that is
`(GeneralizedContinuedFraction.of v).convergents` indeed computes `v` in the limit.

## Main Definitions

- `ContinuedFraction.of` returns the (regular) continued fraction of a value.

## Main Theorems

- `GeneralizedContinuedFraction.of_convergents_eq_convergents'` shows that the convergents
  computations for `GeneralizedContinuedFraction.of` are equivalent.
- `GeneralizedContinuedFraction.of_convergence` shows that
  `(GeneralizedContinuedFraction.of v).convergents` converges to `v`.

## Tags

convergence, fractions
-/


variable {K : Type*} (v : K) [LinearOrderedField K] [FloorRing K]

open GeneralizedContinuedFraction (of)

open GeneralizedContinuedFraction

theorem GeneralizedContinuedFraction.of_isSimpleContinuedFraction :
    (of v).IsSimpleContinuedFraction := fun _ _ nth_part_num_eq =>
  of_part_num_eq_one nth_part_num_eq
#align generalized_continued_fraction.of_is_simple_continued_fraction GeneralizedContinuedFraction.of_isSimpleContinuedFraction

/-- Creates the simple continued fraction of a value. -/
nonrec def SimpleContinuedFraction.of : SimpleContinuedFraction K :=
  ⟨of v, GeneralizedContinuedFraction.of_isSimpleContinuedFraction v⟩
#align simple_continued_fraction.of SimpleContinuedFraction.of

theorem SimpleContinuedFraction.of_isContinuedFraction :
    (SimpleContinuedFraction.of v).IsContinuedFraction := fun _ _ nth_part_denom_eq =>
  lt_of_lt_of_le zero_lt_one (of_one_le_get?_part_denom nth_part_denom_eq)
#align simple_continued_fraction.of_is_continued_fraction SimpleContinuedFraction.of_isContinuedFraction

/-- Creates the continued fraction of a value. -/
def ContinuedFraction.of : ContinuedFraction K :=
  ⟨SimpleContinuedFraction.of v, SimpleContinuedFraction.of_isContinuedFraction v⟩
#align continued_fraction.of ContinuedFraction.of

namespace GeneralizedContinuedFraction

theorem of_convergents_eq_convergents' : (of v).convergents = (of v).convergents' :=
  @ContinuedFraction.convergents_eq_convergents' _ _ (ContinuedFraction.of v)
#align generalized_continued_fraction.of_convergents_eq_convergents' GeneralizedContinuedFraction.of_convergents_eq_convergents'

/-- The recurrence relation for the `convergents` of the continued fraction expansion
of an element `v` of `K` in terms of the convergents of the inverse of its fractional part.
-/
theorem convergents_succ (n : ℕ) :
    (of v).convergents (n + 1) = ⌊v⌋ + 1 / (of (Int.fract v)⁻¹).convergents n := by
  rw [of_convergents_eq_convergents', convergents'_succ, of_convergents_eq_convergents']
#align generalized_continued_fraction.convergents_succ GeneralizedContinuedFraction.convergents_succ

section Convergence

/-!
### Convergence

We next show that `(GeneralizedContinuedFraction.of v).convergents v` converges to `v`.
-/


variable [Archimedean K]

open Nat

theorem of_convergence_epsilon :
    ∀ ε > (0 : K), ∃ N : ℕ, ∀ n ≥ N, |v - (of v).convergents n| < ε := by
  intro ε ε_pos
  -- use the archimedean property to obtian a suitable N
  rcases(exists_nat_gt (1 / ε) : ∃ N' : ℕ, 1 / ε < N') with ⟨N', one_div_ε_lt_N'⟩
  let N := max N' 5
  -- set minimum to 5 to have N ≤ fib N work
  exists N
  intro n n_ge_N
  let g := of v
  cases' Decidable.em (g.TerminatedAt n) with terminated_at_n not_terminated_at_n
  · have : v = g.convergents n := of_correctness_of_terminatedAt terminated_at_n
    have : v - g.convergents n = 0 := sub_eq_zero.mpr this
    rw [this]
    exact_mod_cast ε_pos
  · let B := g.denominators n
    let nB := g.denominators (n + 1)
    have abs_v_sub_conv_le : |v - g.convergents n| ≤ 1 / (B * nB) :=
      abs_sub_convergents_le not_terminated_at_n
    suffices : 1 / (B * nB) < ε; exact lt_of_le_of_lt abs_v_sub_conv_le this
    -- show that `0 < (B * nB)` and then multiply by `B * nB` to get rid of the division
    have nB_ineq : (fib (n + 2) : K) ≤ nB :=
      haveI : ¬g.TerminatedAt (n + 1 - 1) := not_terminated_at_n
      succ_nth_fib_le_of_nth_denom (Or.inr this)
    have B_ineq : (fib (n + 1) : K) ≤ B :=
      haveI : ¬g.TerminatedAt (n - 1) := mt (terminated_stable n.pred_le) not_terminated_at_n
      succ_nth_fib_le_of_nth_denom (Or.inr this)
    have zero_lt_B : 0 < B :=
      haveI : (0 : K) < fib (n + 1) := by exact_mod_cast fib_pos n.zero_lt_succ
      lt_of_lt_of_le this B_ineq
    have zero_lt_mul_conts : 0 < B * nB := by
      have : 0 < nB :=
        haveI : (0 : K) < fib (n + 2) := by exact_mod_cast fib_pos (n + 1).zero_lt_succ
        lt_of_lt_of_le this nB_ineq
      solve_by_elim [mul_pos]
    suffices : 1 < ε * (B * nB); exact (div_lt_iff zero_lt_mul_conts).mpr this
    -- use that `N ≥ n` was obtained from the archimedean property to show the following
    have one_lt_ε_mul_N : 1 < ε * n := by
      have one_lt_ε_mul_N' : 1 < ε * (N' : K) := (div_lt_iff' ε_pos).mp one_div_ε_lt_N'
      have : (N' : K) ≤ N := by exact_mod_cast le_max_left _ _
      have : ε * N' ≤ ε * n :=
        (mul_le_mul_left ε_pos).mpr (le_trans this (by exact_mod_cast n_ge_N))
      exact lt_of_lt_of_le one_lt_ε_mul_N' this
    suffices : ε * n ≤ ε * (B * nB); exact lt_of_lt_of_le one_lt_ε_mul_N this
    -- cancel `ε`
    suffices : (n : K) ≤ B * nB;
    exact (mul_le_mul_left ε_pos).mpr this
    show (n : K) ≤ B * nB
    calc
      (n : K) ≤ fib n := by exact_mod_cast le_fib_self <| le_trans (le_max_right N' 5) n_ge_N
      _ ≤ fib (n + 1) := by exact_mod_cast fib_le_fib_succ
      _ ≤ fib (n + 1) * fib (n + 1) := by exact_mod_cast (fib (n + 1)).le_mul_self
      _ ≤ fib (n + 1) * fib (n + 2) :=
        (mul_le_mul_of_nonneg_left (by exact_mod_cast fib_le_fib_succ)
          (by exact_mod_cast (fib (n + 1)).zero_le))
      _ ≤ B * nB :=
        mul_le_mul B_ineq nB_ineq (by exact_mod_cast (fib (n + 2)).zero_le) (le_of_lt zero_lt_B)
#align generalized_continued_fraction.of_convergence_epsilon GeneralizedContinuedFraction.of_convergence_epsilon

attribute [local instance] Preorder.topology

theorem of_convergence [OrderTopology K] :
    Filter.Tendsto (of v).convergents Filter.atTop <| nhds v := by
  simpa [LinearOrderedAddCommGroup.tendsto_nhds, abs_sub_comm] using of_convergence_epsilon v
#align generalized_continued_fraction.of_convergence GeneralizedContinuedFraction.of_convergence

end Convergence

end GeneralizedContinuedFraction
```
