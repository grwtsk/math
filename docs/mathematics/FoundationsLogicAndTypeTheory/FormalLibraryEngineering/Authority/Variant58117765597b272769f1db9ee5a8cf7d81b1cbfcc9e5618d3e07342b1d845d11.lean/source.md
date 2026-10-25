# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variant58117765597b272769f1db9ee5a8cf7d81b1cbfcc9e5618d3e07342b1d845d11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ad8e366bfa45184084b8edc6938f62b4e52b128` · SHA-256 `ca3f27dee2e9602518a6928724bedb850248da6389c0619c2c3eb884acfb980e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PlaneAuthority.Variant236cfcd256b813b15d72d0a3a652221dba906ef70cf4397bee722a9f7a442b16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"236cfcd256b813b15d72d0a3a652221dba906ef70cf4397bee722a9f7a442b16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PlaneAuthority.Variant236cfcd256b813b15d72d0a3a652221dba906ef70cf4397bee722a9f7a442b16","mathematical_subject":"Foundations.Unclassified","original_sha256":"236cfcd256b813b15d72d0a3a652221dba906ef70cf4397bee722a9f7a442b16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/contracts/ContractElements/Authority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-! # Closed authority and geometry vocabularies for square-plane elements. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PlaneAuthority.Variant236cfcd256b813b15d72d0a3a652221dba906ef70cf4397bee722a9f7a442b16

namespace URSM.Contracts

inductive PlaneAuthority
  | kernelTheorem
  | reviewedImportedTheorem
  | checkedBuildEvidence
  | checkedRuntimeEvidence
  | committedPolicyDecision
  | navigationOnly
  deriving DecidableEq, Repr

inductive PlaneShape
  | diagonal
  | directed
  | symmetric
  | equivalenceCandidate
  | arbitrary
  deriving DecidableEq, Repr

structure PlaneDescriptor where
  id : String
  authority : PlaneAuthority
  shape : PlaneShape
  schemaVersion : Nat
  meaningDigest : String
  deriving DecidableEq, Repr

end URSM.Contracts
```
