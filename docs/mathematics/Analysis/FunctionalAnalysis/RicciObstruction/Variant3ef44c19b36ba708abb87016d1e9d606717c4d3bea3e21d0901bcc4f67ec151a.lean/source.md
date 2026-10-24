# Complete source: GRWTSK.Analysis.FunctionalAnalysis.RicciObstruction.Variant3ef44c19b36ba708abb87016d1e9d606717c4d3bea3e21d0901bcc4f67ec151a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e788e52798139039e6f91b331a022a2ad21f788` · SHA-256 `3ef44c19b36ba708abb87016d1e9d606717c4d3bea3e21d0901bcc4f67ec151a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.PascalTree.SpectralCarrier
import Surface.Legacy.BinaryLogicMatrixFlow.Core

namespace Surface
namespace Legacy

namespace PascalTree

inductive EquivalenceFailureCondition
| structural
| spectral
| categorical
| fiber
| symmetry
| padding
| determinant
| proofBoundary
| topology
| foundation
deriving DecidableEq, Repr

structure RicciObstructionCurvature where
  condition : EquivalenceFailureCondition
  failed : Bool
  severity : Nat
  explanation : String
  claimBoundary : AffineTopos.AffineClaimBoundary

def zeroRicciObstruction
    (claimBoundary : AffineTopos.AffineClaimBoundary) :
    RicciObstructionCurvature where
  condition := EquivalenceFailureCondition.structural
  failed := false
  severity := 0
  explanation := "certified reversible transport"
  claimBoundary := claimBoundary

inductive FlowOrRicciObstruction where
| reversible :
    {rows cols : Nat} →
    BinaryLogicMatrixFlow rows cols →
    FlowOrRicciObstruction
| obstructed : RicciObstructionCurvature → FlowOrRicciObstruction

theorem flow_equivalence_has_zero_obstruction
    {rows cols : Nat}
    (_F : BinaryLogicMatrixFlow rows cols)
    (claimBoundary : AffineTopos.AffineClaimBoundary) :
    (zeroRicciObstruction claimBoundary).severity = 0 ∧
      (zeroRicciObstruction claimBoundary).failed = false := by
  exact ⟨rfl, rfl⟩

theorem nonEquivalence_creates_ricciObstruction
    (condition : EquivalenceFailureCondition)
    (claimBoundary : AffineTopos.AffineClaimBoundary) :
    ∃ obstruction : RicciObstructionCurvature,
      obstruction.condition = condition ∧ obstruction.failed = true := by
  exact ⟨{
    condition := condition
    failed := true
    severity := 1
    explanation := "failed equivalence condition"
    claimBoundary := claimBoundary
  }, ⟨rfl, rfl⟩⟩

end PascalTree
end Legacy
end Surface
```
