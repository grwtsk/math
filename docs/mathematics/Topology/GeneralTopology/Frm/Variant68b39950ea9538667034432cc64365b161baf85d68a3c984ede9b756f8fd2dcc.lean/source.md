# Complete source: GRWTSK.Topology.GeneralTopology.Frm.Variant68b39950ea9538667034432cc64365b161baf85d68a3c984ede9b756f8fd2dcc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68bb0465d6eedfe58354523309fac03eed4195f3` · SHA-256 `68b39950ea9538667034432cc64365b161baf85d68a3c984ede9b756f8fd2dcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Order.Category.Frm
public import Mathlib.Topology.Category.CompHaus.Basic
public import Mathlib.Topology.Sets.Opens

/-! # The forgetful functor from `TopCatᵒᵖ` to `Frm` -/

@[expose] public section

universe u

open TopologicalSpace Opposite CategoryTheory

/-- The forgetful functor from `TopCatᵒᵖ` to `Frm`. -/
@[simps]
def topCatOpToFrm : TopCatᵒᵖ ⥤ Frm where
  obj X := ↧(Opens (unop X : TopCat))
  map f := Frm.ofHom <| Opens.comap <| (Quiver.Hom.unop f).hom

-- Note, `CompHaus` is too strong. We only need `T0Space`.
instance CompHausOpToFrame.faithful : (compHausToTop.op ⋙ topCatOpToFrm.{u}).Faithful :=
  ⟨fun {X _ _ _} h =>  Quiver.Hom.unop_inj <| ConcreteCategory.ext <|
    Opens.comap_injective (β := (unop X).toTop) <| FrameHom.ext <|
      CategoryTheory.congr_fun h⟩
```
