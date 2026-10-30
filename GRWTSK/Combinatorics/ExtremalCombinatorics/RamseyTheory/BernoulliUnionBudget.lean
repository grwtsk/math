/- Copyright (c) 2026 grwtsk contributors. MIT.
Source proof candidates: compilation, fresh replay and axiom audit NOT_RUN. -/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Analytic limitation of the elementary Bernoulli union budget

The envelope `2 * exp (2 * log N - k * log 2)` corresponds to at most `N^2`
events, each bounded by `2^(1-k)`. This file studies that explicit envelope,
not the actual probability of their union. Failure of the envelope criterion
does not prove nonexistence of an avoiding coloring. No independence between
progression events is assumed. Deriving the per-event probability from the
actual distinct progression coordinates is a separate obligation.

The consumer is route selection for Erdős #138: this particular sufficient
criterion cannot supply an unbounded normalized logarithmic growth rate.
No OpenAI progression-coloring theorem or construction is imported.
-/
namespace GRWTSK.Combinatorics.RamseyTheory.AnalyticControl

noncomputable def bernoulliUnionEnvelope (N k : ℝ) : ℝ :=
  2 * Real.exp (2 * Real.log N - k * Real.log 2)

theorem bernoulliUnionEnvelope_eq_exp (N k : ℝ) :
    bernoulliUnionEnvelope N k =
      Real.exp (2 * Real.log N - (k - 1) * Real.log 2) := by
  unfold bernoulliUnionEnvelope
  conv_lhs => lhs; rw [← Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  rw [← Real.exp_add]
  congr 1
  ring

/-- Exact threshold for this sufficient union-bound envelope. -/
theorem bernoulliUnionEnvelope_lt_one_iff (N k : ℝ) :
    bernoulliUnionEnvelope N k < 1 ↔
      2 * Real.log N < (k - 1) * Real.log 2 := by
  rw [bernoulliUnionEnvelope_eq_exp, Real.exp_lt_one_iff]
  constructor <;> intro h <;> linarith

/-- Even with variable positive length, the normalized logarithmic rate
certified by this criterion is bounded by one absolute constant. -/
theorem normalized_log_lt_of_union_budget {N k : ℝ} (hk : 0 < k)
    (hbudget : bernoulliUnionEnvelope N k < 1) :
    Real.log N / k < Real.log 2 / 2 := by
  have h := (bernoulliUnionEnvelope_lt_one_iff N k).mp hbudget
  have htwo : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  apply (div_lt_iff₀ hk).mpr
  nlinarith

/-- At and above the limiting exponential scale the envelope is strictly
larger than one. This obstructs the criterion, not the coloring itself. -/
theorem one_lt_unionEnvelope_of_exponential_scale {N k : ℝ}
    (hscale : k * Real.log 2 ≤ 2 * Real.log N) :
    1 < bernoulliUnionEnvelope N k := by
  rw [bernoulliUnionEnvelope_eq_exp, Real.one_lt_exp_iff]
  have htwo : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  nlinarith

end GRWTSK.Combinatorics.RamseyTheory.AnalyticControl
