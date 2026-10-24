# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalFunctor.Variant0b98a94be016377bd950a530a42808d9e2f181b888e4804204831335682db9d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45a640e54f6c3ce4299cf583c1a48fb013d36bb2` · SHA-256 `0b98a94be016377bd950a530a42808d9e2f181b888e4804204831335682db9d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.HomologicalComplexAbelian
import Mathlib.Algebra.Homology.HomotopyCategory.DegreewiseSplit
import Mathlib.Algebra.Homology.HomologySequence
import Mathlib.CategoryTheory.Triangulated.HomologicalFunctor

/-! The homological functor

In this file, it is shown that if `C` is an abelian category,
then `homologyFunctor C (ComplexShape.up ℤ) n` is a homological functor
`HomotopyCategory C (ComplexShape.up ℤ) ⥤ C`. As distinguished triangles
in the homotopy category can be characterized in terms of degreewise split
short exact sequences of cochain complexes, this follows from the homology
sequence of a short exact sequences of homological complexes.

-/

assert_not_exists TwoSidedIdeal

open CategoryTheory

variable {C : Type*} [Category C] [Abelian C]

namespace HomotopyCategory

instance (n : ℤ) : (homologyFunctor C (ComplexShape.up ℤ) n).IsHomological :=
  Functor.IsHomological.mk' _ (fun T hT => by
    rw [distinguished_iff_iso_trianglehOfDegreewiseSplit] at hT
    obtain ⟨S, σ, ⟨e⟩⟩ := hT
    have hS := HomologicalComplex.shortExact_of_degreewise_shortExact S
      (fun n => (σ n).shortExact)
    exact ⟨_, e, (ShortComplex.exact_iff_of_iso
      (S.mapNatIso (homologyFunctorFactors C (ComplexShape.up ℤ) n))).2 (hS.homology_exact₂ n)⟩)

end HomotopyCategory
```
