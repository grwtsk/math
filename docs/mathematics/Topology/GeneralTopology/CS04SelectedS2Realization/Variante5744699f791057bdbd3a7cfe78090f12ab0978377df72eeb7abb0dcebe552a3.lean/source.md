# Complete source: GRWTSK.Topology.GeneralTopology.CS04SelectedS2Realization.Variante5744699f791057bdbd3a7cfe78090f12ab0978377df72eeb7abb0dcebe552a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ec02b6b1acfc22d9b86d725a2fae957edbad504` · SHA-256 `1275b8c6ad1b7a415918494f129387751f44234cf5ccf1667b3cab4c40c77b72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Cs04SelectedS2Realization.Variant56603136daf72c729112a977df3441598810d9d48ea51eb9f02e57af0955ceaa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"56603136daf72c729112a977df3441598810d9d48ea51eb9f02e57af0955ceaa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Cs04SelectedS2Realization.Variant56603136daf72c729112a977df3441598810d9d48ea51eb9f02e57af0955ceaa","mathematical_subject":"Topology.GeneralTopology","original_sha256":"56603136daf72c729112a977df3441598810d9d48ea51eb9f02e57af0955ceaa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Theorems/CS04_SelectedS2Realization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Registry


namespace GRWTSK.Topology.GeneralTopology.Cs04SelectedS2Realization.Variant56603136daf72c729112a977df3441598810d9d48ea51eb9f02e57af0955ceaa

namespace FCRS.ControlledSpherical.Theorems

/--
CS-04 projects the branch-relative `S²` claim.  When `S²` is selected this
is its compactness assertion; an `S³` selection creates no `S²` witness.
-/
theorem cs04_selectedS2Realization
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS04Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs04Claim⟩

end FCRS.ControlledSpherical.Theorems
```
