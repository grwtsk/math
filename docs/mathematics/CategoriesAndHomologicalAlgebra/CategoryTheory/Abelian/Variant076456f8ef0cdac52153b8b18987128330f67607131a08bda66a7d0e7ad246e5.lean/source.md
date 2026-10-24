# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abelian.Variant076456f8ef0cdac52153b8b18987128330f67607131a08bda66a7d0e7ad246e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0fa7a48ba850b66208e90190500db94819087f3` · SHA-256 `d1f38083595d14a44a8ce532caa881d02c886fba725c563fd787deebed720410`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheafification.Variant10a3d78228b30d50d5cbf149c8c5cea033d84ec6e337cfd8e952271e126fe773","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10a3d78228b30d50d5cbf149c8c5cea033d84ec6e337cfd8e952271e126fe773","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Sheafification.Variant10a3d78228b30d50d5cbf149c8c5cea033d84ec6e337cfd8e952271e126fe773","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"10a3d78228b30d50d5cbf149c8c5cea033d84ec6e337cfd8e952271e126fe773","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/ModuleCat/Sheaf/Abelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Presheaf.Sheafification
public import Mathlib.CategoryTheory.Abelian.Transfer

/-!
# The category of sheaves of modules is abelian

In this file, it is shown that the category of sheaves of modules over
a sheaf of rings `R` is an abelian category. More precisely,
if `J` is a Grothendieck topology on a category `C` and `R : Sheaf J RingCat.{u}`,
then `SheafOfModules.{v} R` is abelian if the conditions `HasSheafify J AddCommGrpCat.{v}`
and `J.WEqualsLocallyBijective AddCommGrpCat.{v}` are satisfied.

In particular, if `u = v` and `C : Type u` is a small category,
then `SheafOfModules.{u} R` is abelian: this instance shall be
found automatically if this file and `Algebra.Category.Grp.FilteredColimits`
are imported.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheafification.Variant10a3d78228b30d50d5cbf149c8c5cea033d84ec6e337cfd8e952271e126fe773

public section

universe v v' u u'

open CategoryTheory

variable {C : Type u'} [Category.{v'} C] {J : GrothendieckTopology C}

namespace SheafOfModules

variable (R : Sheaf J RingCat.{u}) [HasSheafify J AddCommGrpCat.{v}]
  [J.WEqualsLocallyBijective AddCommGrpCat.{v}]

noncomputable instance : Abelian (SheafOfModules.{v} R) := by
  let adj := PresheafOfModules.sheafificationAdjunction (𝟙 R.obj)
  exact abelianOfAdjunction _ _ (asIso (adj.counit)) adj

end SheafOfModules
```
