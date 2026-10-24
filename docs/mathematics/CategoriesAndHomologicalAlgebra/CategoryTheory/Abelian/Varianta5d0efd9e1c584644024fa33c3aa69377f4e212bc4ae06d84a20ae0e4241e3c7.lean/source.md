# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abelian.Varianta5d0efd9e1c584644024fa33c3aa69377f4e212bc4ae06d84a20ae0e4241e3c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a69cc55e87222b4e6d41e259e2bfc9e363181335` · SHA-256 `a5d0efd9e1c584644024fa33c3aa69377f4e212bc4ae06d84a20ae0e4241e3c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.Presheaf.Sheafification
import Mathlib.CategoryTheory.Abelian.Transfer

/-!
# The category of sheaves of modules is abelian

In this file, it is shown that the category of sheaves of modules over
a sheaf of rings `R` is an abelian category. More precisely,
if `J` is a Grothendieck topology on a category `C` and `R : Sheaf J RingCat.{u}`,
then `SheafOfModules.{v} R` is abelian if the conditions `HasSheafify J AddCommGrp.{v}]`
and `J.WEqualsLocallyBijective AddCommGrp.{v}` are satisfied.

In particular, if `u = v` and `C : Type u` is a small category,
then `SheafOfModules.{u} R` is abelian: this instance shall be
found automatically if this file and `Algebra.Category.Grp.FilteredColimits`
are imported.

-/

universe v v' u u'

open CategoryTheory Limits

variable {C : Type u'} [Category.{v'} C] {J : GrothendieckTopology C}

namespace SheafOfModules

variable (R : Sheaf J RingCat.{u}) [HasSheafify J AddCommGrp.{v}]
  [J.WEqualsLocallyBijective AddCommGrp.{v}]

noncomputable instance : Abelian (SheafOfModules.{v} R) := by
  let adj := PresheafOfModules.sheafificationAdjunction (𝟙 R.val)
  exact abelianOfAdjunction _ _ (asIso (adj.counit)) adj

end SheafOfModules
```
