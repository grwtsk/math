# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF09ClosedCoordinateSeparation.Variant1f161d00d7237b9f87cb9a798d0962d23c2afd6d29ddf16a0c63b88e29180f89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b270dc4c82453c689a3adb6bcf113b705571262` · SHA-256 `acc47d3811b846a501ce43eeab65035e751673dfd9f158fe73ce283d89408045`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf09ClosedCoordinateSeparation.Variantc6ee9f71602dd910f04956566317407b49f84b50b425af6d951c8f6e34c9c726","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6ee9f71602dd910f04956566317407b49f84b50b425af6d951c8f6e34c9c726","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cf09ClosedCoordinateSeparation.Variantc6ee9f71602dd910f04956566317407b49f84b50b425af6d951c8f6e34c9c726","mathematical_subject":"Foundations.Unclassified","original_sha256":"c6ee9f71602dd910f04956566317407b49f84b50b425af6d951c8f6e34c9c726","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/Theorems/CF09_ClosedCoordinateSeparation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf09ClosedCoordinateSeparation.Variantc6ee9f71602dd910f04956566317407b49f84b50b425af6d951c8f6e34c9c726

namespace FCRS.ControlledPlane.Theorems

/-- CF-09 research-rule projection for closed-coordinate separation. -/
theorem cf09_closedCoordinateSeparation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF09Claim S M :=
  registry.cf09

end FCRS.ControlledPlane.Theorems
```
