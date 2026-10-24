# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ZeroH1ToL1Probe.Variant1fbd21485a696d11a77923c3f79d75c892db1c8d8594f082c5eae3a1171cc008

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd808599f1794358477016e7ea83720692a6611f` · SHA-256 `1fbd21485a696d11a77923c3f79d75c892db1c8d8594f082c5eae3a1171cc008`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingTransform

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2

namespace ZeroH1ToL1
noncomputable section

theorem integral_norm_le_support_mul_l2 (R : ℝ) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hs : Function.support f ⊆ Icc (-R) R) :
    (∫ x, ‖f x‖) ≤ lpNorm f 2 volume *
      Real.sqrt (∫ x, ((Icc (-R) R).indicator (fun _ : ℝ ↦ (1 : ℝ)) x) ^ 2) := by
  let g : ℝ → ℝ := (Icc (-R) R).indicator (fun _ ↦ 1)
  have hg : MemLp g 2 volume :=
    memLp_indicator_const 2 measurableSet_Icc 1 (Or.inr isCompact_Icc.measure_ne_top)
  have hfg : (fun x ↦ ‖f x‖ * ‖g x‖) = (fun x ↦ ‖f x‖) := by
    funext x
    by_cases hx : x ∈ Icc (-R) R
    · simp [g, hx]
    · have hfx : f x = 0 := Function.notMem_support.mp (fun h ↦ hx (hs h))
      simp [hfx]
  have h := integral_mul_norm_le_Lp_mul_Lq Real.HolderConjugate.two_two
    (by simpa using hf) (by simpa using hg)
  rw [hfg] at h
  simp only [Real.rpow_two, Real.norm_eq_abs, sq_abs, ← Real.sqrt_eq_rpow] at h
  simpa only [g, Real.norm_eq_abs, one_div, ← Real.sqrt_eq_rpow,
    ← lpNorm_two_eq_sqrt_integral_sq hf] using h

end
end ZeroH1ToL1
```
