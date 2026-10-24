# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Projective.Variant3e87591441ac0395a04065ff4479b230e22358132dddd051c652428e208393f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf8682d8ee4ffd41e359a05c0e81fc261914876a` · SHA-256 `3e87591441ac0395a04065ff4479b230e22358132dddd051c652428e208393f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Kim Morrison
-/
module

public import Mathlib.CategoryTheory.Preadditive.Yoneda.Basic
public import Mathlib.CategoryTheory.Preadditive.Projective.Basic
public import Mathlib.Algebra.Category.Grp.EpiMono
public import Mathlib.Algebra.Category.ModuleCat.EpiMono

/-!
# Projective objects

An object is projective iff the preadditive coyoneda functor on it preserves epimorphisms.
-/

public section


universe v u

open Opposite

namespace CategoryTheory

variable {C : Type u} [Category.{v} C]

section Preadditive

variable [Preadditive C]

namespace Projective

theorem projective_iff_preservesEpimorphisms_preadditiveCoyoneda_obj (P : C) :
    Projective P ↔ (preadditiveCoyoneda.obj (op P)).PreservesEpimorphisms := by
  rw [projective_iff_preservesEpimorphisms_coyoneda_obj]
  refine ⟨fun h : (preadditiveCoyoneda.obj (op P) ⋙
      forget AddCommGrpCat).PreservesEpimorphisms => ?_, ?_⟩
  · exact Functor.preservesEpimorphisms_of_preserves_of_reflects (preadditiveCoyoneda.obj (op P))
        (forget _)
  · intro
    exact (inferInstance : (preadditiveCoyoneda.obj (op P) ⋙ forget _).PreservesEpimorphisms)

theorem projective_iff_preservesEpimorphisms_preadditiveCoyonedaObj (P : C) :
    Projective P ↔ (preadditiveCoyonedaObj P).PreservesEpimorphisms := by
  rw [projective_iff_preservesEpimorphisms_coyoneda_obj]
  refine ⟨fun h : (preadditiveCoyonedaObj P ⋙ forget _).PreservesEpimorphisms => ?_, ?_⟩
  · exact Functor.preservesEpimorphisms_of_preserves_of_reflects (preadditiveCoyonedaObj P)
        (forget _)
  · intro
    exact (inferInstance : (preadditiveCoyonedaObj P ⋙ forget _).PreservesEpimorphisms)

end Projective

end Preadditive

end CategoryTheory
```
