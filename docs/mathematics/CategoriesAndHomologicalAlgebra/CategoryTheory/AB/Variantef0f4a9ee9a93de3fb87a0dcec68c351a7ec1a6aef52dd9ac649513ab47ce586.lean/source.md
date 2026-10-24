# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AB.Variantef0f4a9ee9a93de3fb87a0dcec68c351a7ec1a6aef52dd9ac649513ab47ce586

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3f5ea42b9d754399c75dcc33377f69dd6ec18ad` · SHA-256 `2dcda429b8723f1c941358266d24b6cb9e927cfcd0b7147d3e75bda2a8a600c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ModuleCatIsSeparator.Variant608e8141b3cb49638644c4e20c6a803680da034a1b1c1a9f718562788b14eb0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"608e8141b3cb49638644c4e20c6a803680da034a1b1c1a9f718562788b14eb0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ModuleCatIsSeparator.Variant608e8141b3cb49638644c4e20c6a803680da034a1b1c1a9f718562788b14eb0e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"608e8141b3cb49638644c4e20c6a803680da034a1b1c1a9f718562788b14eb0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/ModuleCat/AB.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.Algebra.Category.Grp.AB
public import Mathlib.Algebra.Category.ModuleCat.Colimits
public import Mathlib.Algebra.Module.Shrink
public import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic
/-!

# AB axioms in module categories

This file proves that the category of modules over a ring satisfies Grothendieck's axioms AB5, AB4,
and AB4\*. Further, it proves that `R` is a separator in the category of modules over `R`, and
concludes that this category is Grothendieck abelian.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ModuleCatIsSeparator.Variant608e8141b3cb49638644c4e20c6a803680da034a1b1c1a9f718562788b14eb0e

public section

universe u v

open CategoryTheory

variable (R : Type u) [Ring R]

instance : AB5 (ModuleCat.{u} R) where
  ofShape J _ _ :=
    HasExactColimitsOfShape.domain_of_functor J (forget₂ (ModuleCat R) AddCommGrpCat)

attribute [local instance] Abelian.hasFiniteBiproducts

instance : AB4 (ModuleCat.{u} R) := AB4.of_AB5 _

instance : AB4Star (ModuleCat.{u} R) where
  ofShape J :=
    HasExactLimitsOfShape.domain_of_functor (Discrete J) (forget₂ (ModuleCat R) AddCommGrpCat.{u})

lemma ModuleCat.isSeparator [Small.{v} R] : IsSeparator (ModuleCat.of.{v} R (Shrink.{v} R)) :=
    fun X Y f g h ↦ by
  simp only [ObjectProperty.singleton_iff, ModuleCat.hom_ext_iff, hom_comp,
    LinearMap.ext_iff, LinearMap.coe_comp, Function.comp_apply, forall_eq'] at h
  ext x
  simpa using h (ModuleCat.ofHom ((LinearMap.toSpanSingleton R X x).comp
    (Shrink.linearEquiv R R : Shrink R →ₗ[R] R))) 1

instance [Small.{v} R] : HasSeparator (ModuleCat.{v} R) where
  hasSeparator := ⟨↧(Shrink.{v} R), ModuleCat.isSeparator R⟩

instance : IsGrothendieckAbelian.{u} (ModuleCat.{u} R) where
```
