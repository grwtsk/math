# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafOfModules.Variant90de857f7f858fbd7f3229d52b25dab00de32f3cc6512b51676f686557d042be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58d0212bd9aa0a4a9aa281965f2172002a0cb279` · SHA-256 `90de857f7f858fbd7f3229d52b25dab00de32f3cc6512b51676f686557d042be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Sheaf.Abelian
public import Mathlib.Algebra.Category.ModuleCat.Sheaf.Colimits
public import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.PresheafOfModules

/-!
# The category of sheaves of modules is Grothendieck abelian


-/

universe u

open CategoryTheory

namespace SheafOfModules

public instance {C : Type u} [SmallCategory C] {J : GrothendieckTopology C}
    (R : Sheaf J RingCat.{u}) :
    IsGrothendieckAbelian.{u} (SheafOfModules.{u} R) where
  hasFilteredColimitsOfSize := ⟨fun _ ↦ ⟨fun _ ↦ inferInstance⟩⟩
  ab5OfSize := ⟨fun K _ _ ↦
    (PresheafOfModules.sheafificationAdjunction (𝟙 R.obj)).hasExactColimitsOfShape K⟩
  hasSeparator :=
    .of_adjunction (PresheafOfModules.sheafificationAdjunction (𝟙 R.obj))

end SheafOfModules
```
