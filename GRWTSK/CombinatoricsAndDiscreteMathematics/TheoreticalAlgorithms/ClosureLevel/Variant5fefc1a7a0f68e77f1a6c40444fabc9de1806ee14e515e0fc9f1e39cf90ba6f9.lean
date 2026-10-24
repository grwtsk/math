-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ClosureLevel.Variant267e0384abeba13b49c7c31a42dfba7fc0077b496bbf1dc076f974d7fbe59519","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"267e0384abeba13b49c7c31a42dfba7fc0077b496bbf1dc076f974d7fbe59519","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ClosureLevel.Variant267e0384abeba13b49c7c31a42dfba7fc0077b496bbf1dc076f974d7fbe59519","mathematical_subject":"Computation.DataStructures","original_sha256":"267e0384abeba13b49c7c31a42dfba7fc0077b496bbf1dc076f974d7fbe59519","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/ClosureLevel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.VerificationObligation

/-!
# Auditable ingestion-closure levels

Totality is decomposed into ten independently witnessed levels. A level that
is not complete remains present with a named obligation; it is never erased by
an aggregate success flag.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ClosureLevel.Variant267e0384abeba13b49c7c31a42dfba7fc0077b496bbf1dc076f974d7fbe59519

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
