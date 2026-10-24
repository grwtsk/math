# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variant94eabe6ab047de81192213742555d53ef3cd89a0b99fad8aa96263d073412c77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31d6f1df04ae24bf78d8396584d9c2191a444374` · SHA-256 `de744f670d9396903b1056d26a6307a5095f51a30a71b0cd72f959e7cff73f2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MatrixOrError.Variant1a4071d3f461a9ead15b890cdf0a769d05dffa3f767f19379535e44985919ae3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a4071d3f461a9ead15b890cdf0a769d05dffa3f767f19379535e44985919ae3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MatrixOrError.Variant1a4071d3f461a9ead15b890cdf0a769d05dffa3f767f19379535e44985919ae3","mathematical_subject":"Computation.DataStructures","original_sha256":"1a4071d3f461a9ead15b890cdf0a769d05dffa3f767f19379535e44985919ae3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix

/-!
# Binary-matrix demonstration executable

Run with:

    lake exe bit_matrix_demo
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MatrixOrError.Variant1a4071d3f461a9ead15b890cdf0a769d05dffa3f767f19379535e44985919ae3

private def matrixOrError
    (m n : Nat)
    (data : Array Bool) :
    IO (BitMatrix.ArrayBacked m n) :=
  match BitMatrix.ArrayBacked.ofArray? m n data with
  | some matrix =>
      pure matrix
  | none =>
      throw <| IO.userError s!"
        Invalid matrix storage:
          expected size: {m * n}
          actual size:   {data.size}
      "

private def printMatrix
    (name : String)
    (matrix : BitMatrix.ArrayBacked m n) :
    IO Unit :=
  IO.println s!"{name} = {reprStr matrix.data}"

def main : IO Unit := do
  let a ← matrixOrError 2 3 #[
    true,  false, true,
    false, true,  true
  ]

  let b ← matrixOrError 2 3 #[
    true, true,  false,
    false, true, false
  ]

  let conjunction := a.andInPlace b
  let disjunction := a.orInPlace b
  let exclusiveOr := a.xorInPlace b
  let complement := a.notInPlace

  printMatrix "A      " a
  printMatrix "B      " b
  printMatrix "A AND B" conjunction
  printMatrix "A OR B " disjunction
  printMatrix "A XOR B" exclusiveOr
  printMatrix "NOT A  " complement
```
