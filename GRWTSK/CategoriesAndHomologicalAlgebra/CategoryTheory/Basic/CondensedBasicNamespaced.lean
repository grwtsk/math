-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Condensed.Variant4357850f3ba13dae249e96e666a5b460455df955a6e7c5287837aa807ba6913d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4357850f3ba13dae249e96e666a5b460455df955a6e7c5287837aa807ba6913d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Condensed.Variant4357850f3ba13dae249e96e666a5b460455df955a6e7c5287837aa807ba6913d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"4357850f3ba13dae249e96e666a5b460455df955a6e7c5287837aa807ba6913d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Condensed/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/

import Mathlib.CategoryTheory.Sites.Sheaf
import Mathlib.Topology.Category.CompHaus.EffectiveEpi

/-!

# Condensed Objects

This file defines the category of condensed objects in a category `C`, following the work
of Clausen-Scholze and Barwick-Haine.

## Implementation Details

We use the coherent Grothendieck topology on `CompHaus`, and define condensed objects in `C` to
be `C`-valued sheaves, with respect to this Grothendieck topology.

In future work, we will define similar Grothendieck topologies on the category of profinite sets
and extremally disconnected sets, and show that the three categories are equivalent (under
suitable assumptions on `C`).

Note: Our definition more closely resembles "Pyknotic objects" in the sense of Barwick-Haine,
as we do not impose cardinality bounds, and manage universes carefully instead.

## References

- [barwickhaine2019]: *Pyknotic objects, I. Basic notions*, 2019.
- [scholze2019condensed]: *Lectures on Condensed Mathematics*, 2019.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Condensed.Variant4357850f3ba13dae249e96e666a5b460455df955a6e7c5287837aa807ba6913d

open CategoryTheory Limits

open CategoryTheory

universe u v w

/--
`Condensed.{u} C` is the category of condensed objects in a category `C`, which are
defined as sheaves on `CompHaus.{u}` with respect to the coherent Grothendieck topology.
-/
def Condensed (C : Type w) [Category.{v} C] :=
  Sheaf (coherentTopology CompHaus.{u}) C

instance {C : Type w} [Category.{v} C] : Category (Condensed.{u} C) :=
  show Category (Sheaf _ _) from inferInstance
