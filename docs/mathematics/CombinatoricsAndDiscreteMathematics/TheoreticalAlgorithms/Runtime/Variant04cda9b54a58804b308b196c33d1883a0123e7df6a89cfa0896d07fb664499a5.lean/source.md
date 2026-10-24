# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Runtime.Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abec9d36a75dc532bfb4b2ba35b99799c25686f9` · SHA-256 `04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Fabric.Manifest
import DAF.Fabric.Refinement

/-!
# Pure runtime records for hosted fabric cells

The hosted state is indexed by its checked cell implementation and therefore
retains the local refinement-validity proof.  `CellStatus` remains operational
metadata: sequence counters are not Frobenius maps, status priority is not a
Nygaard filtration, and listed certificate names do not produce proofs.
-/

namespace DAF.Fabric

universe u

/-- One implementation state known to satisfy its local refinement invariant. -/
structure HostedCellState
    {P : Presentation}
    (implementation : CellImplementation P) where
  implementationState : implementation.impl.State
  sequence : Nat
  valid : implementation.refinement.Valid implementationState

/-- Human-readable operational summary of one boundary mismatch. -/
structure BoundaryDefectSummary where
  boundaryDimension : Nat
  boundaryName : Lean.Name
  summary : String
  deriving DecidableEq, Repr

/-- Runtime status for a hosted cell; all fields are non-authoritative metadata. -/
structure CellStatus where
  cellId : Lean.Name
  dimension : Nat
  presentationVersion : DAF.Version
  processedSequence : Nat
  boundaryDefects : List BoundaryDefectSummary
  certificates : List Lean.Name

/-- A status record is boundary-clean exactly when no defect summaries remain. -/
def CellStatus.BoundaryClean (status : CellStatus) : Prop :=
  status.boundaryDefects = []

end DAF.Fabric
```
