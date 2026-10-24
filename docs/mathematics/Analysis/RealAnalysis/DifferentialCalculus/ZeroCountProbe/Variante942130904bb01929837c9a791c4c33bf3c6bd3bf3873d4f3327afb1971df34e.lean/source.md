# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZeroCountProbe.Variante942130904bb01929837c9a791c4c33bf3c6bd3bf3873d4f3327afb1971df34e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff3a58a1f3a6786e539a2423898fbfb4c7c44967` · SHA-256 `e942130904bb01929837c9a791c4c33bf3c6bd3bf3873d4f3327afb1971df34e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability
import Mathlib.Analysis.Complex.JensenFormula
open Complex Metric Set
namespace QuarticCountAudit
noncomputable def clearedZeta (s : ℂ) : ℂ :=
  s * (s - 1) * completedRiemannZeta₀ s + 1

theorem cleared_entire : Differentiable ℂ clearedZeta :=
  ((differentiable_id.mul (differentiable_id.sub_const 1)).mul
    differentiable_completedZeta₀).add_const 1

theorem cleared_zero_value : clearedZeta 0 = 1 := by simp [clearedZeta]

theorem cleared_eq {s : ℂ} (h0 : s ≠ 0) (h1 : s ≠ 1) :
    clearedZeta s = s * (s - 1) * completedRiemannZeta s := by
  rw [completedRiemannZeta_eq]
  unfold clearedZeta
  field_simp [h0, sub_ne_zero.mpr h1.symm]
  ring

theorem jensen_with_explicit_missing_bound {r M : ℝ} (hr : 0 < r) (hM : 1 ≤ M)
    (bound : ∀ z ∈ sphere (0 : ℂ) (2 * r), ‖clearedZeta z‖ ≤ M) :
    ((∑ᶠ z, MeromorphicOn.divisor clearedZeta (closedBall 0 |r|) z : ℤ) : ℝ) ≤
      Real.log M / Real.log 2 := by
  have hr2 : 0 < (2 : ℝ) * r := by positivity
  have analytic : AnalyticOnNhd ℂ clearedZeta (closedBall 0 |2 * r|) :=
    fun z _ => cleared_entire.analyticAt z
  have h := AnalyticOnNhd.sum_divisor_le (c := (0 : ℂ)) (r := r) (R := 2 * r)
    (M := M) (f := clearedZeta) (by simpa only [abs_of_pos hr])
    (by rw [abs_of_pos hr, abs_of_pos hr2]; linarith)
    hM analytic (by simp [cleared_zero_value])
    (by simpa only [abs_of_pos hr2] using bound)
  simpa only [cleared_zero_value, norm_one, div_one,
    mul_div_cancel_right₀ (2 : ℝ) hr.ne'] using h
#print axioms cleared_entire
#print axioms cleared_eq
#print axioms jensen_with_explicit_missing_bound
end QuarticCountAudit
```
