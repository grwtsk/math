# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RangeProjection.Variant5b4233bc6a5b42910bb497addf4ad876da263878010d46d3a6dd886818228258

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8068400aa2d27f8c7b308a6597c60d9ee95a6dc7` · SHA-256 `8e0f5978a2cfb53f0a51459379ae37ceda16b148c54008b0300449400d2de50f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHorizonRangeProjection.Variantd80ee2cebc65daee089609297c0542946daa320c5ccaabfcc7e183c49a2149b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d80ee2cebc65daee089609297c0542946daa320c5ccaabfcc7e183c49a2149b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteHorizonRangeProjection.Variantd80ee2cebc65daee089609297c0542946daa320c5ccaabfcc7e183c49a2149b7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d80ee2cebc65daee089609297c0542946daa320c5ccaabfcc7e183c49a2149b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Sonin/RangeProjection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Sonin.FiniteHorizon
import Mathematics.SemiLocalDefect.Hardy.BlockDecomposition

/-!
# Finite-horizon range projections

Projection order realizes nested Sonin images at a fixed horizon.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHorizonRangeProjection.Variantd80ee2cebc65daee089609297c0542946daa320c5ccaabfcc7e183c49a2149b7

namespace Mathematics.SemiLocalDefect.Sonin

open Mathematics.SemiLocalDefect.Hardy

universe uPrime uSpace

structure FiniteHorizonRangeProjection
    (model : OperatorModel)
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    (connectors : SoninConnectorSystem family) where
  operations : OperatorComposition model
  projection :
    Finset Prime → Finset Prime → model.Operator
  selfAdjoint :
    ∀ source horizon,
      model.SelfAdjoint (projection source horizon)
  nonnegative :
    ∀ source horizon,
      model.Nonnegative (projection source horizon)
  idempotent :
    ∀ source horizon,
      operations.compose
          (projection source horizon)
          (projection source horizon) =
        projection source horizon
  boundedByIdentity :
    ∀ source horizon,
      OperatorLE model
        (projection source horizon)
        model.identity
  monotone :
    ∀ {source target horizon},
      source ⊆ target →
      target ⊆ horizon →
      OperatorLE model
        (projection source horizon)
        (projection target horizon)
  realizesImage : Prop
  realizesImageProof : realizesImage
  digest : RealizationDigest

end Mathematics.SemiLocalDefect.Sonin
```
