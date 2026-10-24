# Complete source: GRWTSK.Topology.GeneralTopology.Certificate.Varianta2b456a29d845db3d6c49a71b2de601e1e0b3c807a56f5da9b6873a1708ab33b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd5b79f454d5107f5b544b04a2fe6bbf78ee0207` · SHA-256 `59cbb77b8d272b27054de26db57c7b210554fb7291b8181635220310d5fc4d94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TransportedRangeNesting.Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TransportedRangeNesting.Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11","mathematical_subject":"Topology.GeneralTopology","original_sha256":"f396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP1/TransportedRange/Certificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP1.TransportedRange.Definition

/-!
# Transported-range certificate primitives
-/


namespace GRWTSK.Topology.GeneralTopology.TransportedRangeNesting.Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11

namespace Mathematics.SemiLocalDefect.SoninCore

structure TransportedRangeNesting
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) :
    Prop where
  mono :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      H.transportedRange S ≤
      H.transportedRange T

structure TransportedRangeClosed
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) :
    Prop where
  isClosed :
    ∀ S,
      IsClosed
        (H.transportedRange S :
          Set H.Ambient)

structure SoninConnectorGeometry
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) :
    Prop where
  nesting :
    TransportedRangeNesting H
  closed :
    TransportedRangeClosed H

theorem transportedRange_mono
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (cert : TransportedRangeNesting H)
    {S T : PrimeCut U}
    (hST : S ⊆ T) :
    H.transportedRange S ≤
    H.transportedRange T :=
  cert.mono hST

theorem transportedRange_isClosed
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (cert : TransportedRangeClosed H)
    (S : PrimeCut U) :
    IsClosed
      (H.transportedRange S :
        Set H.Ambient) :=
  cert.isClosed S

end Mathematics.SemiLocalDefect.SoninCore
```
