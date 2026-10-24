# Complete source: GRWTSK.Topology.GeneralTopology.IsLocallyHomeomorph.Variant40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ed70db8f88eb6fa9ba62b29606c6876ebb5abeb` · SHA-256 `40c464ca7970a9f2e9316b29f3b3f2fd7dfa1c3ae7483a2802b08ef8c1616e63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
import Mathlib.Topology.LocalHomeomorph

#align_import topology.is_locally_homeomorph from "leanprover-community/mathlib"@"e97cf15cd1aec9bd5c193b2ffac5a6dc9118912b"

/-!
# Local homeomorphisms

This file defines local homeomorphisms.

## Main definitions

* `IsLocallyHomeomorph`: A function `f : X → Y` satisfies `IsLocallyHomeomorph` if for each
  point `x : X`, the restriction of `f` to some open neighborhood `U` of `x` gives a homeomorphism
  between `U` and an open subset of `Y`.

  Note that `IsLocallyHomeomorph` is a global condition. This is in contrast to
  `LocalHomeomorph`, which is a homeomorphism between specific open subsets.
-/


open Topology

variable {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z] (g : Y → Z)
  (f : X → Y) (s : Set X) (t : Set Y)

/-- A function `f : X → Y` satisfies `IsLocallyHomeomorphOn f s` if each `x ∈ s` is contained in
the source of some `e : LocalHomeomorph X Y` with `f = e`. -/
def IsLocallyHomeomorphOn :=
  ∀ x ∈ s, ∃ e : LocalHomeomorph X Y, x ∈ e.source ∧ f = e
#align is_locally_homeomorph_on IsLocallyHomeomorphOn

namespace IsLocallyHomeomorphOn

/-- Proves that `f` satisfies `IsLocallyHomeomorphOn f s`. The condition `h` is weaker than the
definition of `IsLocallyHomeomorphOn f s`, since it only requires `e : LocalHomeomorph X Y` to
agree with `f` on its source `e.source`, as opposed to on the whole space `X`. -/
theorem mk (h : ∀ x ∈ s, ∃ e : LocalHomeomorph X Y, x ∈ e.source ∧ ∀ y ∈ e.source, f y = e y) :
    IsLocallyHomeomorphOn f s := by
  intro x hx
  obtain ⟨e, hx, he⟩ := h x hx
  exact
    ⟨{ e with
        toFun := f
        map_source' := fun x hx => by rw [he x hx]; exact e.map_source' hx
        left_inv' := fun x hx => by rw [he x hx]; exact e.left_inv' hx
        right_inv' := fun y hy => by rw [he _ (e.map_target' hy)]; exact e.right_inv' hy
        continuous_toFun := (continuousOn_congr he).mpr e.continuous_toFun },
      hx, rfl⟩
#align is_locally_homeomorph_on.mk IsLocallyHomeomorphOn.mk

variable {g f s t}

theorem map_nhds_eq (hf : IsLocallyHomeomorphOn f s) {x : X} (hx : x ∈ s) : (𝓝 x).map f = 𝓝 (f x) :=
  let ⟨e, hx, he⟩ := hf x hx
  he.symm ▸ e.map_nhds_eq hx
#align is_locally_homeomorph_on.map_nhds_eq IsLocallyHomeomorphOn.map_nhds_eq

protected theorem continuousAt (hf : IsLocallyHomeomorphOn f s) {x : X} (hx : x ∈ s) :
    ContinuousAt f x :=
  (hf.map_nhds_eq hx).le
#align is_locally_homeomorph_on.continuous_at IsLocallyHomeomorphOn.continuousAt

protected theorem continuousOn (hf : IsLocallyHomeomorphOn f s) : ContinuousOn f s :=
  ContinuousAt.continuousOn fun _x => hf.continuousAt
#align is_locally_homeomorph_on.continuous_on IsLocallyHomeomorphOn.continuousOn

protected theorem comp (hg : IsLocallyHomeomorphOn g t) (hf : IsLocallyHomeomorphOn f s)
    (h : Set.MapsTo f s t) : IsLocallyHomeomorphOn (g ∘ f) s := by
  intro x hx
  obtain ⟨eg, hxg, rfl⟩ := hg (f x) (h hx)
  obtain ⟨ef, hxf, rfl⟩ := hf x hx
  exact ⟨ef.trans eg, ⟨hxf, hxg⟩, rfl⟩
#align is_locally_homeomorph_on.comp IsLocallyHomeomorphOn.comp

end IsLocallyHomeomorphOn

/-- A function `f : X → Y` satisfies `IsLocallyHomeomorph f` if each `x : x` is contained in
  the source of some `e : LocalHomeomorph X Y` with `f = e`. -/
def IsLocallyHomeomorph :=
  ∀ x : X, ∃ e : LocalHomeomorph X Y, x ∈ e.source ∧ f = e
#align is_locally_homeomorph IsLocallyHomeomorph

variable {f}

theorem isLocallyHomeomorph_iff_isLocallyHomeomorphOn_univ :
    IsLocallyHomeomorph f ↔ IsLocallyHomeomorphOn f Set.univ := by
  simp only [IsLocallyHomeomorph, IsLocallyHomeomorphOn, Set.mem_univ, forall_true_left]
#align is_locally_homeomorph_iff_is_locally_homeomorph_on_univ isLocallyHomeomorph_iff_isLocallyHomeomorphOn_univ

protected theorem IsLocallyHomeomorph.isLocallyHomeomorphOn (hf : IsLocallyHomeomorph f) :
    IsLocallyHomeomorphOn f Set.univ :=
  isLocallyHomeomorph_iff_isLocallyHomeomorphOn_univ.mp hf
#align is_locally_homeomorph.is_locally_homeomorph_on IsLocallyHomeomorph.isLocallyHomeomorphOn

variable (f)

namespace IsLocallyHomeomorph

/-- Proves that `f` satisfies `IsLocallyHomeomorph f`. The condition `h` is weaker than the
definition of `IsLocallyHomeomorph f`, since it only requires `e : LocalHomeomorph X Y` to
agree with `f` on its source `e.source`, as opposed to on the whole space `X`. -/
theorem mk (h : ∀ x : X, ∃ e : LocalHomeomorph X Y, x ∈ e.source ∧ ∀ y ∈ e.source, f y = e y) :
    IsLocallyHomeomorph f :=
  isLocallyHomeomorph_iff_isLocallyHomeomorphOn_univ.mpr
    (IsLocallyHomeomorphOn.mk f Set.univ fun x _hx => h x)
#align is_locally_homeomorph.mk IsLocallyHomeomorph.mk

variable {g f}

theorem map_nhds_eq (hf : IsLocallyHomeomorph f) (x : X) : (𝓝 x).map f = 𝓝 (f x) :=
  hf.isLocallyHomeomorphOn.map_nhds_eq (Set.mem_univ x)
#align is_locally_homeomorph.map_nhds_eq IsLocallyHomeomorph.map_nhds_eq

protected theorem continuous (hf : IsLocallyHomeomorph f) : Continuous f :=
  continuous_iff_continuousOn_univ.mpr hf.isLocallyHomeomorphOn.continuousOn
#align is_locally_homeomorph.continuous IsLocallyHomeomorph.continuous

protected theorem isOpenMap (hf : IsLocallyHomeomorph f) : IsOpenMap f :=
  IsOpenMap.of_nhds_le fun x => ge_of_eq (hf.map_nhds_eq x)
#align is_locally_homeomorph.is_open_map IsLocallyHomeomorph.isOpenMap

protected theorem comp (hg : IsLocallyHomeomorph g) (hf : IsLocallyHomeomorph f) :
    IsLocallyHomeomorph (g ∘ f) :=
  isLocallyHomeomorph_iff_isLocallyHomeomorphOn_univ.mpr
    (hg.isLocallyHomeomorphOn.comp hf.isLocallyHomeomorphOn (Set.univ.mapsTo_univ f))
#align is_locally_homeomorph.comp IsLocallyHomeomorph.comp

end IsLocallyHomeomorph

```
