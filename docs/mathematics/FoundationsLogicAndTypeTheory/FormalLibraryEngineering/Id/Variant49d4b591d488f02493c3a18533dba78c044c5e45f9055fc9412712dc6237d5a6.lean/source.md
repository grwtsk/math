# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Id.Variant49d4b591d488f02493c3a18533dba78c044c5e45f9055fc9412712dc6237d5a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16988c26e5c24ef85079ca4d901b85b83af5b620` · SHA-256 `b3bf15f06373d3c84c82fd37167fe33f7a69a61ea60b14fe6ff34d18cdc2be3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DigestRef.Variantb701ea759fe6acbf1dd628d487f9f97d416933855d84f872bbf7dbe9e7095af7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b701ea759fe6acbf1dd628d487f9f97d416933855d84f872bbf7dbe9e7095af7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DigestRef.Variantb701ea759fe6acbf1dd628d487f9f97d416933855d84f872bbf7dbe9e7095af7","mathematical_subject":"Foundations.Unclassified","original_sha256":"b701ea759fe6acbf1dd628d487f9f97d416933855d84f872bbf7dbe9e7095af7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/contracts/ContractElements/Id.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Composite ABI identity elements

These textual wrappers cross package boundaries without importing either
mathematical project.  They carry identity only; equality never manufactures
semantic equivalence or theorem authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DigestRef.Variantb701ea759fe6acbf1dd628d487f9f97d416933855d84f872bbf7dbe9e7095af7

namespace URSM.Contracts

structure DigestRef where
  value : String
  deriving DecidableEq, Repr, Inhabited

def DigestRef.Valid (digest : DigestRef) : Prop :=
  digest.value.length = 64 ∧
    digest.value.toList.all (fun character ↦
      "0123456789abcdef".contains character) = true

structure ProjectKey where
  projectId : String
  revisionId : String
  snapshotDigest : DigestRef
  deriving DecidableEq, Repr

structure ObjectRef where
  objectId : String
  digest : DigestRef
  deriving DecidableEq, Repr

end URSM.Contracts
```
