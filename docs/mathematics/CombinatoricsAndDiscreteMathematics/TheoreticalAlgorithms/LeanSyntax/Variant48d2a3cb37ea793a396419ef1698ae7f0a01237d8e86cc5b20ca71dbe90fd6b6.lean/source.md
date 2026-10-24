# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeanSyntax.Variant48d2a3cb37ea793a396419ef1698ae7f0a01237d8e86cc5b20ca71dbe90fd6b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1437d3c09ae0c6863f0af58c0178c76ff3fe7e65` · SHA-256 `a9065675097bff3de7330264b34841e158d1901d6e6ca76670fc44af5c05ea1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ParseStatus.Varianteb011ad2dac3304db91be80b6a697c1e8cd16570a1951e5342544e5a569d7be3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb011ad2dac3304db91be80b6a697c1e8cd16570a1951e5342544e5a569d7be3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ParseStatus.Varianteb011ad2dac3304db91be80b6a697c1e8cd16570a1951e5342544e5a569d7be3","mathematical_subject":"Computation.DataStructures","original_sha256":"eb011ad2dac3304db91be80b6a697c1e8cd16570a1951e5342544e5a569d7be3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/LeanSyntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Source

/-! # Lean syntax capture -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ParseStatus.Varianteb011ad2dac3304db91be80b6a697c1e8cd16570a1951e5342544e5a569d7be3

namespace Mathematics.Ingestion

inductive ParseStatus
  | parsed
  | partiallyParsed
  | failed
  deriving DecidableEq, Repr

/-- Parser output and diagnostics are both retained. -/
structure LeanSyntaxCapture where
  source : SourceUnit
  status : ParseStatus
  syntaxTreeDigest : Option Digest
  diagnosticArtifactIds : List StableId
  parserVersionDigest : Digest
  source_is_lean : source.language = .lean
  deriving Repr

end Mathematics.Ingestion
```
