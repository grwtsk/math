# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudofunctor.Variant3c0b8029adc9391d9550bf944c5d69818ca5d8270937b764d0f25e98cd77e22d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4004420721d6c1537f181a68a48914dade2c9194` · SHA-256 `3c0b8029adc9391d9550bf944c5d69818ca5d8270937b764d0f25e98cd77e22d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Category.ModuleCat.ChangeOfRings
public import Mathlib.Algebra.Category.Ring.Basic
public import Mathlib.CategoryTheory.Bicategory.Functor.LocallyDiscrete
public import Mathlib.CategoryTheory.Adjunction.Mates

/-!
# The pseudofunctors which send a commutative ring to its category of modules

In this file, we construct the pseudofunctors
`CommRingCat.moduleCatRestrictScalarsPseudofunctor` and
`RingCat.moduleCatRestrictScalarsPseudofunctor` which send a (commutative) ring
to its category of modules: the contravariant functoriality is given
by the restriction of scalars functors.

We also define a pseudofunctor
`CommRingCat.moduleCatExtendScalarsPseudofunctor`: the covariant functoriality
is given by the extension of scalars functors.

-/

@[expose] public section

universe v u

open CategoryTheory ModuleCat

/-- The pseudofunctor from `LocallyDiscrete CommRingCatᵒᵖ` to `Cat` which sends
a commutative ring `R` to its category of modules. The functoriality is given by
the restriction of scalars. -/
@[simps! obj map mapId mapComp]
noncomputable def CommRingCat.moduleCatRestrictScalarsPseudofunctor :
    Pseudofunctor (LocallyDiscrete CommRingCat.{u}ᵒᵖ) Cat :=
  LocallyDiscrete.mkPseudofunctor
    (fun R ↦ ↧(ModuleCat.{v} R.unop))
    (fun f ↦ (restrictScalars f.unop.hom).toCatHom)
    (fun R ↦ Cat.Hom.isoMk (restrictScalarsId R.unop))
    (fun f g ↦ Cat.Hom.isoMk <| restrictScalarsComp g.unop.hom f.unop.hom)

/-- The pseudofunctor from `LocallyDiscrete RingCatᵒᵖ` to `Cat` which sends a ring `R`
to its category of modules. The functoriality is given by the restriction of scalars. -/
@[simps! obj map mapId mapComp]
noncomputable def RingCat.moduleCatRestrictScalarsPseudofunctor :
    Pseudofunctor (LocallyDiscrete RingCat.{u}ᵒᵖ) Cat :=
  LocallyDiscrete.mkPseudofunctor
    (fun R ↦ ↧(ModuleCat.{v} R.unop))
    (fun f ↦ (restrictScalars f.unop.hom).toCatHom)
    (fun R ↦ Cat.Hom.isoMk <| restrictScalarsId R.unop)
    (fun f g ↦ Cat.Hom.isoMk <| restrictScalarsComp g.unop.hom f.unop.hom)

/-- The pseudofunctor from `LocallyDiscrete CommRingCat` to `Cat` which sends
a commutative ring `R` to its category of modules. The functoriality is given by
the extension of scalars. -/
@[simps! obj map mapId mapComp]
noncomputable def CommRingCat.moduleCatExtendScalarsPseudofunctor :
    Pseudofunctor (LocallyDiscrete CommRingCat.{u}) Cat := by
  refine LocallyDiscrete.mkPseudofunctor
    (fun R ↦ ↧(ModuleCat.{u} R))
    (fun f ↦ (extendScalars f.hom).toCatHom)
    (fun R ↦ Cat.Hom.isoMk <| extendScalarsId R)
    (fun f g ↦ Cat.Hom.isoMk <| extendScalarsComp f.hom g.hom) ?_ ?_ ?_
  · intros; ext1; apply extendScalars_assoc'
  · intros; ext1; apply extendScalars_id_comp
  · intros; ext1; apply extendScalars_comp_id
```
