import Mathematics.Ecosystem.VerificationObligation

/-!
# Auditable ingestion-closure levels

Totality is decomposed into ten independently witnessed levels. A level that
is not complete remains present with a named obligation; it is never erased by
an aggregate success flag.
-/

namespace Mathematics.Ingestion

inductive ClosureLevel
  | artifact
  | source
  | build
  | environment
  | declaration
  | proof
  | history
  | workflow
  | collaboration
  | ecosystem
  deriving DecidableEq, Repr

inductive ClosureStatus
  | complete
  | incomplete
  | notRun
  | failed
  | unsupported
  | dependencyUnavailable
  | platformIncompatible
  | historicallyUnreconstructable
  deriving DecidableEq, Repr

/-- One level-specific completion disposition. -/
structure ClosureRecord where
  level : ClosureLevel
  status : ClosureStatus
  evidenceIds : List StableId
  obligationIds : List StableId
  exceptionIds : List StableId
  recordDigest : Digest
  deriving DecidableEq, Repr

/-- Snapshot-relative semantics for the ten closure levels. -/
structure ClosureSemantics where
  snapshotDigest : Digest
  Holds : ClosureLevel → Prop
  semanticsDigest : Digest

/--
Every level occurs exactly once. Completeness requires evidence and a proof of
the level's actual proposition. Every other status requires a named
obligation.
-/
structure ClosureLedger where
  semantics : ClosureSemantics
  records : List ClosureRecord
  levelsUnique : (records.map ClosureRecord.level).Nodup
  levelCoverage :
    ∀ level,
      ∃ record ∈ records, record.level = level
  completeEvidenced :
    ∀ record ∈ records,
      record.status = .complete →
        record.evidenceIds ≠ []
  completeSound :
    ∀ record ∈ records,
      record.status = .complete →
        semantics.Holds record.level
  incompleteNamed :
    ∀ record ∈ records,
      record.status ≠ .complete →
        record.obligationIds ≠ []
  ledgerDigest : Digest

namespace ClosureLedger

def SemanticallyTotal (ledger : ClosureLedger) : Prop :=
  ∀ level, ledger.semantics.Holds level

/-- Every requested closure level has an explicit disposition. -/
theorem record_exists
    (ledger : ClosureLedger)
    (level : ClosureLevel) :
    ∃ record ∈ ledger.records, record.level = level :=
  ledger.levelCoverage level

/-- An incomplete level cannot disappear into an aggregate status. -/
theorem incomplete_has_obligation
    (ledger : ClosureLedger)
    (record : ClosureRecord)
    (member : record ∈ ledger.records)
    (incomplete : record.status ≠ .complete) :
    record.obligationIds ≠ [] :=
  ledger.incompleteNamed record member incomplete

/-- If all ten records are complete, their exact semantics all hold. -/
theorem semanticallyTotal_of_all_complete
    (ledger : ClosureLedger)
    (allComplete :
      ∀ record ∈ ledger.records,
        record.status = .complete) :
    ledger.SemanticallyTotal := by
  intro level
  obtain ⟨record, member, rfl⟩ := ledger.levelCoverage level
  exact ledger.completeSound record member (allComplete record member)

end ClosureLedger

end Mathematics.Ingestion
