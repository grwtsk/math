-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RegularityRequest.Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RegularityRequest.Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904","mathematical_subject":"Topology.GeneralTopology","original_sha256":"d95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/GammaBridge/Regularity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GammaBridge.Exact

/-! # Explicit regularity authority -/


namespace GRWTSK.Topology.GeneralTopology.RegularityRequest.Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904

namespace Mathematics.GammaBridge

inductive RegularityRequest
  | continuous
  | lipschitz
  | continuouslyDifferentiable
  deriving DecidableEq, Repr

inductive RegularityStatus
  | proved
  | unavailable
  deriving DecidableEq, Repr

/-- Regularity is a separate certificate and is never inferred from endpoint
preservation. -/
structure RegularityCertificate where
  request : RegularityRequest
  status : RegularityStatus
  evidence : Option CertificateId
  deriving DecidableEq, Repr

def RegularityCertificate.Valid (certificate : RegularityCertificate) : Prop :=
  certificate.status = .proved → certificate.evidence.isSome

end Mathematics.GammaBridge
