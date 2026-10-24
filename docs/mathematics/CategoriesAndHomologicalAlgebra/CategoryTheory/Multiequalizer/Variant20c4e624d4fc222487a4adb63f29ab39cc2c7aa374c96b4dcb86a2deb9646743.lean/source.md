# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Multiequalizer.Variant20c4e624d4fc222487a4adb63f29ab39cc2c7aa374c96b4dcb86a2deb9646743

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6006f59269518e92548d5491e52720c46ea016d9` · SHA-256 `201328a7c9cd7c66687fa759162941de0210e0499267ddab7461be7194f4e2a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MultispanIndexMap.Variant854393c7b79a5c7969d33773b3f91efa7195127ce60e8255ed4640312ea8c966","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"854393c7b79a5c7969d33773b3f91efa7195127ce60e8255ed4640312ea8c966","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MultispanIndexMap.Variant854393c7b79a5c7969d33773b3f91efa7195127ce60e8255ed4640312ea8c966","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"854393c7b79a5c7969d33773b3f91efa7195127ce60e8255ed4640312ea8c966","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Preserves/Shapes/Multiequalizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer

/-!
# Preservation of multicoequalizers

Let `J : MultispanShape` and `d : MultispanIndex J C`.
If `F : C ⥤ D`, we define `d.map F : MultispanIndex J D` and
an isomorphism of functors `(d.map F).multispan ≅ d.multispan ⋙ F`
(see `MultispanIndex.multispanMapIso`).
If `c : Multicofork d`, we define `c.map F : Multicofork (d.map F)` and
obtain a bijection `IsColimit (F.mapCocone c) ≃ IsColimit (c.map F)`
(see `Multicofork.isColimitMapEquiv`). As a result, if `F` preserves
the colimit of `d.multispan`, we deduce that if `c` is a colimit,
then `c.map F` also is (see `Multicofork.isColimitMapOfPreserves`).

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MultispanIndexMap.Variant854393c7b79a5c7969d33773b3f91efa7195127ce60e8255ed4640312ea8c966

universe w w' v u

namespace CategoryTheory

variable {C D : Type*} [Category C] [Category D]

namespace Limits

variable {J : MultispanShape.{w, w'}} (d : MultispanIndex J C)
  (c : Multicofork d) (F : C ⥤ D)

/-- The multispan index obtained by applying a functor. -/
@[simps]
def MultispanIndex.map : MultispanIndex J D where
  left i := F.obj (d.left i)
  right i := F.obj (d.right i)
  fst i := F.map (d.fst i)
  snd i := F.map (d.snd i)

/-- If `d : MultispanIndex J C` and `F : C ⥤ D`, this is the obvious isomorphism
`(d.map F).multispan ≅ d.multispan ⋙ F`. -/
@[simps!]
def MultispanIndex.multispanMapIso : (d.map F).multispan ≅ d.multispan ⋙ F :=
  NatIso.ofComponents
    (fun i ↦ match i with
      | .left _ => Iso.refl _
      | .right _ => Iso.refl _)
    (by rintro _ _ (_ | _) <;> simp)

variable {d}

/-- If `d : MultispanIndex J C`, `c : Multicofork d` and `F : C ⥤ D`,
this is the induced multicofork of `d.map F`. -/
@[simps!]
def Multicofork.map : Multicofork (d.map F) :=
  Multicofork.ofπ _ (F.obj c.pt) (fun i ↦ F.map (c.π i)) (fun j ↦ by
    dsimp
    rw [← F.map_comp, ← F.map_comp, condition])

/-- If `d : MultispanIndex J C`, `c : Multicofork d` and `F : C ⥤ D`,
the cocone `F.mapCocone c` is colimit iff the multicofork `c.map F` is. -/
def Multicofork.isColimitMapEquiv :
    IsColimit (F.mapCocone c) ≃ IsColimit (c.map F) :=
  (IsColimit.precomposeInvEquiv (d.multispanMapIso F).symm (F.mapCocone c)).symm.trans
    (IsColimit.equivIsoColimit
      (Multicofork.ext (Iso.refl _) (fun i ↦ by dsimp only [Multicofork.π]; simp)))

/-- If `d : MultispanIndex J C`, `c : Multicofork d` is a colimit multicofork,
and `F : C ⥤ D` is a functor which preserves the colimit of `d.multispan`,
then the multicofork `c.map F` is colimit. -/
noncomputable def Multicofork.isColimitMapOfPreserves
    [PreservesColimit d.multispan F] (hc : IsColimit c) : IsColimit (c.map F) :=
  (isColimitMapEquiv c F) (isColimitOfPreserves F hc)

end Limits

end CategoryTheory
```
