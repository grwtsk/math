# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeProjection.Variant06524dc332130b1d4a6328c3de05f15a4494071ac853535b64020f93a9b9533c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2dd833b968d1d72aada8ab30e71531abbaa2dd7` · SHA-256 `95755cda8bcefc88466e1c7de848d5fae8f765c9a0bdb2f6c6a91199203f3d8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForestReplayCertificate.Variantc96b0398ad5780d0a341106ab4526c747394b7f707a0b7bf59bfdf2b09fb447e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c96b0398ad5780d0a341106ab4526c747394b7f707a0b7bf59bfdf2b09fb447e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ForestReplayCertificate.Variantc96b0398ad5780d0a341106ab4526c747394b7f707a0b7bf59bfdf2b09fb447e","mathematical_subject":"Foundations.Unclassified","original_sha256":"c96b0398ad5780d0a341106ab4526c747394b7f707a0b7bf59bfdf2b09fb447e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Memory/TreeProjection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Noeoueue.Memory.TypeGraph


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForestReplayCertificate.Variantc96b0398ad5780d0a341106ab4526c747394b7f707a0b7bf59bfdf2b09fb447e

namespace Noeoueue.TypeMemory

structure ForestReplayCertificate where
  canonicalDigest : String
  treeDigest : String
  nonTreeDigest : String
  hyperedgeDigest : String
  replayDigest : String

/-- `type-memory://noeoueue/tree-replay@1`: replay is equality to the canonical digest,
not authority transferred to the filesystem. -/
def Replays (c : ForestReplayCertificate) : Prop := c.replayDigest = c.canonicalDigest

end Noeoueue.TypeMemory
```
