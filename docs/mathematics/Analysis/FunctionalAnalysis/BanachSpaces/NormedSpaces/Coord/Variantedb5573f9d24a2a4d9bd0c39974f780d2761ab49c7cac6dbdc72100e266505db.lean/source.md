# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Coord.Variantedb5573f9d24a2a4d9bd0c39974f780d2761ab49c7cac6dbdc72100e266505db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e35d6930847756d7b93a4a59f1d1be0cd84faaec` · SHA-256 `edb5573f9d24a2a4d9bd0c39974f780d2761ab49c7cac6dbdc72100e266505db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Analysis.Calculus.AddTorsor.AffineMap
import Mathlib.Analysis.Normed.Affine.AddTorsorBases

/-!
# Barycentric coordinates are smooth
-/

variable {ι 𝕜 E P : Type*} [NontriviallyNormedField 𝕜] [CompleteSpace 𝕜]
variable [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable [MetricSpace P] [NormedAddTorsor E P]
variable [FiniteDimensional 𝕜 E]

theorem smooth_barycentric_coord (b : AffineBasis ι 𝕜 E) (i : ι) : ContDiff 𝕜 ⊤ (b.coord i) :=
  (⟨b.coord i, continuous_barycentric_coord b i⟩ : E →ᴬ[𝕜] 𝕜).contDiff
```
