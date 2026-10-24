-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.DecodeEncodeShell.Variantba383e27f327907edb201c1a22a29645971350f2fd0a7a8af3c58d6ad2c75c7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ba383e27f327907edb201c1a22a29645971350f2fd0a7a8af3c58d6ad2c75c7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DecodeEncodeShell.Variantba383e27f327907edb201c1a22a29645971350f2fd0a7a8af3c58d6ad2c75c7a","mathematical_subject":"Foundations.Unclassified","original_sha256":"ba383e27f327907edb201c1a22a29645971350f2fd0a7a8af3c58d6ad2c75c7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/BinaryMatrix/ShellBijection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Expansion.ShellBijection

/-!
# Folder.Theorem.BinaryMatrix.ShellBijection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.binary_matrix.shell_bijection
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.LinearAlgebra.DecodeEncodeShell.Variantba383e27f327907edb201c1a22a29645971350f2fd0a7a8af3c58d6ad2c75c7a

namespace Folder
namespace Theorem
namespace BinaryMatrix

theorem decode_encode_shell
    {s : Carrier.GridShape}
    (M : Carrier.BinaryMatrix)
    (hm : M.m = s.rows + 2)
    (hn : M.n = s.cols + 2) :
    Expansion.decodeShell (Expansion.encodeShell M hm hn) = M :=
  Expansion.decode_encode_shell M hm hn

end BinaryMatrix
end Theorem
end Folder
