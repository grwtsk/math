-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CheckerboardCountImbalanceAbsLeOne.Variant7a140e48533f083681b12578bf78d99fee785c2dcb0b8e68a950e9ba2e29d4e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a140e48533f083681b12578bf78d99fee785c2dcb0b8e68a950e9ba2e29d4e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CheckerboardCountImbalanceAbsLeOne.Variant7a140e48533f083681b12578bf78d99fee785c2dcb0b8e68a950e9ba2e29d4e2","mathematical_subject":"Foundations.Unclassified","original_sha256":"7a140e48533f083681b12578bf78d99fee785c2dcb0b8e68a950e9ba2e29d4e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/BinaryMatrix/Density.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Bitspace.Density

/-!
# Folder.Theorem.BinaryMatrix.Density

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.binary_matrix.density
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.LinearAlgebra.CheckerboardCountImbalanceAbsLeOne.Variant7a140e48533f083681b12578bf78d99fee785c2dcb0b8e68a950e9ba2e29d4e2

namespace Folder
namespace Theorem
namespace BinaryMatrix

theorem checkerboard_count_imbalance_abs_le_one
    (m n : Nat) :
    Int.natAbs (Bitspace.imbalance (Bitspace.checkerboard m n)) ≤ 1 :=
  Bitspace.checkerboard_count_imbalance_abs_le_one m n

end BinaryMatrix
end Theorem
end Folder
