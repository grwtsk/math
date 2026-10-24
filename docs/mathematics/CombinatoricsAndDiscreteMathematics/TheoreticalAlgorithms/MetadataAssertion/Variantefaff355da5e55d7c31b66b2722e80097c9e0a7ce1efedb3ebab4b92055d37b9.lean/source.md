# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MetadataAssertion.Variantefaff355da5e55d7c31b66b2722e80097c9e0a7ce1efedb3ebab4b92055d37b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `044a4da82e89c4d6dfb9f43cd2e5a1a81efda7cc` · SHA-256 `86908455a37d683554a0578c632436b6d317b67f78dd42f6267a681c7351c9bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MetadataAssertion.Variantc2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MetadataAssertion.Variantc2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec","mathematical_subject":"Computation.DataStructures","original_sha256":"c2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/MetadataAssertion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.MetadataType

/-! # Span-indexed typed metadata assertions -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MetadataAssertion.Variantc2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec

namespace Mathematics.SemanticTokenization

structure MetadataAssertion
    (text : TextCarrier)
    (kind : MetadataType) where
  assertionId : StableId
  span : Span text
  value : MetadataValue kind

structure SomeMetadataAssertion (text : TextCarrier) where
  kind : MetadataType
  assertion : MetadataAssertion text kind

structure MetadataProfile (text : TextCarrier) where
  assertions : List (SomeMetadataAssertion text)

end Mathematics.SemanticTokenization
```
