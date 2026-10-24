# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monomorphisms.Variant9e5e57c4eeedb7008f0605db76bfecc6e2aeb9f3955f96c6d0eeefe957d01e23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dba716b56683f315277618066e5fd829588537b6` · SHA-256 `9e5e57c4eeedb7008f0605db76bfecc6e2aeb9f3955f96c6d0eeefe957d01e23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.MorphismProperty.Limits
import Mathlib.CategoryTheory.Abelian.Basic

/-!
# Monomorphisms are stable under cobase change

In an abelian category `C`, the class of morphism
`monomorphisms C` is stable under cobase change and
`epimorphisms C` is stable under base change.

-/

universe v u

namespace CategoryTheory.Abelian

variable {C : Type u} [Category.{v} C] [Abelian C]

open MorphismProperty

instance : (monomorphisms C).IsStableUnderCobaseChange :=
  IsStableUnderCobaseChange.mk' (fun _ _ _ f g _ hf ↦ by
    simp only [monomorphisms.iff] at hf ⊢
    infer_instance)

instance : (epimorphisms C).IsStableUnderBaseChange :=
  IsStableUnderBaseChange.mk' (fun _ _ _ f g _ hf ↦ by
    simp only [epimorphisms.iff] at hf ⊢
    infer_instance)

end CategoryTheory.Abelian
```
