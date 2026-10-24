# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Size.Variant26ca585f2bae0e1ceffe25250fbcdeed2e244e5cd51fa0af1280b0a20c14809a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9951525e3b3bded5eae9f74d6fec14eb492ead50` · SHA-256 `3080f19127edccdb7b93b218a812ec4622e601f3aa9d3fe9aac7130066256278`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeNodeCount.Variant7372e2ee356244fe6b738f7d15609c4ce7e2c43bcd0f66f241468870201920c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7372e2ee356244fe6b738f7d15609c4ce7e2c43bcd0f66f241468870201920c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TreeNodeCount.Variant7372e2ee356244fe6b738f7d15609c4ce7e2c43bcd0f66f241468870201920c2","mathematical_subject":"Foundations.Unclassified","original_sha256":"7372e2ee356244fe6b738f7d15609c4ce7e2c43bcd0f66f241468870201920c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree/Size.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Tree


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeNodeCount.Variant7372e2ee356244fe6b738f7d15609c4ce7e2c43bcd0f66f241468870201920c2

namespace Boolean

universe u

/-- Number of syntax nodes in a Boolean tree. -/
def Tree.nodeCount : Tree α → Nat
  | .var _ => 1
  | .falsum => 1
  | .truth => 1
  | .neg p => Tree.nodeCount p + 1
  | .conj p q => Tree.nodeCount p + Tree.nodeCount q + 1
  | .disj p q => Tree.nodeCount p + Tree.nodeCount q + 1
  | .impl p q => Tree.nodeCount p + Tree.nodeCount q + 1
  | .eqv p q => Tree.nodeCount p + Tree.nodeCount q + 1
  | .nand p q => Tree.nodeCount p + Tree.nodeCount q + 1

end Boolean
```
