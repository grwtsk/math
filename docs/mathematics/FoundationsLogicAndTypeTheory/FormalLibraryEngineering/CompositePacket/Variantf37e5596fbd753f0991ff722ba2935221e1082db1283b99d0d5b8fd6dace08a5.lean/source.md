# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompositePacket.Variantf37e5596fbd753f0991ff722ba2935221e1082db1283b99d0d5b8fd6dace08a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1a06d0cbc6e193858874dad65053e48d6ddea60` · SHA-256 `147a7db919df058e337ac7f29c6791ac16495155de1287beb8d7b63b11d76e06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompositeObjectRoots.Variant92eae444a2553e0d5b8bde223ae5466c3d448b6810e3bf0310311a2882e03487","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92eae444a2553e0d5b8bde223ae5466c3d448b6810e3bf0310311a2882e03487","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CompositeObjectRoots.Variant92eae444a2553e0d5b8bde223ae5466c3d448b6810e3bf0310311a2882e03487","mathematical_subject":"Foundations.Unclassified","original_sha256":"92eae444a2553e0d5b8bde223ae5466c3d448b6810e3bf0310311a2882e03487","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/contracts/ContractElements/CompositePacket.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ContractElements.ProjectExport

/-!
# Composite packet bindings

These structures bind metadata and content roots.  Packed bytes and activation
remain Rust-owned and are therefore not constructors in this package.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompositeObjectRoots.Variant92eae444a2553e0d5b8bde223ae5466c3d448b6810e3bf0310311a2882e03487

namespace URSM.Contracts

structure CompositeObjectRoots where
  projectExports : ObjectRef
  theoremCertificates : ObjectRef
  transportCertificates : ObjectRef
  buildReceipts : ObjectRef
  kernelChecks : ObjectRef
  runtimeEvidence : ObjectRef
  residues : ObjectRef
  deriving DecidableEq, Repr

structure CompositePacketBinding where
  schemaVersion : Nat
  compositeSnapshotId : DigestRef
  parentCompositeSnapshotId : Option DigestRef
  leanToolchainDigest : DigestRef
  lakeGraphDigest : DigestRef
  projectTableDigest : DigestRef
  slotMapDigest : DigestRef
  objectRoots : CompositeObjectRoots
  packetDigest : DigestRef
  deriving DecidableEq, Repr

end URSM.Contracts
```
