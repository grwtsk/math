# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExactLDL.Variantb46f0616d876496ecf5313c8ea9d8c3098bae0ea2328eb01ff95da033281feeb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f27f135c2613e09209efce20bafeb84d0935764` · SHA-256 `653118748bc7161ef38a0030d230bce60b7b70e723cdd427daaa74c9183f8e66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExactLDLDescriptor.Variant0afe4dc09a8440504b1ce5ce3a93586eded003159846b026f91af5ac490edc88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0afe4dc09a8440504b1ce5ce3a93586eded003159846b026f91af5ac490edc88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ExactLDLDescriptor.Variant0afe4dc09a8440504b1ce5ce3a93586eded003159846b026f91af5ac490edc88","mathematical_subject":"Computation.DataStructures","original_sha256":"0afe4dc09a8440504b1ce5ce3a93586eded003159846b026f91af5ac490edc88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/QSeries/ExactLDL.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExactLDLDescriptor.Variant0afe4dc09a8440504b1ce5ce3a93586eded003159846b026f91af5ac490edc88

namespace Mathematics.SemiLocalDefect.QSeries

structure ExactLDLDescriptor where
  decompositionRef : String
  matrixRef : String
  pivotCertificateRefs : List String
  status : OpenBridgeStatus :=
    openBridgeStatus .exactLdlCertificate

end Mathematics.SemiLocalDefect.QSeries
```
