# Complete source: GRWTSK.Probability.Moments.VarianceBudgetConvergence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `742824137da63aee8e62dbeae335baa34a6892ce` · SHA-256 `ed5510c0d98078fe80749187746975b17f317167f3c8228c9ca9687a29399ab5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Probability.Moments.FiniteCovarianceTail
import Mathlib.Topology.Instances.ENNReal.Lemmas

/-! Bias-aware tails and convergence in probability from actual variance decay (S3/S5).
No arithmetic variance or bias decay is constructed. -/
namespace GRWTSK.Probability.Moments
open MeasureTheory ProbabilityTheory Filter
open scoped ProbabilityTheory Topology
variable {Ω : Type*} [MeasurableSpace Ω] {μ : Measure Ω} [IsProbabilityMeasure μ]

/-- A supplied bias budget transfers expectation-centered tails to a named model. -/
theorem model_tail_le_variance_of_bias (Y : Ω → ℝ) (model bias ε : ℝ)
    (hY : MemLp Y 2 μ) (hbias : |μ[Y] - model| ≤ bias) (hε : bias < ε) :
    μ {ω | ε ≤ |Y ω - model|} ≤
      ENNReal.ofReal (Var[Y; μ] / (ε - bias) ^ 2) := by
  have inclusion : {ω | ε ≤ |Y ω - model|} ⊆ {ω | ε - bias ≤ |Y ω - μ[Y]|} := by
    intro ω hω
    change ε ≤ |Y ω - model| at hω
    change ε - bias ≤ |Y ω - μ[Y]|
    have ht : |Y ω - model| ≤ |Y ω - μ[Y]| + |μ[Y] - model| := by
      simpa using abs_add_le (Y ω - μ[Y]) (μ[Y] - model)
    linarith
  exact (measure_mono inclusion).trans (meas_ge_le_variance_div_sq hY (sub_pos.mpr hε))

/-- Actual variance-budget decay implies expectation-centered convergence in probability. -/
theorem centered_tail_tendsto_zero (Y : ℕ → Ω → ℝ) (budget : ℕ → ℝ)
    (hY : ∀ n, MemLp (Y n) 2 μ) (hbound : ∀ n, Var[Y n; μ] ≤ budget n)
    (hbudget : Tendsto budget atTop (𝓝 0)) (ε : ℝ) (hε : 0 < ε) :
    Tendsto (fun n => μ {ω | ε ≤ |Y n ω - μ[Y n]|}) atTop (𝓝 0) := by
  have upper : Tendsto (fun n => ENNReal.ofReal (budget n / ε ^ 2)) atTop (𝓝 0) := by
    have h := ENNReal.continuous_ofReal.continuousAt.tendsto.comp (hbudget.div_const (ε ^ 2))
    simpa only [Function.comp_def, zero_div, ENNReal.ofReal_zero] using h
  apply tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds upper (fun _ => bot_le)
  intro n
  exact (meas_ge_le_variance_div_sq (hY n) hε).trans
    (ENNReal.ofReal_le_ofReal (div_le_div_of_nonneg_right (hbound n) (sq_nonneg ε)))
end GRWTSK.Probability.Moments
```
