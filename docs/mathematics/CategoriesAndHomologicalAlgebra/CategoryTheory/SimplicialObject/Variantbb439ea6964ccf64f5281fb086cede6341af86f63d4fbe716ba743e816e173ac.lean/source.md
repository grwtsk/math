# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SimplicialObject.Variantbb439ea6964ccf64f5281fb086cede6341af86f63d4fbe716ba743e816e173ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48b72a0c230e6512176ed258b08a6dd5a1e890cf` · SHA-256 `a026502a068705b62a42ae3ebccc6e35b26650239c7eb17d77712ed06d44528d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SimplicialObject.Variant25ca93019405f2a4485520726340e9230541aa4638b922ba59b68b404b253d66","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25ca93019405f2a4485520726340e9230541aa4638b922ba59b68b404b253d66","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SimplicialObject.Variant25ca93019405f2a4485520726340e9230541aa4638b922ba59b68b404b253d66","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"25ca93019405f2a4485520726340e9230541aa4638b922ba59b68b404b253d66","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Idempotents/SimplicialObject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.SimplicialObject.Basic
import Mathlib.CategoryTheory.Idempotents.FunctorCategories

/-!

# Idempotent completeness of categories of simplicial objects

In this file, we provide an instance expressing that `SimplicialObject C`
and `CosimplicialObject C` are idempotent complete categories when the
category `C` is.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SimplicialObject.Variant25ca93019405f2a4485520726340e9230541aa4638b922ba59b68b404b253d66

namespace CategoryTheory

namespace Idempotents

variable {C : Type*} [Category C] [IsIdempotentComplete C]

instance : IsIdempotentComplete (SimplicialObject C) :=
  Idempotents.functor_category_isIdempotentComplete _ _

instance : IsIdempotentComplete (CosimplicialObject C) :=
  Idempotents.functor_category_isIdempotentComplete _ _

end Idempotents

end CategoryTheory
```
