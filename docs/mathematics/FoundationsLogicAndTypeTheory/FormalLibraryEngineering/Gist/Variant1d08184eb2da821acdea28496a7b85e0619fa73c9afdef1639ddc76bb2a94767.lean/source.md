# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Gist.Variant1d08184eb2da821acdea28496a7b85e0619fa73c9afdef1639ddc76bb2a94767

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67cd865a872ac5ebdaead9de20fa5d6e49eaba20` · SHA-256 `f6e634ad0bc05739a8a54fa6fdf80c78b568985df67c7a9a0931fdde39e9d7cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TimeAwareGist.Variant0d94b3db7e24e51681c2a5c0c027cc350959698ac5b7a23902121ae5e1b86dc5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d94b3db7e24e51681c2a5c0c027cc350959698ac5b7a23902121ae5e1b86dc5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TimeAwareGist.Variant0d94b3db7e24e51681c2a5c0c027cc350959698ac5b7a23902121ae5e1b86dc5","mathematical_subject":"Foundations.Unclassified","original_sha256":"0d94b3db7e24e51681c2a5c0c027cc350959698ac5b7a23902121ae5e1b86dc5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Gist.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Episode


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TimeAwareGist.Variant0d94b3db7e24e51681c2a5c0c027cc350959698ac5b7a23902121ae5e1b86dc5

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure TimeAwareGist where
  sourceEpisode : MemoryVertex
  gistVertex : MemoryVertex
  resolvedTimestamp : Option String
  sourceIsEpisode : sourceEpisode.kind = MemoryKind.episode
  gistIsBridge : gistVertex.side = BoundarySide.bridge

def TimeAwareGist.validBridge (g : TimeAwareGist) : Prop :=
  g.gistVertex.kind = MemoryKind.gist ∧ g.gistVertex.side = BoundarySide.bridge

end Think.RadoProjectedModularHeatflow.MemoryCore
```
