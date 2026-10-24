# Complete source: GRWTSK.Algebra.UniversalAlgebra.Abelian.Variant5974c15da11b0bb8d3ce36fb1a9e191b552520bea4cf346a61079d59bebd03f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1247dddb06fa2415f176e74315542959db42fb1` · SHA-256 `5974c15da11b0bb8d3ce36fb1a9e191b552520bea4cf346a61079d59bebd03f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

public import Mathlib.Algebra.Category.Grp.Colimits
public import Mathlib.Algebra.Category.Grp.Limits
public import Mathlib.Algebra.Category.Grp.ZModuleEquivalence
public import Mathlib.Algebra.Category.ModuleCat.Abelian
public import Mathlib.CategoryTheory.Adjunction.Limits
public import Mathlib.CategoryTheory.Limits.ConcreteCategory.Basic

/-!
# The category of abelian groups is abelian
-/

@[expose] public section

open CategoryTheory

universe u

noncomputable section

namespace AddCommGrpCat

variable {X Y : AddCommGrpCat.{u}} (f : X ⟶ Y)

/-- In the category of abelian groups, every monomorphism is normal. -/
@[instance_reducible]
def normalMono (_ : Mono f) : NormalMono f :=
  equivalenceReflectsNormalMono (forget₂ (ModuleCat.{u} ℤ) AddCommGrpCat.{u}).inv <|
    ModuleCat.normalMono _ inferInstance

/-- In the category of abelian groups, every epimorphism is normal. -/
@[instance_reducible]
def normalEpi (_ : Epi f) : NormalEpi f :=
  equivalenceReflectsNormalEpi (forget₂ (ModuleCat.{u} ℤ) AddCommGrpCat.{u}).inv <|
    ModuleCat.normalEpi _ inferInstance

/-- The category of abelian groups is abelian. -/
instance : Abelian AddCommGrpCat.{u} where
  normalMonoOfMono f hf := ⟨normalMono f hf⟩
  normalEpiOfEpi f hf := ⟨normalEpi f hf⟩

end AddCommGrpCat
```
