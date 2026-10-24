# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLaurentSlopeAttempt01.Variant206465d7b271e96959791652777978ba7d7c76e6434f2e806294f72d9089ac7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5cb971df5a41d6501b4713ad1e0e81b0f1bbc39` · SHA-256 `206465d7b271e96959791652777978ba7d7c76e6434f2e806294f72d9089ac7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.Harmonic.ZetaAsymp
import Mathlib.Analysis.Calculus.Deriv.Slope

open Filter Topology

noncomputable section

namespace ContinuousResearch.ActualLaurentSlope

/-- Actual regular negative logarithmic derivative; no supplied coefficient. -/
def regularNegativeLogDerivative (z : ℂ) : ℂ :=
  - deriv riemannZeta₁ z / riemannZeta₁ z

theorem actual_regular_zeta_derivative (z : ℂ) :
    deriv riemannZeta₁ z = riemannZeta₀ z + (z - 1) * deriv riemannZeta₀ z := by
  unfold riemannZeta₁
  rw [deriv_const_add, deriv_fun_mul (by fun_prop) (by fun_prop)]
  simp

theorem actual_regular_zeta_second_derivative_at_one :
    HasDerivAt (deriv riemannZeta₁) (2 * deriv riemannZeta₀ 1) 1 := by
  have hr := (differentiable_riemannZeta₀ 1).hasDerivAt
  have hrr := (differentiable_riemannZeta₀.deriv 1).hasDerivAt
  have hid := (hasDerivAt_id (1 : ℂ)).sub_const 1
  have h := hr.add (hid.mul hrr)
  convert h using 1
  · funext z
    exact actual_regular_zeta_derivative z
  · ring

theorem actual_regular_negative_value :
    regularNegativeLogDerivative 1 = -(Real.eulerMascheroniConstant : ℂ) := by
  simp [regularNegativeLogDerivative]

theorem actual_regular_negative_derivative :
    HasDerivAt regularNegativeLogDerivative
      ((Real.eulerMascheroniConstant : ℂ)^2 - 2 * deriv riemannZeta₀ 1) 1 := by
  have h1 := (differentiable_riemannZeta₁ 1).hasDerivAt
  have h := actual_regular_zeta_second_derivative_at_one.neg.div h1 (by simp)
  convert h using 1
  · rfl
  · simp
    ring

theorem actual_regular_negative_slope :
    Tendsto (fun u : ℂ =>
      (regularNegativeLogDerivative (1 + u) + (Real.eulerMascheroniConstant : ℂ)) / u)
      (𝓝[≠] 0)
      (𝓝 ((Real.eulerMascheroniConstant : ℂ)^2 - 2 * deriv riemannZeta₀ 1)) := by
  simpa [actual_regular_negative_value, add_comm, div_eq_mul_inv, mul_comm] using
    actual_regular_negative_derivative.tendsto_slope_zero

theorem actual_negative_log_regularization :
    ∀ᶠ z : ℂ in 𝓝[≠] 1,
      - deriv riemannZeta z / riemannZeta z - (z - 1)⁻¹ =
        regularNegativeLogDerivative z := by
  filter_upwards [log_deriv_riemannZeta_eq_neg_inv_sub_add] with z hz
  unfold regularNegativeLogDerivative
  rw [neg_div, hz]
  ring

end ContinuousResearch.ActualLaurentSlope
```
