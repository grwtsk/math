# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CircleClosure.Variant88b935cf8024e0a468ec0f260dea6d324e19d483c0e27ff2cc72fce2fa68b48e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fb41c6dcc97de42d756aab3badf74c7c02061e1` · SHA-256 `bb8b1a79959113761fad52c913af7c78388c4a36a0b0acfd6d8062b36c7bc573`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CircleClosureCertificate.Variantbd1af326f3f93a28e208c1351fb0f3d911acd323208f44b095e3788e475b29ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd1af326f3f93a28e208c1351fb0f3d911acd323208f44b095e3788e475b29ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CircleClosureCertificate.Variantbd1af326f3f93a28e208c1351fb0f3d911acd323208f44b095e3788e475b29ae","mathematical_subject":"Foundations.Unclassified","original_sha256":"bd1af326f3f93a28e208c1351fb0f3d911acd323208f44b095e3788e475b29ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Orbit/CircleClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Orbit.Phase

/-! # Certified circle-closure claims -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CircleClosureCertificate.Variantbd1af326f3f93a28e208c1351fb0f3d911acd323208f44b095e3788e475b29ae

namespace Mathematics.Orbit

structure CircleClosureCertificate where
  phaseDigest : Digest
  irrationalityCertificate : CertificateId
  deriving DecidableEq, Repr

def CircleClosureCertificate.status (_ : CircleClosureCertificate) : Status :=
  .denseCircle

end Mathematics.Orbit
```
