# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualAbsoluteCutoffCostFixtures.Varianta0706fe24b7c0ae2b1c8fd22e92ec7ebb9d004a3ddc65e44bc4a472ab7b146ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c29e27ab083cd4e184b949e03645fff7e989403c` · SHA-256 `a0706fe24b7c0ae2b1c8fd22e92ec7ebb9d004a3ddc65e44bc4a472ab7b146ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualAbsoluteCutoffCost

/-!
# Hostile fixtures for absolute fixed-source classification cost

Prepared with OpenAI Codex. UNCOMPILED at preparation time.
Absolute nonnegativity is not a sign for the complete signed sum. The empty
selection below twelve is not an assertion that all other source events vanish.
No physical-scale flux monotonicity or RH surplus bound is asserted.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ActualAbsoluteCutoffCostFixtures

open SourceCutoffFlux SourceActualAbsoluteCutoffCost
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel
open scoped BigOperators

noncomputable section

/-- Below the first twelve atom the selected subsequence is empty, not the full event inventory. -/
theorem selected_events_empty_below_twelve (U : ℕ) (hU : U < 12) :
    Finset.Icc 1 (U / 12) = ∅ := by
  rw [Nat.div_eq_of_lt hU]
  norm_num

/-- Natural subtraction at k=0 cannot introduce an event into the lower-open inventory. -/
theorem zero_index_excluded (U : ℕ) :
    12 * 0 - 1 ∉ Finset.Ico 1 U := by
  simp

/-- The first actual positive-coefficient atom lies at the final included event for U=12. -/
theorem first_event_present : 12 * 1 - 1 ∈ Finset.Ico 1 12 := by
  norm_num

/-- A literal present upper endpoint is retained in the first harmonic cost bound. -/
theorem first_event_cost_lower (A : ℝ) (N : ℕ) (hN : 12 ≤ N) :
    (1 : ℝ) / 12 ≤ absoluteCutoffCostAt A 12 N := by
  have h := harmonic_div_twelve_le_absoluteCutoffCostAt A 12 N hN
  norm_num [harmonic] at h
  exact h

/-- At A=1 the actual short-cutoff event inventory is empty. -/
theorem actual_cost_at_one_zero : absoluteCutoffCost 1 = 0 := by
  simp [absoluteCutoffCost, absoluteCutoffCostAt, vaughanCutoff]

/-- The unchanged literal floor and actual N_A make the first harmonic bound nonvacuous. -/
theorem actual_seven_halves_cost_lower :
    (1 : ℝ) / 12 ≤ absoluteCutoffCost (7 / 2 : ℝ) := by
  have hU : vaughanCutoff (7 / 2 : ℝ) = 12 := by
    unfold vaughanCutoff
    apply (Nat.floor_eq_iff (sq_nonneg (7 / 2 : ℝ))).2
    constructor <;> norm_num
  have h := harmonic_div_twelve_le_absoluteCutoffCost (by norm_num : (1 : ℝ) ≤ 7 / 2)
  rw [hU] at h
  norm_num [harmonic] at h
  exact h

/-- Every complete absolute-cost term is nonnegative without any positivity for its signed flux. -/
theorem absolute_cost_nonnegative (A : ℝ) (U N : ℕ) :
    0 ≤ absoluteCutoffCostAt A U N := by
  unfold absoluteCutoffCostAt
  exact Finset.sum_nonneg (fun _ _ ↦ abs_nonneg _)

/-- Triangle comparison is retained; it supplies no uniform bound for the complete signed sum. -/
theorem signed_sum_abs_le_cost (A : ℝ) (U N : ℕ) :
    |∑ u ∈ Finset.Ico 1 U, jointFlux A u N| ≤ absoluteCutoffCostAt A U N := by
  unfold absoluteCutoffCostAt
  exact Finset.abs_sum_le_sum_abs (fun u ↦ jointFlux A u N) (Finset.Ico 1 U)

end

end FormalResearch.RiemannHypothesis.ActualAbsoluteCutoffCostFixtures
```
