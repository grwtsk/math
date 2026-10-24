# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant14d297c3b9fa25a9a146a55a40076ed4275ca0b5a3a03ec124743a1642b91928

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cfb3bccb7d5559eab13fe812bafc1b5914e58b6` · SHA-256 `14d297c3b9fa25a9a146a55a40076ed4275ca0b5a3a03ec124743a1642b91928`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Sites.ConstantSheaf
public import Mathlib.Condensed.Basic
public import Mathlib.Condensed.Light.Basic
public import Mathlib.Condensed.Light.Instances
/-!

# Discrete-underlying adjunction

Given a category `C` with sheafification with respect to the coherent topology on compact Hausdorff
spaces, we define a functor `C ⥤ Condensed C` which associates to an object of `C` the
corresponding "discrete" condensed object (see `Condensed.discrete`).

In `Condensed.discreteUnderlyingAdj` we prove that this functor is left adjoint to the forgetful
functor from `Condensed C` to `C`.

We also give the variant `LightCondensed.discreteUnderlyingAdj` for light condensed objects.

The file `Mathlib/Condensed/Discrete/Characterization.lean` defines a predicate `IsDiscrete` on
condensed and light condensed objects, and provides several conditions on a (light) condensed
set or module that characterize it as discrete.
-/

@[expose] public section

universe u v w

open CategoryTheory Opposite

namespace Condensed

variable (C : Type w) [Category.{u + 1} C] [HasWeakSheafify (coherentTopology CompHaus.{u}) C]

/--
The discrete condensed object associated to an object of `C` is the constant sheaf at that object.
-/
@[simps!]
noncomputable def discrete : C ⥤ Condensed.{u} C := constantSheaf _ C

/--
The underlying object of a condensed object in `C` is the condensed object evaluated at a point.
This can be viewed as a sort of forgetful functor from `Condensed C` to `C`
-/
@[simps!]
noncomputable def underlying : Condensed.{u} C ⥤ C :=
  (sheafSections _ _).obj ⟨↧PUnit.{u + 1}⟩

/--
Discreteness is left adjoint to the forgetful functor. When `C` is `Type*`, this is analogous to
`TopCat.adj₁ : TopCat.discrete ⊣ forget TopCat`.
-/
noncomputable def discreteUnderlyingAdj : discrete C ⊣ underlying C :=
  constantSheafAdj _ _ CompHaus.isTerminalPUnit

end Condensed

namespace LightCondensed

variable (C : Type w) [Category.{u} C] [HasSheafify (coherentTopology LightProfinite.{u}) C]

/--
The discrete light condensed object associated to an object of `C` is the constant sheaf at that
object.
-/
@[simps!]
noncomputable def discrete : C ⥤ LightCondensed.{u} C := constantSheaf _ C

/--
The underlying object of a condensed object in `C` is the light condensed object evaluated at a
point. This can be viewed as a sort of forgetful functor from `LightCondensed C` to `C`
-/
@[simps!]
noncomputable def underlying : LightCondensed.{u} C ⥤ C :=
  (sheafSections _ _).obj (op ↧PUnit)

/--
Discreteness is left adjoint to the forgetful functor. When `C` is `Type*`, this is analogous to
`TopCat.adj₁ : TopCat.discrete ⊣ forget TopCat`.
-/
noncomputable def discreteUnderlyingAdj : discrete C ⊣ underlying C :=
  constantSheafAdj _ _ CompHausLike.isTerminalPUnit

end LightCondensed

/-- A version of `LightCondensed.discrete` in the `LightCondSet` namespace -/
noncomputable abbrev LightCondSet.discrete := LightCondensed.discrete <| Type u

/-- A version of `LightCondensed.underlying` in the `LightCondSet` namespace -/
noncomputable abbrev LightCondSet.underlying := LightCondensed.underlying <| Type u

/-- A version of `LightCondensed.discrete_underlying_adj` in the `LightCondSet` namespace -/
noncomputable abbrev LightCondSet.discreteUnderlyingAdj : discrete ⊣ underlying :=
  LightCondensed.discreteUnderlyingAdj _
```
