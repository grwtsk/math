# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TopComparison.Variantedf3a1b83226dc5ef327b9bb5e8158c88bc8d5154535518d4ad3d7cd78b9d8ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b821bb5cb4ee2ea37c6a3d67f8ddffba89724e9` · SHA-256 `fec24828dd3ba16cf09efbe1adea608b0dc5e843c49dad023a7b023a22fb2d54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TopCatToLightCondSet.Variant299b43050480e72a2c888818feda3493bdf45c0a9539abf2f6b1f7418ee49e2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"299b43050480e72a2c888818feda3493bdf45c0a9539abf2f6b1f7418ee49e2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TopCatToLightCondSet.Variant299b43050480e72a2c888818feda3493bdf45c0a9539abf2f6b1f7418ee49e2b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"299b43050480e72a2c888818feda3493bdf45c0a9539abf2f6b1f7418ee49e2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/Light/TopComparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Condensed.Light.Basic
import Mathlib.Condensed.TopComparison

/-!

# The functor from topological spaces to light condensed sets

We define the functor `topCatToLightCondSet : TopCat.{u} ⥤ LightCondSet.{u}`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TopCatToLightCondSet.Variant299b43050480e72a2c888818feda3493bdf45c0a9539abf2f6b1f7418ee49e2b

universe u

open CategoryTheory

/--
Associate to a `u`-small topological space the corresponding light condensed set, given by
`yonedaPresheaf`.
-/
noncomputable abbrev TopCat.toLightCondSet (X : TopCat.{u}) : LightCondSet.{u} :=
  toSheafCompHausLike.{u} _ X (fun _ _ _ ↦ (LightProfinite.effectiveEpi_iff_surjective _).mp)

/--
`TopCat.toLightCondSet` yields a functor from `TopCat.{u}` to `LightCondSet.{u}`.
-/
noncomputable abbrev topCatToLightCondSet : TopCat.{u} ⥤ LightCondSet.{u} :=
  topCatToSheafCompHausLike.{u} _ (fun _ _ _ ↦ (LightProfinite.effectiveEpi_iff_surjective _).mp)
```
