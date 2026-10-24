# Complete source: GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileCutoff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b5381f60b365e2cbd52ed41d674fa4150fc9af1` · SHA-256 `c262eb31214873f5217c7fa06414c178be217f80265387aca7f3795b2c1b71d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic

/-!
# Complete floor inventory for logarithmic profiles

The comparison inventory includes every label through the
floor, including the last sample and its full following unit interval. Only the
identically zero label one is removed. Strict upper support silence requires a
nonnegative shift. These statements do not prove a sum/integral error price.
-/

namespace GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileCutoff

noncomputable section

/-- A nonnegative logarithmic cutoff has at least one sample and a strict next endpoint. -/
theorem exponential_floor_bounds {U : ℝ} (hU : 0 ≤ U) :
    1 ≤ ⌊Real.exp U⌋₊ ∧ Real.exp U < (⌊Real.exp U⌋₊ : ℝ) + 1 := by
  constructor
  · apply Nat.le_floor
    simpa only [Nat.cast_one, Real.exp_zero] using Real.exp_le_exp.mpr hU
  · exact Nat.lt_floor_add_one _

/-- The entire real upper tail after the last full unit interval is silent. -/
theorem logarithmic_profile_zero_above_floor {F : ℝ → ℝ} {U t x : ℝ}
    (silent : ∀ u : ℝ, U < u → F u = 0) (ht : 0 ≤ t)
    (hx : (⌊Real.exp U⌋₊ : ℝ) + 1 ≤ x) :
    Real.log x / Real.sqrt x * F (t + Real.log x) = 0 := by
  have beyond : Real.exp U < x := (Nat.lt_floor_add_one (Real.exp U)).trans_le hx
  have positive : 0 < x := (Real.exp_pos U).trans beyond
  have logBeyond : U < Real.log x := (Real.lt_log_iff_exp_lt positive).mpr beyond
  rw [silent (t + Real.log x) (by linarith), mul_zero]

/-- The full sample inventory is exactly the literal closed inventory after zero label one. -/
theorem full_logarithmic_integer_inventory (F : ℝ → ℝ) (t : ℝ) (N : ℕ) :
    (∑ i ∈ Finset.Ico 1 (N + 1), Real.log (i : ℝ) / Real.sqrt (i : ℝ) *
      F (t + Real.log (i : ℝ))) =
    ∑ i ∈ Finset.Icc 2 N, Real.log (i : ℝ) / Real.sqrt (i : ℝ) *
      F (t + Real.log (i : ℝ)) := by
  have retained : Finset.Icc 2 N ⊆ Finset.Ico 1 (N + 1) := by
    intro i hi
    simp only [Finset.mem_Icc, Finset.mem_Ico] at *
    omega
  symm
  apply Finset.sum_subset retained
  intro i hi missing
  have label : i = 1 := by
    simp only [Finset.mem_Icc, Finset.mem_Ico, not_and] at *
    omega
  subst i
  simp

end

end GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileCutoff
```
