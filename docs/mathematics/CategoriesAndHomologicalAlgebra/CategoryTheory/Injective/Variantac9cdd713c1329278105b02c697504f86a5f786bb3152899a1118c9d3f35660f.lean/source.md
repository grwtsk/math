# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Injective.Variantac9cdd713c1329278105b02c697504f86a5f786bb3152899a1118c9d3f35660f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d875977ba0faea70b732ba8a08da96eeca93bc3b` · SHA-256 `374a8cc579ce63f0e540e17b1aec99216554042aecb9c426ba0a827340c16d05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InjectiveIffPreservesEpimorphismsPreadditiveYonedaObj.Variant259585454f82e304708ad069e43556f14e7faa3647a06ed27945717d2e0e47c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"259585454f82e304708ad069e43556f14e7faa3647a06ed27945717d2e0e47c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.InjectiveIffPreservesEpimorphismsPreadditiveYonedaObj.Variant259585454f82e304708ad069e43556f14e7faa3647a06ed27945717d2e0e47c7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"259585454f82e304708ad069e43556f14e7faa3647a06ed27945717d2e0e47c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Preadditive/Yoneda/Injective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Kim Morrison
-/
module

public import Mathlib.CategoryTheory.Preadditive.Yoneda.Basic
public import Mathlib.CategoryTheory.Preadditive.Injective.Basic
public import Mathlib.Algebra.Category.Grp.EpiMono
public import Mathlib.Algebra.Category.ModuleCat.EpiMono

/-!
# Injective objects

An object is injective iff the preadditive yoneda functor on it preserves epimorphisms.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InjectiveIffPreservesEpimorphismsPreadditiveYonedaObj.Variant259585454f82e304708ad069e43556f14e7faa3647a06ed27945717d2e0e47c7

public section


universe v u

open Opposite

namespace CategoryTheory

variable {C : Type u} [Category.{v} C]

section Preadditive

variable [Preadditive C]

namespace Injective

theorem injective_iff_preservesEpimorphisms_preadditiveYoneda_obj (J : C) :
    Injective J ↔ (preadditiveYoneda.obj J).PreservesEpimorphisms := by
  rw [injective_iff_preservesEpimorphisms_yoneda_obj]
  refine
    ⟨fun h : (preadditiveYoneda.obj J ⋙ (forget AddCommGrpCat)).PreservesEpimorphisms => ?_, ?_⟩
  · exact
      Functor.preservesEpimorphisms_of_preserves_of_reflects (preadditiveYoneda.obj J) (forget _)
  · intro
    exact (inferInstance : (preadditiveYoneda.obj J ⋙ forget _).PreservesEpimorphisms)

theorem injective_iff_preservesEpimorphisms_preadditive_yoneda_obj' (J : C) :
    Injective J ↔ (preadditiveYonedaObj J).PreservesEpimorphisms := by
  rw [injective_iff_preservesEpimorphisms_yoneda_obj]
  refine ⟨fun h : (preadditiveYonedaObj J ⋙ (forget <| ModuleCat (End J))).PreservesEpimorphisms =>
    ?_, ?_⟩
  · exact
      Functor.preservesEpimorphisms_of_preserves_of_reflects (preadditiveYonedaObj J) (forget _)
  · intro
    exact (inferInstance : (preadditiveYonedaObj J ⋙ forget _).PreservesEpimorphisms)

end Injective

end Preadditive

end CategoryTheory
```
