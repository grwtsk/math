# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Theorems.Variant843e2bc27a37b3f6dae8cba6f281f384dc9efe08f51d29271f38e567ff0dd17b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `963a75fd03b374a54789fbfc5caac688b83d8d77` · SHA-256 `f0e23d1844451d0f3639acd800e25d446284a1ef85e2044806076b70fb9c73c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.SoninPacketEnergyChainTelescope.Variant75674b0356aa2bd27fd89a82d650b5258b7efcbca1cc09612e1407a5ace9d5cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75674b0356aa2bd27fd89a82d650b5258b7efcbca1cc09612e1407a5ace9d5cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.SoninPacketEnergyChainTelescope.Variant75674b0356aa2bd27fd89a82d650b5258b7efcbca1cc09612e1407a5ace9d5cd","mathematical_subject":"Probability.Independence","original_sha256":"75674b0356aa2bd27fd89a82d650b5258b7efcbca1cc09612e1407a5ace9d5cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP3/Telescope/Theorems.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP3.Telescope.Certificate

/-!
# Packet-energy telescope theorem primitives
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.SoninPacketEnergyChainTelescope.Variant75674b0356aa2bd27fd89a82d650b5258b7efcbca1cc09612e1407a5ace9d5cd

namespace Mathematics.SemiLocalDefect.SoninCore

theorem soninPacketEnergy_chain_telescope
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (capacity : SoninCapacityCertificate P)
    {S : PrimeCut U}
    (E : CutEnumeration U S)
    (g : W.Test)
    (cert :
      PacketEnergyTelescopeCertificate
        W P capacity E g) :
    soninPacketEnergy W P S g
    =
    soninPacketEnergy
      W P (∅ : PrimeCut U) g
    +
    packetIncrementSum
      W P E g :=
  cert.energy_eq_base_add_sum

theorem packetIncrementSum_enumeration_independent
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (capacity : SoninCapacityCertificate P)
    {S : PrimeCut U}
    (E₁ E₂ : CutEnumeration U S)
    (g : W.Test)
    (cert₁ :
      PacketEnergyTelescopeCertificate
        W P capacity E₁ g)
    (cert₂ :
      PacketEnergyTelescopeCertificate
        W P capacity E₂ g) :
    packetIncrementSum W P E₁ g
    =
    packetIncrementSum W P E₂ g := by
  calc
    packetIncrementSum W P E₁ g
      =
      soninPacketEnergy W P S g
      -
      soninPacketEnergy
        W P (∅ : PrimeCut U) g :=
        cert₁.incrementSum_eq_difference
    _ =
      packetIncrementSum W P E₂ g :=
        cert₂.incrementSum_eq_difference.symm

end Mathematics.SemiLocalDefect.SoninCore
```
