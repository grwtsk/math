# Complete source: GRWTSK.Topology.GeneralTopology.DeltaGenerated.Variant3916bb4b40015bb63cb8ce7aa1b043d9242fc806ebced290e004a33c188609d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0f64b5f52d617a0d86ed521b1abc10cc2b359df` · SHA-256 `3916bb4b40015bb63cb8ce7aa1b043d9242fc806ebced290e004a33c188609d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Ben Eltschig. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ben Eltschig, Joël Riou
-/
module

public import Mathlib.CategoryTheory.Monad.Limits
public import Mathlib.Topology.Category.TopCat.Limits.Basic
public import Mathlib.Topology.Compactness.DeltaGeneratedSpace
public import Mathlib.Topology.Convenient.Category

/-!
# Delta-generated topological spaces

This file defines the category `DeltaGenerated` of delta-generated spaces.
This is a particular case of the construction in the file
`Mathlib/Topology/Convenient/Category.Lean`: this is the category of
`X`-generated spaces where `X` is the family of spaces `Fin n → ℝ`
for all `n : ℕ`.

## TODO
* `DeltaGenerated` is Cartesian closed (@joelriou).

## References
* https://ncatlab.org/nlab/show/Delta-generated+topological+space

-/

@[expose] public section

universe u

open CategoryTheory

/-- The category of delta-generated topological spaces. -/
abbrev DeltaGenerated := GeneratedByTopCat.{u} (fun n ↦ Fin n → ℝ)

/-- The faithful (but not full) functor taking each topological space to its delta-generated
  coreflection. -/
abbrev TopCat.toDeltaGenerated : TopCat.{u} ⥤ DeltaGenerated.{u} :=
  TopCat.toGeneratedByTopCat

namespace DeltaGenerated

/-- Constructor for objects of the category `DeltaGenerated` -/
abbrev of (X : Type u) [TopologicalSpace X] [DeltaGeneratedSpace X] : DeltaGenerated.{u} :=
  ↧X

open Lean.PrettyPrinter.Delaborator in
/-- This prints `DeltaGenerated.of X` as `↧X`. -/
@[app_delab DeltaGenerated.of]
meta def delabOf : Delab := CategoryTheory.delabOf

/-- The forgetful functor `DeltaGenerated ⥤ TopCat` -/
abbrev deltaGeneratedToTop : DeltaGenerated.{u} ⥤ TopCat.{u} :=
  GeneratedByTopCat.toTopCat

/-- `deltaGeneratedToTop` is fully faithful. -/
abbrev fullyFaithfulDeltaGeneratedToTop : deltaGeneratedToTop.{u}.FullyFaithful :=
  GeneratedByTopCat.fullyFaithfulToTopCat _

@[deprecated (since := "2026-04-23")] alias topToDeltaGenerated := TopCat.toDeltaGenerated

/-- The adjunction between the forgetful functor `DeltaGenerated ⥤ TopCat` and its coreflector. -/
abbrev coreflectorAdjunction : deltaGeneratedToTop ⊣ TopCat.toDeltaGenerated :=
  GeneratedByTopCat.adj

end DeltaGenerated
```
