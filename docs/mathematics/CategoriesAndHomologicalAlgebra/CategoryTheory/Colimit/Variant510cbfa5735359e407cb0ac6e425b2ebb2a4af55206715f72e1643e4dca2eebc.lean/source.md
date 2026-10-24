# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimit.Variant510cbfa5735359e407cb0ac6e425b2ebb2a4af55206715f72e1643e4dca2eebc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c9afe75866dd49f689a10c038c060de35bfa3c5` · SHA-256 `510cbfa5735359e407cb0ac6e425b2ebb2a4af55206715f72e1643e4dca2eebc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mario Carneiro and Emily Riehl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Emily Riehl
-/
import Mathlib.AlgebraicTopology.SimplicialSet.NerveAdjunction
import Mathlib.CategoryTheory.Monad.Limits


/-!
# The category of small categories has all small colimits.

In this file, the existence of colimits in `Cat` is deduced from the existence of colimits in the
category of simplicial sets. Indeed, `Cat` identifies to a reflective subcategory of the category
of simplicial sets (see `AlgebraicTopology.SimplicialSet.NerveAdjunction`), so that colimits in
`Cat` can be computed by passing to nerves, taking the colimit in `SSet` and finally applying the
homotopy category functor `SSet ⥤ Cat`.
-/


noncomputable section

universe v

open CategoryTheory.Limits

namespace CategoryTheory

namespace Cat

/-- The category of small categories has all small colimits as a reflective subcategory of the
category of simplicial sets, which has all small colimits. -/
instance : HasColimits Cat.{v, v} :=
  hasColimits_of_reflective nerveFunctor

end Cat

end CategoryTheory
```
