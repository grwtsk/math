# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variantbbd4f5fcf1d14ee9990f95e69890885e8b2fc68b143ce1df1a029035ecd1a147

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91ca70fad035e239ba683d2449e4c2b5afaadeab` · SHA-256 `f0d497e5c6702b509ff1043265ffb25b4e946156233aac9dca15252794bb4cb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsLimitOfIsPullbackOfIsConnected.Variant68b9c884c19080bc8002da365d4f8a651156cce0768180ae969086c58999c0a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68b9c884c19080bc8002da365d4f8a651156cce0768180ae969086c58999c0a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsLimitOfIsPullbackOfIsConnected.Variant68b9c884c19080bc8002da365d4f8a651156cce0768180ae969086c58999c0a1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"68b9c884c19080bc8002da365d4f8a651156cce0768180ae969086c58999c0a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Shapes/Pullback/Connected.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.CategoryTheory.IsConnected
public import Mathlib.CategoryTheory.Limits.Shapes.Pullback.IsPullback.Defs

/-!

# Pullbacks commute with connected limits

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsLimitOfIsPullbackOfIsConnected.Variant68b9c884c19080bc8002da365d4f8a651156cce0768180ae969086c58999c0a1

@[expose] public section

universe v u

namespace CategoryTheory.Limits

/--
Let `F` and `G` be two diagrams indexed by a connected `I`, and `X` and `Y` be two cones over
`F` and `G` respectively, with maps `α : F ⟶ G` and `f : X ⟶ Y` that commutes with the cone maps.
Suppose `X = Y x[G i] F i` for all `i` and `Y = lim G`, then `X = lim F`.
-/
noncomputable
def isLimitOfIsPullbackOfIsConnected
    {I C : Type*} [Category* I] [IsConnected I] [Category* C] {F G : I ⥤ C}
    (α : F ⟶ G) (cF : Cone F) (cG : Cone G)
    (f : (Cone.postcompose α).obj cF ⟶ cG)
    (hf : ∀ i, IsPullback (cF.π.app i) f.hom (α.app i) (cG.π.app i))
    (hcG : IsLimit cG) : IsLimit cF where
  lift s := (hf (Classical.arbitrary _)).lift
    (s.π.app (Classical.arbitrary _)) (hcG.lift ((Cone.postcompose α).obj s)) (by simp)
  fac s j := by
    let f (i : _) : s.pt ⟶ cF.pt :=
      (hf i).lift (s.π.app i) (hcG.lift ((Cone.postcompose α).obj s)) (by simp)
    have (i j : _) : f i = f j := by
      refine constant_of_preserves_morphisms f (fun j₁ j₂ g ↦ ?_) i j
      refine (hf j₂).hom_ext ?_ (by simp [f])
      rw [IsPullback.lift_fst, ← cF.w g, IsPullback.lift_fst_assoc, Cone.w]
    change f _ ≫ _ = _
    rw [this _ j]
    simp [f]
  uniq s g hg := (hf (Classical.arbitrary _)).hom_ext (by simp [hg])
    (hcG.hom_ext <| by simp [reassoc_of% hg])

/--
Let `F` and `G` be two diagrams indexed by a connected `I`, and `X` and `Y` be two cocones over
`F` and `G` respectively, with maps `α : F ⟶ G` and `f : X ⟶ Y` that commutes with the cocone maps.
Suppose `Y = X ⨿[F i] G i` for all `i` and `Y = colim G`, then `X = colim F`.
-/
noncomputable
def isColimitOfIsPushoutOfIsConnected
    {I C : Type*} [Category* I] [IsConnected I] [Category* C] {F G : I ⥤ C}
    (α : F ⟶ G) (cF : Cocone F) (cG : Cocone G)
    (f : cF ⟶ (Cocone.precompose α).obj cG)
    (hf : ∀ i, IsPushout (cF.ι.app i) (α.app i) f.hom (cG.ι.app i))
    (hcF : IsColimit cF) : IsColimit cG where
  desc s := (hf (Classical.arbitrary _)).desc
    (hcF.desc ((Cocone.precompose α).obj s)) (s.ι.app (Classical.arbitrary _)) (by simp)
  fac s j := by
    let f (i : _) : cG.pt ⟶ s.pt :=
      (hf i).desc (hcF.desc ((Cocone.precompose α).obj s)) (s.ι.app i) (by simp)
    have (i j : _) : f i = f j := by
      refine constant_of_preserves_morphisms f (fun j₁ j₂ g ↦ ?_) i j
      refine (hf j₁).hom_ext (by simp [f]) ?_
      rw [IsPushout.inr_desc, ← cG.w g, Category.assoc, IsPushout.inr_desc, Cocone.w]
    change _ ≫ f _ = _
    rw [this _ j]
    simp [f]
  uniq s g hg := (hf (Classical.arbitrary _)).hom_ext (hcF.hom_ext <| by simp [hg]) (by simp [hg])

end CategoryTheory.Limits
```
