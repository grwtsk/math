# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantfd4c0e7933d6fef85ba63dbf76ab6ed375979a6f9c097c63a662d0250c55441f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7c1688ea677da7ad0a00f60f11f1f0d4583153a` · SHA-256 `fd4c0e7933d6fef85ba63dbf76ab6ed375979a6f9c097c63a662d0250c55441f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Rémi Bottinelli. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémi Bottinelli
-/
module

public import Mathlib.CategoryTheory.Groupoid
public import Mathlib.Combinatorics.Quiver.Basic

/-!
# Basic properties of groupoids

This file defines a few basic properties of groupoids.
-/

@[expose] public section

namespace CategoryTheory

namespace Groupoid

variable (C : Type*) [Groupoid C]

section Thin

theorem isThin_iff : Quiver.IsThin C ↔ ∀ c : C, Subsingleton (c ⟶ c) := by
  refine ⟨fun h c => h c c, fun h c d => Subsingleton.intro fun f g => ?_⟩
  have := h d
  calc
    f = f ≫ inv g ≫ g := by simp only [inv_eq_inv, IsIso.inv_hom_id, Category.comp_id]
    _ = f ≫ inv f ≫ g := by congr 1
                            simp only [inv_eq_inv, IsIso.inv_hom_id, eq_iff_true_of_subsingleton]
    _ = g := by simp only [inv_eq_inv, IsIso.hom_inv_id_assoc]

end Thin

section Disconnected

/-- A subgroupoid is totally disconnected if it only has loops. -/
def IsTotallyDisconnected :=
  ∀ c d : C, (c ⟶ d) → c = d

end Disconnected

end Groupoid

end CategoryTheory
```
