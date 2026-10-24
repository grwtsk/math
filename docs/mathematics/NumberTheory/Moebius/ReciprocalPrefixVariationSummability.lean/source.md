# Complete source: GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationSummability

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9594428553fcd0fc56d94d9aaa363943dcc5e2fc` · SHA-256 `44a0056e8150f3c6722345d581dff97afea958b69d75b8788e369c73702fe790`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds

/-!
# Summable reciprocal-prefix square variation

The deterministic flux-kernel bound and finite Cauchy--Schwarz reduce the
critical boundary to one explicit weighted square-variation series for the
ordinary reciprocal Möbius prefix.  The summability premise remains open.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationSummability

open GRWTSK.Analysis.Integration.ExponentialInterval
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy
open GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds

/-- Explicit logarithmically weighted square-variation majorant. -/
def reciprocalLogVariationMajorant (n : ℕ) : ℝ :=
  4 * (4 + 2 * Real.log n) * reciprocalPrefixVariationSquare n *
    (n : ℝ) ^ (-(2 : ℝ))

theorem reciprocalLogVariationMajorant_nonneg (n : ℕ) :
    0 ≤ reciprocalLogVariationMajorant n := by
  have hlog : 0 ≤ Real.log (n : ℝ) := by
    cases n with
    | zero => simp
    | succ n => exact Real.log_nonneg (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n))
  unfold reciprocalLogVariationMajorant reciprocalPrefixVariationSquare
  positivity

/-- Each Cauchy block is controlled by the explicit logarithmic
square-variation majorant. -/
theorem reciprocalCauchyBlock_le_logVariationMajorant {n : ℕ} (hn : 1 ≤ n) :
    reciprocalCauchyBlock n ≤ reciprocalLogVariationMajorant n := by
  have hx : (0 : ℝ) < n := by exact_mod_cast hn
  have hlog : Real.log (n : ℝ) ≤ Real.log ((n + 1 : ℕ) : ℝ) := by
    exact Real.strictMonoOn_log.monotoneOn
      (by change (0 : ℝ) < n; exact hx)
      (by change (0 : ℝ) < ((n + 1 : ℕ) : ℝ); positivity)
      (by exact_mod_cast Nat.le_succ n)
  have hV : 0 ≤ reciprocalPrefixVariationSquare n := by
    unfold reciprocalPrefixVariationSquare
    positivity
  have hL : 0 ≤ 4 + 2 * Real.log n := by
    have : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
    positivity
  have hf : Continuous (fun u : ℝ =>
      Real.exp (-u) *
        (4 * reciprocalFluxWeightSquareMass u n *
          reciprocalPrefixVariationSquare n)) := by
    unfold reciprocalFluxWeightSquareMass reciprocalFluxWeight
    fun_prop
  have hg : Continuous (fun u : ℝ =>
      Real.exp (-u) *
        (4 * (4 + 2 * Real.log n) * reciprocalPrefixVariationSquare n)) := by
    fun_prop
  have hint :
      reciprocalCauchyBlock n ≤
        ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
          Real.exp (-u) *
            (4 * (4 + 2 * Real.log n) * reciprocalPrefixVariationSquare n) := by
    unfold reciprocalCauchyBlock
    apply intervalIntegral.integral_mono_on hlog
      (hf.intervalIntegrable _ _) (hg.intervalIntegrable _ _)
    intro u hu
    gcongr
    exact reciprocalFluxWeightSquareMass_le_log hn hu.1
  calc
    reciprocalCauchyBlock n ≤
        ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
          Real.exp (-u) *
            (4 * (4 + 2 * Real.log n) * reciprocalPrefixVariationSquare n) := hint
    _ = 4 * (4 + 2 * Real.log n) * reciprocalPrefixVariationSquare n *
        exponentialLogDrop 1 n := by
      rw [show (fun u : ℝ => Real.exp (-u) *
          (4 * (4 + 2 * Real.log n) * reciprocalPrefixVariationSquare n)) =
          fun u : ℝ => (4 * (4 + 2 * Real.log n) *
            reciprocalPrefixVariationSquare n) * Real.exp (-1 * u) by
        funext u
        rw [show -(1 : ℝ) * u = -u by ring]
        ring]
      rw [intervalIntegral.integral_const_mul,
        integral_exp_neg_mul (by norm_num : (1 : ℝ) ≠ 0)]
      unfold exponentialLogDrop
      ring
    _ ≤ 4 * (4 + 2 * Real.log n) * reciprocalPrefixVariationSquare n *
        (n : ℝ) ^ (-(2 : ℝ)) := by
      gcongr
      have h := exponentialLogDrop_le_rpow (a := (1 : ℝ)) (by norm_num) hn
      norm_num at h
      simpa [Real.rpow_neg hx.le, Real.rpow_two] using h
    _ = reciprocalLogVariationMajorant n := rfl

/-- The remaining arithmetic premise: summability of endpoint-centered
reciprocal-prefix square variation with the exact logarithmic kernel cost. -/
def ReciprocalLogVariationSummable : Prop :=
  Summable reciprocalLogVariationMajorant

theorem criticalBoundary_of_reciprocalLogVariationSummable
    (hs : ReciprocalLogVariationSummable) : CriticalBoundaryVerticalLineUniform := by
  apply criticalBoundary_of_reciprocalCauchyBlockUniform
  refine ⟨∑' n : ℕ, reciprocalLogVariationMajorant n,
    tsum_nonneg reciprocalLogVariationMajorant_nonneg, ?_⟩
  intro N
  calc
    (∑ n ∈ Finset.Icc 1 N, reciprocalCauchyBlock n) ≤
        ∑ n ∈ Finset.Icc 1 N, reciprocalLogVariationMajorant n := by
      apply Finset.sum_le_sum
      intro n hn
      exact reciprocalCauchyBlock_le_logVariationMajorant (Finset.mem_Icc.mp hn).1
    _ ≤ ∑' n : ℕ, reciprocalLogVariationMajorant n :=
      hs.sum_le_tsum _ (fun n _ => reciprocalLogVariationMajorant_nonneg n)

end GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationSummability

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationSummability.reciprocalCauchyBlock_le_logVariationMajorant
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationSummability.criticalBoundary_of_reciprocalLogVariationSummable
```
