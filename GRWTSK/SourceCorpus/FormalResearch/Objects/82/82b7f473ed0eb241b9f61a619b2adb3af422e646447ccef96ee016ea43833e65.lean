import Mathematics.Oracle.Agreement
import Mathematics.Discovery.OpenElement

/-!
# Open target: exact disagreement refinement

The target asks for a finite partition of every oracle identity mentioned in
an agreement ledger such that explicitly disagreeing distinct oracles are
separated and every source finding remains referenced.  No agreement class
gains theorem authority.
-/

namespace Mathematics.Oracle

def AgreementLedger.oracleIds
    (ledger : AgreementLedger) : List OracleId :=
  ledger.findings.flatMap AgreementFinding.oracleIds

structure StableDisagreementPartition
    (ledger : AgreementLedger) where
  blocks : List (List OracleId)
  block_members_unique :
    ∀ block ∈ blocks, block.Nodup
  coverage :
    blocks.flatten.toFinset =
      ledger.oracleIds.toFinset
  disjoint :
    ∀ left ∈ blocks,
      ∀ right ∈ blocks,
        left ≠ right →
          List.Disjoint left right
  disagreementsSeparated :
    ∀ finding ∈ ledger.findings,
      finding.status = .disagrees →
      ∀ left ∈ finding.oracleIds,
        ∀ right ∈ finding.oracleIds,
          left ≠ right →
          ∀ block ∈ blocks,
            ¬ (left ∈ block ∧ right ∈ block)
  retainedFindingIds : List StableId
  findingsRetained :
    retainedFindingIds =
      ledger.findings.map AgreementFinding.findingId

/-- Closed finite refinement target emitted as an immutable proposal element. -/
def OracleDisagreementRefinementStatement : Prop :=
  ∀ ledger : AgreementLedger,
    Nonempty (StableDisagreementPartition ledger)

/-- Immutable proposal-only element for the exact refinement target. -/
def oracleDisagreementRefinementOpenElement :
    Discovery.OpenConjectureElement
      OracleDisagreementRefinementStatement where
  elementId := {
    id := {
      value := "open:oracle:disagreement-refinement"
    }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Exact oracle disagreement refinement"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Oracle.OracleDisagreementRefinementStatement"
  leanDeclarationName_nonempty := by
    decide

end Mathematics.Oracle
