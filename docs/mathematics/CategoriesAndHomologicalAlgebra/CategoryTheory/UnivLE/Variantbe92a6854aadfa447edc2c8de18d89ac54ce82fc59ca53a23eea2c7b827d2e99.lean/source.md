# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLE.Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7528afce20b130e09a31125146712feda33ca0d` · SHA-256 `be92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Logic.UnivLE
import Mathlib.CategoryTheory.EssentialImage
import Mathlib.CategoryTheory.Types

/-!
# Universe inequalities and essential surjectivity of `uliftFunctor`.

We show `UnivLE.{u, v} ↔ EssSurj (uliftFunctor.{u, v} : Type v ⥤ Type max u v)`.
-/

set_option autoImplicit true

open CategoryTheory

noncomputable section

theorem UnivLE.ofEssSurj.{u, v} (w : EssSurj (uliftFunctor.{u, v} : Type v ⥤ Type max u v)) :
    UnivLE.{u, v} :=
  fun a => by
    obtain ⟨a', ⟨m⟩⟩ := w.mem_essImage a
    exact ⟨a', ⟨(Iso.toEquiv m).symm.trans Equiv.ulift⟩⟩

instance [UnivLE.{u, v}] : EssSurj (uliftFunctor.{u, v} : Type v ⥤ Type max u v) where
  mem_essImage α :=
    ⟨Shrink α, ⟨Equiv.toIso (Equiv.ulift.trans (equivShrink α).symm)⟩⟩

theorem UnivLE_iff_essSurj.{u, v} :
    UnivLE.{u, v} ↔ EssSurj (uliftFunctor.{u, v} : Type v ⥤ Type max u v) :=
  ⟨fun _ => inferInstance, fun w => UnivLE.ofEssSurj w⟩

instance [UnivLE.{u, v}] : IsEquivalence uliftFunctor.{u, v} :=
  Equivalence.ofFullyFaithfullyEssSurj uliftFunctor

def UnivLE.witness.{u, v} [UnivLE.{u, v}] : Type u ⥤ Type v :=
  uliftFunctor.{v, u} ⋙ (uliftFunctor.{u, v}).inv

instance [UnivLE.{u, v}] : Faithful UnivLE.witness.{u, v} :=
  inferInstanceAs <| Faithful (_ ⋙ _)

instance [UnivLE.{u, v}] : Full UnivLE.witness.{u, v} :=
  inferInstanceAs <| Full (_ ⋙ _)
```
