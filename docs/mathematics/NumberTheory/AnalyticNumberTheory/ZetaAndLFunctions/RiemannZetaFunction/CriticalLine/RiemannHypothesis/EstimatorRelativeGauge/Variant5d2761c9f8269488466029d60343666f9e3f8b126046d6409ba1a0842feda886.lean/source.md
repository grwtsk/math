# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EstimatorRelativeGauge.Variant5d2761c9f8269488466029d60343666f9e3f8b126046d6409ba1a0842feda886

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6aa9586e34b76e1caf9ead88ee047267c638246` · SHA-256 `5d2761c9f8269488466029d60343666f9e3f8b126046d6409ba1a0842feda886`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CorrectionOptimization

/-!
# Two positive metrics choose different admissible balancing corrections

Batch 17 B17-L3 distinguishes a gauge's moment constraints from its estimator.
On the actual reciprocal-moment support {1,2}, two strictly positive diagonal
quadratic metrics have different unique minimizers. No admissible correction
minimizes both metrics, and transporting either optimum to the other metric
has a recorded positive cost. These are explicit finite metrics; this module
does not identify them with the actual Type-I, Type-II, Green or Mellin costs.

Human estimator-relative direction: grwtsk contributors. Local countermodel,
cost ledger and Lean implementation: OpenAI Codex. The general optimization
interface and Mathlib algebra are used at their existing names.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.EstimatorRelativeGauge

noncomputable section

/-- The admissible in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def Admissible (a b : ℝ) : Prop := a + b / 2 = 1
-/
def Admissible (a b : ℝ) : Prop := a + b / 2 = 1
/-- The first metric in this module, with the following exact parameterization.

def firstMetric (a b : ℝ) : ℝ := a ^ 2 + b ^ 2
-/
def firstMetric (a b : ℝ) : ℝ := a ^ 2 + b ^ 2
/-- The second metric in this module, with the following exact parameterization.

def secondMetric (a b : ℝ) : ℝ := a ^ 2 + b ^ 2 / 4
-/
def secondMetric (a b : ℝ) : ℝ := a ^ 2 + b ^ 2 / 4

theorem first_cost_defect {a b : ℝ} (hm : Admissible a b) :
    firstMetric a b = 4 / 5 + (5 / 4) * (b - 2 / 5) ^ 2 := by
  have ha : a = 1 - b / 2 := by unfold Admissible at hm; linarith
  rw [firstMetric, ha]
  ring

theorem second_cost_defect {a b : ℝ} (hm : Admissible a b) :
    secondMetric a b = 1 / 2 + (1 / 2) * (b - 1) ^ 2 := by
  have ha : a = 1 - b / 2 := by unfold Admissible at hm; linarith
  rw [secondMetric, ha]
  ring

theorem first_metric_minimizer_iff {a b : ℝ} (hm : Admissible a b) :
    firstMetric a b ≤ 4 / 5 ↔ a = 4 / 5 ∧ b = 2 / 5 := by
  rw [first_cost_defect hm]
  constructor
  · intro h
    have hb : b = 2 / 5 := by nlinarith [sq_nonneg (b - 2 / 5)]
    refine ⟨?_, hb⟩
    unfold Admissible at hm
    rw [hb] at hm
    linarith
  · rintro ⟨_, rfl⟩
    norm_num

theorem second_metric_minimizer_iff {a b : ℝ} (hm : Admissible a b) :
    secondMetric a b ≤ 1 / 2 ↔ a = 1 / 2 ∧ b = 1 := by
  rw [second_cost_defect hm]
  constructor
  · intro h
    have hb : b = 1 := by nlinarith [sq_nonneg (b - 1)]
    refine ⟨?_, hb⟩
    unfold Admissible at hm
    rw [hb] at hm
    linarith
  · rintro ⟨_, rfl⟩
    norm_num

theorem both_optima_are_admissible :
    Admissible (4 / 5) (2 / 5) ∧ Admissible (1 / 2) 1 := by
  norm_num [Admissible]

theorem no_simultaneous_optimal_gauge :
    ¬ ∃ a b : ℝ, Admissible a b ∧
      (∀ x y : ℝ, Admissible x y → firstMetric a b ≤ firstMetric x y) ∧
      (∀ x y : ℝ, Admissible x y → secondMetric a b ≤ secondMetric x y) := by
  rintro ⟨a, b, hm, hfirst, hsecond⟩
  have hf := hfirst (4 / 5) (2 / 5) both_optima_are_admissible.1
  have hs := hsecond (1 / 2) 1 both_optima_are_admissible.2
  norm_num [firstMetric] at hf
  norm_num [secondMetric] at hs
  have hb₁ := ((first_metric_minimizer_iff hm).mp hf).2
  have hb₂ := ((second_metric_minimizer_iff hm).mp hs).2
  linarith

/-- The paid cost of carrying an optimum across the estimator boundary. -/
theorem transporting_optima_has_positive_cost :
    firstMetric (1 / 2) 1 - firstMetric (4 / 5) (2 / 5) = 9 / 20 ∧
      secondMetric (4 / 5) (2 / 5) - secondMetric (1 / 2) 1 = 9 / 50 := by
  norm_num [firstMetric, secondMetric]

end
end GRWTSK.RiemannHypothesis.Conversation.EstimatorRelativeGauge
```
