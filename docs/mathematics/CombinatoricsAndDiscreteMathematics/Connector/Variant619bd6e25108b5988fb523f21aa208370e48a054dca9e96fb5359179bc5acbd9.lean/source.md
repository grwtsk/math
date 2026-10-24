# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Connector.Variant619bd6e25108b5988fb523f21aa208370e48a054dca9e96fb5359179bc5acbd9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec7480571b734b7cc88ccb8e227e8bb8bbeb2354` · SHA-256 `fc46f3f9193c1ff413930895de9d416e481b99381b3d69c9e11459aabfdb130e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SoninConnectorSystem.Variantc0e2ac5923f54ad85ff450ad053366ad4c86d40e439f40fd016cd051d9e34945","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0e2ac5923f54ad85ff450ad053366ad4c86d40e439f40fd016cd051d9e34945","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SoninConnectorSystem.Variantc0e2ac5923f54ad85ff450ad053366ad4c86d40e439f40fd016cd051d9e34945","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c0e2ac5923f54ad85ff450ad053366ad4c86d40e439f40fd016cd051d9e34945","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Sonin/Connector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Sonin.Space

/-!
# Certified Sonin connectors

Connector composition is proof-bearing.  Merely sharing source and target
digests does not make two transport maps equal.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SoninConnectorSystem.Variantc0e2ac5923f54ad85ff450ad053366ad4c86d40e439f40fd016cd051d9e34945

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure SoninConnectorSystem
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (family : SoninSpaceFamily Prime) where
  connector :
    ∀ {source target : Finset Prime},
      source ⊆ target →
      family.Space source →
      family.Space target
  injective :
    ∀ {source target : Finset Prime}
      (subset : source ⊆ target),
      Function.Injective
        (connector
          (source := source)
          (target := target)
          subset)
  identity :
    ∀ (cut : Finset Prime)
      (state : family.Space cut),
      connector
          (source := cut)
          (target := cut)
          (fun _ member => member)
          state =
        state
  compose :
    ∀ {source middle target : Finset Prime}
      (sourceMiddle : source ⊆ middle)
      (middleTarget : middle ⊆ target)
      (state : family.Space source),
      connector
          (source := source)
          (target := target)
          (Finset.Subset.trans
            sourceMiddle middleTarget)
          state =
        connector
          (source := middle)
          (target := target)
          middleTarget
          (connector
            (source := source)
            (target := middle)
            sourceMiddle state)

end Mathematics.SemiLocalDefect.Sonin
```
