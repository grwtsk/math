# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Final.Variantcd25fc625e497b2e189bcb33e755c586631efb9d7e640ae14a13bf2411a80629

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aadf77e3d8e6d0626aceb144fd922be65b8a347f` · SHA-256 `cd25fc625e497b2e189bcb33e755c586631efb9d7e640ae14a13bf2411a80629`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Robin Carlier. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Carlier
-/
module

public import Mathlib.CategoryTheory.Join.Basic
public import Mathlib.CategoryTheory.Limits.Final
public import Mathlib.CategoryTheory.Limits.IsConnected

/-!
# (Co)Finality of the inclusions in joins of categories

This file records the fact that `inclLeft C D : C ⥤ C ⋆ D` is initial if `C` is connected.
Dually, `inclRight : C ⥤ C ⋆ D` is final if `D` is connected.

-/

@[expose] public section

namespace CategoryTheory.Join

variable (C D : Type*) [Category* C] [Category* D]

set_option backward.defeqAttrib.useBackward true in
/-- The category of `Join.inclLeft C D`-costructured arrows with target `right d` is equivalent to
`C`. -/
def costructuredArrowEquiv (d : D) : CostructuredArrow (inclLeft C D) (right d) ≌ C where
  functor := CostructuredArrow.proj (inclLeft C D) (right d)
  inverse :=
    { obj c := .mk (edge c d)
      map f := CostructuredArrow.homMk f }
  unitIso := NatIso.ofComponents (fun _ ↦ CostructuredArrow.isoMk (Iso.refl _))
  counitIso := NatIso.ofComponents (fun _ ↦ Iso.refl _)

set_option backward.defeqAttrib.useBackward true in
/-- The category of `Join.inclRight C D`-structured arrows with source `left c` is equivalent to
`D`. -/
def structuredArrowEquiv (c : C) : StructuredArrow (left c) (inclRight C D) ≌ D where
  functor := StructuredArrow.proj (left c) (inclRight C D)
  inverse :=
    { obj d := .mk (edge c d)
      map f := StructuredArrow.homMk f }
  unitIso := NatIso.ofComponents (fun _ ↦ StructuredArrow.isoMk (Iso.refl _))
  counitIso := NatIso.ofComponents (fun _ ↦ Iso.refl _)

instance [IsConnected C] : (inclLeft C D).Initial where
  out x := match x with
    | .left _ => isConnected_of_isTerminal _ CostructuredArrow.mkIdTerminal
    | .right d => isConnected_of_equivalent (costructuredArrowEquiv C D d).symm

instance [IsConnected D] : (inclRight C D).Final where
  out x := match x with
    | .left c => isConnected_of_equivalent (structuredArrowEquiv C D c).symm
    | .right _ => isConnected_of_isInitial _ (StructuredArrow.mkIdInitial (T := inclRight C D))

end CategoryTheory.Join
```
