# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CauchyIntegral.Variant7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `066eaa748c84b1265e6266ccc24e5e07b9733393` · SHA-256 `7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Mathlib.Analysis.Complex.CauchyIntegral

/-!
# Entire functions from global differentiability

This file records a small bridge from complex differentiability on the plane to
`AnalyticOnNhd` on `Set.univ`.
-/

@[expose] public section

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]

/-- A complex differentiable function is analytic on the entire plane. -/
protected theorem _root_.Differentiable.analyticOnNhd {f : ℂ → E} (hf : Differentiable ℂ f) :
    AnalyticOnNhd ℂ f Set.univ :=
  fun _ _ => hf.analyticAt _
```
