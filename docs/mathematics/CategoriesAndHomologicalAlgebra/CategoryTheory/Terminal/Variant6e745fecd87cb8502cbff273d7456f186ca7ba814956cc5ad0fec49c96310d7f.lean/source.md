# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Terminal.Variant6e745fecd87cb8502cbff273d7456f186ca7ba814956cc5ad0fec49c96310d7f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `304b05888772c45f451092a00060790dccde85b8` · SHA-256 `6e745fecd87cb8502cbff273d7456f186ca7ba814956cc5ad0fec49c96310d7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Emily Riehl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Carlier, Emily Riehl
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.Terminal

/-!
# Terminal categories

We prove that a category is terminal if its underlying type has a `Unique` structure and the
category has an `IsDiscrete` instance.

We then use this to provide various examples of terminal categories.

TODO: Show the converse: that terminal categories have a unique object and are discrete.

TODO: Provide an analogous characterization of terminal categories as codiscrete categories
with a unique object.

-/

@[expose] public section

universe v u v' u'

open CategoryTheory Limits Functor

namespace CategoryTheory.Cat

/-- A discrete category with a unique object is terminal. -/
def isTerminalOfUniqueOfIsDiscrete {T : Type u} [Category.{v} T] [Unique T] [IsDiscrete T] :
    IsTerminal (Cat.of T) :=
  IsTerminal.ofUniqueHom (fun X ↦ ((const X).obj (default : T)).toCatHom)
    (fun _ _ ↦ Cat.Hom.ext <| Functor.ext (by simp [eq_iff_true_of_subsingleton]))

instance : HasTerminal Cat.{v, u} := by
  have : IsDiscrete (ShrinkHoms.{u} PUnit.{u + 1}) := {
    subsingleton _ _ := { allEq _ _ := eq_of_comp_right_eq (congrFun rfl) }
    eq_of_hom _ := rfl
  }
  exact IsTerminal.hasTerminal (X := ↧(ShrinkHoms PUnit)) isTerminalOfUniqueOfIsDiscrete

/-- Any `T : Cat.{u, u}` with a unique object and discrete homs is isomorphic to `⊤_ Cat.{u, u}.` -/
noncomputable def terminalIsoOfUniqueOfIsDiscrete
    {T : Type u} [Category.{v} T] [Unique T] [IsDiscrete T] : ⊤_ Cat.{v, u} ≅ ↧T :=
  terminalIsoIsTerminal isTerminalOfUniqueOfIsDiscrete

/-- The discrete category on `PUnit` is terminal. -/
def isTerminalDiscretePUnit : IsTerminal (Cat.of (Discrete PUnit)) :=
  isTerminalOfUniqueOfIsDiscrete

/-- Any terminal object `T : Cat.{u, u}` is isomorphic to `Cat.of (Discrete PUnit)`. -/
def isoDiscretePUnitOfIsTerminal {T : Type u} [Category.{u} T] (hT : IsTerminal (Cat.of T)) :
    Cat.of T ≅ Cat.of (Discrete PUnit) :=
  IsTerminal.uniqueUpToIso hT isTerminalDiscretePUnit

end CategoryTheory.Cat
```
