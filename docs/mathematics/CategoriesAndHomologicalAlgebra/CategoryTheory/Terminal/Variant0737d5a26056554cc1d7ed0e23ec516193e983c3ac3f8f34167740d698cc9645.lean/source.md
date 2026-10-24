# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Terminal.Variant0737d5a26056554cc1d7ed0e23ec516193e983c3ac3f8f34167740d698cc9645

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a124619b5a2dce66a84c6bef381a2c47789ddd2d` · SHA-256 `ff9a6c4e59c271a697dd552e2dd156344b511fde4675912f7e32f82e7fb71ac8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsTerminal.Variant75d499ce8ba5f1fd2c9e4729f0d1265f1e3bf6bda9885db34cc6227c8c6ef308","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75d499ce8ba5f1fd2c9e4729f0d1265f1e3bf6bda9885db34cc6227c8c6ef308","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsTerminal.Variant75d499ce8ba5f1fd2c9e4729f0d1265f1e3bf6bda9885db34cc6227c8c6ef308","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"75d499ce8ba5f1fd2c9e4729f0d1265f1e3bf6bda9885db34cc6227c8c6ef308","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/FunctorCategory/Shapes/Terminal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
public import Mathlib.CategoryTheory.Limits.Shapes.IsTerminal

/-!
# Initial and terminal objects in the category of functors

We show that if a functor `F : C ⥤ D` is such that `F.obj X`
is terminal for all `X`, then `F` is a terminal object.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsTerminal.Variant75d499ce8ba5f1fd2c9e4729f0d1265f1e3bf6bda9885db34cc6227c8c6ef308

@[expose] public section

namespace CategoryTheory.Functor

open Limits

variable {C D : Type*} [Category* C] [Category* D]

/-- If `F : C ⥤ D` is such that `F.obj X` is terminal for any `X : C`,
then `F` is a terminal object. -/
def isTerminal {F : C ⥤ D} (hF : ∀ (X : C), IsTerminal (F.obj X)) :
    IsTerminal F := by
  refine evaluationJointlyReflectsLimits _
    fun X ↦ IsLimit.equivOfNatIsoOfIso (Functor.emptyExt _ _) _ _ ?_ (hF X)
  exact Cone.ext (Iso.refl _)

/-- If `F : C ⥤ D` is such that `F.obj X` is initial for any `X : C`,
then `F` is an initial object. -/
def isInitial {F : C ⥤ D} (hF : ∀ (X : C), IsInitial (F.obj X)) :
    IsInitial F := by
  refine evaluationJointlyReflectsColimits _
    fun X ↦ IsColimit.equivOfNatIsoOfIso (Functor.emptyExt _ _) _ _ ?_ (hF X)
  exact Cocone.ext (Iso.refl _)

end CategoryTheory.Functor
```
