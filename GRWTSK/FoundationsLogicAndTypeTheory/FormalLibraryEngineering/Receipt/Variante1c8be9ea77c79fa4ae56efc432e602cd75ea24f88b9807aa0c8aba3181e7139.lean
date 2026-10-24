-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransactionStatus.Variante767633ddf7660fa36a7b632fb1d4212c8520641c7ff9cf20a9e3b7dbde8f3f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e767633ddf7660fa36a7b632fb1d4212c8520641c7ff9cf20a9e3b7dbde8f3f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TransactionStatus.Variante767633ddf7660fa36a7b632fb1d4212c8520641c7ff9cf20a9e3b7dbde8f3f4","mathematical_subject":"Foundations.Unclassified","original_sha256":"e767633ddf7660fa36a7b632fb1d4212c8520641c7ff9cf20a9e3b7dbde8f3f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Refactor/Receipt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Refactor.Plan

/-! # Transaction and acceptance receipts -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransactionStatus.Variante767633ddf7660fa36a7b632fb1d4212c8520641c7ff9cf20a9e3b7dbde8f3f4

namespace MathDiscovery.Refactor

open MathDiscovery

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

end MathDiscovery.Refactor
