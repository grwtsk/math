# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variantd093f27d5c45d69a024c68710f10c5794cbcf68af340adb2fa1e5ede5d25491e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2b55cb768a23982882f77830302e0bed02293ac` · SHA-256 `fa05f8d86d95137133c83a4d8662f86a7a71bc274fd15682880a790e36456650`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LightCondMod.Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LightCondMod.Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/Light/Module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.Algebra.Category.ModuleCat.Adjunctions
import Mathlib.Algebra.Category.ModuleCat.Colimits
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Mathlib.CategoryTheory.Sites.Abelian
import Mathlib.CategoryTheory.Sites.Adjunction
import Mathlib.CategoryTheory.Sites.Equivalence
import Mathlib.Condensed.Light.Basic
/-!

# Light condensed `R`-modules

This files defines light condensed modules over a ring `R`.

## Main results

* Light condensed `R`-modules form an abelian category.

* The forgetful functor from light condensed `R`-modules to light condensed sets has a left
  adjoint, sending a light condensed set to the corresponding *free* light condensed `R`-module.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LightCondMod.Variant6d1ff695a8b4927951ddd39d33cf68325e949a83270cf013c3c94678b7f899e2

universe u

open CategoryTheory

variable (R : Type u) [Ring R]

/--
The category of condensed `R`-modules, defined as sheaves of `R`-modules over
`CompHaus` with respect to the coherent Grothendieck topology.
-/
abbrev LightCondMod := LightCondensed.{u} (ModuleCat.{u} R)

noncomputable instance : Abelian (LightCondMod.{u} R) := sheafIsAbelian

/-- The forgetful functor from condensed `R`-modules to condensed sets. -/
def LightCondensed.forget : LightCondMod R ⥤ LightCondSet :=
  sheafCompose _ (CategoryTheory.forget _)

/--
The left adjoint to the forgetful functor. The *free condensed `R`-module* on a condensed set.
-/
noncomputable
def LightCondensed.free : LightCondSet ⥤ LightCondMod R :=
  Sheaf.composeAndSheafify _ (ModuleCat.free R)

/-- The condensed version of the free-forgetful adjunction. -/
noncomputable
def LightCondensed.freeForgetAdjunction : free R ⊣ forget R :=  Sheaf.adjunction _ (ModuleCat.adj R)

/--
The category of condensed abelian groups, defined as sheaves of abelian groups over
`CompHaus` with respect to the coherent Grothendieck topology.
-/
abbrev LightCondAb := LightCondMod ℤ

noncomputable example : Abelian LightCondAb := inferInstance

namespace LightCondMod

lemma hom_naturality_apply {X Y : LightCondMod.{u} R} (f : X ⟶ Y) {S T : LightProfiniteᵒᵖ}
    (g : S ⟶ T) (x : X.val.obj S) : f.val.app T (X.val.map g x) = Y.val.map g (f.val.app S x) :=
  NatTrans.naturality_apply f.val g x

end LightCondMod
```
