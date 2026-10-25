# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Receipt.Variant54c7a0d1c01004c241d26490503983f2156939cad891122d46e88e6b9a04a70e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8826cc8af36ae31c02bb7789f7857fd5421a2e1` · SHA-256 `5572dc0b6677e1b3fd4d8b1e5971b803bdc9de4de94034339e885dff6bda5edc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransactionStatus.Variantc7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TransactionStatus.Variantc7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31","mathematical_subject":"Foundations.Unclassified","original_sha256":"c7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Refactor/Receipt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Refactor.Plan

/-! # Transaction and acceptance receipts -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransactionStatus.Variantc7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31

namespace Mathematics.Refactor

open Mathematics

inductive TransactionStatus
  | planned
  | staged
  | applied
  | rolledBack
  | accepted
  | rejected
  deriving DecidableEq, Repr, Inhabited

structure Receipt where
  transactionId : RefactorTransactionId
  status : TransactionStatus
  baselineDigest : Digest
  sourceAnalysisDigest : Digest
  millingProfileDigest : Digest
  partitionProfileDigest : Digest
  planDigest : Digest
  stagedEnvironmentDigest : Digest
  appliedEnvironmentDigest : Digest
  milledUnitCount : Nat
  movedUnitCount : Nat
  unchangedUnitCount : Nat
  blockedUnitCount : Nat
  publicStatementChanges : Nat
  trustClosureChanges : Nat
  cleanBuild : Bool
  freshKernelCheck : Bool
  fullAssurance : Bool
  idempotent : Bool
  rollbackReceipt : String
  deriving DecidableEq, Repr

end Mathematics.Refactor
```
