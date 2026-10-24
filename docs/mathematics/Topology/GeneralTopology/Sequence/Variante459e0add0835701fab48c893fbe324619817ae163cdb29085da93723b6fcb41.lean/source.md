# Complete source: GRWTSK.Topology.GeneralTopology.Sequence.Variante459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0f805df0a2f916f5a66898ca47de113339b68ba` · SHA-256 `e459e0add0835701fab48c893fbe324619817ae163cdb29085da93723b6fcb41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Topology.Compactification.OnePoint
import Mathlib.Topology.Category.LightProfinite.Basic
/-!

# The light profinite set classifying convergent sequences

This files defines the light profinite set `ℕ∪{∞}`, defined as the one point compactification of
`ℕ`.
-/

open CategoryTheory OnePoint TopologicalSpace Topology

namespace LightProfinite

/-- The continuous map from `ℕ∪{∞}` to `ℝ` sending `n` to `1/(n+1)` and `∞` to `0`. -/
noncomputable def natUnionInftyEmbedding : C(OnePoint ℕ, ℝ) where
  toFun
    | ∞ => 0
    | OnePoint.some n => 1 / (n+1 : ℝ)
  continuous_toFun := OnePoint.continuous_iff_from_nat _ |>.mpr
    tendsto_one_div_add_atTop_nhds_zero_nat

/--
The continuous map from `ℕ∪{∞}` to `ℝ` sending `n` to `1/(n+1)` and `∞` to `0` is a closed
embedding.
-/
lemma isClosedEmbedding_natUnionInftyEmbedding : IsClosedEmbedding natUnionInftyEmbedding := by
  refine .of_continuous_injective_isClosedMap
    natUnionInftyEmbedding.continuous ?_ ?_
  · rintro (_|n) (_|m) h
    · rfl
    · simp only [natUnionInftyEmbedding, one_div, ContinuousMap.coe_mk, zero_eq_inv] at h
      rw [← Nat.cast_one, ← Nat.cast_add, eq_comm, Nat.cast_eq_zero] at h
      simp at h
    · simp only [natUnionInftyEmbedding, one_div, ContinuousMap.coe_mk, inv_eq_zero] at h
      rw [← Nat.cast_one, ← Nat.cast_add, Nat.cast_eq_zero] at h
      simp at h
    · simp only [natUnionInftyEmbedding, one_div, ContinuousMap.coe_mk, inv_inj, add_left_inj,
        Nat.cast_inj] at h
      rw [h]
  · exact fun _ hC => (hC.isCompact.image natUnionInftyEmbedding.continuous).isClosed

instance : MetrizableSpace (OnePoint ℕ) := isClosedEmbedding_natUnionInftyEmbedding.metrizableSpace

/-- The one point compactification of the natural numbers as a light profinite set. -/
abbrev NatUnionInfty : LightProfinite := of (OnePoint ℕ)

@[inherit_doc]
scoped notation "ℕ∪{∞}" => NatUnionInfty

instance : Coe ℕ ℕ∪{∞} := optionCoe

open Filter Topology

lemma continuous_iff_convergent {Y : Type*} [TopologicalSpace Y] (f : ℕ∪{∞} → Y) :
    Continuous f ↔ Tendsto (fun x : ℕ ↦ f x) atTop (𝓝 (f ∞)) :=
  continuous_iff_from_nat f

end LightProfinite
```
