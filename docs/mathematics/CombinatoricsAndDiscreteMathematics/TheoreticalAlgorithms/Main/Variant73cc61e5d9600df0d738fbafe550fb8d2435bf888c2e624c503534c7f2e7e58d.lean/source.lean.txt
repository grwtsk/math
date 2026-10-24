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