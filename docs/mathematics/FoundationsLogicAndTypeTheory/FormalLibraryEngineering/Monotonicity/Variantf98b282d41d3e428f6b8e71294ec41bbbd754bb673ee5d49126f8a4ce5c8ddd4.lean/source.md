# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Monotonicity.Variantf98b282d41d3e428f6b8e71294ec41bbbd754bb673ee5d49126f8a4ce5c8ddd4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85d7327d6ba54be81192f406687c2e6437b40dbc` · SHA-256 `2c24e05b30644b2089c7a370dafa27c0ba7f3f04101a6be9f930011e1bbcbf4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SoninPacketEnergyMono.Variant8548b0af26107d53d65d36945b7eb16c6310e463f271dc2aa5c98d8f4ba068e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8548b0af26107d53d65d36945b7eb16c6310e463f271dc2aa5c98d8f4ba068e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SoninPacketEnergyMono.Variant8548b0af26107d53d65d36945b7eb16c6310e463f271dc2aa5c98d8f4ba068e6","mathematical_subject":"Foundations.Unclassified","original_sha256":"8548b0af26107d53d65d36945b7eb16c6310e463f271dc2aa5c98d8f4ba068e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP3/Energy/Monotonicity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP3.Energy.Definition

/-!
# Packet-energy monotonicity primitive
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SoninPacketEnergyMono.Variant8548b0af26107d53d65d36945b7eb16c6310e463f271dc2aa5c98d8f4ba068e6

namespace Mathematics.SemiLocalDefect.SoninCore

theorem soninPacketEnergy_mono
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (cert : SoninCapacityCertificate P)
    {S T : PrimeCut U}
    (hST : S ⊆ T)
    (g : W.Test) :
    soninPacketEnergy W P S g
    ≤
    soninPacketEnergy W P T g := by
  change
    W.energy (P.projection S) g
    ≤
    W.energy (P.projection T) g
  have hProjection :
      OrthogonalProjectionCertificate
        (projectionDifference P S T) :=
    cert.difference_isProjection hST
  have hDifferenceNonnegative :
      0 ≤
      W.energy
        (projectionDifference P S T)
        g := by
    rw [
      W.projection_energy_eq
        (projectionDifference P S T)
        g
        hProjection
    ]
    exact
      W.projectedNormSq_nonnegative
        (projectionDifference P S T)
        g
  have hSub :
      W.energy
        (projectionDifference P S T)
        g
      =
      W.energy (P.projection T) g
      -
      W.energy (P.projection S) g := by
    exact
      W.energy_sub
        (P.projection T)
        (P.projection S)
        g
  rw [hSub] at hDifferenceNonnegative
  exact sub_nonneg.mp hDifferenceNonnegative

end Mathematics.SemiLocalDefect.SoninCore
```
