# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudofunctor.Variant80bfab4ad5709a3d6dfb9c8c2d83666a59291f7f9283f20c13f60800730407d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `477c68e8297fd211ab4547f6df8f70facba1461f` · SHA-256 `80bfab4ad5709a3d6dfb9c8c2d83666a59291f7f9283f20c13f60800730407d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.ChangeOfRings
import Mathlib.Algebra.Category.Ring.Basic
import Mathlib.CategoryTheory.Bicategory.Functor.LocallyDiscrete
import Mathlib.CategoryTheory.Adjunction.Mates

/-!
# The pseudofunctors which send a commutative ring to its category of modules

In this file, we construct the pseudofunctors
`CommRingCat.moduleCatRestrictScalarsPseudofunctor` and
`RingCat.moduleCatRestrictScalarsPseudofunctor` which sends a (commutative) ring
to its category of modules: the contravariant functoriality is given
by the restriction of scalars functors.

We also define a pseudofunctor
`CommRingCat.moduleCatExtendScalarsPseudofunctor`: the covariant functoriality
is given by the extension of scalars functors.

-/

universe v u

open CategoryTheory ModuleCat

/-- The pseudofunctor from `LocallyDiscrete CommRingCatᵒᵖ` to `Cat` which sends
a commutative ring `R` to its category of modules. The functoriality is given by
the restriction of scalars. -/
@[simps! obj map mapId mapComp]
noncomputable def CommRingCat.moduleCatRestrictScalarsPseudofunctor :
    Pseudofunctor (LocallyDiscrete CommRingCat.{u}ᵒᵖ) Cat :=
  LocallyDiscrete.mkPseudofunctor
    (fun R ↦ Cat.of (ModuleCat.{v} R.unop))
    (fun f ↦ restrictScalars f.unop.hom)
    (fun R ↦ restrictScalarsId R.unop)
    (fun f g ↦ restrictScalarsComp g.unop.hom f.unop.hom)

/-- The pseudofunctor from `LocallyDiscrete RingCatᵒᵖ` to `Cat` which sends a ring `R`
to its category of modules. The functoriality is given by the restriction of scalars. -/
@[simps! obj map mapId mapComp]
noncomputable def RingCat.moduleCatRestrictScalarsPseudofunctor :
    Pseudofunctor (LocallyDiscrete RingCat.{u}ᵒᵖ) Cat :=
  LocallyDiscrete.mkPseudofunctor
    (fun R ↦ Cat.of (ModuleCat.{v} R.unop))
    (fun f ↦ restrictScalars f.unop.hom)
    (fun R ↦ restrictScalarsId R.unop)
    (fun f g ↦ restrictScalarsComp g.unop.hom f.unop.hom)

/-- The pseudofunctor from `LocallyDiscrete CommRingCat` to `Cat` which sends
a commutative ring `R` to its category of modules. The functoriality is given by
the extension of scalars. -/
@[simps! obj map mapId mapComp]
noncomputable def CommRingCat.moduleCatExtendScalarsPseudofunctor :
    Pseudofunctor (LocallyDiscrete CommRingCat.{u}) Cat :=
  LocallyDiscrete.mkPseudofunctor
    (fun R ↦ Cat.of (ModuleCat.{u} R))
    (fun f ↦ extendScalars f.hom)
    (fun R ↦ extendScalarsId R)
    (fun f g ↦ extendScalarsComp f.hom g.hom)
    (fun _ _ _ ↦ extendScalars_assoc' _ _ _)
    (fun _ ↦ extendScalars_id_comp _)
    (fun _ ↦ extendScalars_comp_id _)
```
