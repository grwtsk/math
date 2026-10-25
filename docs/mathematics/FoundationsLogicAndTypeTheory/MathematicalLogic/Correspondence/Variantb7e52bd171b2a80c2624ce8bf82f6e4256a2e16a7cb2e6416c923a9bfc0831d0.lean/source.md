# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Correspondence.Variantb7e52bd171b2a80c2624ce8bf82f6e4256a2e16a7cb2e6416c923a9bfc0831d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `838cea2e893ea5f7b62dbf202281921d9f091b3d` · SHA-256 `2c92ec56c9ca61e6df1e63e901c2590cd1cf0c4c5cbb0004e09f75fdd6cd8ebc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RowMajor.Variant54e819cc10ee829990de832b30b1641bde9e05b6f33c840069098755c7dbd223","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"54e819cc10ee829990de832b30b1641bde9e05b6f33c840069098755c7dbd223","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.RowMajor.Variant54e819cc10ee829990de832b30b1641bde9e05b6f33c840069098755c7dbd223","mathematical_subject":"Logic.Foundations","original_sha256":"54e819cc10ee829990de832b30b1641bde9e05b6f33c840069098755c7dbd223","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/bridge/BridgeElements/Correspondence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Logic.Equiv.Fin.Basic
import BridgeElements.BitMatrixSurface

/-! # Row-major coordinate correspondence. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RowMajor.Variant54e819cc10ee829990de832b30b1641bde9e05b6f33c840069098755c7dbd223

namespace URSM.Bridge

def rowMajor
    (coordinate : Fin m × Fin n) :
    Fin (m * n) :=
  finProdFinEquiv coordinate

theorem rowMajor_injective :
    Function.Injective
      (rowMajor : Fin m × Fin n → Fin (m * n)) :=
  finProdFinEquiv.injective

@[simp] theorem rowMajor_value
    (i : Fin m)
    (j : Fin n) :
    (rowMajor (i, j)).val = i.val * n + j.val :=
  by
    simp [rowMajor, finProdFinEquiv, Nat.mul_comm, Nat.add_comm]

end URSM.Bridge
```
