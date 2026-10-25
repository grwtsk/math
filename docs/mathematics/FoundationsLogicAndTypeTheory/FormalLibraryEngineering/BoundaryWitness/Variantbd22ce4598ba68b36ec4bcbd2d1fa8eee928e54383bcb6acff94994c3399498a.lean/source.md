# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryWitness.Variantbd22ce4598ba68b36ec4bcbd2d1fa8eee928e54383bcb6acff94994c3399498a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df1efcb3d4421b6bdeeb4ab266345c36572483a1` · SHA-256 `bd22ce4598ba68b36ec4bcbd2d1fa8eee928e54383bcb6acff94994c3399498a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit false

namespace Think.Compact

inductive MemoryBoundaryRole where
  | innerEpisode
  | bridgeGist
  | bridgeFact
  | outerEntity
  | outerCommunity
  | toolTransition
  | workflowStep
  | sourceNode
  | witness
deriving DecidableEq, Repr

def MemoryBoundaryRole.claimsTruth :
    MemoryBoundaryRole → Bool
  | _ => false

def MemoryBoundaryRole.canEmitResidue :
    MemoryBoundaryRole → Bool
  | _ => true

theorem memoryBoundary_claims_no_truth
    (r : MemoryBoundaryRole) :
    r.claimsTruth = false := by
  cases r <;> rfl

theorem memoryBoundary_can_emit_residue
    (r : MemoryBoundaryRole) :
    r.canEmitResidue = true := by
  cases r <;> rfl

end Think.Compact
```
