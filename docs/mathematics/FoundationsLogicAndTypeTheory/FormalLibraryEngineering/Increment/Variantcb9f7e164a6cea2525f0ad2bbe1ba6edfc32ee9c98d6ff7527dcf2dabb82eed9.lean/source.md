# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Increment.Variantcb9f7e164a6cea2525f0ad2bbe1ba6edfc32ee9c98d6ff7527dcf2dabb82eed9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `838ea727025b1db7da24f25e8c7b3cc7f278dade` · SHA-256 `7ab0a69e5eb83cd7a387595f319d94dbefad837b0efa76bef4c492bd3a03fcdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SoninPacketEnergyIncrementEqNormSq.Variant038f17c2f28dc2b4b8b036eeb550f0257eabc48208863eac0916e4ee9e725595","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"038f17c2f28dc2b4b8b036eeb550f0257eabc48208863eac0916e4ee9e725595","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SoninPacketEnergyIncrementEqNormSq.Variant038f17c2f28dc2b4b8b036eeb550f0257eabc48208863eac0916e4ee9e725595","mathematical_subject":"Foundations.Unclassified","original_sha256":"038f17c2f28dc2b4b8b036eeb550f0257eabc48208863eac0916e4ee9e725595","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP3/Energy/Increment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP3.Energy.Definition

/-!
# One-prime packet-energy increment primitives
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SoninPacketEnergyIncrementEqNormSq.Variant038f17c2f28dc2b4b8b036eeb550f0257eabc48208863eac0916e4ee9e725595

namespace Mathematics.SemiLocalDefect.SoninCore

theorem soninPacketEnergy_increment_eq_normSq
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S)
    (g : W.Test) :
    soninPacketEnergy
      W P (insert p S) g
    -
    soninPacketEnergy
      W P S g
    =
    W.projectedNormSq
      (soninIncrement P S p)
      g := by
  change
    W.energy
      (P.projection (insert p S))
      g
    -
    W.energy
      (P.projection S)
      g
    =
    W.projectedNormSq
      (soninIncrement P S p)
      g
  calc
    W.energy
        (P.projection (insert p S))
        g
      -
      W.energy
        (P.projection S)
        g
      =
      W.energy
        (soninIncrement P S p)
        g := by
          exact
            (W.energy_sub
              (P.projection (insert p S))
              (P.projection S)
              g).symm
    _ =
      W.projectedNormSq
        (soninIncrement P S p)
        g := by
          exact
            W.projection_energy_eq
              (soninIncrement P S p)
              g
              (soninIncrement_isOrthogonalProjection
                cert S p hp)

theorem soninPacketEnergy_increment_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S)
    (g : W.Test) :
    0 ≤
      soninPacketEnergy
        W P (insert p S) g
      -
      soninPacketEnergy
        W P S g := by
  rw [
    soninPacketEnergy_increment_eq_normSq
      W P cert S p hp g
  ]
  exact
    W.projectedNormSq_nonnegative
      (soninIncrement P S p)
      g

end Mathematics.SemiLocalDefect.SoninCore
```
