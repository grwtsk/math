# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHorizon.Variantce6dc83d44a836a3059b683ba32c000336505c77dc1bb82103654bcbdd2e8dfc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4ea16d5c294b013695a8c2d4b5c75b40de9969d` · SHA-256 `2a90f1fc602897a08a9da9745c48ff418baa9320f708ef86fdcbb4097a752451`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHorizonImage.Variant0a3e556c3e76571c9e698dc1bb0ef2ae953cbb75eea08a805f68f47770bbdcd7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a3e556c3e76571c9e698dc1bb0ef2ae953cbb75eea08a805f68f47770bbdcd7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteHorizonImage.Variant0a3e556c3e76571c9e698dc1bb0ef2ae953cbb75eea08a805f68f47770bbdcd7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0a3e556c3e76571c9e698dc1bb0ef2ae953cbb75eea08a805f68f47770bbdcd7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Sonin/FiniteHorizon.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Sonin.Connector

/-!
# Finite-horizon Sonin images

Every image is formed inside one declared top cut.  No global compatible
metric is assumed.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHorizonImage.Variant0a3e556c3e76571c9e698dc1bb0ef2ae953cbb75eea08a805f68f47770bbdcd7

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure FiniteHorizonImage
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    (connectors : SoninConnectorSystem family)
    (source horizon : Finset Prime) where
  sourceSubset : source ⊆ horizon
  member : family.Space horizon → Prop
  member_iff :
    ∀ state,
      member state ↔
        ∃ sourceState,
          connectors.connector sourceSubset sourceState =
            state

structure FiniteHorizonFiltration
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    (connectors : SoninConnectorSystem family) where
  image :
    ∀ source horizon,
      FiniteHorizonImage
        connectors source horizon
  nested :
    ∀ {source target horizon}
      (_sourceTarget : source ⊆ target)
      (_targetHorizon : target ⊆ horizon)
      (state : family.Space horizon),
      (image source horizon).member state →
        (image target horizon).member state

end Mathematics.SemiLocalDefect.Sonin
```
