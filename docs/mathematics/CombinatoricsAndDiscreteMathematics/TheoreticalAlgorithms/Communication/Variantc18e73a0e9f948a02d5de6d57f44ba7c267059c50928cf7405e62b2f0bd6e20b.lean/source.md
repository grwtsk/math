# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Communication.Variantc18e73a0e9f948a02d5de6d57f44ba7c267059c50928cf7405e62b2f0bd6e20b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cdc63b9ff7a0cde6f0ef54d8ed26cb3cc96f258` · SHA-256 `c18e73a0e9f948a02d5de6d57f44ba7c267059c50928cf7405e62b2f0bd6e20b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.InteractiveDevelopment

/-!
# Interactive developer communication

The short developer report is intentionally distinct from complete Lean
diagnostics.  Whenever diagnostics are summarized, a mandatory stable recovery
reference keeps the complete record content-addressable.  Reports always state
that development candidates are not adopted source changes.
-/

namespace Surface.ContinuousAssurance

/-- Complete outcomes of one bounded interactive run. -/
inductive DevelopmentResult
  | verifiedCandidate
  | rejectedCandidate
  | noCandidate
  | timeout
  | invalidRequest
  | staleSnapshot
  | notWarm
  | toolFailure
  deriving DecidableEq, Repr

/-- Stable reference to the complete, ordered Lean diagnostic record. -/
structure CompleteDiagnosticRecord where
  check : LeanCheckIdentity
  digest : ArtifactIdentity
  deriving DecidableEq, Repr

/-- A short summary that cannot exist without its complete recovery record. -/
structure DiagnosticSummary where
  messages : List String
  complete : CompleteDiagnosticRecord
  transformation : TraceableTransformation
  transformation_is_summary :
    transformation.contract.preservation = .surjectiveTraceability
  complete_is_recovery :
    complete.digest ∈ transformation.contract.recoveryEvidence

/-- Lossy summaries retain a content-addressed complete diagnostic reference. -/
theorem DiagnosticSummary.retains_recovery_reference
    (summary : DiagnosticSummary) :
    ∃ identity,
      identity = summary.complete.digest ∧
      identity ∈ summary.transformation.contract.recoveryEvidence :=
  ⟨summary.complete.digest, rfl, summary.complete_is_recovery⟩

/-- Structured counterpart of the short human-readable development report. -/
structure DeveloperCommunicationReport where
  identity : DeveloperReportIdentity
  request : HumanDevelopmentRequest
  result : DevelopmentResult
  assuranceLevel : AssuranceLevel
  developmentOnly : assuranceLevel = .development
  candidate : Option CandidateIdentity
  summary : Option DiagnosticSummary
  adoptionStatus : ProjectAdoptionStatus
  notAdopted : adoptionStatus = .notAuthorized
  sourceChanges : List PatchIdentity
  noSourceChanges : sourceChanges = []
  elapsedMs : Nat
  declaredDeadlineMs : Nat

/-- Every developer report is explicitly confined to Development assurance. -/
theorem DeveloperCommunicationReport.level_is_development
    (report : DeveloperCommunicationReport) :
    report.assuranceLevel = .development :=
  report.developmentOnly

/-- Interactive reports cannot claim that their candidate was adopted. -/
theorem DeveloperCommunicationReport.project_not_adopted
    (report : DeveloperCommunicationReport) :
    report.adoptionStatus = .notAuthorized :=
  report.notAdopted

/-- Interactive reports record no tracked source patch. -/
theorem DeveloperCommunicationReport.tracked_source_unchanged
    (report : DeveloperCommunicationReport) :
    report.sourceChanges = [] :=
  report.noSourceChanges

/-- Any included summary exposes its complete diagnostic recovery record. -/
theorem DeveloperCommunicationReport.summary_has_recovery
    (report : DeveloperCommunicationReport)
    (summary : DiagnosticSummary)
    (_present : report.summary = some summary) :
    ∃ identity,
      identity = summary.complete.digest ∧
      identity ∈ summary.transformation.contract.recoveryEvidence := by
  exact summary.retains_recovery_reference

end Surface.ContinuousAssurance
```
