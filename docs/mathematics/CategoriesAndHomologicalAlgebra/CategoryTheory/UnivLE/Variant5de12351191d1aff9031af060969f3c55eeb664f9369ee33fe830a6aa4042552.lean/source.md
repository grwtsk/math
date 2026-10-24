# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLE.Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e4352810483fa306e8efcac5207810842a8291d` · SHA-256 `5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Logic.UnivLE
import Mathlib.CategoryTheory.EssentialImage
import Mathlib.CategoryTheory.Types

/-!
# Universe inequalities and essential surjectivity of `uliftFunctor`.

We show `UnivLE.{max u v, v} ↔ EssSurj (uliftFunctor.{u, v} : Type v ⥤ Type max u v)`.
-/

open CategoryTheory

universe u v

noncomputable section

theorem UnivLE.ofEssSurj (w : (uliftFunctor.{u, v} : Type v ⥤ Type max u v).EssSurj) :
    UnivLE.{max u v, v} where
  small α := by
    obtain ⟨a', ⟨m⟩⟩ := w.mem_essImage α
    exact ⟨a', ⟨(Iso.toEquiv m).symm.trans Equiv.ulift⟩⟩

instance EssSurj.ofUnivLE [UnivLE.{max u v, v}] :
    (uliftFunctor.{u, v} : Type v ⥤ Type max u v).EssSurj where
  mem_essImage α :=
    ⟨Shrink α, ⟨Equiv.toIso (Equiv.ulift.trans (equivShrink α).symm)⟩⟩

theorem UnivLE_iff_essSurj :
    UnivLE.{max u v, v} ↔ (uliftFunctor.{u, v} : Type v ⥤ Type max u v).EssSurj :=
  ⟨fun _ => inferInstance, fun w => UnivLE.ofEssSurj w⟩

instance [UnivLE.{max u v, v}] : uliftFunctor.{u, v}.IsEquivalence where

def UnivLE.witness [UnivLE.{max u v, v}] : Type u ⥤ Type v :=
  uliftFunctor.{v, u} ⋙ (uliftFunctor.{u, v}).inv

instance [UnivLE.{max u v, v}] : UnivLE.witness.{u, v}.Faithful :=
  inferInstanceAs <| Functor.Faithful (_ ⋙ _)

instance [UnivLE.{max u v, v}] : UnivLE.witness.{u, v}.Full :=
  inferInstanceAs <| Functor.Full (_ ⋙ _)
```
