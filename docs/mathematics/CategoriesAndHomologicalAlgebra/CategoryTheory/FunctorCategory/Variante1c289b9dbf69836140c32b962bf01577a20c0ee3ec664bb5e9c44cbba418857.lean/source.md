# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variante1c289b9dbf69836140c32b962bf01577a20c0ee3ec664bb5e9c44cbba418857

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24e492dfa09ae0930ecfc2271106abe844767c2d` · SHA-256 `a993194a185ae27659ce74b4c9fc8b2ba7cbe4f1d460c0f7133f37f6cc1ed72b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrothendieckAxioms.Variant68afc5f46836cff6b1f752e74232c6a4258ec1724547ad6288c20559c8b240db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68afc5f46836cff6b1f752e74232c6a4258ec1724547ad6288c20559c8b240db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.GrothendieckAxioms.Variant68afc5f46836cff6b1f752e74232c6a4258ec1724547ad6288c20559c8b240db","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"68afc5f46836cff6b1f752e74232c6a4258ec1724547ad6288c20559c8b240db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/GrothendieckAxioms/FunctorCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Basic
/-!

# AB axioms in functor categories

This file proves that, when the relevant limits and colimits exist, exactness of limits and
colimits carries over from `A` to the functor category `C ⥤ A`
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrothendieckAxioms.Variant68afc5f46836cff6b1f752e74232c6a4258ec1724547ad6288c20559c8b240db

namespace CategoryTheory

open CategoryTheory Limits Opposite

variable {A C J : Type*} [Category A] [Category C] [Category J]

instance [HasColimitsOfShape J A] [HasExactColimitsOfShape J A] [HasFiniteLimits A] :
    HasExactColimitsOfShape J (C ⥤ A) where
  preservesFiniteLimits := { preservesFiniteLimits _ := inferInstance }

instance [HasLimitsOfShape J A] [HasExactLimitsOfShape J A] [HasFiniteColimits A] :
    HasExactLimitsOfShape J (C ⥤ A) where
  preservesFiniteColimits := { preservesFiniteColimits _ := inferInstance }

end CategoryTheory
```
