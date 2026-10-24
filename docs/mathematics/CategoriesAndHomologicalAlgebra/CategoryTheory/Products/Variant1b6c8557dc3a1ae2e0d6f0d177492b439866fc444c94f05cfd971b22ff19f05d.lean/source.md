# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variant1b6c8557dc3a1ae2e0d6f0d177492b439866fc444c94f05cfd971b22ff19f05d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1a9db43f5ce1f699152fd47c9b1b3f3b7f7212f` · SHA-256 `ab3bcd58eb7f4ca7457eb858f1307a9ebf8437bcd88e26cdbd7479db808ee948`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PiObjIso.Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PiObjIso.Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/FunctorCategory/Shapes/Products.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
import Mathlib.CategoryTheory.Limits.Shapes.Products

/-!
# (Co)products in functor categories

Given `f : α → D ⥤ C`, we prove the isomorphisms
`(∏ᶜ f).obj d ≅ ∏ᶜ (fun s => (f s).obj d)` and `(∐ f).obj d ≅ ∐ (fun s => (f s).obj d)`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PiObjIso.Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304

universe w v v₁ v₂ u u₁ u₂

namespace CategoryTheory.Limits

variable {C : Type u} [Category.{v} C] {D : Type u₁} [Category.{v₁} D]
  {α : Type w}

section Product

variable [HasLimitsOfShape (Discrete α) C]

/-- Evaluating a product of functors amounts to taking the product of the evaluations. -/
noncomputable def piObjIso (f : α → D ⥤ C) (d : D) : (∏ᶜ f).obj d ≅ ∏ᶜ (fun s => (f s).obj d) :=
  limitObjIsoLimitCompEvaluation (Discrete.functor f) d ≪≫
    HasLimit.isoOfNatIso (Discrete.compNatIsoDiscrete _ _)

@[reassoc (attr := simp)]
theorem piObjIso_hom_comp_π (f : α → D ⥤ C) (d : D) (s : α) :
    (piObjIso f d).hom ≫ Pi.π (fun s => (f s).obj d) s = (Pi.π f s).app d := by
  simp [piObjIso]

@[reassoc (attr := simp)]
theorem piObjIso_inv_comp_π (f : α → D ⥤ C) (d : D) (s : α) :
    (piObjIso f d).inv ≫ (Pi.π f s).app d = Pi.π (fun s => (f s).obj d) s := by
  simp [piObjIso]

@[deprecated (since := "2025-02-23")]
alias piObjIso_inv_comp_pi := piObjIso_inv_comp_π

end Product

section Coproduct

variable [HasColimitsOfShape (Discrete α) C]

/-- Evaluating a coproduct of functors amounts to taking the coproduct of the evaluations. -/
noncomputable def sigmaObjIso (f : α → D ⥤ C) (d : D) : (∐ f).obj d ≅ ∐ (fun s => (f s).obj d) :=
  colimitObjIsoColimitCompEvaluation (Discrete.functor f) d ≪≫
    HasColimit.isoOfNatIso (Discrete.compNatIsoDiscrete _ _)

@[reassoc (attr := simp)]
theorem ι_comp_sigmaObjIso_hom (f : α → D ⥤ C) (d : D) (s : α) :
    (Sigma.ι f s).app d ≫ (sigmaObjIso f d).hom = Sigma.ι (fun s => (f s).obj d) s := by
  simp [sigmaObjIso]

@[reassoc (attr := simp)]
theorem ι_comp_sigmaObjIso_inv (f : α → D ⥤ C) (d : D) (s : α) :
    Sigma.ι (fun s => (f s).obj d) s ≫ (sigmaObjIso f d).inv = (Sigma.ι f s).app d := by
  simp [sigmaObjIso]

end Coproduct

end CategoryTheory.Limits
```
