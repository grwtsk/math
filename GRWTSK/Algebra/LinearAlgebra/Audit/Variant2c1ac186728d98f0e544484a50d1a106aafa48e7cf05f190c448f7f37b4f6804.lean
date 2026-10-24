-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RadiationAuditEntry.Variant1c73df188c44ce972f1e9142e64cc8b60c644a28390a5060ff152687b1c534a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c73df188c44ce972f1e9142e64cc8b60c644a28390a5060ff152687b1c534a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RadiationAuditEntry.Variant1c73df188c44ce972f1e9142e64cc8b60c644a28390a5060ff152687b1c534a3","mathematical_subject":"Foundations.Unclassified","original_sha256":"1c73df188c44ce972f1e9142e64cc8b60c644a28390a5060ff152687b1c534a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BinaryMatrix/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.BinaryMatrix.Radiation

/-!
# Folder.BinaryMatrix.Audit

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: bm.audit
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/



namespace GRWTSK.Algebra.LinearAlgebra.RadiationAuditEntry.Variant1c73df188c44ce972f1e9142e64cc8b60c644a28390a5060ff152687b1c534a3

namespace Folder
namespace BinaryMatrix

structure RadiationAuditEntry where
  moduleName : String
  role : String
  importsChanged : Bool
  notes : String

def auditPurpose : String :=
  "Records BinaryMatrix radiation roles for Lean modules without introducing import cycles."

end BinaryMatrix
end Folder
