# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorCompatibility.Varianteb16128a0cf786e6b848f526e45ef70cb7cce6e5326a860961e6e85212a7b271

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbee7d1c801af1b62fff6004180f552c441439e7` · SHA-256 `eb16128a0cf786e6b848f526e45ef70cb7cce6e5326a860961e6e85212a7b271`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Symmetry.CutAction
import Mathematics.StratifiedBoundary.Boundary.SuccessorConnector

/-!
# Successor symmetry compatibility
-/

namespace Mathematics.StratifiedBoundary

structure SuccessorAutomorphismCompatibility
    (SuccessorGroup PredecessorGroup
      SuccessorState PredecessorState : Type u) where
  successorAction :
    CutAutomorphismAction SuccessorGroup SuccessorState
  predecessorAction :
    CutAutomorphismAction PredecessorGroup PredecessorState
  connector :
    SuccessorStateConnector PredecessorState SuccessorState
  restrictGroup : SuccessorGroup → PredecessorGroup
  projects :
    ∀ groupElement state,
      connector.project
          (successorAction.act groupElement state) =
        predecessorAction.act
          (restrictGroup groupElement)
          (connector.project state)

end Mathematics.StratifiedBoundary
```
