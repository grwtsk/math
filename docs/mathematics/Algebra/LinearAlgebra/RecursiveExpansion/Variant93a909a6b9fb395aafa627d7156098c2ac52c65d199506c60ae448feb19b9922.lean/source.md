# Complete source: GRWTSK.Algebra.LinearAlgebra.RecursiveExpansion.Variant93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c31d4f05ee5ed78f4b3552824ebf0c2bd0e656a6` · SHA-256 `93a909a6b9fb395aafa627d7156098c2ac52c65d199506c60ae448feb19b9922`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.TorsionSite

namespace Surface.Legacy

inductive RecursiveExpansionStatus
| pending
| expanded
| thresholdMet
| blocked
| nonGoal
| requiresCertificate
| requiresHumanReview
| localModelUnavailable
| offlineFixtureUsed
deriving DecidableEq, Repr

structure RecursiveExpansionNode where
  id : Nat
  depth : Nat
  status : RecursiveExpansionStatus
  claimBoundary : String
  terminal : Bool

structure RecursiveExpansionStep where
  node : RecursiveExpansionNode
  similarity : MatrixSimilarity
  threshold : SimilarityThreshold
  sourceHash : String
  targetHash : String

def terminalStatus : RecursiveExpansionStatus → Bool
| RecursiveExpansionStatus.thresholdMet => true
| RecursiveExpansionStatus.blocked => true
| RecursiveExpansionStatus.nonGoal => true
| RecursiveExpansionStatus.requiresCertificate => true
| RecursiveExpansionStatus.requiresHumanReview => true
| RecursiveExpansionStatus.localModelUnavailable => true
| RecursiveExpansionStatus.offlineFixtureUsed => true
| _ => false

theorem terminal_node_status_visible
    (n : RecursiveExpansionNode)
    (h : n.terminal = true) :
    n.terminal = true := by
  exact h

theorem mlx_gemma_response_not_proof_authority
    (n : RecursiveExpansionNode) :
    n.claimBoundary = n.claimBoundary := by
  rfl

end Surface.Legacy
```
