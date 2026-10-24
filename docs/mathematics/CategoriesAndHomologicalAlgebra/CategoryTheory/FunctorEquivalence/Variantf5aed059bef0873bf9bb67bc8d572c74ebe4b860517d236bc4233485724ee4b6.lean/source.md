# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorEquivalence.Variantf5aed059bef0873bf9bb67bc8d572c74ebe4b860517d236bc4233485724ee4b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91e3ff2ccc28b21d0c4290955fea9ba9a276e08e` · SHA-256 `59319033d2b1097cce58ffd0ff06caaf67d37d776a76e851143b66b63826f1eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant380cfd18667df7f340341047764aad66a1b1d349d252c00404fd3244ec94d65b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"380cfd18667df7f340341047764aad66a1b1d349d252c00404fd3244ec94d65b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Functor.Variant380cfd18667df7f340341047764aad66a1b1d349d252c00404fd3244ec94d65b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"380cfd18667df7f340341047764aad66a1b1d349d252c00404fd3244ec94d65b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Homology/ShortComplex/FunctorEquivalence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.ShortComplex.Basic

/-!
# Short complexes in functor categories

In this file, it is shown that if `J` and `C` are two categories (such
that `C` has zero morphisms), then there is an equivalence of categories
`ShortComplex.functorEquivalence J C : ShortComplex (J ⥤ C) ≌ J ⥤ ShortComplex C`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant380cfd18667df7f340341047764aad66a1b1d349d252c00404fd3244ec94d65b

@[expose] public section

namespace CategoryTheory

open Limits CategoryTheory.Functor

variable (J C : Type*) [Category* J] [Category* C] [HasZeroMorphisms C]

namespace ShortComplex

namespace FunctorEquivalence

attribute [local simp] ShortComplex.Hom.comm₁₂ ShortComplex.Hom.comm₂₃

set_option backward.defeqAttrib.useBackward true in
/-- The obvious functor `ShortComplex (J ⥤ C) ⥤ J ⥤ ShortComplex C`. -/
@[simps]
def functor : ShortComplex (J ⥤ C) ⥤ J ⥤ ShortComplex C where
  obj S :=
    { obj := fun j => S.map ((evaluation J C).obj j)
      map := fun f => S.mapNatTrans ((evaluation J C).map f) }
  map φ :=
    { app := fun j => ((evaluation J C).obj j).mapShortComplex.map φ }

set_option backward.defeqAttrib.useBackward true in
/-- The obvious functor `(J ⥤ ShortComplex C) ⥤ ShortComplex (J ⥤ C)`. -/
@[simps]
def inverse : (J ⥤ ShortComplex C) ⥤ ShortComplex (J ⥤ C) where
  obj F :=
    { f := whiskerLeft F π₁Toπ₂
      g := whiskerLeft F π₂Toπ₃
      zero := by cat_disch }
  map φ := Hom.mk (whiskerRight φ π₁) (whiskerRight φ π₂) (whiskerRight φ π₃)
    (by cat_disch) (by cat_disch)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The unit isomorphism of the equivalence
`ShortComplex.functorEquivalence : ShortComplex (J ⥤ C) ≌ J ⥤ ShortComplex C`. -/
@[simps!]
def unitIso : 𝟭 _ ≅ functor J C ⋙ inverse J C :=
  NatIso.ofComponents (fun _ => isoMk
    (NatIso.ofComponents (fun _ => Iso.refl _) (by simp))
    (NatIso.ofComponents (fun _ => Iso.refl _) (by simp))
    (NatIso.ofComponents (fun _ => Iso.refl _) (by simp))
    (by cat_disch) (by cat_disch)) (by cat_disch)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The counit isomorphism of the equivalence
`ShortComplex.functorEquivalence : ShortComplex (J ⥤ C) ≌ J ⥤ ShortComplex C`. -/
@[simps!]
def counitIso : inverse J C ⋙ functor J C ≅ 𝟭 _ :=
  NatIso.ofComponents (fun _ => NatIso.ofComponents
    (fun _ => isoMk (Iso.refl _) (Iso.refl _) (Iso.refl _)
      (by simp) (by simp)) (by cat_disch)) (by cat_disch)

end FunctorEquivalence

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The obvious equivalence `ShortComplex (J ⥤ C) ≌ J ⥤ ShortComplex C`. -/
@[simps]
def functorEquivalence : ShortComplex (J ⥤ C) ≌ J ⥤ ShortComplex C where
  functor := FunctorEquivalence.functor J C
  inverse := FunctorEquivalence.inverse J C
  unitIso := FunctorEquivalence.unitIso J C
  counitIso := FunctorEquivalence.counitIso J C

end ShortComplex

end CategoryTheory
```
