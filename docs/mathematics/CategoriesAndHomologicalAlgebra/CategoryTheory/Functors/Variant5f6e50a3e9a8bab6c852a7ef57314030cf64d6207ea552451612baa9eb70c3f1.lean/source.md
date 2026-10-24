# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dfaaba990db60b9ff33b114916f2fb14ab47c37` · SHA-256 `5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Limits.Preserves.Ulift
import Mathlib.CategoryTheory.Sites.Coherent.CoherentSheaves
import Mathlib.CategoryTheory.Sites.Whiskering
import Mathlib.Condensed.Basic
import Mathlib.Topology.Category.Stonean.Basic

/-!
# Functors from categories of topological spaces to condensed sets

This file defines the embedding of the test objects (compact Hausdorff spaces) into condensed
sets.

## Main definitions

* `compHausToCondensed : CompHaus.{u} ⥤ CondensedSet.{u}` is essentially the yoneda presheaf
  functor. We also define `profiniteToCondensed` and `stoneanToCondensed`.

-/

universe u v

open CategoryTheory Limits

section Universes

/-- Increase the size of the target category of condensed sets. -/
def Condensed.ulift : Condensed.{u} (Type u) ⥤ CondensedSet.{u} :=
  sheafCompose (coherentTopology CompHaus) uliftFunctor.{u+1, u}

instance : Condensed.ulift.Full := show (sheafCompose _ _).Full from inferInstance

instance : Condensed.ulift.Faithful := show (sheafCompose _ _).Faithful from inferInstance

end Universes

section Topology

/-- The functor from `CompHaus` to `Condensed.{u} (Type u)` given by the Yoneda sheaf. -/
def compHausToCondensed' : CompHaus.{u} ⥤ Condensed.{u} (Type u) :=
  (coherentTopology CompHaus).yoneda

/-- The yoneda presheaf as an actual condensed set. -/
def compHausToCondensed : CompHaus.{u} ⥤ CondensedSet.{u} :=
  compHausToCondensed' ⋙ Condensed.ulift

/-- Dot notation for the value of `compHausToCondensed`. -/
abbrev CompHaus.toCondensed (S : CompHaus.{u}) : CondensedSet.{u} := compHausToCondensed.obj S

/-- The yoneda presheaf as a condensed set, restricted to profinite spaces. -/
def profiniteToCondensed : Profinite.{u} ⥤ CondensedSet.{u} :=
  profiniteToCompHaus ⋙ compHausToCondensed

/-- Dot notation for the value of `profiniteToCondensed`. -/
abbrev Profinite.toCondensed (S : Profinite.{u}) : CondensedSet.{u} := profiniteToCondensed.obj S

/-- The yoneda presheaf as a condensed set, restricted to Stonean spaces. -/
def stoneanToCondensed : Stonean.{u} ⥤ CondensedSet.{u} :=
  Stonean.toCompHaus ⋙ compHausToCondensed

/-- Dot notation for the value of `stoneanToCondensed`. -/
abbrev Stonean.toCondensed (S : Stonean.{u}) : CondensedSet.{u} := stoneanToCondensed.obj S

instance : compHausToCondensed'.Full :=
  inferInstanceAs ((coherentTopology CompHaus).yoneda).Full

instance : compHausToCondensed'.Faithful :=
  inferInstanceAs ((coherentTopology CompHaus).yoneda).Faithful

instance : compHausToCondensed.Full := inferInstanceAs (_ ⋙ _).Full

instance : compHausToCondensed.Faithful := inferInstanceAs (_ ⋙ _).Faithful

end Topology
```
