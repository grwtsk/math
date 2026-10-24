# Complete source: GRWTSK.Algebra.LinearAlgebra.Prod.Variantf474a283d7a0d3f140a7b79d0496d589d6d562c2c1f0e675771c6e3de04e73a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edc0b7eb836c37fb043149234e8c84c89d5deeab` · SHA-256 `6cb718efd590dfacb3be35c9f898486603b0a7cd652338d61fa3699f5ef38a5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsLinearMapAdd.Variant807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsLinearMapAdd.Variant807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/LinearMap/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Alexander Bentkamp. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alexander Bentkamp
-/

import Mathlib.Algebra.Module.Prod
import Mathlib.Tactic.Abel
import Mathlib.Algebra.Module.LinearMap.Defs

/-!
# Addition and subtraction are linear maps from the product space

Note that these results use `IsLinearMap`, which is mostly discouraged.

## Tags
linear algebra, vector space, module

-/


namespace GRWTSK.Algebra.LinearAlgebra.IsLinearMapAdd.Variant807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2

variable {R : Type*} {M : Type*} [Semiring R]

namespace IsLinearMap

theorem isLinearMap_add [AddCommMonoid M] [Module R M] :
    IsLinearMap R fun x : M × M => x.1 + x.2 := by
  apply IsLinearMap.mk
  · intro x y
    simp only [Prod.fst_add, Prod.snd_add]
    abel
  · intro x y
    simp [smul_add]

theorem isLinearMap_sub [AddCommGroup M] [Module R M] :
    IsLinearMap R fun x : M × M => x.1 - x.2 := by
  apply IsLinearMap.mk
  · intro x y
    simp [add_comm, add_assoc, add_left_comm, sub_eq_add_neg]
  · intro x y
    simp [smul_sub]

end IsLinearMap
```
