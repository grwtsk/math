# Complete source: GRWTSK.NumberTheory.Chebyshev.FiniteRieszRawUnsmoothing

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb3bf418118b02ba599e6ad0da8176d22e4c917f` · SHA-256 `b857cda75a504728056a4f8d647194e03676e4d3b79654e098b60849fc6921a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail
import Mathlib.Analysis.Calculus.Deriv.Slope

/-! # Raw unsmoothing at each fixed finite height
The limit is the actual multiplicity-weighted raw zero head. The height is held
fixed: this gives no exchange with the infinite-height limit. -/
set_option autoImplicit false
noncomputable section
open Filter
open scoped Topology
namespace GRWTSK.NumberTheory.Chebyshev.FiniteRieszRawUnsmoothing
open GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail
open GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead

theorem finiteRiesz_raw_difference_limit (x T : ℝ) (hx : 0 < x) :
    Tendsto (fun h : ℝ => (finiteRieszZeroHead (x+h) T - finiteRieszZeroHead x T) / (h:ℂ))
      (𝓝[≠] 0) (𝓝 (finiteHeightZeroHead x T)) := by
  have h := (hasDerivAt_finiteRieszZeroHead x T hx).tendsto_slope_zero
  simpa only [Complex.real_smul, Complex.ofReal_inv, div_eq_mul_inv, mul_comm] using h
end GRWTSK.NumberTheory.Chebyshev.FiniteRieszRawUnsmoothing
```
