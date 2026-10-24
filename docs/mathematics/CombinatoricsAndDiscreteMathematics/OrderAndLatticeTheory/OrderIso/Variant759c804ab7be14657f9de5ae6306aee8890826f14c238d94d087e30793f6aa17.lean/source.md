# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variant759c804ab7be14657f9de5ae6306aee8890826f14c238d94d087e30793f6aa17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e49566f4247fece851cd356fdccc691afa81b55` · SHA-256 `f2fa60335c5eac2c21d971d38626ac8f2cc50e7b95dad5a721c3969413600851`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UpperBoundsImage.Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.UpperBoundsImage.Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c","mathematical_subject":"Algebra.OrderTheory","original_sha256":"d83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Bounds/OrderIso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UpperBoundsImage.Variantd83aa55d2a3c8f39da173efbcbf3c565adc392517a63ed7a54853a4ace59226c

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
