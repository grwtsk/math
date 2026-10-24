# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Discrete.Variant2b56e5c268a364ef0611a5031a6c04f70968c89b1719015b8640f38ad21e97ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90c1d8b7e38456839817d59691d4a297c8d6e2a9` · SHA-256 `cd72b248f3fb07b0cd0005153b364bdd9ec6c85960d01a13dff15f85449d4d42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Groupoid.Varianta41c49cf334f230e7ba77573cfaeba33046cb655d968fd7a078f8a69e3d907c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a41c49cf334f230e7ba77573cfaeba33046cb655d968fd7a078f8a69e3d907c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Groupoid.Varianta41c49cf334f230e7ba77573cfaeba33046cb655d968fd7a078f8a69e3d907c9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a41c49cf334f230e7ba77573cfaeba33046cb655d968fd7a078f8a69e3d907c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Groupoid/Discrete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Groupoid
public import Mathlib.CategoryTheory.Discrete.Basic
/-!

# Discrete categories are groupoids
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Groupoid.Varianta41c49cf334f230e7ba77573cfaeba33046cb655d968fd7a078f8a69e3d907c9

public section

namespace CategoryTheory

variable {C : Type*}

instance : Groupoid (Discrete C) := { inv := fun h ↦ ⟨h.1.symm⟩ }

instance [Category* C] [IsDiscrete C] : IsGroupoid C where

end CategoryTheory
```
