# Complete source: GRWTSK.Geometry.DifferentialGeometry.SmoothEmbedding.Variant2010149a348e41d4208e7cdcaae6ab0784d66020dce32bf20002ac0e2ebbc502

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abaeb1720fb39b3c053fc7d8b492900001a98bae` · SHA-256 `2010149a348e41d4208e7cdcaae6ab0784d66020dce32bf20002ac0e2ebbc502`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
module

public import Mathlib.Geometry.Manifold.Diffeomorph
public import Mathlib.Geometry.Manifold.SmoothEmbedding

open scoped ContDiff
open Topology

namespace Manifold

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E₁ E₃ E₄ : Type*} [NormedAddCommGroup E₁] [NormedSpace 𝕜 E₁]
  [NormedAddCommGroup E₃] [NormedSpace 𝕜 E₃] [NormedAddCommGroup E₄] [NormedSpace 𝕜 E₄]
  {H G G' : Type*} [TopologicalSpace H] [TopologicalSpace G] [TopologicalSpace G']
  {I : ModelWithCorners 𝕜 E₁ H} {J : ModelWithCorners 𝕜 E₃ G} {J' : ModelWithCorners 𝕜 E₄ G'}
  {M N N' : Type*} [TopologicalSpace M] [ChartedSpace H M]
  [TopologicalSpace N] [ChartedSpace G N] [TopologicalSpace N'] [ChartedSpace G' N']
  {n : ℕ∞ω}

namespace IsSmoothEmbedding

variable {f : M → N}

-- use IsImmersion.comp and IsEmbedding.comp
/-- The composition of two smooth embeddings between Banach manifolds is a smooth embedding. -/
proof_wanted comp -- [CompleteSpace E] [CompleteSpace E'] [CompleteSpace F] [CompleteSpace F']
    {g : N → N'} (hg : IsSmoothEmbedding J J' n g) (hf : IsSmoothEmbedding I J n f) :
    IsSmoothEmbedding I J' n (g ∘ f)

end IsSmoothEmbedding

-- TODO: prove the same result for local diffeomorphisms and deduce it as a corollary
proof_wanted Diffeomorph.isSmoothEmbedding [IsManifold I n M]
    (φ : Diffeomorph I I M M n) : IsSmoothEmbedding I I n φ

end Manifold
```
