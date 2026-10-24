# Complete source: GRWTSK.Algebra.LinearAlgebra.VectorSpace.Variantb404184964407d8f3fcab26db38bd8445c4cc4c69bb0f6bbabacb4ca788219ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80968beb5a96f84fe3605ba6845653f808697987` · SHA-256 `a55d64dcf1ea98c59b5ff5f9822706e9a7f219cabb5cc18626d07ce6ecbc9082`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.UniqueProds.Variant4630499d030db5dc149bd9247ca6c69fc8e24fe4a2c8c6748f1cc2be410517f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4630499d030db5dc149bd9247ca6c69fc8e24fe4a2c8c6748f1cc2be410517f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.UniqueProds.Variant4630499d030db5dc149bd9247ca6c69fc8e24fe4a2c8c6748f1cc2be410517f4","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"4630499d030db5dc149bd9247ca6c69fc8e24fe4a2c8c6748f1cc2be410517f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/UniqueProds/VectorSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.Group.UniqueProds.Basic
import Mathlib.LinearAlgebra.Basis.VectorSpace

/-!
# A `ℚ`-vector space has `TwoUniqueSums`.
-/


namespace GRWTSK.Algebra.LinearAlgebra.UniqueProds.Variant4630499d030db5dc149bd9247ca6c69fc8e24fe4a2c8c6748f1cc2be410517f4

variable {G : Type*}

/-- Any `ℚ`-vector space has `TwoUniqueSums`, because it is isomorphic to some
  `(Basis.ofVectorSpaceIndex ℚ G) →₀ ℚ` by choosing a basis, and `ℚ` already has
  `TwoUniqueSums` because it's ordered. -/
instance [AddCommGroup G] [Module ℚ G] : TwoUniqueSums G :=
  TwoUniqueSums.of_injective_addHom _ (Basis.ofVectorSpace ℚ G).repr.injective inferInstance
```
