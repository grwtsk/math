# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Refinements.Variantfe826e2461754c62bf02244bb953a9c3fed2f44ca7a2c2625cade9cc93cf124f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2c442807fce7bcb9abaaad1e2ac9d3b8c89fa62` · SHA-256 `fe826e2461754c62bf02244bb953a9c3fed2f44ca7a2c2625cade9cc93cf124f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.CategoryTheory.Abelian.Refinements
import Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex

/-!
# Refinements

This file contains lemmas about "refinements" that are specific to
the study of the homology of `HomologicalComplex`. General
lemmas about refinements and the case of `ShortComplex` appear
in the file `CategoryTheory.Abelian.Refinements`.

-/

open CategoryTheory

variable {C ι : Type*} [Category C] [Abelian C] {c : ComplexShape ι}
  (K : HomologicalComplex C c)

namespace HomologicalComplex

lemma eq_liftCycles_homologyπ_up_to_refinements {A : C} {i : ι} (γ : A ⟶ K.homology i)
    (j : ι) (hj : c.next i = j) :
    ∃ (A' : C) (π : A' ⟶ A) (_ : Epi π) (z : A' ⟶ K.X i) (hz : z ≫ K.d i j = 0),
      π ≫ γ = K.liftCycles z j hj hz ≫ K.homologyπ i := by
  subst hj
  exact (K.sc i).eq_liftCycles_homologyπ_up_to_refinements γ

end HomologicalComplex
```
