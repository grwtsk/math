# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Born.Variant5d9c33320654fcc8254b494256a0a3add1568be95264779aaf7f46559e7ad1b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99061f3a89007db40e04eac4562ddcd02fae130a` · SHA-256 `5d9c33320654fcc8254b494256a0a3add1568be95264779aaf7f46559e7ad1b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.CategoryTheory.ConcreteCategory.Basic
import Mathlib.Topology.Bornology.Hom

/-!
# The category of bornologies

This defines `Born`, the category of bornologies.
-/


universe u

open CategoryTheory

/-- The category of bornologies. -/
structure Born where
  /-- The underlying bornology. -/
  carrier : Type*
  [str : Bornology carrier]

attribute [instance] Born.str

namespace Born

instance : CoeSort Born Type* :=
  ⟨carrier⟩

/-- Construct a bundled `Born` from a `Bornology`. -/
abbrev of (α : Type*) [Bornology α] : Born where
  carrier := α

instance : Inhabited Born :=
  ⟨of PUnit⟩

instance : LargeCategory.{u} Born where
  Hom X Y := LocallyBoundedMap X Y
  id X := LocallyBoundedMap.id X
  comp f g := g.comp f

instance : ConcreteCategory Born (LocallyBoundedMap · ·) where
  hom f := f
  ofHom f := f

end Born
```
