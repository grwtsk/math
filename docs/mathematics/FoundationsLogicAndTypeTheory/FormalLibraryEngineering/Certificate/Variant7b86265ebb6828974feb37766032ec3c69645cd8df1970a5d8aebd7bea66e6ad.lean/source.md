# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certificate.Variant7b86265ebb6828974feb37766032ec3c69645cd8df1970a5d8aebd7bea66e6ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5434280e0203d0d23f596b2892d76e1ae8529ee9` · SHA-256 `80aecebd3a04a4e8c59d51cdd9a8b3b743c0e71e681e2a7eab7368c1d0aa3424`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EndpointsPreserved.Variant46a3d638bad32c881e6e590246a5e21cff8d1a4321da1a118697a23d2e89c6cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46a3d638bad32c881e6e590246a5e21cff8d1a4321da1a118697a23d2e89c6cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EndpointsPreserved.Variant46a3d638bad32c881e6e590246a5e21cff8d1a4321da1a118697a23d2e89c6cb","mathematical_subject":"Foundations.Unclassified","original_sha256":"46a3d638bad32c881e6e590246a5e21cff8d1a4321da1a118697a23d2e89c6cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/GammaBridge/Certificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GammaBridge.Approximation
import Mathematics.Authority.Evidence

/-! # Fixed bridge predicates -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EndpointsPreserved.Variant46a3d638bad32c881e6e590246a5e21cff8d1a4321da1a118697a23d2e89c6cb

namespace Mathematics.GammaBridge

def EndpointsPreserved (bridge : Exact State) : Prop :=
  bridge.path 0 = bridge.left ∧ bridge.path 1 = bridge.right

def endpointCertificate (bridge : Exact State) :
    Authority.FixedPredicateCertificate (Exact State) EndpointsPreserved where
  payload := bridge
  proof := ⟨bridge.left_endpoint, bridge.right_endpoint⟩

end Mathematics.GammaBridge
```
