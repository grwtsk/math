# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certificate.Variant4918aba30413b623e76fd02ee2013180e2b3ae893d2631b66668bfca72744973

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b87c7db76ce66b06e0308b57b9ee042c5af84d4b` · SHA-256 `06bf0ec5fdb9090ba7c2a5893dcb530148cef439495e4ba7303968fe072f9e48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PacketEnergyTelescopeCertificate.Variante4141968d240dfd899873fc5af608442d5a58739bddd77dde683f9c294aa8a3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4141968d240dfd899873fc5af608442d5a58739bddd77dde683f9c294aa8a3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PacketEnergyTelescopeCertificate.Variante4141968d240dfd899873fc5af608442d5a58739bddd77dde683f9c294aa8a3e","mathematical_subject":"Foundations.Unclassified","original_sha256":"e4141968d240dfd899873fc5af608442d5a58739bddd77dde683f9c294aa8a3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP3/Telescope/Certificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP3.Telescope.Sum

/-!
# Packet-energy telescope certificate primitive
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PacketEnergyTelescopeCertificate.Variante4141968d240dfd899873fc5af608442d5a58739bddd77dde683f9c294aa8a3e

namespace Mathematics.SemiLocalDefect.SoninCore

structure PacketEnergyTelescopeCertificate
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (_capacity : SoninCapacityCertificate P)
    {S : PrimeCut U}
    (E : CutEnumeration U S)
    (g : W.Test) :
    Prop where
  every_step_fresh :
    ∀ i : Fin E.order.length,
      E.order.get i ∉
        E.prefixCut i.val
  energy_eq_base_add_sum :
    soninPacketEnergy W P S g
    =
    soninPacketEnergy
      W P (∅ : PrimeCut U) g
    +
    packetIncrementSum
      W P E g
  incrementSum_eq_difference :
    packetIncrementSum
      W P E g
    =
    soninPacketEnergy W P S g
    -
    soninPacketEnergy
      W P (∅ : PrimeCut U) g

end Mathematics.SemiLocalDefect.SoninCore
```
