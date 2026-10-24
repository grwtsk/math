# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Solid.Variant7c64a089df13031afd914ef6f00e3618fcb1fe645ef751738fa7ce5f8a1e95f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `285c6efe0ba691df6f2d3c4b4251823dd9afb717` · SHA-256 `77cf829729c28a263a6fca0e16ea82adf010c44b45472f3f7e48dacf0446d245`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CondensedModIsSolid.Variant37af0fd83b67a1bfe36288034b7e869abfde7eb0c74b2a3acfc617401818f0b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37af0fd83b67a1bfe36288034b7e869abfde7eb0c74b2a3acfc617401818f0b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CondensedModIsSolid.Variant37af0fd83b67a1bfe36288034b7e869abfde7eb0c74b2a3acfc617401818f0b9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"37af0fd83b67a1bfe36288034b7e869abfde7eb0c74b2a3acfc617401818f0b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/Solid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Functor.KanExtension.Pointwise
import Mathlib.Condensed.Functors
import Mathlib.Condensed.Limits

/-!

# Solid modules

This file contains the definition of a solid `R`-module: `CondensedMod.isSolid R`. Solid modules
groups were introduced in [scholze2019condensed], Definition 5.1.

## Main definition

* `CondensedMod.IsSolid R`: the predicate on condensed `R`-modules describing the property of
  being solid.

TODO (hard): prove that `((profiniteSolid ℤ).obj S).IsSolid` for `S : Profinite`.
TODO (slightly easier): prove that `((profiniteSolid 𝔽ₚ).obj S).IsSolid` for `S : Profinite`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CondensedModIsSolid.Variant37af0fd83b67a1bfe36288034b7e869abfde7eb0c74b2a3acfc617401818f0b9

universe u

variable (R : Type (u + 1)) [Ring R]

open CategoryTheory Limits Profinite Condensed

noncomputable section

namespace Condensed

/-- The free condensed abelian group on a finite set. -/
abbrev finFree : FintypeCat.{u} ⥤ CondensedMod.{u} R :=
  FintypeCat.toProfinite ⋙ profiniteToCondensed ⋙ free R

/-- The free condensed abelian group on a profinite space. -/
abbrev profiniteFree : Profinite.{u} ⥤ CondensedMod.{u} R :=
  profiniteToCondensed ⋙ free R

/-- The functor sending a profinite space `S` to the condensed abelian group `R[S]^\solid`. -/
def profiniteSolid : Profinite.{u} ⥤ CondensedMod.{u} R :=
  Functor.rightKanExtension FintypeCat.toProfinite (finFree R)

/-- The natural transformation `FintypeCat.toProfinite ⋙ profiniteSolid R ⟶ finFree R`
which is part of the assertion that `profiniteSolid R` is the (pointwise) right
Kan extension of `finFree R` along `FintypeCat.toProfinite`. -/
def profiniteSolidCounit : FintypeCat.toProfinite ⋙ profiniteSolid R ⟶ finFree R :=
  Functor.rightKanExtensionCounit FintypeCat.toProfinite (finFree R)

instance : (profiniteSolid R).IsRightKanExtension (profiniteSolidCounit R) := by
  dsimp only [profiniteSolidCounit, profiniteSolid]
  infer_instance

/-- The functor `Profinite.{u} ⥤ CondensedMod.{u} R` is a pointwise
right Kan extension of `finFree R : FintypeCat.{u} ⥤ CondensedMod.{u} R`
along `FintypeCat.toProfinite`. -/
def profiniteSolidIsPointwiseRightKanExtension :
    (Functor.RightExtension.mk _ (profiniteSolidCounit R)).IsPointwiseRightKanExtension :=
  Functor.isPointwiseRightKanExtensionOfIsRightKanExtension _ _

/-- The natural transformation `R[S] ⟶ R[S]^\solid`. -/
def profiniteSolidification : profiniteFree R ⟶ profiniteSolid.{u} R :=
  (profiniteSolid R).liftOfIsRightKanExtension (profiniteSolidCounit R) _ (𝟙 _)

end Condensed

/-- The predicate on condensed abelian groups describing the property of being solid. -/
class CondensedMod.IsSolid (A : CondensedMod.{u} R) : Prop where
  isIso_solidification_map : ∀ X : Profinite.{u}, IsIso ((yoneda.obj A).map
    ((profiniteSolidification R).app X).op)
```
