# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unit.Variant22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21e52a45493b7509eac735a668bd8b71aba54cb6` · SHA-256 `22432a86b3dbadd453b543c49ce43cc0fadd845e3a4a468a4664c07bafeec021`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.PUnit
import Mathlib.CategoryTheory.Limits.HasLimits

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

/-- A trivial cocone for a functor into `PUnit`. `punitCoconeIsLimit` shows it is a colimit. -/
def punitCocone : Cocone F :=
  ⟨⟨⟨⟩⟩, (Functor.punitExt _ _).hom⟩

/-- Any cone over a functor into `PUnit` is a limit cone.
-/
def punitConeIsLimit {c : Cone F} : IsLimit c where
  lift := fun s => eqToHom (by simp [eq_iff_true_of_subsingleton])

/-- Any cocone over a functor into `PUnit` is a colimit cocone.
-/
def punitCoconeIsColimit {c : Cocone F} : IsColimit c where
  desc := fun s => eqToHom (by simp [eq_iff_true_of_subsingleton])

instance : HasLimitsOfSize.{v', v} (Discrete PUnit) :=
  ⟨fun _ _ => ⟨fun _ => ⟨punitCone, punitConeIsLimit⟩⟩⟩

instance : HasColimitsOfSize.{v', v} (Discrete PUnit) :=
  ⟨fun _ _ => ⟨fun _ => ⟨punitCocone, punitCoconeIsColimit⟩⟩⟩

end CategoryTheory.Limits
```
