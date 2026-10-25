# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bounds.Variant3f21d1d850539d06f81ef12dddfc55e62a82536fc56385008ea0115ac86f35a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1d216d61e10173ab6ecd02cd2180a9d2b9bc9f0` · SHA-256 `060cd55bffe4ff1f86a2038173a3bc7ef30c59674b99b94a561c67e1ae5fedc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SoninPacketEnergyNonnegative.Variantf4cbf6d09788b0e6a3c257f782e2222474827b639c46368b7972811629973544","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4cbf6d09788b0e6a3c257f782e2222474827b639c46368b7972811629973544","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SoninPacketEnergyNonnegative.Variantf4cbf6d09788b0e6a3c257f782e2222474827b639c46368b7972811629973544","mathematical_subject":"Foundations.Unclassified","original_sha256":"f4cbf6d09788b0e6a3c257f782e2222474827b639c46368b7972811629973544","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP3/Energy/Bounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP3.Energy.Definition

/-!
# Packet-energy bound primitives
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SoninPacketEnergyNonnegative.Variantf4cbf6d09788b0e6a3c257f782e2222474827b639c46368b7972811629973544

namespace Mathematics.SemiLocalDefect.SoninCore

theorem soninPacketEnergy_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (S : PrimeCut U)
    (g : W.Test) :
    0 ≤ soninPacketEnergy W P S g := by
  unfold soninPacketEnergy
  rw [
    W.projection_energy_eq
      (P.projection S)
      g
      (P.projection_isProjection S)
  ]
  exact
    W.projectedNormSq_nonnegative
      (P.projection S)
      g

theorem soninPacketEnergy_le_packetNormSq
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (S : PrimeCut U)
    (g : W.Test) :
    soninPacketEnergy W P S g
    ≤
    W.packetNormSq g := by
  unfold soninPacketEnergy
  rw [
    W.projection_energy_eq
      (P.projection S)
      g
      (P.projection_isProjection S)
  ]
  exact
    W.projectedNormSq_le_packetNormSq
      (P.projection S)
      g
      (P.projection_isProjection S)

end Mathematics.SemiLocalDefect.SoninCore
```
