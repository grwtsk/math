# Complete source: GRWTSK.Topology.GeneralTopology.Completion.Variant39fe36f6d9473c5e2221d17e080339047c1b97ff62cfaf54e7c59ab2b47e5777

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6638495fd1d082ea50a3ef76a37935928319f12b` · SHA-256 `39fe36f6d9473c5e2221d17e080339047c1b97ff62cfaf54e7c59ab2b47e5777`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mitchell Lee. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mitchell Lee
-/
import Mathlib.Topology.Algebra.Nonarchimedean.Basic
import Mathlib.Topology.Algebra.GroupCompletion
import Mathlib.Topology.Algebra.UniformRing

/-!
# The completion of a nonarchimedean additive group

The completion of a nonarchimedean additive group is a nonarchimedean additive group.

The completion of a nonarchimedean ring is a nonarchimedean ring.
-/

open UniformSpace UniformSpace.Completion AddSubgroup OpenAddSubgroup Topology

/-- The completion of a nonarchimedean additive group is a nonarchimedean additive group. -/
instance {G : Type*} [AddGroup G] [UniformSpace G] [IsUniformAddGroup G]
    [NonarchimedeanAddGroup G] : NonarchimedeanAddGroup (Completion G) where
  is_nonarchimedean := by
    /- Let `U` be a neighborhood of `0` in `Completion G`. We wish to show that `U` contains an open
    additive subgroup of `Completion G`. -/
    intro U hU
    /- Since `Completion G` is regular, there is a closed neighborhood `C` of `0` which is
    contained in `U`. -/
    obtain ⟨C, ⟨hC, C_closed⟩, C_subset_U⟩ := (closed_nhds_basis 0).mem_iff.mp hU
    /- By continuity, the preimage of `C` in `G`, written `toCompl ⁻¹' U'`,
    is a neighborhood of `0`. -/
    have : toCompl ⁻¹' C ∈ 𝓝 0 :=
      continuous_toCompl.continuousAt.preimage_mem_nhds (by rwa [map_zero])
    /- Therefore, since `G` is nonarchimedean, there exists an open subgroup `W` of `G` that is
    contained within `toCompl ⁻¹' C`. -/
    obtain ⟨W, hCW⟩ := NonarchimedeanAddGroup.is_nonarchimedean (toCompl ⁻¹' C) this
    /- Now, let `V = (W.map toCompl).topologicalClosure` be the result of mapping `W` back to
    `Completion G` and taking the topological closure. -/
    let V : Set (Completion G) := (W.map toCompl).topologicalClosure
    /- We claim that this set `V` satisfies the
    desired properties. There are three conditions to check:

    1. `V` is a subgroup of `Completion G`.
    2. `V` is open.
    3. `V ⊆ U`.

    The first condition follows directly from the fact that the topological closure of a subgroup
    is a subgroup. Now, let us check that `V` is open. -/
    have : IsOpen V := by
      /- Since `V` is a subgroup of `Completion G`, it suffices to show that it is a neighborhood of
      `0` in `Completion G`. This follows from the fact that `toCompl : G → Completion G` is dense
      inducing and `W` is a neighborhood of `0` in `G`. -/
      apply isOpen_of_mem_nhds (g := 0)
      apply (isDenseInducing_toCompl _).closure_image_mem_nhds
      exact mem_nhds_zero W
    use ⟨_, this⟩
    /- Finally, it remains to show that `V ⊆ U`. It suffices to show that `V ⊆ C`, which
    follows from the fact that `W ⊆ toCompl ⁻¹' C` and `C` is closed. -/
    suffices V ⊆ C from this.trans C_subset_U
    exact closure_minimal (Set.image_subset_iff.mpr hCW) C_closed

/-- The completion of a nonarchimedean ring is a nonarchimedean ring. -/
instance {R : Type*} [Ring R] [UniformSpace R] [IsTopologicalRing R] [IsUniformAddGroup R]
    [NonarchimedeanRing R] :
    NonarchimedeanRing (Completion R) where
  is_nonarchimedean := NonarchimedeanAddGroup.is_nonarchimedean
```
