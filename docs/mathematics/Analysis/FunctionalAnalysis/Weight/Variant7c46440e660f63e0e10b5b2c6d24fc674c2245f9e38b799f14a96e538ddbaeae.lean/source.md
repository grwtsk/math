# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Weight.Variant7c46440e660f63e0e10b5b2c6d24fc674c2245f9e38b799f14a96e538ddbaeae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f63250c4749cbf6196c4d4fe2a24b4a5150616d` · SHA-256 `7c46440e660f63e0e10b5b2c6d24fc674c2245f9e38b799f14a96e538ddbaeae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Analysis.InnerProductSpace.L2Space

noncomputable section

open Real MeasureTheory ENNReal

namespace SpectralProof.Core

/--
Exponential weight:
\[
Ψ_α(x) := e^{ϕ(x)}
\]
Must satisfy ϕ(x) ≥ α |x| for some α > π to ensure trace-class decay.
-/
def autoWeight (ϕ : ℝ → ℝ) (x : ℝ) : ℝ := Real.exp (ϕ x)

/--
Weighted measure:
\[
μ_ϕ := e^{ϕ(x)} dx
\]
Used to define the exponentially weighted Hilbert space.
-/
def autoMeasure (ϕ : ℝ → ℝ) : Measure ℝ :=
  volume.withDensity (fun x => ofReal (autoWeight ϕ x))

/--
Exponentially weighted Hilbert space:
\[
H_ϕ := L^2(\mathbb{R}, e^{ϕ(x)} dx)
\]
Used throughout the spectral construction of Lt_π and Lsym_π.
-/
abbrev Hϕ (ϕ : ℝ → ℝ) := Lp ℂ 2 (autoMeasure ϕ)

section WithFixedϕ

variable {ϕ : ℝ → ℝ}

instance : NormedAddCommGroup (Hϕ ϕ) := by infer_instance
instance : InnerProductSpace ℂ (Hϕ ϕ) := by infer_instance
instance : CompleteSpace (Hϕ ϕ) := by infer_instance

end WithFixedϕ

end SpectralProof.Core
```
