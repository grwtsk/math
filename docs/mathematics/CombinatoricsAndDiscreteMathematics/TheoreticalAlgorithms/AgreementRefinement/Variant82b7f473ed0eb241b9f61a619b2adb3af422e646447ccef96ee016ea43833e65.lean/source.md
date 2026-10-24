# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AgreementRefinement.Variant82b7f473ed0eb241b9f61a619b2adb3af422e646447ccef96ee016ea43833e65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7218bfcb804a386b4f78c34b6c26b5a3cd10ed7` · SHA-256 `82b7f473ed0eb241b9f61a619b2adb3af422e646447ccef96ee016ea43833e65`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
