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
