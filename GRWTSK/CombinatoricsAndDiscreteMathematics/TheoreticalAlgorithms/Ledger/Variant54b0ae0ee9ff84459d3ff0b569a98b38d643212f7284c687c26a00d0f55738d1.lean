-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CertifiedTransition.Variant806a6b44c01f6717e72af5786912ee8e5ef00f38d61a38ff51a439a276643a34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"806a6b44c01f6717e72af5786912ee8e5ef00f38d61a38ff51a439a276643a34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CertifiedTransition.Variant806a6b44c01f6717e72af5786912ee8e5ef00f38d61a38ff51a439a276643a34","mathematical_subject":"Computation.DataStructures","original_sha256":"806a6b44c01f6717e72af5786912ee8e5ef00f38d61a38ff51a439a276643a34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/artifacts/noeoueue-cpp20-rust-lean-app/formal/NoeoueueFormalGate/Ledger.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import NoeoueueFormalGate.Model


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CertifiedTransition.Variant806a6b44c01f6717e72af5786912ee8e5ef00f38d61a38ff51a439a276643a34

set_option autoImplicit false

namespace NoeoueueFormalGate

structure CertifiedTransition where
  before : State
  intent : Intent
  after : State
  checked : ValidTransition before intent after

structure CertificateLedger where
  genesis : State
  genesisInvariant : Invariant genesis
  transitions : List CertifiedTransition

namespace CertificateLedger

def appendCertified
    (ledger : CertificateLedger)
    (certificate : CertifiedTransition) : CertificateLedger :=
  { ledger with transitions := ledger.transitions ++ [certificate] }

end CertificateLedger

end NoeoueueFormalGate
