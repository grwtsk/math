# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BFS.Variantbb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c133362f01742340990371c210bedc99c726304` · SHA-256 `bb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Conditional BFS shortest-shell certificate

The theorem projects shortestness from explicit complete-shell and candidate
path evidence.  Concrete neighbor completeness remains external evidence.
-/

namespace Mathematics.GraphAccess

structure BfsPathCertificate (Node : Type u) where
  source : Node
  target : Node
  distance : Nat
  path : List Node
  shellComplete : Prop
  edgeValidity : Prop
  shellCompleteEvidence : shellComplete
  edgeValidityEvidence : edgeValidity
  candidateDistances : List Nat
  firstTargetShellShortest :
    ∀ candidateDistance,
      candidateDistance ∈ candidateDistances →
      distance ≤ candidateDistance

theorem bfs_first_target_shell_shortest
    {Node : Type u}
    (certificate : BfsPathCertificate Node)
    (candidateDistance : Nat)
    (candidateRegistered :
      candidateDistance ∈ certificate.candidateDistances) :
    certificate.distance ≤ candidateDistance :=
  certificate.firstTargetShellShortest
    candidateDistance
    candidateRegistered

end Mathematics.GraphAccess
```
