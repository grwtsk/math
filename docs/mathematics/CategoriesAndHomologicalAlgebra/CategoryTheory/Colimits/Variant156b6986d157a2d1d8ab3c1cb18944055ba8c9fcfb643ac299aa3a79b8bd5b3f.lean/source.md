# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimits.Variant156b6986d157a2d1d8ab3c1cb18944055ba8c9fcfb643ac299aa3a79b8bd5b3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c9956bddf6caa5da75d6fe52407d472bb5f10af` · SHA-256 `156b6986d157a2d1d8ab3c1cb18944055ba8c9fcfb643ac299aa3a79b8bd5b3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.Presheaf.Sheafification

/-!
# Colimits in categories of sheaves of modules

In this file, we show that colimits of shape `J` exists in a category
of sheaves of modules if it exists in the corresponding category
of presheaves of modules.

-/

universe w' w v v' u' u

namespace SheafOfModules

open CategoryTheory Limits

variable {C : Type u'} [Category.{v'} C] {J : GrothendieckTopology C}

variable (R : Sheaf J RingCat.{u}) [HasWeakSheafify J AddCommGrp.{v}]
  [J.WEqualsLocallyBijective AddCommGrp.{v}] (K : Type w) [Category.{w'} K]

instance [HasColimitsOfShape K (PresheafOfModules.{v} R.val)] :
    HasColimitsOfShape K (SheafOfModules.{v} R) where
  has_colimit F := by
    let e : F ≅ (F ⋙ forget R) ⋙ PresheafOfModules.sheafification (𝟙 R.val) :=
      isoWhiskerLeft F (asIso (PresheafOfModules.sheafificationAdjunction (𝟙 R.val)).counit).symm
    exact hasColimit_of_iso e

end SheafOfModules
```
