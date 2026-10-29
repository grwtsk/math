/-!
# Folder.Rebuild.ProofStatus

Local proof-status algebra for the rebuild branch.
-/

namespace Folder
namespace Rebuild

inductive RebuildProofStatus where
  | checkedByLean
  | mathlibInternal
  | classicalAnchorOnly
  | conditionalBridge
  | theoremTarget
  | toyModel
  | rejectedClaim
deriving DecidableEq, Repr

def RebuildProofStatus.allowedAsProofDependency :
    RebuildProofStatus → Prop
  | .checkedByLean => True
  | .mathlibInternal => True
  | .conditionalBridge => True
  | _ => False

theorem classicalAnchorOnly_not_allowed_as_proof_dependency :
    ¬ RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.classicalAnchorOnly := by
  intro h
  exact h

theorem theoremTarget_not_allowed_as_proof_dependency :
    ¬ RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.theoremTarget := by
  intro h
  exact h

theorem toyModel_not_allowed_as_proof_dependency :
    ¬ RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.toyModel := by
  intro h
  exact h

theorem rejectedClaim_not_allowed_as_proof_dependency :
    ¬ RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.rejectedClaim := by
  intro h
  exact h

end Rebuild
end Folder
