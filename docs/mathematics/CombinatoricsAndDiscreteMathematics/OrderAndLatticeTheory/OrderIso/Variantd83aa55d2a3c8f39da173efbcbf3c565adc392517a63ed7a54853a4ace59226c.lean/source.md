# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `869171d0eab654e53f57c0c636cf38256c73a21b` · SHA-256 `d83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Yury Kudryashov
-/
import Mathlib.Order.Bounds.Image
import Mathlib.Order.Hom.Set

/-!
# Order isomorphisms and bounds.
-/

open Set

namespace OrderIso

variable {α β : Type*} [Preorder α] [Preorder β] (f : α ≃o β)

theorem upperBounds_image {s : Set α} : upperBounds (f '' s) = f '' upperBounds s :=
  Subset.antisymm
    (fun x hx =>
      ⟨f.symm x, fun _ hy => f.le_symm_apply.2 (hx <| mem_image_of_mem _ hy), f.apply_symm_apply x⟩)
    f.monotone.image_upperBounds_subset_upperBounds_image

theorem lowerBounds_image {s : Set α} : lowerBounds (f '' s) = f '' lowerBounds s :=
  @upperBounds_image αᵒᵈ βᵒᵈ _ _ f.dual _

@[simp]
theorem isLUB_image {s : Set α} {x : β} : IsLUB (f '' s) x ↔ IsLUB s (f.symm x) :=
  ⟨fun h => IsLUB.of_image (by simp) ((f.apply_symm_apply x).symm ▸ h), fun h =>
    (IsLUB.of_image (by simp)) <| (f.symm_image_image s).symm ▸ h⟩

theorem isLUB_image' {s : Set α} {x : α} : IsLUB (f '' s) (f x) ↔ IsLUB s x := by
  rw [isLUB_image, f.symm_apply_apply]

@[simp]
theorem isGLB_image {s : Set α} {x : β} : IsGLB (f '' s) x ↔ IsGLB s (f.symm x) :=
  f.dual.isLUB_image

theorem isGLB_image' {s : Set α} {x : α} : IsGLB (f '' s) (f x) ↔ IsGLB s x :=
  f.dual.isLUB_image'

@[simp]
theorem isLUB_preimage {s : Set β} {x : α} : IsLUB (f ⁻¹' s) x ↔ IsLUB s (f x) := by
  rw [← f.symm_symm, ← image_eq_preimage, isLUB_image]

theorem isLUB_preimage' {s : Set β} {x : β} : IsLUB (f ⁻¹' s) (f.symm x) ↔ IsLUB s x := by
  rw [isLUB_preimage, f.apply_symm_apply]

@[simp]
theorem isGLB_preimage {s : Set β} {x : α} : IsGLB (f ⁻¹' s) x ↔ IsGLB s (f x) :=
  f.dual.isLUB_preimage

theorem isGLB_preimage' {s : Set β} {x : β} : IsGLB (f ⁻¹' s) (f.symm x) ↔ IsGLB s x :=
  f.dual.isLUB_preimage'

end OrderIso
```
