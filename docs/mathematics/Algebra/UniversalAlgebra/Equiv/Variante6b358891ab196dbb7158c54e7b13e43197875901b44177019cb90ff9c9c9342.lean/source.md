# Complete source: GRWTSK.Algebra.UniversalAlgebra.Equiv.Variante6b358891ab196dbb7158c54e7b13e43197875901b44177019cb90ff9c9c9342

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fae1f45d8bc6d117e5b901efcea442a976b01f5` · SHA-256 `e66f6323299cd67d021f50d9a379ba0c70bd8e39b0a42246522f31dd7b747458`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Equiv.Variant17428a72e61175bb70df3b39e8350518006f6136b7caca8f0934f610e081dec4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17428a72e61175bb70df3b39e8350518006f6136b7caca8f0934f610e081dec4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Equiv.Variant17428a72e61175bb70df3b39e8350518006f6136b7caca8f0934f610e081dec4","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"17428a72e61175bb70df3b39e8350518006f6136b7caca8f0934f610e081dec4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Equiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Equiv.Defs
import Mathlib.Algebra.GroupWithZero.Hom

/-! # Isomorphisms of monoids with zero -/


namespace GRWTSK.Algebra.UniversalAlgebra.Equiv.Variant17428a72e61175bb70df3b39e8350518006f6136b7caca8f0934f610e081dec4

assert_not_exists Ring

namespace MulEquivClass
variable {F α β : Type*} [EquivLike F α β]

-- See note [lower instance priority]
instance (priority := 100) toZeroHomClass [MulZeroClass α] [MulZeroClass β] [MulEquivClass F α β] :
    ZeroHomClass F α β where
  map_zero f :=
    calc
      f 0 = f 0 * f (EquivLike.inv f 0) := by rw [← map_mul, zero_mul]
        _ = 0 := by simp

-- See note [lower instance priority]
instance (priority := 100) toMonoidWithZeroHomClass
    [MulZeroOneClass α] [MulZeroOneClass β] [MulEquivClass F α β] :
    MonoidWithZeroHomClass F α β :=
  { MulEquivClass.instMonoidHomClass F, MulEquivClass.toZeroHomClass with }

end MulEquivClass
```
