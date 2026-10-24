-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Map.Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Map.Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix/Matrix/Pointwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BooleanMatrix.Matrix.Core

/-!
# Pointwise BooleanMatrix operations
-/


namespace GRWTSK.Algebra.LinearAlgebra.Map.Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba

namespace BooleanMatrix
namespace Matrix

/-- Apply a Boolean function independently to every entry. -/
def map
    (function : Bool → Bool)
    (matrix : Matrix) :
    Matrix :=
  fun row column => function (matrix row column)

@[simp]
theorem map_apply
    (function : Bool → Bool)
    (matrix : Matrix)
    (row column : Nat) :
    map function matrix row column =
      function (matrix row column) :=
  rfl

/-- Combine two matrices entry by entry. -/
def zipWith
    (function : Bool → Bool → Bool)
    (left right : Matrix) :
    Matrix :=
  fun row column =>
    function (left row column) (right row column)

@[simp]
theorem zipWith_apply
    (function : Bool → Bool → Bool)
    (left right : Matrix)
    (row column : Nat) :
    zipWith function left right row column =
      function (left row column) (right row column) :=
  rfl

/-- Pointwise Boolean negation. -/
def not (matrix : Matrix) : Matrix :=
  map (fun bit => !bit) matrix

/-- Pointwise Boolean exclusive-or. -/
def xor (left right : Matrix) : Matrix :=
  zipWith (fun a b => a != b) left right

end Matrix
end BooleanMatrix
