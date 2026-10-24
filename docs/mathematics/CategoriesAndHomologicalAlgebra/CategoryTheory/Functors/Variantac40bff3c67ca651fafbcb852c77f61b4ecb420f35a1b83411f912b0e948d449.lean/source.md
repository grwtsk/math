# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.Variantac40bff3c67ca651fafbcb852c77f61b4ecb420f35a1b83411f912b0e948d449

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca4ced94d90741803ab3e710d9dd1c5d8ec2d365` · SHA-256 `b5f65f5d331984ddc4f4bd197c94f69c446bca1077a842b92d0f33d9d7474679`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CondensedUlift.Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CondensedUlift.Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/Functors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Limits.Preserves.Ulift
import Mathlib.CategoryTheory.Sites.Coherent.CoherentSheaves
import Mathlib.CategoryTheory.Sites.Whiskering
import Mathlib.Condensed.Basic
import Mathlib.Topology.Category.Stonean.Basic

/-!
# Functors from categories of topological spaces to condensed sets

This file defines the embedding of the test objects (compact Hausdorff spaces) into condensed
sets.

## Main definitions

* `compHausToCondensed : CompHaus.{u} ⥤ CondensedSet.{u}` is essentially the yoneda presheaf
  functor. We also define `profiniteToCondensed` and `stoneanToCondensed`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CondensedUlift.Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1

universe u v

open CategoryTheory Limits

section Universes

/-- Increase the size of the target category of condensed sets. -/
def Condensed.ulift : Condensed.{u} (Type u) ⥤ CondensedSet.{u} :=
  sheafCompose (coherentTopology CompHaus) uliftFunctor.{u+1, u}

instance : Condensed.ulift.Full := show (sheafCompose _ _).Full from inferInstance

instance : Condensed.ulift.Faithful := show (sheafCompose _ _).Faithful from inferInstance

end Universes

section Topology

/-- The functor from `CompHaus` to `Condensed.{u} (Type u)` given by the Yoneda sheaf. -/
def compHausToCondensed' : CompHaus.{u} ⥤ Condensed.{u} (Type u) :=
  (coherentTopology CompHaus).yoneda

/-- The yoneda presheaf as an actual condensed set. -/
def compHausToCondensed : CompHaus.{u} ⥤ CondensedSet.{u} :=
  compHausToCondensed' ⋙ Condensed.ulift

/-- Dot notation for the value of `compHausToCondensed`. -/
abbrev CompHaus.toCondensed (S : CompHaus.{u}) : CondensedSet.{u} := compHausToCondensed.obj S

/-- The yoneda presheaf as a condensed set, restricted to profinite spaces. -/
def profiniteToCondensed : Profinite.{u} ⥤ CondensedSet.{u} :=
  profiniteToCompHaus ⋙ compHausToCondensed

/-- Dot notation for the value of `profiniteToCondensed`. -/
abbrev Profinite.toCondensed (S : Profinite.{u}) : CondensedSet.{u} := profiniteToCondensed.obj S

/-- The yoneda presheaf as a condensed set, restricted to Stonean spaces. -/
def stoneanToCondensed : Stonean.{u} ⥤ CondensedSet.{u} :=
  Stonean.toCompHaus ⋙ compHausToCondensed

/-- Dot notation for the value of `stoneanToCondensed`. -/
abbrev Stonean.toCondensed (S : Stonean.{u}) : CondensedSet.{u} := stoneanToCondensed.obj S

instance : compHausToCondensed'.Full :=
  inferInstanceAs ((coherentTopology CompHaus).yoneda).Full

instance : compHausToCondensed'.Faithful :=
  inferInstanceAs ((coherentTopology CompHaus).yoneda).Faithful

instance : compHausToCondensed.Full := inferInstanceAs (_ ⋙ _).Full

instance : compHausToCondensed.Faithful := inferInstanceAs (_ ⋙ _).Faithful

end Topology
```
