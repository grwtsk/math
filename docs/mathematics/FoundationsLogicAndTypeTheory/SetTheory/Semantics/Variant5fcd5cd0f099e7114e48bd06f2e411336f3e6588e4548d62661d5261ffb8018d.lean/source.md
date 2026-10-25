# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Semantics.Variant5fcd5cd0f099e7114e48bd06f2e411336f3e6588e4548d62661d5261ffb8018d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f55afc27b6ecb20292b9ae4b0eea5598d608b190` · SHA-256 `590433513307588eb87b8017c2c64d37c52f0527d6bb550592a52ed4da37b168`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CompleteNormalizationProfile.Variantda378270b9b6a6ebe4d46c2efd9902ac0b3d3b00402589fe27cbac6c2683ca19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da378270b9b6a6ebe4d46c2efd9902ac0b3d3b00402589fe27cbac6c2683ca19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.CompleteNormalizationProfile.Variantda378270b9b6a6ebe4d46c2efd9902ac0b3d3b00402589fe27cbac6c2683ca19","mathematical_subject":"Logic.SetTheory","original_sha256":"da378270b9b6a6ebe4d46c2efd9902ac0b3d3b00402589fe27cbac6c2683ca19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/OrdinalTally/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.OrdinalTally.Profile

/-!
# Profile-relative ordinal semantics

Semantic equality is exposed separately from executable code equality.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CompleteNormalizationProfile.Variantda378270b9b6a6ebe4d46c2efd9902ac0b3d3b00402589fe27cbac6c2683ca19

namespace Mathematics.StratifiedBoundary

def OrdinalSemanticallyEqual
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    (left right : OrdinalTally) : Prop :=
  profile.denotes left = profile.denotes right

structure CompleteNormalizationProfile
    (Semantic : Type u)
    extends OrdinalNotationProfile Semantic where
  normalizedEqualityComplete :
    ∀ {left right},
      admits left →
      admits right →
      normalize left = normalize right ↔
        denotes left = denotes right

end Mathematics.StratifiedBoundary
```
