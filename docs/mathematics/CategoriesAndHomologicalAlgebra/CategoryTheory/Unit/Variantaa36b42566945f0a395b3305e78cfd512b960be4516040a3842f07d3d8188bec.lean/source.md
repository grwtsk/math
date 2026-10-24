# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unit.Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19f18a2e668ecaa0d91c997a6e5bc01b21c57df9` · SHA-256 `aa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.PUnit
import Mathlib.CategoryTheory.Limits.HasLimits

#align_import category_theory.limits.unit from "leanprover-community/mathlib"@"c85d2ff93210de84373ab4c9c6dba2b78494961e"

/-!
# `Discrete PUnit` has limits and colimits

Mostly for the sake of constructing trivial examples, we show all (co)cones into `Discrete PUnit`
are (co)limit (co)cones. We also show that such (co)cones exist, and that `Discrete PUnit` has all
(co)limits.
-/


universe v' v

open CategoryTheory

namespace CategoryTheory.Limits

variable {J : Type v} [Category.{v'} J] {F : J ⥤ Discrete PUnit}

/-- A trivial cone for a functor into `PUnit`. `punitConeIsLimit` shows it is a limit. -/
def punitCone : Cone F :=
  ⟨⟨⟨⟩⟩, (Functor.punitExt _ _).hom⟩
#align category_theory.limits.punit_cone CategoryTheory.Limits.punitCone

/-- A trivial cocone for a functor into `PUnit`. `punitCoconeIsLimit` shows it is a colimit. -/
def punitCocone : Cocone F :=
  ⟨⟨⟨⟩⟩, (Functor.punitExt _ _).hom⟩
#align category_theory.limits.punit_cocone CategoryTheory.Limits.punitCocone

/-- Any cone over a functor into `PUnit` is a limit cone.
-/
def punitConeIsLimit {c : Cone F} : IsLimit c where
  lift := fun s => eqToHom (by simp)
#align category_theory.limits.punit_cone_is_limit CategoryTheory.Limits.punitConeIsLimit

/-- Any cocone over a functor into `PUnit` is a colimit cocone.
-/
def punitCoconeIsColimit {c : Cocone F} : IsColimit c where
  desc := fun s => eqToHom (by simp)
#align category_theory.limits.punit_cocone_is_colimit CategoryTheory.Limits.punitCoconeIsColimit

instance : HasLimitsOfSize.{v', v} (Discrete PUnit) :=
  ⟨fun _ _ => ⟨fun _ => ⟨punitCone, punitConeIsLimit⟩⟩⟩

instance : HasColimitsOfSize.{v', v} (Discrete PUnit) :=
  ⟨fun _ _ => ⟨fun _ => ⟨punitCocone, punitCoconeIsColimit⟩⟩⟩

end CategoryTheory.Limits
```
