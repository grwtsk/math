# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Validation.Variante02c6632a754c0424c153ee34b7ea708316d62456ff380490842bc5364ec37b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd56db66de43a526dd034e42bf88f802f4ec6895` · SHA-256 `7f9be276c4de4b93b5001a84bc1d4573f6fbf61418d97a0d6206c8a0b67f9639`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ValidationCertificate.Variant1b175528658d7f0352c3516f0ebb987423b7de89fe93b83d053f874c962188d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b175528658d7f0352c3516f0ebb987423b7de89fe93b83d053f874c962188d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ValidationCertificate.Variant1b175528658d7f0352c3516f0ebb987423b7de89fe93b83d053f874c962188d7","mathematical_subject":"Foundations.Unclassified","original_sha256":"1b175528658d7f0352c3516f0ebb987423b7de89fe93b83d053f874c962188d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/SourceAnalysis/Validation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SourceAnalysis.Invariant
import Mathematics.Element.Validation

/-! # Source-analysis completion certificate -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ValidationCertificate.Variant1b175528658d7f0352c3516f0ebb987423b7de89fe93b83d053f874c962188d7

namespace Mathematics.SourceAnalysis

open Mathematics

structure ValidationCertificate where
  commandCoverage : Digest
  alignmentCoverage : Digest
  contextCoverage : Digest
  witnessCoverage : Digest
  reconstructionDigest : Digest
  unresolvedCount : Nat
  valid : Bool
  deriving DecidableEq, Repr

def ValidationCertificate.Valid (certificate : ValidationCertificate) : Prop :=
  certificate.commandCoverage.Valid ∧ certificate.alignmentCoverage.Valid ∧
    certificate.contextCoverage.Valid ∧ certificate.witnessCoverage.Valid ∧
    certificate.reconstructionDigest.Valid ∧ certificate.unresolvedCount = 0 ∧
    certificate.valid = true

end Mathematics.SourceAnalysis
```
