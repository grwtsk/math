# Complete source: GRWTSK.Topology.GeneralTopology.CS12ControlledSphericalHierarchy.Variant77d3fae250a3d9db9b7bd87fa1cdb41070a8083ea792ac5ef6519cd490f7d3e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55bf030e2f60e745114c38b467eecb0c7540c848` · SHA-256 `c47d56c430eed3f2ab31aed2ae4e9946ec4e8311e60af2e3c2f23d829f1e14c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Cs12ControlledSphericalHierarchy.Variant37d2e9030c146c51ae835c231888f536689eab0c11049c82119a7ab58fce6278","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37d2e9030c146c51ae835c231888f536689eab0c11049c82119a7ab58fce6278","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Cs12ControlledSphericalHierarchy.Variant37d2e9030c146c51ae835c231888f536689eab0c11049c82119a7ab58fce6278","mathematical_subject":"Topology.GeneralTopology","original_sha256":"37d2e9030c146c51ae835c231888f536689eab0c11049c82119a7ab58fce6278","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Theorems/CS12_ControlledSphericalHierarchy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Assembly


namespace GRWTSK.Topology.GeneralTopology.Cs12ControlledSphericalHierarchy.Variant37d2e9030c146c51ae835c231888f536689eab0c11049c82119a7ab58fce6278

namespace FCRS.ControlledSpherical.Theorems

open FCRS.ControlledPlane

/--
CS-12 scoped assembly.  The spherical registry supplies one coherent witness
package, and a decoder is extracted from the existing abstract coherent
controlled presentation.  The result retains selected-carrier compactness.
-/
theorem cs12_controlledSphericalHierarchy
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (planeRegistry : ControlledPlaneResearchRegistry S M)
    (planeResult : ControlledPlaneCompleteness S M)
    (sphericalRegistry : ControlledSphericalResearchRegistry S M SM)
    (hSignature :
      ControlledSignaturePreservation
        SM.provenanceSignature M.observation SM.observedSignature) :
    CS12Claim S M SM := by
  rcases sphericalRegistry.witnesses with ⟨sphericalWitnesses⟩
  rcases planeResult.controlledPresentationExists with ⟨presentation⟩
  exact ⟨FCRS.ControlledSpherical.controlled_spherical_scoped_hierarchy
    S M SM planeRegistry planeResult sphericalWitnesses
    presentation.decoder hSignature⟩

end FCRS.ControlledSpherical.Theorems
```
