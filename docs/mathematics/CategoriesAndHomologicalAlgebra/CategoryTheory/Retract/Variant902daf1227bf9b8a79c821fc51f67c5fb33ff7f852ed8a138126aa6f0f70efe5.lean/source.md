# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Retract.Variant902daf1227bf9b8a79c821fc51f67c5fb33ff7f852ed8a138126aa6f0f70efe5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a83271823fd118a62dce15664f11de4eb72e696` · SHA-256 `902daf1227bf9b8a79c821fc51f67c5fb33ff7f852ed8a138126aa6f0f70efe5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.Algebra.Homology.ShortComplex.QuasiIso
import Mathlib.CategoryTheory.MorphismProperty.Retract

/-!
# Quasi-isomorphisms of short complexes are stable under retracts

-/

namespace CategoryTheory

open Limits

namespace ShortComplex

variable {C : Type*} [Category C] [HasZeroMorphisms C]
  {S₁ T₁ S₂ T₂ : ShortComplex C}
  [S₁.HasHomology] [T₁.HasHomology] [S₂.HasHomology] [T₂.HasHomology]
  {f₁ : S₁ ⟶ T₁} {f₂ : S₂ ⟶ T₂}

lemma quasiIso_of_retract (h : RetractArrow f₁ f₂) [hf₂ : QuasiIso f₂] :
    QuasiIso f₁ := by
  rw [quasiIso_iff] at hf₂ ⊢
  have h : RetractArrow (homologyMap f₁) (homologyMap f₂) :=
    { i := Arrow.homMk (u := homologyMap (show S₁ ⟶ S₂ from h.i.left))
        (v := homologyMap (show T₁ ⟶ T₂ from h.i.right)) (by simp [← homologyMap_comp])
      r := Arrow.homMk (u := homologyMap (show S₂ ⟶ S₁ from h.r.left))
        (v := homologyMap (show T₂ ⟶ T₁ from h.r.right)) (by simp [← homologyMap_comp])
      retract := by ext <;> simp [← homologyMap_comp] }
  exact (MorphismProperty.isomorphisms C).of_retract h hf₂

end ShortComplex

end CategoryTheory
```
