# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant88e7aae66dd0868d5f54e704f10404db35f910a7313262f522c28b78f79ba56f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fca94cc409d40227e0daaeebde39ef59f2b450b7` · SHA-256 `ebacfe724157b698d4856d896e5c36fa0480957baebcb8074b11f30f7f8c756d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimitCommutesFiniteLimit.Variantac385dd8303c3ccf72b6d993ba40fb4de1fe83d0cc26a8955d5cce7499fccbe1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac385dd8303c3ccf72b6d993ba40fb4de1fe83d0cc26a8955d5cce7499fccbe1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FilteredColimitCommutesFiniteLimit.Variantac385dd8303c3ccf72b6d993ba40fb4de1fe83d0cc26a8955d5cce7499fccbe1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ac385dd8303c3ccf72b6d993ba40fb4de1fe83d0cc26a8955d5cce7499fccbe1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/GrothendieckAxioms/Types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Basic

/-!
# The category of types satisfies Grothendieck's AB5 axiom

This is of course just the well-known fact that filtered colimits commute with finite limits in
the category of types.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimitCommutesFiniteLimit.Variantac385dd8303c3ccf72b6d993ba40fb4de1fe83d0cc26a8955d5cce7499fccbe1

universe v

namespace CategoryTheory.Limits

instance : AB5 (Type v) where
  ofShape _ _ _ := ⟨inferInstance⟩

end CategoryTheory.Limits
```
