# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Receipt.Variant029af0f0fadb62eb63d4cf28b2d703051f499eda80d0d8bb336fe2c51f44ce68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f280c57456c6fe67c4cb5faa9fd6c33a0f4c1812` · SHA-256 `029af0f0fadb62eb63d4cf28b2d703051f499eda80d0d8bb336fe2c51f44ce68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Core.Objective

/-!
# Conservative graph-access receipts

The nineteen unknown kinds are retained as typed data.  A receipt cannot
acquire commitment authority.
-/

namespace Mathematics.GraphAccess

inductive GraphAccessUnknownKind
  | graphFiniteness
  | neighborCompleteness
  | edgeAdmissibility
  | edgeCost
  | negativeCostDetection
  | heuristicAdmissibility
  | heuristicConsistency
  | portLabelCompleteness
  | universalSequenceClass
  | actionAlphabetCompleteness
  | discrepancyBound
  | invariantLaw
  | recamanActionMap
  | plateauDetection
  | completionDecision
  | primitiveObstruction
  | projectiveCompatibility
  | cylinderStageIndependence
  | resourceCompletion
deriving DecidableEq, Repr

inductive AccessDisposition
  | path
  | frontier
  | coverage
  | sample
  | proposal
  | obstruction
  | unknown
  | rejected
  | operationalFailure
deriving DecidableEq, Repr

inductive AccessExactness
  | exact
  | bounded
  | asymptotic
  | heuristic
  | unknown
deriving DecidableEq, Repr

structure GraphAccessReceipt where
  schemaVersion : String := "noeoueeue.graph-access-receipt.v1"
  requestRef : String
  selectedMode : TraversalMode
  graphCutRef : String
  disposition : AccessDisposition
  visitedStateRef : String
  frontierRef : String
  pathRef : Option String
  certificateRef : Option String
  obstructionRef : Option String
  exactness : AccessExactness
  residualRef : Option String
  unknowns : List GraphAccessUnknownKind
  replayStateRef : String
  cognitiveLoadRef : String
  reconstructionRef : String
  authoritativeEffect : Bool := false
  authoritativeEffect_exact : authoritativeEffect = false
deriving Repr

theorem receipt_unknowns_remain_explicit
    (receipt : GraphAccessReceipt) :
    ∃ unknowns, receipt.unknowns = unknowns :=
  ⟨receipt.unknowns, rfl⟩

end Mathematics.GraphAccess
```
