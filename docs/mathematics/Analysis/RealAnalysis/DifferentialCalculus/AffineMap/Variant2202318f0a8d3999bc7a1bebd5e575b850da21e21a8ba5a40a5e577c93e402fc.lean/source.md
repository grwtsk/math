# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineMap.Variant2202318f0a8d3999bc7a1bebd5e575b850da21e21a8ba5a40a5e577c93e402fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05094769a98639e7e36e98069f189aac7a54b375` · SHA-256 `2202318f0a8d3999bc7a1bebd5e575b850da21e21a8ba5a40a5e577c93e402fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Analysis.Normed.Affine.ContinuousAffineMap
import Mathlib.Analysis.Calculus.ContDiff.Operations

/-!
# Smooth affine maps

This file contains results about smoothness of affine maps.

## Main definitions:

* `ContinuousAffineMap.contDiff`: a continuous affine map is smooth

-/


namespace ContinuousAffineMap

variable {𝕜 V W : Type*} [NontriviallyNormedField 𝕜]
variable [NormedAddCommGroup V] [NormedSpace 𝕜 V]
variable [NormedAddCommGroup W] [NormedSpace 𝕜 W]

/-- A continuous affine map between normed vector spaces is smooth. -/
theorem contDiff {n : WithTop ℕ∞} (f : V →ᴬ[𝕜] W) : ContDiff 𝕜 n f := by
  rw [f.decomp]
  apply f.contLinear.contDiff.add
  exact contDiff_const

end ContinuousAffineMap
```
