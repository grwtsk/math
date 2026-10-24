# Complete source: GRWTSK.Topology.GeneralTopology.Audit.Variant1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2997eb46f6075062a991afa30b0102493bce86d2` · SHA-256 `1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
# An explicit regression point for the Gevrey diagnostic envelope

This module checks the scalar model
`A - 2 * c * A / x - d * exp (x / s) - log A` at
`x = (s / 2) * log A`. Its value divided by `A` tends to one,
so that value tends to positive infinity for any fixed `c`, `d`, and
positive `s`.

This is a statement about a proposed absolute majorant. It does not assert
that zeros lie on a zero-free-region boundary, identify this model with the
source arithmetic residual, or establish divergence of a signed zero sum.
-/

namespace FormalResearch.RiemannHypothesis.GevreyEnvelope

open Filter
open scoped Topology

noncomputable section

/-- The proposed scalar envelope, with its Fourier-decay constant named `d`. -/
def diagnosticExponent (c d s A x : ℝ) : ℝ :=
  A - 2 * c * A / x - d * Real.exp (x / s) - Real.log A

/-- A regression point that avoids stationary-point asymptotics. -/
def testPoint (s A : ℝ) : ℝ := (s / 2) * Real.log A

/-- At the explicit point, the exponential damping is exactly `d * √A`. -/
theorem diagnostic_exponent_test_point (c d : ℝ) {s A : ℝ}
    (hs : 0 < s) (hA : 1 < A) :
    diagnosticExponent c d s A (testPoint s A) =
      A - (4 * c / s) * (A / Real.log A) - d * Real.sqrt A - Real.log A := by
  have hA0 : 0 < A := lt_trans zero_lt_one hA
  have hs0 : s ≠ 0 := ne_of_gt hs
  have hlog : Real.log A ≠ 0 := ne_of_gt (Real.log_pos hA)
  have harg : testPoint s A / s = Real.log A * (1 / 2) := by
    dsimp [testPoint]
    field_simp
  have hexp : Real.exp (testPoint s A / s) = Real.sqrt A := by
    rw [harg, Real.sqrt_eq_rpow, Real.rpow_def_of_pos hA0]
  have hquot : 2 * c * A / testPoint s A =
      (4 * c / s) * (A / Real.log A) := by
    dsimp [testPoint]
    field_simp
    ring
  simp only [diagnosticExponent, hquot, hexp]

/-- The normalized test-point value separates into three terms tending to zero. -/
theorem diagnostic_exponent_test_point_div (c d : ℝ) {s A : ℝ}
    (hs : 0 < s) (hA : 1 < A) :
    diagnosticExponent c d s A (testPoint s A) / A =
      1 - (4 * c / s) * (Real.log A)⁻¹ - d * (Real.sqrt A)⁻¹ - Real.log A / A := by
  have hA0 : 0 < A := lt_trans zero_lt_one hA
  have hAne : A ≠ 0 := ne_of_gt hA0
  have hlog : Real.log A ≠ 0 := ne_of_gt (Real.log_pos hA)
  have hsqrt : Real.sqrt A ≠ 0 := ne_of_gt (Real.sqrt_pos.2 hA0)
  have hquot : A / Real.log A / A = (Real.log A)⁻¹ := by
    field_simp
  have hsqrtquot : Real.sqrt A / A = (Real.sqrt A)⁻¹ := by
    calc
      Real.sqrt A / A = Real.sqrt A / (Real.sqrt A) ^ 2 := by
        rw [Real.sq_sqrt (le_of_lt hA0)]
      _ = (Real.sqrt A)⁻¹ := by field_simp
  rw [diagnostic_exponent_test_point c d hs hA]
  simp only [sub_div, mul_div_assoc, div_self hAne, hquot, hsqrtquot]

/-- No fixed damping constant changes the leading normalized value at this point. -/
theorem tendsto_diagnostic_exponent_test_point_div (c d : ℝ) {s : ℝ} (hs : 0 < s) :
    Tendsto (fun A : ℝ ↦ diagnosticExponent c d s A (testPoint s A) / A)
      atTop (𝓝 1) := by
  have hlog : Tendsto (fun A : ℝ ↦ (4 * c / s) * (Real.log A)⁻¹)
      atTop (𝓝 0) := by
    simpa using Real.tendsto_log_atTop.inv_tendsto_atTop.const_mul (4 * c / s)
  have hsqrt : Tendsto (fun A : ℝ ↦ d * (Real.sqrt A)⁻¹) atTop (𝓝 0) := by
    simpa using Real.tendsto_sqrt_atTop.inv_tendsto_atTop.const_mul d
  have hlogdiv : Tendsto (fun A : ℝ ↦ Real.log A / A) atTop (𝓝 0) :=
    Real.isLittleO_log_id_atTop.tendsto_div_nhds_zero
  have hconst : Tendsto (fun _ : ℝ ↦ (1 : ℝ)) atTop (𝓝 1) := tendsto_const_nhds
  have h' : Tendsto (fun A : ℝ ↦
      1 - (4 * c / s) * (Real.log A)⁻¹ - d * (Real.sqrt A)⁻¹ - Real.log A / A)
      atTop (𝓝 1) := by simpa using ((hconst.sub hlog).sub hsqrt).sub hlogdiv
  apply h'.congr'
  filter_upwards [eventually_gt_atTop (1 : ℝ)] with A hA
  exact (diagnostic_exponent_test_point_div c d hs hA).symm

/-- The tested envelope itself grows without bound; this is not a signed-sum claim. -/
theorem tendsto_diagnostic_exponent_test_point_atTop (c d : ℝ) {s : ℝ} (hs : 0 < s) :
    Tendsto (fun A : ℝ ↦ diagnosticExponent c d s A (testPoint s A)) atTop atTop := by
  have h := tendsto_id.atTop_mul_pos (show (0 : ℝ) < 1 by norm_num)
    (tendsto_diagnostic_exponent_test_point_div c d hs)
  apply h.congr'
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
  exact mul_div_cancel₀ _ (ne_of_gt hA)

end

end FormalResearch.RiemannHypothesis.GevreyEnvelope

namespace FormalResearch.RiemannHypothesis.GevreyEnvelope
set_option linter.hashCommand false
#check diagnostic_exponent_test_point
#print axioms diagnostic_exponent_test_point
#check diagnostic_exponent_test_point_div
#print axioms diagnostic_exponent_test_point_div
#check tendsto_diagnostic_exponent_test_point_div
#print axioms tendsto_diagnostic_exponent_test_point_div
#check tendsto_diagnostic_exponent_test_point_atTop
#print axioms tendsto_diagnostic_exponent_test_point_atTop
end FormalResearch.RiemannHypothesis.GevreyEnvelope
```
