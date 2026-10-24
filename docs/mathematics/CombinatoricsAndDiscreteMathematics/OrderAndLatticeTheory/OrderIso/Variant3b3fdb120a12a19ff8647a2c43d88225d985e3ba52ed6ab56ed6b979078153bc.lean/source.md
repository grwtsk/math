# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variant3b3fdb120a12a19ff8647a2c43d88225d985e3ba52ed6ab56ed6b979078153bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e6fd756313e14e94b4f2f7982aadaa788523e14` · SHA-256 `cb0a3b73d1f99be3b39289740c398b9849d095ed86dc9d3a30f41b9675134799`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UpperBoundsImage.Variantde810fc722d52918150ec72f94cd6bdb2b04e5aeb3634f7421d9b3dd16d3eaa0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de810fc722d52918150ec72f94cd6bdb2b04e5aeb3634f7421d9b3dd16d3eaa0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.UpperBoundsImage.Variantde810fc722d52918150ec72f94cd6bdb2b04e5aeb3634f7421d9b3dd16d3eaa0","mathematical_subject":"Algebra.OrderTheory","original_sha256":"de810fc722d52918150ec72f94cd6bdb2b04e5aeb3634f7421d9b3dd16d3eaa0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Bounds/OrderIso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Yury Kudryashov
-/
module

public import Mathlib.Order.Bounds.Image
public import Mathlib.Order.Hom.Set

/-!
# Order isomorphisms and bounds.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UpperBoundsImage.Variantde810fc722d52918150ec72f94cd6bdb2b04e5aeb3634f7421d9b3dd16d3eaa0

public section

open Set

namespace OrderIso

variable {α β : Type*} [Preorder α] [Preorder β] (f : α ≃o β)

@[to_dual]
theorem upperBounds_image {s : Set α} : upperBounds (f '' s) = f '' upperBounds s :=
  Subset.antisymm
    (fun x hx =>
      ⟨f.symm x, fun _ hy => f.le_symm_apply.2 (hx <| mem_image_of_mem _ hy), f.apply_symm_apply x⟩)
    f.monotone.image_upperBounds_subset_upperBounds_image

@[to_dual (attr := simp)]
theorem isLUB_image {s : Set α} {x : β} : IsLUB (f '' s) x ↔ IsLUB s (f.symm x) :=
  ⟨fun h => IsLUB.of_image (by simp) ((f.apply_symm_apply x).symm ▸ h), fun h =>
    (IsLUB.of_image (by simp)) <| (f.symm_image_image s).symm ▸ h⟩

@[to_dual]
theorem isLUB_image' {s : Set α} {x : α} : IsLUB (f '' s) (f x) ↔ IsLUB s x := by
  rw [isLUB_image, f.symm_apply_apply]

@[to_dual (attr := simp)]
theorem isLUB_preimage {s : Set β} {x : α} : IsLUB (f ⁻¹' s) x ↔ IsLUB s (f x) := by
  rw [← f.symm_symm, ← image_eq_preimage_symm, isLUB_image]

@[to_dual]
theorem isLUB_preimage' {s : Set β} {x : β} : IsLUB (f ⁻¹' s) (f.symm x) ↔ IsLUB s x := by
  rw [isLUB_preimage, f.apply_symm_apply]

end OrderIso
```
