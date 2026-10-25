# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MemoryBoundaryResidueCorrect.Variant9cf1c2f7b7ae45edfb941267d85bcd18c602cabdbe4c6ee09be767dc076297b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1491d5fecb3ef259e160c158272b325cb4ace701` · SHA-256 `9cf1c2f7b7ae45edfb941267d85bcd18c602cabdbe4c6ee09be767dc076297b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Pipeline.Center.MemoryReasoning

set_option autoImplicit false

namespace Think.Validation.MemoryBoundaryResidueCorrect

abbrev BoundaryReport := Think.Pipeline.Center.MemoryReasoning.BoundaryReport

theorem accepted_transition_closes_ledgers_witnesses_or_refuses
    (r : BoundaryReport)
    (h : r.accepted) :
    r.residueMagnitude = 0 ∨
      r.ledger.atoms.length > 0 ∨
      (0 < r.witnessesInserted ∧ r.witnessesInserted ≤ r.witnessBound) ∨
      r.refusedAuthority = true :=
  Think.Pipeline.Center.MemoryReasoning.accepted_transition_cases r h

theorem zero_residue_transition_accepted
    (r : BoundaryReport)
    (h : r.residueMagnitude = 0) :
    r.accepted :=
  Think.Pipeline.Center.MemoryReasoning.closed_report_accepted r h

theorem unflagged_unresolved_report_is_insufficientData
    (r : BoundaryReport)
    (hResidue : r.residueMagnitude ≠ 0)
    (hLedger : r.ledger.atoms.length = 0)
    (hWitness : ¬ (0 < r.witnessesInserted ∧
      r.witnessesInserted ≤ r.witnessBound))
    (hRefused : r.refusedAuthority ≠ true) :
    r.acceptance =
        Think.Pipeline.Center.MemoryReasoning.AcceptanceKind.insufficientData ∧
      ¬ r.accepted :=
  Think.Pipeline.Center.MemoryReasoning.insufficient_data_report_not_accepted
    r hResidue hLedger hWitness hRefused

theorem accepted_iff_not_insufficientData
    (r : BoundaryReport) :
    r.accepted ↔
      r.acceptance ≠
        Think.Pipeline.Center.MemoryReasoning.AcceptanceKind.insufficientData :=
  Think.Pipeline.Center.MemoryReasoning.accepted_iff_acceptance_not_insufficientData r

end Think.Validation.MemoryBoundaryResidueCorrect
```
