# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Sheaf.Variantd8c642aefdcebb7bc2ed707a0c7f6a781a8529ffabb877263d0fe65aa554034c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33dc06ae1903b5c40d71509acdc254a9245d6046` · SHA-256 `d8c642aefdcebb7bc2ed707a0c7f6a781a8529ffabb877263d0fe65aa554034c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.Algebra.Category.ModuleCat.Sheaf.Abelian
import Mathlib.AlgebraicGeometry.Modules.Presheaf

/-!
# The category of sheaves of modules over a scheme

In this file, we define the abelian category of sheaves of modules
`X.Modules` over a scheme `X`.

-/

universe u

open CategoryTheory

namespace AlgebraicGeometry.Scheme

variable (X : Scheme.{u})

/-- The category of sheaves of modules over a scheme. -/
abbrev Modules := SheafOfModules.{u} X.ringCatSheaf

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
noncomputable instance : Abelian X.Modules := inferInstance

end AlgebraicGeometry.Scheme
```
