# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Discrete.Variant1359b1b2a5cc5caac3b66ab10ad13b9c4861316a84bc7f3df355b0558f3ddc7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34f2713b5e3b05ddf4c1e156dc465e984a50ea9f` · SHA-256 `b75eb9e08ad7a82114401103c6cc95b7f5ec4d251c1a578650b5c2181866ae0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Groupoid.Variantd47b15634d20f69ab110abf6531d86dde2589dba91fa62200f6f28d73d38fe35","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d47b15634d20f69ab110abf6531d86dde2589dba91fa62200f6f28d73d38fe35","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Groupoid.Variantd47b15634d20f69ab110abf6531d86dde2589dba91fa62200f6f28d73d38fe35","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d47b15634d20f69ab110abf6531d86dde2589dba91fa62200f6f28d73d38fe35","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Groupoid/Discrete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Groupoid
import Mathlib.CategoryTheory.Discrete.Basic
/-!

# Discrete categories are groupoids
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Groupoid.Variantd47b15634d20f69ab110abf6531d86dde2589dba91fa62200f6f28d73d38fe35

namespace CategoryTheory

variable {C : Type*}

instance : Groupoid (Discrete C) := { inv := fun h ↦ ⟨⟨h.1.1.symm⟩⟩ }

instance [Category C] [IsDiscrete C] : IsGroupoid C where

end CategoryTheory
```
