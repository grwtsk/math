# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Presheaf.Variant17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `676691e467bfd0add85256c2aefdc3ce477bbc53` · SHA-256 `17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.Presheaf
import Mathlib.AlgebraicGeometry.Scheme
import Mathlib.CategoryTheory.Sites.Whiskering

/-!
# The category of presheaves of modules over a scheme

In this file, given a scheme `X`, we define the category of presheaves
of modules over `X`. As categories of presheaves of modules are
defined for presheaves of rings (and not presheaves of commutative rings),
we also introduce a definition `X.ringCatSheaf` for the underlying sheaf
of rings of `X`.

-/

universe u

open CategoryTheory

namespace AlgebraicGeometry.Scheme

variable (X : Scheme.{u})

/-- The underlying sheaf of rings of a scheme. -/
abbrev ringCatSheaf : TopCat.Sheaf RingCat.{u} X :=
  (sheafCompose _ (forget₂ CommRingCat RingCat)).obj X.sheaf

/-- The category of presheaves of modules over a scheme. -/
nonrec abbrev PresheafOfModules := PresheafOfModules.{u} X.ringCatSheaf.val

end AlgebraicGeometry.Scheme
```
