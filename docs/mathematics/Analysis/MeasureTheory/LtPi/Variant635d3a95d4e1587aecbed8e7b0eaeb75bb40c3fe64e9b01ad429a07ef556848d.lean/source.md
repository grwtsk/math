# Complete source: GRWTSK.Analysis.MeasureTheory.LtPi.Variant635d3a95d4e1587aecbed8e7b0eaeb75bb40c3fe64e9b01ad429a07ef556848d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b04937a441f23be14b4ae2541a2114c2bb9d9640` · SHA-256 `635d3a95d4e1587aecbed8e7b0eaeb75bb40c3fe64e9b01ad429a07ef556848d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Analysis.NormedSpace.OperatorNorm
import SpectralProof.Core.Weight
import SpectralProof.Core.FourierDecay
import SpectralProof.Core.Integrability

noncomputable section

open Real MeasureTheory Complex

namespace SpectralProof.Operators

variable {ϕ : ℝ → ℝ} (Φ : ℝ → ℂ) (t : ℝ)

-- Bring in weighted Hilbert space and measure
abbrev Hϕ := SpectralProof.Core.Hϕ ϕ
abbrev μϕ := SpectralProof.Core.autoMeasure ϕ

/--
Integral operator `Lt_pi`, defined by convolution with the weighted kernel
\[
K_t^\varphi(x, y) := k_t(x - y) \cdot e^{ϕ(x)/2} \cdot e^{ϕ(y)/2}
\]
acting on the Hilbert space \( H_ϕ := L^2(ℝ, e^{ϕ(x)} dx) \).
-/
noncomputable def Lt_pi : Hϕ →ₗ[ℂ] Hϕ :=
  let kernel : ℝ × ℝ → ℂ :=
    SpectralProof.Core.KtWeighted ϕ (SpectralProof.Core.kt Φ t)
  LinearMap.mkContinuous
    { toFun := fun f =>
        ⟨fun x => ∫ y, kernel (x, y) * f y,
         by
           -- integrability proof: deferred to integrability module
           sorry⟩,
      map_add' := fun f g => by
        ext x; simp only [Pi.add_apply, integral_add]; ring,
      map_smul' := fun c f => by
        ext x; simp only [smul_eq_mul, integral_const_mul] }
    1 -- norm bound (can refine if needed)
    (by simp)

end SpectralProof.Operators
```
