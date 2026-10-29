-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Format.Variantb3c2ae23632c55ad930ddfd1f953f19805ab8e48490aab2b68146e914c0750c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3c2ae23632c55ad930ddfd1f953f19805ab8e48490aab2b68146e914c0750c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Format.Variantb3c2ae23632c55ad930ddfd1f953f19805ab8e48490aab2b68146e914c0750c9","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b3c2ae23632c55ad930ddfd1f953f19805ab8e48490aab2b68146e914c0750c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix/Format.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BooleanMatrix.Matrix.Core

/-!
# BooleanMatrix formats

A format is a validity predicate over the common BooleanMatrix carrier.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Format.Variantb3c2ae23632c55ad930ddfd1f953f19805ab8e48490aab2b68146e914c0750c9

namespace BooleanMatrix

/--
A format identifies the matrices considered valid under one interpretation.
-/
structure Format where
  Valid : Matrix → Prop

namespace Format

/-- The unrestricted format accepts every matrix. -/
def any : Format where
  Valid := fun _ => True

/-- A format containing exactly one matrix. -/
def exact (expected : Matrix) : Format where
  Valid := fun matrix => matrix = expected

/-- Conjunction of two matrix formats. -/
def intersection
    (left right : Format) :
    Format where
  Valid := fun matrix =>
    left.Valid matrix ∧ right.Valid matrix

end Format
end BooleanMatrix
