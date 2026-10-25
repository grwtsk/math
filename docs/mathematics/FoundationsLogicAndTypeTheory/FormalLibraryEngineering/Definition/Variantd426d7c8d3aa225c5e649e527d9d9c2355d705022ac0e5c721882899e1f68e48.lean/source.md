# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Definition.Variantd426d7c8d3aa225c5e649e527d9d9c2355d705022ac0e5c721882899e1f68e48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e17c965775938aa9196a358f01ad8fe2b6747f27` · SHA-256 `f9bde1754ddea33aa428263656bac269ac871cfb51d525fb76eb0f22b3a08f84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SoninPacketEnergy.Variant1dfcf6917673d3b3c3b78ce06c493dfcc54b489c17dfae247c03ffc2ff268b3a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1dfcf6917673d3b3c3b78ce06c493dfcc54b489c17dfae247c03ffc2ff268b3a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SoninPacketEnergy.Variant1dfcf6917673d3b3c3b78ce06c493dfcc54b489c17dfae247c03ffc2ff268b3a","mathematical_subject":"Foundations.Unclassified","original_sha256":"1dfcf6917673d3b3c3b78ce06c493dfcc54b489c17dfae247c03ffc2ff268b3a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP3/Energy/Definition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP3.PacketModel

/-!
# Sonin packet-energy primitive
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SoninPacketEnergy.Variant1dfcf6917673d3b3c3b78ce06c493dfcc54b489c17dfae247c03ffc2ff268b3a

namespace Mathematics.SemiLocalDefect.SoninCore

def soninPacketEnergy
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (S : PrimeCut U)
    (g : W.Test) :
    ℝ :=
  W.energy
    (P.projection S)
    g

end Mathematics.SemiLocalDefect.SoninCore
```
