# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AB.Variant8abe514f6ee6659f0acd5e47433f483a22de98b5b65baed7c99160861366bc24

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f55edfcfed0d12513ca2eab5f685c90ec8f831c` · SHA-256 `8abe514f6ee6659f0acd5e47433f483a22de98b5b65baed7c99160861366bc24`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.Algebra.Category.ModuleCat.AB
public import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Sheaf
public import Mathlib.Condensed.Light.Epi

/-!
# Grothendieck's AB axioms for light condensed modules

The category of light condensed `R`-modules over a ring satisfies the countable version of
Grothendieck's AB4\* axiom
-/

public section

universe u

open CategoryTheory

namespace LightCondensed

variable {R : Type u} [Ring R]

attribute [local instance] Abelian.hasFiniteBiproducts

noncomputable instance : CountableAB4Star (LightCondMod.{u} R) :=
  have := hasExactLimitsOfShape_of_preservesEpi (LightCondMod R) (Discrete ℕ)
  CountableAB4Star.of_hasExactLimitsOfShape_nat _

instance : IsGrothendieckAbelian.{u} (LightCondMod.{u} R) :=
  Sheaf.isGrothendieckAbelian_of_essentiallySmall _ _

end LightCondensed
```
