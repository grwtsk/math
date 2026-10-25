# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantc11c7dcfd176939159fa601614af364bb71adc12957c2b9b27602dc03ba80848

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38e391031d78ac661653c3fb8c2e933ecf7d405a` · SHA-256 `c2f04d70b2384eb8a0c3694caee8891a5c59ff0d0928212040dd66a20a023d06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecordId.Variantb779a581903c318b7c5b064f5c3cc0c9c97dba172faf22d64ad267851406dca2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b779a581903c318b7c5b064f5c3cc0c9c97dba172faf22d64ad267851406dca2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RecordId.Variantb779a581903c318b7c5b064f5c3cc0c9c97dba172faf22d64ad267851406dca2","mathematical_subject":"Foundations.Unclassified","original_sha256":"b779a581903c318b7c5b064f5c3cc0c9c97dba172faf22d64ad267851406dca2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/N/cord/src/theory/CordTheory/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib

/-!
# Basic typed vocabulary

The declarations in this file formalize the identity, status, quality, snapshot,
and claim-separation vocabulary used by `CORD-THEORY-1`.  Identifiers are
opaque wrappers.  Equal numeric payloads in distinct wrappers do not establish
cross-kind identity.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecordId.Variantb779a581903c318b7c5b064f5c3cc0c9c97dba172faf22d64ad267851406dca2

namespace Cord

/-- Stable identifier of the formalized theory. -/
def theoryIdentifier : String := "CORD-THEORY-1"

/-- Version of the theory formalized by this project. -/
def theoryVersion : String := "1.0.0-rc.1"

structure RecordId where
  value : Nat
  deriving DecidableEq, Repr, Inhabited, Ord

structure ProfileId where
  value : Nat
  deriving DecidableEq, Repr, Inhabited, Ord

structure SnapshotId where
  value : Nat
  deriving DecidableEq, Repr, Inhabited, Ord

structure OntologySnapshotId where
  value : Nat
  deriving DecidableEq, Repr, Inhabited, Ord

structure VersionId where
  value : Nat
  deriving DecidableEq, Repr, Inhabited, Ord

structure AuthorityId where
  value : Nat
  deriving DecidableEq, Repr, Inhabited, Ord

structure ReceiptId where
  value : Nat
  deriving DecidableEq, Repr, Inhabited, Ord

structure CertificateId where
  value : Nat
  deriving DecidableEq, Repr, Inhabited, Ord

structure ResidualId where
  value : Nat
  deriving DecidableEq, Repr, Inhabited, Ord

structure DependencyId where
  value : Nat
  deriving DecidableEq, Repr, Inhabited, Ord

structure PlanId where
  value : Nat
  deriving DecidableEq, Repr, Inhabited, Ord

structure TransactionId where
  value : Nat
  deriving DecidableEq, Repr, Inhabited, Ord

structure ContentHash where
  value : String
  deriving DecidableEq, Repr, Inhabited, Ord

/-- A bounded half-open interval. `none` represents an open upper bound. -/
structure TimeInterval where
  start : Int
  stop : Option Int
  deriving DecidableEq, Repr, Inhabited

namespace TimeInterval

/-- The interval has an admissible ordering. -/
def Valid (i : TimeInterval) : Prop :=
  match i.stop with
  | none => True
  | some stop => i.start < stop

end TimeInterval

inductive CordExecutionStatus
  | applied
  | rejected
  | conflict
  | indeterminate
  | cancelled
  | resourceExhausted
  | closed
  | blocked
  deriving DecidableEq, Repr, Inhabited

inductive CoordinateStatus
  | authoritative
  | derived
  | candidate
  | omitted
  | excluded
  | unknown
  | unevaluable
  deriving DecidableEq, Repr, Inhabited

inductive IndependentStatus
  | established
  | refuted
  | bounded
  | indeterminate
  | notEvaluated
  | notApplicable
  deriving DecidableEq, Repr, Inhabited

inductive AuthorityStatus
  | authorized
  | denied
  | unreviewed
  | expired
  | indeterminate
  deriving DecidableEq, Repr, Inhabited

inductive ExactnessStatus
  | exact
  | exactlyVerifiedCandidate
  | approximateCandidate
  | heuristicCandidate
  | partialResult
  | indeterminate
  deriving DecidableEq, Repr, Inhabited

/-- The complete quality tuple is not replaced by an aggregate scalar. -/
structure QualityRecord where
  precision : Option RecordId
  accuracy : Option RecordId
  completeness : IndependentStatus
  residuals : Set ResidualId

/-- A proposition is source-relative, not automatically factually true. -/
structure SourceAssertion where
  id : RecordId
  snapshot : SnapshotId

/-- A derived consequence remains distinct from a source assertion. -/
structure DerivedConsequence where
  id : RecordId
  premises : Set RecordId
  rule : RecordId

/-- A validation result records a procedure result. -/
structure ValidationResult where
  id : RecordId
  subject : RecordId
  profile : ProfileId
  status : IndependentStatus

/-- A mathematical proof is a distinct record kind. -/
structure ProofRecord where
  id : RecordId
  proposition : Prop

/-- A receipt records an operation; it is not a factual-truth witness. -/
structure ReceiptRecord where
  id : ReceiptId
  operation : RecordId
  snapshot : SnapshotId

/-- An admitted factual claim requires its own evidence relation. -/
structure FactualClaim where
  id : RecordId
  proposition : Prop
  evidence : Set RecordId

/-- Precision, accuracy, completeness, and residue are pairwise named fields. -/
structure CompleteQuality where
  precision : RecordId
  accuracy : RecordId
  completeness : IndependentStatus
  residual : Set ResidualId

end Cord
```
