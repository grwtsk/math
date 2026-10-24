# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant1194c595b11e16f9b6d083b4a957afd66fe6ffe90743735dd3e46b0e6dc52449

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `193bacb6d7032fde8210e6af34eef77391a38bb0` · SHA-256 `b7fdb6996a04cf838918e0e6c4b527c66652a628275b5622989b931c6a2bf1cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiIffSurjective.Variant99b19d274094334dd9e9298661414e4e537439cc3b122e969ddafbedb6791131","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99b19d274094334dd9e9298661414e4e537439cc3b122e969ddafbedb6791131","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EpiIffSurjective.Variant99b19d274094334dd9e9298661414e4e537439cc3b122e969ddafbedb6791131","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"99b19d274094334dd9e9298661414e4e537439cc3b122e969ddafbedb6791131","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/TopCat/EpiMono.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Reid Barton. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Reid Barton
-/
import Mathlib.Topology.Category.TopCat.Adjunctions
import Mathlib.CategoryTheory.Functor.EpiMono

/-!
# Epi- and monomorphisms in `Top`

This file shows that a continuous function is an epimorphism in the category of topological spaces
if and only if it is surjective, and that a continuous function is a monomorphism in the category of
topological spaces if and only if it is injective.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiIffSurjective.Variant99b19d274094334dd9e9298661414e4e537439cc3b122e969ddafbedb6791131

universe u

open CategoryTheory

open TopCat

namespace TopCat

theorem epi_iff_surjective {X Y : TopCat.{u}} (f : X ⟶ Y) : Epi f ↔ Function.Surjective f := by
  suffices Epi f ↔ Epi ((forget TopCat).map f) by
    rw [this, CategoryTheory.epi_iff_surjective]
    rfl
  constructor
  · intro
    infer_instance
  · apply Functor.epi_of_epi_map

theorem mono_iff_injective {X Y : TopCat.{u}} (f : X ⟶ Y) : Mono f ↔ Function.Injective f := by
  suffices Mono f ↔ Mono ((forget TopCat).map f) by
    rw [this, CategoryTheory.mono_iff_injective]
    rfl
  constructor
  · intro
    infer_instance
  · apply Functor.mono_of_mono_map

end TopCat
```
