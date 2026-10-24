# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingL2NormBridgeProbe.Variant920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f7c5c4bfaf265f9ad5fda12be20ef102807f3e3` · SHA-256 `920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.MeasureTheory.Function.LpSeminorm.LpNorm
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

open MeasureTheory Filter
open scoped Topology

namespace ZeroSmoothingL2NormBridgeProbe

variable {α : Type*} [MeasurableSpace α] {μ : Measure α}

/-- Explicit membership makes this the genuine finite L² norm. -/
theorem lpNorm_two_eq_sqrt_integral_sq {f : α → ℝ} (hf : MemLp f 2 μ) :
    lpNorm f 2 μ = Real.sqrt (∫ x, f x ^ 2 ∂μ) := by
  rw [lpNorm_eq_integral_norm_rpow_toReal (by norm_num) (by simp)
    hf.aestronglyMeasurable]
  simp only [ENNReal.toReal_ofNat, Real.rpow_two, Real.norm_eq_abs, sq_abs,
    Real.sqrt_eq_rpow, one_div]

/-- Squared-error integrals are convergent before the limiting value is used. -/
theorem lpNorm_two_and_square_integrable {f : α → ℝ} (hf : MemLp f 2 μ) :
    Integrable (fun x ↦ f x ^ 2) μ ∧
      lpNorm f 2 μ = Real.sqrt (∫ x, f x ^ 2 ∂μ) :=
  ⟨hf.integrable_sq, lpNorm_two_eq_sqrt_integral_sq hf⟩

/-- A square-integral limit yields a genuine L² norm limit under actual membership. -/
theorem tendsto_lpNorm_two_of_tendsto_integral_sq {ι : Type*} {l : Filter ι}
    {f : ι → α → ℝ} (hf : ∀ i, MemLp (f i) 2 μ)
    (hlim : Tendsto (fun i ↦ ∫ x, f i x ^ 2 ∂μ) l (𝓝 0)) :
    Tendsto (fun i ↦ lpNorm (f i) 2 μ) l (𝓝 0) := by
  have hs := hlim.sqrt
  simpa only [← lpNorm_two_eq_sqrt_integral_sq (hf _), Real.sqrt_zero] using hs

#print axioms lpNorm_two_eq_sqrt_integral_sq
#print axioms lpNorm_two_and_square_integrable
#print axioms tendsto_lpNorm_two_of_tendsto_integral_sq

end ZeroSmoothingL2NormBridgeProbe
```
