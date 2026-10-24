# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AB.Variant1d01cf6e0f744541921a4a6286473374fba6c53dabb5897156a0c84324746eaf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c7f2253e35dd4b0934fdf1ccae747299208448e` · SHA-256 `f76fd893114086f0d10d806c6fbdbdb740e6a748a8b92106b85ff27b9edbd007`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AB.Variant8abe514f6ee6659f0acd5e47433f483a22de98b5b65baed7c99160861366bc24","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8abe514f6ee6659f0acd5e47433f483a22de98b5b65baed7c99160861366bc24","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.AB.Variant8abe514f6ee6659f0acd5e47433f483a22de98b5b65baed7c99160861366bc24","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8abe514f6ee6659f0acd5e47433f483a22de98b5b65baed7c99160861366bc24","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Condensed/Light/AB.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.Algebra.Category.ModuleCat.AB
public import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Sheaf
public import Mathlib.Condensed.Light.Epi

/-!
# Grothendieck's AB axioms for light condensed modules

The category of light condensed `R`-modules over a ring satisfies the countable version of
Grothendieck's AB4\* axiom
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AB.Variant8abe514f6ee6659f0acd5e47433f483a22de98b5b65baed7c99160861366bc24

public section

universe u

open CategoryTheory

namespace LightCondensed

variable {R : Type u} [Ring R]

attribute [local instance] Abelian.hasFiniteBiproducts

noncomputable instance : CountableAB4Star (LightCondMod.{u} R) :=
  have := hasExactLimitsOfShape_of_preservesEpi (LightCondMod R) (Discrete ℕ)
  CountableAB4Star.of_hasExactLimitsOfShape_nat _

instance : IsGrothendieckAbelian.{u} (LightCondMod.{u} R) :=
  Sheaf.isGrothendieckAbelian_of_essentiallySmall _ _

end LightCondensed
```
