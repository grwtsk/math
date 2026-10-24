# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variant73cc61e5d9600df0d738fbafe550fb8d2435bf888c2e624c503534c7f2e7e58d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6141a4424162710c26f2d7cbdedf2c28a5d18f6a` · SHA-256 `ed22d947edc1fc9ac2a20eb4068175d138e0a5d986b9e32dddc61ec555741ebe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MatrixOrError.Variant623bfd46f23cae2d3d77deae8fb042d056fe716451b102373e89f9f10d5f1691","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"623bfd46f23cae2d3d77deae8fb042d056fe716451b102373e89f9f10d5f1691","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MatrixOrError.Variant623bfd46f23cae2d3d77deae8fb042d056fe716451b102373e89f9f10d5f1691","mathematical_subject":"Computation.DataStructures","original_sha256":"623bfd46f23cae2d3d77deae8fb042d056fe716451b102373e89f9f10d5f1691","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BinaryMatrix

/-!
# Binary-matrix demonstration executable

Run with:

    lake exe binary_matrix_demo
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MatrixOrError.Variant623bfd46f23cae2d3d77deae8fb042d056fe716451b102373e89f9f10d5f1691

private def matrixOrError
    (m n : Nat)
    (data : Array Bool) :
    IO (BinMatMut m n) :=
  match BinMatMut.ofArray? m n data with
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
    (matrix : BinMatMut m n) :
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
