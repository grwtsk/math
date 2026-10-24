# Complete source: GRWTSK.Topology.AlgebraicTopology.Boundary.Variant416c4c6a018095088c6ec5040f3a2c00e3899930143870f27d64da25450a0cad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f97cb98f69cb4d4a89ec7168b65f5c69ae20001` · SHA-256 `416c4c6a018095088c6ec5040f3a2c00e3899930143870f27d64da25450a0cad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Kim Morrison, Adam Topaz
-/
import Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex

/-!
# The boundary of the standard simplex

We introduce the boundary `∂Δ[n]` of the standard simplex `Δ[n]`.
(These notations become available by doing `open Simplicial`.)

## Future work

There isn't yet a complete API for simplices, boundaries, and horns.
As an example, we should have a function that constructs
from a non-surjective order preserving function `Fin n → Fin n`
a morphism `Δ[n] ⟶ ∂Δ[n]`.


-/

universe u

open Simplicial

namespace SSet

/-- The boundary `∂Δ[n]` of the `n`-th standard simplex consists of
all `m`-simplices of `stdSimplex n` that are not surjective
(when viewed as monotone function `m → n`). -/
def boundary (n : ℕ) : (Δ[n] : SSet.{u}).Subcomplex where
  obj _ := setOf (fun s ↦ ¬Function.Surjective (stdSimplex.asOrderHom s))
  map _ _ hs h := hs (Function.Surjective.of_comp h)

/-- The boundary `∂Δ[n]` of the `n`-th standard simplex -/
scoped[Simplicial] notation3 "∂Δ[" n "]" => SSet.boundary n

lemma boundary_eq_iSup (n : ℕ) :
    boundary.{u} n = ⨆ (i : Fin (n + 1)), stdSimplex.face {i}ᶜ := by
  ext
  simp [stdSimplex.face_obj, boundary, Function.Surjective]
  tauto

/-- The inclusion of the boundary of the `n`-th standard simplex into that standard simplex. -/
@[deprecated boundary (since := "2025-01-26")]
abbrev boundaryInclusion (n : ℕ) : (∂Δ[n] : SSet.{u}) ⟶ Δ[n] := ∂Δ[n].ι

end SSet
```
