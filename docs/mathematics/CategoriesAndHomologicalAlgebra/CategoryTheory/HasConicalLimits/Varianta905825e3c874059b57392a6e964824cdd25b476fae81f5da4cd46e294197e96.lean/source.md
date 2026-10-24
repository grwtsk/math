# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalLimits.Varianta905825e3c874059b57392a6e964824cdd25b476fae81f5da4cd46e294197e96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce657bc383c0bcbc5e7246303c4cf9a039e92a00` · SHA-256 `8282ecff0591810b29cd3edd997e3313fb97eb26fbe2b07026f60697099f5118`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalLimit.Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.HasConicalLimit.Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Enriched/Limits/HasConicalLimits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jon Eugster, Dagur Asgeirsson, Emily Riehl
-/
import Mathlib.CategoryTheory.Enriched.Ordinary.Basic
import Mathlib.CategoryTheory.Limits.Final

/-!
# Existence of conical limits

This file contains different statements about the (non-constructive) existence of conical limits.

The main constructions are the following.

- `HasConicalLimit`: there exists a conical limit for `F : J ⥤ C`.
- `HasConicalLimitsOfShape J`: All functors `F : J ⥤ C` have conical limits.
- `HasConicalLimitsOfSize.{v₁, u₁}`: For all small `J` all functors `F : J ⥤ C` have conical limits.
- `HasConicalLimits `: `C` has all (small) conical limits.

## References

* [Kelly G.M., *Basic concepts of enriched category theory*][kelly2005]:
  See section 3.8 for a similar treatment, although the content of this file is not directly
  adapted from there.

## Implementation notes

`V` has been made an `(V : outParam <| Type u')` in the classes below as it seems instance
inference prefers this. Otherwise it failed with
`cannot find synthesization order` on the instances below.
However, it is not fully clear yet whether this could lead to potential issues, for example
if there are multiple `MonoidalCategory _` instances in scope.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasConicalLimit.Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976

universe v₁ u₁ v₂ u₂ w v' v u u'

namespace CategoryTheory.Enriched

open Limits

section Definitions

variable {J : Type u₁} [Category.{v₁} J]
variable (V : outParam <| Type u') [Category.{v'} V] [MonoidalCategory V]
variable (C : Type u) [Category.{v} C] [EnrichedOrdinaryCategory V C]

variable {C} in
/--
`HasConicalLimit F` represents the mere existence of a conical limit for `F`.
-/
class HasConicalLimit (F : J ⥤ C) : Prop extends HasLimit F where
  preservesLimit_eCoyoneda (X : C) : PreservesLimit F (eCoyoneda V X) := by infer_instance

attribute [instance] HasConicalLimit.preservesLimit_eCoyoneda

variable (J) in
/--
`C` has conical limits of shape `J` if there exists a conical limit for every functor `F : J ⥤ C`.
-/
class HasConicalLimitsOfShape : Prop where
  /-- All functors `F : J ⥤ C` from `J` have limits. -/
  hasConicalLimit : ∀ F : J ⥤ C, HasConicalLimit V F := by infer_instance

attribute [instance] HasConicalLimitsOfShape.hasConicalLimit

/--
`C` has all conical limits of size `v₁ u₁` (`HasLimitsOfSize.{v₁ u₁} C`)
if it has conical limits of every shape `J : Type u₁` with `[Category.{v₁} J]`.
-/
@[pp_with_univ]
class HasConicalLimitsOfSize : Prop where
  /-- All functors `F : J ⥤ C` from all small `J` have conical limits -/
  hasConicalLimitsOfShape : ∀ (J : Type u₁) [Category.{v₁} J], HasConicalLimitsOfShape J V C := by
    infer_instance

attribute [instance] HasConicalLimitsOfSize.hasConicalLimitsOfShape

/-- `C` has all (small) conical limits if it has limits of every shape that is as big as its
hom-sets. -/
abbrev HasConicalLimits : Prop := HasConicalLimitsOfSize.{v, v} V C

end Definitions

section Results

variable {J : Type u₁} [Category.{v₁} J] {J' : Type u₂} [Category.{v₂} J']
variable (V : Type u') [Category.{v'} V] [MonoidalCategory V]
variable {C : Type u} [Category.{v} C] [EnrichedOrdinaryCategory V C]

/-- ensure existence of a conical limit implies existence of a limit -/
example (F : J ⥤ C) [HasConicalLimit V F] : HasLimit F := inferInstance

/-- If a functor `F` has a conical limit, so does any naturally isomorphic functor. -/
lemma HasConicalLimit.of_iso {F G : J ⥤ C} [HasConicalLimit V F] (e : F ≅ G) :
    HasConicalLimit V G where
  toHasLimit := hasLimit_of_iso e
  preservesLimit_eCoyoneda X := preservesLimit_of_iso_diagram (eCoyoneda V X) e

instance HasConicalLimit.of_equiv (F : J ⥤ C) [HasConicalLimit V F]
    (G : J' ⥤ J) [G.IsEquivalence] : HasConicalLimit V (G ⋙ F) where

/-- If a `G ⋙ F` has a limit, and `G` is an equivalence, we can construct a limit of `F`. -/
lemma HasConicalLimit.of_equiv_comp (F : J ⥤ C) (G : J' ⥤ J) [G.IsEquivalence]
    [HasConicalLimit V (G ⋙ F)] : HasConicalLimit V F :=
  have e : G.inv ⋙ G ⋙ F ≅ F := G.asEquivalence.invFunIdAssoc F
  HasConicalLimit.of_iso V e

variable (C)

variable (J) in
/-- existence of conical limits (of shape) implies existence of limits (of shape) -/
instance HasConicalLimitsOfShape.hasLimitsOfShape [HasConicalLimitsOfShape J V C] :
    HasLimitsOfShape J C where

/-- We can transport conical limits of shape `J'` along an equivalence `J' ≌ J`. -/
lemma HasConicalLimitsOfShape.of_equiv [HasConicalLimitsOfShape J' V C]
    (G : J' ⥤ J) [G.IsEquivalence] : HasConicalLimitsOfShape J V C where
  hasConicalLimit F := HasConicalLimit.of_equiv_comp V F G

/-- existence of conical limits (of size) implies existence of limits (of size) -/
instance HasConicalLimitsOfSize.hasLimitsOfSize [HasConicalLimitsOfSize.{v₁, u₁} V C] :
    HasLimitsOfSize.{v₁, u₁} C where

/-- ensure existence of (small) conical limits implies existence of (small) limits -/
example [HasConicalLimits V C] : HasLimits C := inferInstance

end Results

end CategoryTheory.Enriched
```
