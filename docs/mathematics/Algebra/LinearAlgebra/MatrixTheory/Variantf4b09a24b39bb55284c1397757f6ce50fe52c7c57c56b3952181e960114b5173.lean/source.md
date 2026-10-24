# Complete source: GRWTSK.Algebra.LinearAlgebra.Matrix.Variantf4b09a24b39bb55284c1397757f6ce50fe52c7c57c56b3952181e960114b5173

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6aeee8d92c533a587c4db9c0a9e32fa2446c30dd` · SHA-256 `aacf9c1f4a60c6ad56cd0a9ab99e9511dd10eb73d0a6380c247e70f74ed5398c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Ideal.Variant64a7f6e10869088785a67bcc748e756d000aa1ca314c5deb3e0313bdba26ec59","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64a7f6e10869088785a67bcc748e756d000aa1ca314c5deb3e0313bdba26ec59","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Ideal.Variant64a7f6e10869088785a67bcc748e756d000aa1ca314c5deb3e0313bdba26ec59","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"64a7f6e10869088785a67bcc748e756d000aa1ca314c5deb3e0313bdba26ec59","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/SimpleRing/Matrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
import Mathlib.LinearAlgebra.Matrix.Ideal
import Mathlib.RingTheory.SimpleRing.Basic

/-!
The matrix ring over a simple ring is simple
-/


namespace GRWTSK.Algebra.LinearAlgebra.Ideal.Variant64a7f6e10869088785a67bcc748e756d000aa1ca314c5deb3e0313bdba26ec59

namespace IsSimpleRing

variable (ι A : Type*) [Ring A] [Fintype ι] [Nonempty ι]

instance matrix [IsSimpleRing A] : IsSimpleRing (Matrix ι ι A) where
  simple := letI := Classical.decEq ι; TwoSidedIdeal.orderIsoMatricesOver |>.symm.isSimpleOrder

end IsSimpleRing
```
