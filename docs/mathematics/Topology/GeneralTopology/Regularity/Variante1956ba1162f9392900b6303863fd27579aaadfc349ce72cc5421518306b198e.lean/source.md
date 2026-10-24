# Complete source: GRWTSK.Topology.GeneralTopology.Regularity.Variante1956ba1162f9392900b6303863fd27579aaadfc349ce72cc5421518306b198e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cf63721e1e1592763007ded32abd57d58bdea12` · SHA-256 `7897a60615e99a2b496021496db6e6e688903fb723d2e05f25256aec6213db50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
