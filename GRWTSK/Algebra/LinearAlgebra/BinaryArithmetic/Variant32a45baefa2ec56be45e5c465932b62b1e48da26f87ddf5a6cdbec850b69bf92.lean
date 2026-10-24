-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.UnaryEncodingDecodes.Varianta4100ef24d6367b347a6e9852dfa5354105e06a82ab8a5b0cd4d4268f3626098","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4100ef24d6367b347a6e9852dfa5354105e06a82ab8a5b0cd4d4268f3626098","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.UnaryEncodingDecodes.Varianta4100ef24d6367b347a6e9852dfa5354105e06a82ab8a5b0cd4d4268f3626098","mathematical_subject":"Foundations.Unclassified","original_sha256":"a4100ef24d6367b347a6e9852dfa5354105e06a82ab8a5b0cd4d4268f3626098","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/NumberTheory/BinaryArithmetic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CellularArithmetic.BinaryMatrixEncoding
import Folder.CellularArithmetic.CellularRepresentation
import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.Rebuild.NumberTheory.BinaryArithmetic

Checked unary BinaryMatrix arithmetic facts reused by the rebuild branch.
-/


namespace GRWTSK.Algebra.LinearAlgebra.UnaryEncodingDecodes.Varianta4100ef24d6367b347a6e9852dfa5354105e06a82ab8a5b0cd4d4268f3626098

namespace Folder
namespace Rebuild
namespace NumberTheory

open Folder.NumberTheory
open Folder.CellularArithmetic

theorem unary_encoding_decodes
    (n : PositiveNat) :
    (unaryEncoding n).representation.decode = n.val :=
  (unaryEncoding n).decoded_matches

theorem unary_encoding_matrix_rows
    (n : PositiveNat) :
    (unaryEncoding n).matrix.m = 1 :=
  (unaryBinaryMatrix_shape n).1

theorem unary_encoding_matrix_cols
    (n : PositiveNat) :
    (unaryEncoding n).matrix.n = n.val :=
  (unaryBinaryMatrix_shape n).2

end NumberTheory
end Rebuild
end Folder
