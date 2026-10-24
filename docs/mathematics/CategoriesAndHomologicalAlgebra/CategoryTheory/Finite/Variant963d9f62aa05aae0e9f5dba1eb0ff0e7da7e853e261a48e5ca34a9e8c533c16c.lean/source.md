# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Finite.Variant963d9f62aa05aae0e9f5dba1eb0ff0e7da7e853e261a48e5ca34a9e8c533c16c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `816386627a1a2755e00edc8b358ad7e61e12efff` · SHA-256 `59500fdada5fc22e5097989ff3c38a1a38e8b665101a47d1ebad5a6a842f48d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Varianta9fe5ea9dc05c65e8aecd009634c4d7eb6e4b27402038668a5903af7fd29d16c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9fe5ea9dc05c65e8aecd009634c4d7eb6e4b27402038668a5903af7fd29d16c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorCategory.Varianta9fe5ea9dc05c65e8aecd009634c4d7eb6e4b27402038668a5903af7fd29d16c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a9fe5ea9dc05c65e8aecd009634c4d7eb6e4b27402038668a5903af7fd29d16c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/FunctorCategory/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
import Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts
/-!

# Functor categories have finite limits when the target category does

These declarations cannot be in `Mathlib/CategoryTheory/Limits/FunctorCategory.lean` because
that file shouldn't import `Mathlib/CategoryTheory/Limits/Shapes/FiniteProducts.lean`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Varianta9fe5ea9dc05c65e8aecd009634c4d7eb6e4b27402038668a5903af7fd29d16c

namespace CategoryTheory.Limits

variable {C : Type*} [Category C] {K : Type*} [Category K]

instance [HasFiniteLimits C] : HasFiniteLimits (K ⥤ C) := ⟨fun _ ↦ inferInstance⟩

instance [HasFiniteProducts C] : HasFiniteProducts (K ⥤ C) := ⟨inferInstance⟩

instance [HasFiniteColimits C] : HasFiniteColimits (K ⥤ C) := ⟨fun _ ↦ inferInstance⟩

instance [HasFiniteCoproducts C] : HasFiniteCoproducts (K ⥤ C) := ⟨inferInstance⟩

end CategoryTheory.Limits
```
