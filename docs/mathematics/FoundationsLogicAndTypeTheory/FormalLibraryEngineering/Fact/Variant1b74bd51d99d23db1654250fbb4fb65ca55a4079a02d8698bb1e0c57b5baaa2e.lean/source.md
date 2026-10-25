# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fact.Variant1b74bd51d99d23db1654250fbb4fb65ca55a4079a02d8698bb1e0c57b5baaa2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c15b780fd6efa69e9046aff4569274dd4b2a3ea0` · SHA-256 `9abccfa044f84bc24a06e411aac02b41252bc504bf46eb985b73a71ed2b73d50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TimeScope.Variant3049736702ff04758ca032800fd7f7739497a2c0a69b64b804472b77c80fcca3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3049736702ff04758ca032800fd7f7739497a2c0a69b64b804472b77c80fcca3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TimeScope.Variant3049736702ff04758ca032800fd7f7739497a2c0a69b64b804472b77c80fcca3","mathematical_subject":"Foundations.Unclassified","original_sha256":"3049736702ff04758ca032800fd7f7739497a2c0a69b64b804472b77c80fcca3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Fact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Gist


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TimeScope.Variant3049736702ff04758ca032800fd7f7739497a2c0a69b64b804472b77c80fcca3

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure TimeScope where
  validAt? : Option String
  invalidAt? : Option String
  createdAt? : Option String
  expiredAt? : Option String
deriving DecidableEq, Repr

structure TimeScopedFact where
  subject : String
  predicate : String
  object : String
  vertex : MemoryVertex
  scope : TimeScope
  confidence : Nat
  factVertex : vertex.kind = MemoryKind.fact

def TimeScopedFact.tripleKey (f : TimeScopedFact) : String :=
  f.subject ++ "|" ++ f.predicate ++ "|" ++ f.object

end Think.RadoProjectedModularHeatflow.MemoryCore
```
