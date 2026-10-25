# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.UnivLE.Variant89eaf204886c8a33abb31ca3451ede4ead8066972f9a7902c22d60f3feaa3a2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0e60a4631c09cfed663595c6a3266ff8f93230d` · SHA-256 `89eaf204886c8a33abb31ca3451ede4ead8066972f9a7902c22d60f3feaa3a2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
module

public import Mathlib.Basic.UnivLE
public import Mathlib.SetTheory.Ordinal.Univ

/-!
# UnivLE and cardinals
-/

public section

noncomputable section

universe u v

open Cardinal

theorem univLE_iff_cardinal_le : UnivLE.{u, v} ↔ univ.{u, v + 1} ≤ univ.{v, u + 1} := by
  simp_rw [univLE_iff, small_iff_lift_mk_lt_univ]
  contrapose!
  -- strange: simp_rw [univ_umax.{v,u}] doesn't work
  refine ⟨fun ⟨α, le⟩ ↦ ?_, fun h ↦ ?_⟩
  · rw [univ_umax.{v, u}, ← lift_le.{u + 1}, lift_univ, lift_lift] at le
    exact le.trans_lt (lift_lt_univ'.{u, v + 1} #α)
  · obtain ⟨⟨α⟩, h⟩ := lt_univ'.mp h; use α
    rw [univ_umax.{v, u}, ← lift_le.{u + 1}, lift_univ, lift_lift]
    exact h.le

theorem univLE_iff_exists_embedding : UnivLE.{u, v} ↔ Nonempty (Ordinal.{u} ↪ Ordinal.{v}) := by
  rw [univLE_iff_cardinal_le]
  exact lift_mk_le'

theorem Ordinal.univLE_of_injective {f : Ordinal.{u} → Ordinal.{v}} (h : f.Injective) :
    UnivLE.{u, v} :=
  univLE_iff_exists_embedding.2 ⟨f, h⟩

/-- Together with transitivity, this shows `UnivLE` is a total preorder. -/
theorem univLE_total : UnivLE.{u, v} ∨ UnivLE.{v, u} := by
  simp_rw [univLE_iff_cardinal_le]; apply le_total
```
