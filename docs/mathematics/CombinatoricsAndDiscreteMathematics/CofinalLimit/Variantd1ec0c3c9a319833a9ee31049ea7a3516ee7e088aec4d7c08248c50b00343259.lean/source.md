# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CofinalLimit.Variantd1ec0c3c9a319833a9ee31049ea7a3516ee7e088aec4d7c08248c50b00343259

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96bba691855d3514a6579839c62df769a6b52693` · SHA-256 `2b6082cf56202ef5ec338b34eb9cd15f963e6d4eb0cd8a36fb7ebc7d8344b418`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CofinalCutSequence.Variantc5a07f18de6d2137aa4fc14e46dc283dadc176d1897851d040cd1ff64bfab2eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5a07f18de6d2137aa4fc14e46dc283dadc176d1897851d040cd1ff64bfab2eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CofinalCutSequence.Variantc5a07f18de6d2137aa4fc14e46dc283dadc176d1897851d040cd1ff64bfab2eb","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c5a07f18de6d2137aa4fc14e46dc283dadc176d1897851d040cd1ff64bfab2eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Trace/CofinalLimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Trace.Energy

/-!
# Cofinal packet-energy limits

The finite monotone family is distinguished from its certified cofinal limit.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CofinalCutSequence.Variantc5a07f18de6d2137aa4fc14e46dc283dadc176d1897851d040cd1ff64bfab2eb

namespace Mathematics.SemiLocalDefect.Trace

universe uPrime uTest

structure CofinalCutSequence
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  cut : Nat → Finset Prime
  monotone :
    ∀ index,
      cut index ⊆ cut (index + 1)
  cofinal :
    ∀ prime,
      ∃ threshold,
        ∀ index,
          threshold ≤ index →
          prime ∈ cut index

structure PacketEnergyCofinalLimit
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (sequence : CofinalCutSequence Prime) where
  limitEnergy : Test → ℝ
  epsilonConvergence :
    ∀ test epsilon,
      0 < epsilon →
      ∃ threshold,
        ∀ index,
          threshold ≤ index →
          |packetEnergy capacity packet
              (sequence.cut index) test -
            limitEnergy test| < epsilon
  nonnegative :
    ∀ test,
      0 ≤ limitEnergy test
  boundedByPacket :
    ∀ test,
      limitEnergy test ≤
        packet.packetNormSq test
  digest : CertificateDigest

end Mathematics.SemiLocalDefect.Trace
```
