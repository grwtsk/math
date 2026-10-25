# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS02StableGeometricIdentity.Variantf9375956cfba2546b633d56c293cb441bd55d24e6c3cefd7ec2d3200010d8980

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `169c1464ffa2c3587dde6f1b679aa42b287cce8f` · SHA-256 `bbeb2168bc3e553680e1ff2e5336e533c97b54b9eb777aa9cf30324798a7c980`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs02StableGeometricIdentity.Varianta870bb00c468c04d045880a115f30f1417fdbd47004006f0b72f9a0fa2ef1757","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a870bb00c468c04d045880a115f30f1417fdbd47004006f0b72f9a0fa2ef1757","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cs02StableGeometricIdentity.Varianta870bb00c468c04d045880a115f30f1417fdbd47004006f0b72f9a0fa2ef1757","mathematical_subject":"Foundations.Unclassified","original_sha256":"a870bb00c468c04d045880a115f30f1417fdbd47004006f0b72f9a0fa2ef1757","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Theorems/CS02_StableGeometricIdentity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs02StableGeometricIdentity.Varianta870bb00c468c04d045880a115f30f1417fdbd47004006f0b72f9a0fa2ef1757

namespace FCRS.ControlledSpherical.Theorems

/-- CS-02 research-rule projection for versioned geometric identity. -/
theorem cs02_stableGeometricIdentity
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    CS02Claim SM := by
  rcases registry.witnesses with ⟨W⟩
  exact W.stableGeometricIdentity

end FCRS.ControlledSpherical.Theorems
```
