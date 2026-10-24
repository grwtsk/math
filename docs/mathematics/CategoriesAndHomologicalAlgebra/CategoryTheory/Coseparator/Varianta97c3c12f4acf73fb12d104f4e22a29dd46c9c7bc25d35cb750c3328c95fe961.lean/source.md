# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coseparator.Varianta97c3c12f4acf73fb12d104f4e22a29dd46c9c7bc25d35cb750c3328c95fe961

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7862b6f667470f4a2883939904128b8746ee7dbe` · SHA-256 `a97c3c12f4acf73fb12d104f4e22a29dd46c9c7bc25d35cb750c3328c95fe961`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.EnoughInjectives
import Mathlib.CategoryTheory.Generator.Abelian

/-!
# Grothendieck categories have a coseparator
-/

universe w v u

namespace CategoryTheory.IsGrothendieckAbelian

variable {C : Type u} [Category.{v} C] [Abelian C] [IsGrothendieckAbelian.{w} C]

instance : HasCoseparator C := by
  suffices HasCoseparator (ShrinkHoms C) from
    HasCoseparator.of_equivalence (ShrinkHoms.equivalence.{w} C).symm
  obtain ⟨G, -, hG⟩ := Abelian.has_injective_coseparator (separator (ShrinkHoms C))
    (isSeparator_separator _)
  exact ⟨G, hG⟩

end CategoryTheory.IsGrothendieckAbelian
```
