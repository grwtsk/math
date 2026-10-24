# Complete source: GRWTSK.Algebra.LinearAlgebra.Semisimple.Variantb4f53d911a2b8189d9eaac037cefe065bfc4360dac75111baf524172600fdd31

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c264992f3f75ed1cea4c0f763eea392858a7582` · SHA-256 `b4f53d911a2b8189d9eaac037cefe065bfc4360dac75111baf524172600fdd31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Analysis.InnerProductSpace.Projection
import Mathlib.LinearAlgebra.Semisimple

/-!
# Semisimple operators on inner product spaces

This file is a place to gather results related to semisimplicity of linear operators on inner
product spaces.

-/

variable {𝕜 E : Type*} [RCLike 𝕜] [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]

namespace LinearMap.IsSymmetric

variable {T : Module.End 𝕜 E} {p : Submodule 𝕜 E} (hT : T.IsSymmetric)

include hT

/-- The orthogonal complement of an invariant submodule is invariant. -/
lemma orthogonalComplement_mem_invtSubmodule (hp : p ∈ T.invtSubmodule) :
    pᗮ ∈ T.invtSubmodule :=
  fun x hx y hy ↦ hT y x ▸ hx (T y) (hp hy)

/-- Symmetric operators are semisimple on finite-dimensional subspaces. -/
theorem isFinitelySemisimple :
    T.IsFinitelySemisimple := by
  refine Module.End.isFinitelySemisimple_iff.mpr fun p hp₁ hp₂ q hq₁ hq₂ ↦
    ⟨qᗮ ⊓ p, inf_le_right, Module.End.invtSubmodule.inf_mem ?_ hp₁, ?_, ?_⟩
  · exact orthogonalComplement_mem_invtSubmodule hT hq₁
  · simp [disjoint_iff, ← inf_assoc, Submodule.inf_orthogonal_eq_bot q]
  · suffices q ⊔ qᗮ = ⊤ by rw [← sup_inf_assoc_of_le _ hq₂, this, top_inf_eq p]
    replace hp₂ : Module.Finite 𝕜 q := Submodule.finiteDimensional_of_le hq₂
    exact Submodule.sup_orthogonal_of_completeSpace

end LinearMap.IsSymmetric
```
