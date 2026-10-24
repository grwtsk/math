# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Solid.Variant37af0fd83b67a1bfe36288034b7e869abfde7eb0c74b2a3acfc617401818f0b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb17f4ded3709925844780d4ca6a5c24b86d3dc0` · SHA-256 `37af0fd83b67a1bfe36288034b7e869abfde7eb0c74b2a3acfc617401818f0b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Functor.KanExtension.Pointwise
import Mathlib.Condensed.Functors
import Mathlib.Condensed.Limits

/-!

# Solid modules

This file contains the definition of a solid `R`-module: `CondensedMod.isSolid R`. Solid modules
groups were introduced in [scholze2019condensed], Definition 5.1.

## Main definition

* `CondensedMod.IsSolid R`: the predicate on condensed `R`-modules describing the property of
  being solid.

TODO (hard): prove that `((profiniteSolid ℤ).obj S).IsSolid` for `S : Profinite`.
TODO (slightly easier): prove that `((profiniteSolid 𝔽ₚ).obj S).IsSolid` for `S : Profinite`.
-/

universe u

variable (R : Type (u + 1)) [Ring R]

open CategoryTheory Limits Profinite Condensed

noncomputable section

namespace Condensed

/-- The free condensed abelian group on a finite set. -/
abbrev finFree : FintypeCat.{u} ⥤ CondensedMod.{u} R :=
  FintypeCat.toProfinite ⋙ profiniteToCondensed ⋙ free R

/-- The free condensed abelian group on a profinite space. -/
abbrev profiniteFree : Profinite.{u} ⥤ CondensedMod.{u} R :=
  profiniteToCondensed ⋙ free R

/-- The functor sending a profinite space `S` to the condensed abelian group `R[S]^\solid`. -/
def profiniteSolid : Profinite.{u} ⥤ CondensedMod.{u} R :=
  Functor.rightKanExtension FintypeCat.toProfinite (finFree R)

/-- The natural transformation `FintypeCat.toProfinite ⋙ profiniteSolid R ⟶ finFree R`
which is part of the assertion that `profiniteSolid R` is the (pointwise) right
Kan extension of `finFree R` along `FintypeCat.toProfinite`. -/
def profiniteSolidCounit : FintypeCat.toProfinite ⋙ profiniteSolid R ⟶ finFree R :=
  Functor.rightKanExtensionCounit FintypeCat.toProfinite (finFree R)

instance : (profiniteSolid R).IsRightKanExtension (profiniteSolidCounit R) := by
  dsimp only [profiniteSolidCounit, profiniteSolid]
  infer_instance

/-- The functor `Profinite.{u} ⥤ CondensedMod.{u} R` is a pointwise
right Kan extension of `finFree R : FintypeCat.{u} ⥤ CondensedMod.{u} R`
along `FintypeCat.toProfinite`. -/
def profiniteSolidIsPointwiseRightKanExtension :
    (Functor.RightExtension.mk _ (profiniteSolidCounit R)).IsPointwiseRightKanExtension :=
  Functor.isPointwiseRightKanExtensionOfIsRightKanExtension _ _

/-- The natural transformation `R[S] ⟶ R[S]^\solid`. -/
def profiniteSolidification : profiniteFree R ⟶ profiniteSolid.{u} R :=
  (profiniteSolid R).liftOfIsRightKanExtension (profiniteSolidCounit R) _ (𝟙 _)

end Condensed

/-- The predicate on condensed abelian groups describing the property of being solid. -/
class CondensedMod.IsSolid (A : CondensedMod.{u} R) : Prop where
  isIso_solidification_map : ∀ X : Profinite.{u}, IsIso ((yoneda.obj A).map
    ((profiniteSolidification R).app X).op)
```
