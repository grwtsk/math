# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorEquivalence.Variant3c2010e61b293e8263f5df21f3069e09f0bf9ca41b11bacc595c9409b00b9a84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf476435529dadbdbd60209c6a62f0421c8bbcc7` · SHA-256 `73d1009ac09f4a225fedcc700483b5b0fefb57101664d10a746473811ae069cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Functor.Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/ShortComplex/FunctorEquivalence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.ShortComplex.Basic

/-!
# Short complexes in functor categories

In this file, it is shown that if `J` and `C` are two categories (such
that `C` has zero morphisms), then there is an equivalence of categories
`ShortComplex.functorEquivalence J C : ShortComplex (J ⥤ C) ≌ J ⥤ ShortComplex C`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant97c7d680e299492796a5b51df0a76cb58bf48eaa0c40d68e5e1be7e2d43ce9eb

namespace CategoryTheory

open Limits

variable (J C : Type*) [Category J] [Category C] [HasZeroMorphisms C]

namespace ShortComplex

namespace FunctorEquivalence

attribute [local simp] ShortComplex.Hom.comm₁₂ ShortComplex.Hom.comm₂₃

/-- The obvious functor `ShortComplex (J ⥤ C) ⥤ J ⥤ ShortComplex C`. -/
@[simps]
def functor : ShortComplex (J ⥤ C) ⥤ J ⥤ ShortComplex C where
  obj S :=
    { obj := fun j => S.map ((evaluation J C).obj j)
      map := fun f => S.mapNatTrans ((evaluation J C).map f) }
  map φ :=
    { app := fun j => ((evaluation J C).obj j).mapShortComplex.map φ }

/-- The obvious functor `(J ⥤ ShortComplex C) ⥤ ShortComplex (J ⥤ C)`. -/
@[simps]
def inverse : (J ⥤ ShortComplex C) ⥤ ShortComplex (J ⥤ C) where
  obj F :=
    { f := whiskerLeft F π₁Toπ₂
      g := whiskerLeft F π₂Toπ₃
      zero := by aesop_cat }
  map φ := Hom.mk (whiskerRight φ π₁) (whiskerRight φ π₂) (whiskerRight φ π₃)
    (by aesop_cat) (by aesop_cat)

/-- The unit isomorphism of the equivalence
`ShortComplex.functorEquivalence : ShortComplex (J ⥤ C) ≌ J ⥤ ShortComplex C`. -/
@[simps!]
def unitIso : 𝟭 _ ≅ functor J C ⋙ inverse J C :=
  NatIso.ofComponents (fun _ => isoMk
    (NatIso.ofComponents (fun _ => Iso.refl _) (by simp))
    (NatIso.ofComponents (fun _ => Iso.refl _) (by simp))
    (NatIso.ofComponents (fun _ => Iso.refl _) (by simp))
    (by aesop_cat) (by aesop_cat)) (by aesop_cat)

/-- The counit isomorphism of the equivalence
`ShortComplex.functorEquivalence : ShortComplex (J ⥤ C) ≌ J ⥤ ShortComplex C`. -/
@[simps!]
def counitIso : inverse J C ⋙ functor J C ≅ 𝟭 _ :=
  NatIso.ofComponents (fun _ => NatIso.ofComponents
    (fun _ => isoMk (Iso.refl _) (Iso.refl _) (Iso.refl _)
      (by simp) (by simp)) (by aesop_cat)) (by aesop_cat)

end FunctorEquivalence

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
