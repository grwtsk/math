# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variantc6091d7d39c8d9a10ce324e5352b7172982f8e6bf7c3a8c9dc57e43f17f7d16b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b351dfbd3827737ddb57308beca6e6a60f59e0c` · SHA-256 `ba77ce79278605e972523f8f47a7f7a78f053ab18976fb8aefc751fc7a7b008f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AccessCapability.Variant7ae55fe0b5830f550521ceb0ac80d63b775cd777af4d8728d5361ea0d9dc6e86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ae55fe0b5830f550521ceb0ac80d63b775cd777af4d8728d5361ea0d9dc6e86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AccessCapability.Variant7ae55fe0b5830f550521ceb0ac80d63b775cd777af4d8728d5361ea0d9dc6e86","mathematical_subject":"Foundations.Unclassified","original_sha256":"7ae55fe0b5830f550521ceb0ac80d63b775cd777af4d8728d5361ea0d9dc6e86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Authority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.NeighborEnumeration

/-!
# Access authority

Access authority grants observation, traversal, sampling, or proposal
capabilities.  It contains no owner-commit token and no trusted conversion to
one.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AccessCapability.Variant7ae55fe0b5830f550521ceb0ac80d63b775cd777af4d8728d5361ea0d9dc6e86

namespace Mathematics.GraphAccess

inductive AccessCapability
  | observe
  | traverse
  | sample
  | propose
deriving DecidableEq, Ord, Repr

inductive AccessAuthority
  | observe
  | traverse
  | sample
  | propose
deriving DecidableEq, Repr

def AccessAuthority.grants :
    AccessAuthority → AccessCapability → Bool
  | .observe, .observe => true
  | .traverse, .observe => true
  | .traverse, .traverse => true
  | .sample, .observe => true
  | .sample, .sample => true
  | .propose, .observe => true
  | .propose, .traverse => true
  | .propose, .propose => true
  | _, _ => false

end Mathematics.GraphAccess
```
