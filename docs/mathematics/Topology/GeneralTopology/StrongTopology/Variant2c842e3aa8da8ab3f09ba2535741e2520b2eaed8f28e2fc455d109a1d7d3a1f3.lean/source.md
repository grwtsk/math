# Complete source: GRWTSK.Topology.GeneralTopology.StrongTopology.Variant2c842e3aa8da8ab3f09ba2535741e2520b2eaed8f28e2fc455d109a1d7d3a1f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe682099c9316074c4c906d7a66dcb4f7441ed90` · SHA-256 `2c842e3aa8da8ab3f09ba2535741e2520b2eaed8f28e2fc455d109a1d7d3a1f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker
-/
import Mathlib.Topology.Algebra.Module.StrongTopology
import Mathlib.Topology.Algebra.Module.LocallyConvex

/-!
# Local convexity of the strong topology

In this file we prove that the strong topology on `E →L[ℝ] F` is locally convex provided that `F` is
locally convex.

## References

* [N. Bourbaki, *Topological Vector Spaces*][bourbaki1987]

## TODO

* Characterization in terms of seminorms

## Tags

locally convex, bounded convergence
-/


open Topology UniformConvergence

variable {R 𝕜₁ 𝕜₂ E F : Type*}

variable [AddCommGroup E] [TopologicalSpace E] [AddCommGroup F] [TopologicalSpace F]
  [IsTopologicalAddGroup F]

section General

namespace UniformConvergenceCLM

variable (R)
variable [Semiring R] [PartialOrder R]
variable [NormedField 𝕜₁] [NormedField 𝕜₂] [Module 𝕜₁ E] [Module 𝕜₂ F] {σ : 𝕜₁ →+* 𝕜₂}
variable [Module R F] [ContinuousConstSMul R F] [LocallyConvexSpace R F] [SMulCommClass 𝕜₂ R F]

theorem locallyConvexSpace (𝔖 : Set (Set E)) (h𝔖₁ : 𝔖.Nonempty)
    (h𝔖₂ : DirectedOn (· ⊆ ·) 𝔖) :
    LocallyConvexSpace R (UniformConvergenceCLM σ F 𝔖) := by
  apply LocallyConvexSpace.ofBasisZero _ _ _ _
    (UniformConvergenceCLM.hasBasis_nhds_zero_of_basis _ _ _ h𝔖₁ h𝔖₂
      (LocallyConvexSpace.convex_basis_zero R F)) _
  rintro ⟨S, V⟩ ⟨_, _, hVconvex⟩ f hf g hg a b ha hb hab x hx
  exact hVconvex (hf x hx) (hg x hx) ha hb hab

end UniformConvergenceCLM

end General

section BoundedSets

namespace ContinuousLinearMap

variable [Semiring R] [PartialOrder R]
variable [NormedField 𝕜₁] [NormedField 𝕜₂] [Module 𝕜₁ E] [Module 𝕜₂ F] {σ : 𝕜₁ →+* 𝕜₂}
variable [Module R F] [ContinuousConstSMul R F] [LocallyConvexSpace R F] [SMulCommClass 𝕜₂ R F]

instance instLocallyConvexSpace : LocallyConvexSpace R (E →SL[σ] F) :=
  UniformConvergenceCLM.locallyConvexSpace R _ ⟨∅, Bornology.isVonNBounded_empty 𝕜₁ E⟩
    (directedOn_of_sup_mem fun _ _ => Bornology.IsVonNBounded.union)

end ContinuousLinearMap

end BoundedSets
```
