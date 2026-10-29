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
