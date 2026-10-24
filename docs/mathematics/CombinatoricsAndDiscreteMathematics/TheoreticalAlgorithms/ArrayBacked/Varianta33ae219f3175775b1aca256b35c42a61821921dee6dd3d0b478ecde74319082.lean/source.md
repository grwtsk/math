# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayBacked.Varianta33ae219f3175775b1aca256b35c42a61821921dee6dd3d0b478ecde74319082

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2dce4e2784cf61024c928a10505f638db756726` · SHA-256 `e0f50d5b7463967c8d269c17026544b40df4fd08bc1aec2276f4c40d7be6bfe9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BitMatrixArrayBacked.Variantda426359e4b88f9634afde71a69b834e9e7ff142cc0d3dc243f41f87ffb54c03","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da426359e4b88f9634afde71a69b834e9e7ff142cc0d3dc243f41f87ffb54c03","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BitMatrixArrayBacked.Variantda426359e4b88f9634afde71a69b834e9e7ff142cc0d3dc243f41f87ffb54c03","mathematical_subject":"Computation.DataStructures","original_sha256":"da426359e4b88f9634afde71a69b834e9e7ff142cc0d3dc243f41f87ffb54c03","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/bit-matrix/BitMatrixElements/Core/ArrayBacked.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrixElements.Core.Basic

/-! # Array-backed executable refinement. -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BitMatrixArrayBacked.Variantda426359e4b88f9634afde71a69b834e9e7ff142cc0d3dc243f41f87ffb54c03

structure BitMatrix.ArrayBacked (m n : Nat) where
  data : Array Bool
  size_eq : data.size = m * n

namespace BitMatrix.ArrayBacked

def flatIndex (i : Fin m) (j : Fin n) : Nat :=
  i.val * n + j.val

def get (matrix : BitMatrix.ArrayBacked m n) (i : Fin m) (j : Fin n) : Bool :=
  matrix.data.getD (flatIndex i j) false

def abstract (matrix : BitMatrix.ArrayBacked m n) : BitMatrix m n :=
  matrix.get

@[simp] theorem abstract_apply
    (matrix : BitMatrix.ArrayBacked m n)
    (i : Fin m)
    (j : Fin n) :
    matrix.abstract i j = matrix.get i j :=
  rfl

end BitMatrix.ArrayBacked
```
