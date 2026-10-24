# Complete source: GRWTSK.Topology.GeneralTopology.T0Sierpinski.Variantd405e8e0359e635c2ab13a17e9357a8a5c1b1bd56fd6c30a9796aec31993a03a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fac1fbf6a29f2944a236de7e877b7ab7880424cb` · SHA-256 `d405e8e0359e635c2ab13a17e9357a8a5c1b1bd56fd6c30a9796aec31993a03a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Ivan Sadofschi Costa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ivan Sadofschi Costa
-/
import Mathlib.Topology.Order
import Mathlib.Topology.Sets.Opens
import Mathlib.Topology.ContinuousMap.Basic

/-!
# Any T0 space embeds in a product of copies of the Sierpinski space.

We consider `Prop` with the Sierpinski topology. If `X` is a topological space, there is a
continuous map `productOfMemOpens` from `X` to `Opens X → Prop` which is the product of the maps
`X → Prop` given by `x ↦ x ∈ u`.

The map `productOfMemOpens` is always inducing. Whenever `X` is T0, `productOfMemOpens` is
also injective and therefore an embedding.
-/

open Topology

noncomputable section

namespace TopologicalSpace

theorem eq_induced_by_maps_to_sierpinski (X : Type*) [t : TopologicalSpace X] :
    t = ⨅ u : Opens X, sierpinskiSpace.induced (· ∈ u) := by
  apply le_antisymm
  · rw [le_iInf_iff]
    exact fun u => Continuous.le_induced (isOpen_iff_continuous_mem.mp u.2)
  · intro u h
    rw [← generateFrom_iUnion_isOpen]
    apply isOpen_generateFrom_of_mem
    simp only [Set.mem_iUnion, Set.mem_setOf_eq, isOpen_induced_iff]
    exact ⟨⟨u, h⟩, {True}, isOpen_singleton_true, by simp [Set.preimage]⟩

variable (X : Type*) [TopologicalSpace X]

/-- The continuous map from `X` to the product of copies of the Sierpinski space, (one copy for each
open subset `u` of `X`). The `u` coordinate of `productOfMemOpens x` is given by `x ∈ u`.
-/
def productOfMemOpens : C(X, Opens X → Prop) where
  toFun x u := x ∈ u
  continuous_toFun := continuous_pi_iff.2 fun u => continuous_Prop.2 u.isOpen

theorem productOfMemOpens_isInducing : IsInducing (productOfMemOpens X) := by
  convert inducing_iInf_to_pi fun (u : Opens X) (x : X) => x ∈ u
  apply eq_induced_by_maps_to_sierpinski

@[deprecated (since := "2024-10-28")]
alias productOfMemOpens_inducing := productOfMemOpens_isInducing

theorem productOfMemOpens_injective [T0Space X] : Function.Injective (productOfMemOpens X) := by
  intro x1 x2 h
  apply Inseparable.eq
  rw [← IsInducing.inseparable_iff (productOfMemOpens_isInducing X), h]

theorem productOfMemOpens_isEmbedding [T0Space X] : IsEmbedding (productOfMemOpens X) :=
  .mk (productOfMemOpens_isInducing X) (productOfMemOpens_injective X)

@[deprecated (since := "2024-10-26")]
alias productOfMemOpens_embedding := productOfMemOpens_isEmbedding

end TopologicalSpace
```
