# Complete source: GRWTSK.Algebra.GroupTheory.Archimedean.Variant2a40adfa409454a57c1b7be16b1110f76c9ccf523ec437200adc3375c9ef9336

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bab1f0799dc32ad3f22bdb4cc782ec51312aa81e` · SHA-256 `2a40adfa409454a57c1b7be16b1110f76c9ccf523ec437200adc3375c9ef9336`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yury G. Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury G. Kudryashov
-/
import Mathlib.Topology.Order.Basic
import Mathlib.GroupTheory.Archimedean

#align_import topology.algebra.order.archimedean from "leanprover-community/mathlib"@"4c19a16e4b705bf135cf9a80ac18fcc99c438514"

/-!
# Topology on archimedean groups and fields

In this file we prove the following theorems:

- `Rat.denseRange_cast`: the coercion from `ℚ` to a linear ordered archimedean field has dense
  range;

- `AddSubgroup.dense_of_not_isolated_zero`, `AddSubgroup.dense_of_no_min`: two sufficient conditions
  for a subgroup of an archimedean linear ordered additive commutative group to be dense;

- `AddSubgroup.dense_or_cyclic`: an additive subgroup of an archimedean linear ordered additive
  commutative group `G` with order topology either is dense in `G` or is a cyclic subgroup.
-/

open Set

/-- Rational numbers are dense in a linear ordered archimedean field. -/
theorem Rat.denseRange_cast {𝕜} [LinearOrderedField 𝕜] [TopologicalSpace 𝕜] [OrderTopology 𝕜]
  [Archimedean 𝕜] : DenseRange ((↑) : ℚ → 𝕜) :=
  dense_of_exists_between fun _ _ h => Set.exists_range_iff.2 <| exists_rat_btwn h
#align rat.dense_range_cast Rat.denseRange_cast

namespace AddSubgroup

variable {G : Type*} [LinearOrderedAddCommGroup G] [TopologicalSpace G] [OrderTopology G]
  [Archimedean G]

/-- An additive subgroup of an archimedean linear ordered additive commutative group with order
topology is dense provided that for all positive `ε` there exists a positive element of the
subgroup that is less than `ε`. -/
theorem dense_of_not_isolated_zero (S : AddSubgroup G) (hS : ∀ ε > 0, ∃ g ∈ S, g ∈ Ioo 0 ε) :
    Dense (S : Set G) := by
  cases subsingleton_or_nontrivial G
  · refine fun x => _root_.subset_closure ?_
    rw [Subsingleton.elim x 0]
    exact zero_mem S
  refine dense_of_exists_between fun a b hlt => ?_
  rcases hS (b - a) (sub_pos.2 hlt) with ⟨g, hgS, hg0, hg⟩
  rcases (existsUnique_add_zsmul_mem_Ioc hg0 0 a).exists with ⟨m, hm⟩
  rw [zero_add] at hm
  refine ⟨m • g, zsmul_mem hgS _, hm.1, hm.2.trans_lt ?_⟩
  rwa [lt_sub_iff_add_lt'] at hg

/-- Let `S` be a nontrivial additive subgroup in an archimedean linear ordered additive commutative
group `G` with order topology. If the set of positive elements of `S` does not have a minimal
element, then `S` is dense `G`. -/
theorem dense_of_no_min (S : AddSubgroup G) (hbot : S ≠ ⊥)
    (H : ¬∃ a : G, IsLeast { g : G | g ∈ S ∧ 0 < g } a) : Dense (S : Set G) := by
  refine S.dense_of_not_isolated_zero fun ε ε0 => ?_
  contrapose! H
  exact exists_isLeast_pos hbot ε0 (disjoint_left.2 H)
#align real.subgroup_dense_of_no_min AddSubgroup.dense_of_no_minₓ

/-- An additive subgroup of an archimedean linear ordered additive commutative group `G` with order
topology either is dense in `G` or is a cyclic subgroup. -/
theorem dense_or_cyclic (S : AddSubgroup G) : Dense (S : Set G) ∨ ∃ a : G, S = closure {a} := by
  refine (em _).imp (dense_of_not_isolated_zero S) fun h => ?_
  push_neg at h
  rcases h with ⟨ε, ε0, hε⟩
  exact cyclic_of_isolated_zero ε0 (disjoint_left.2 hε)
#align real.subgroup_dense_or_cyclic AddSubgroup.dense_or_cyclicₓ
```
