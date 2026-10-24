# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StructuredArrow.Variantea2ae972243e83d2c68e95693af17b90efabe7153fd5d9dde1479f3aef48ee4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e9489732e0fffdeeae7653a65f6633c41ee21f9` · SHA-256 `ea2ae972243e83d2c68e95693af17b90efabe7153fd5d9dde1479f3aef48ee4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Discrete.Basic
public import Mathlib.CategoryTheory.Comma.StructuredArrow.Basic

/-!
# Structured arrows when the target category is discrete

When `T` is a type with a unique element `t`, we show that
if `F : C ⥤ Discrete T`, then the categories
`StructuredArrow (Discrete.mk t) F` and
`CostructuredArrow (Discrete.mk t) F` are equivalent to `C`.

-/

@[expose] public section

universe w v v' u u'

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] {T : Type w}

namespace Discrete

set_option backward.defeqAttrib.useBackward true in
/-- If `F : C ⥤ Discrete T` is a functor with `T` containing
a unique element `t`, then this is the equivalence
`StructuredArrow (Discrete.mk t) F ≌ C`. -/
def structuredArrowEquivalenceOfUnique
    (F : C ⥤ Discrete T) (t : T) [Subsingleton T] :
    StructuredArrow (.mk t) F ≌ C where
  functor := StructuredArrow.proj _ _
  inverse.obj X := StructuredArrow.mk (Y := X) (eqToHom (by subsingleton))
  inverse.map f := StructuredArrow.homMk f
  unitIso := NatIso.ofComponents (fun _ ↦ StructuredArrow.isoMk (Iso.refl _))
  counitIso := Iso.refl _

set_option backward.defeqAttrib.useBackward true in
/-- If `F : C ⥤ Discrete T` is a functor with `T` containing
a unique element `t`, then this is the equivalence
`CostructuredArrow F (Discrete.mk t) ≌ C`. -/
def costructuredArrowEquivalenceOfUnique
    (F : C ⥤ Discrete T) (t : T) [Subsingleton T] :
    CostructuredArrow F (.mk t) ≌ C where
  functor := CostructuredArrow.proj _ _
  inverse.obj X := CostructuredArrow.mk (Y := X) (eqToHom (by subsingleton))
  inverse.map f := CostructuredArrow.homMk f
  unitIso := NatIso.ofComponents (fun _ ↦ CostructuredArrow.isoMk (Iso.refl _))
  counitIso := Iso.refl _

end Discrete

end CategoryTheory
```
