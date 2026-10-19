import Mathematics.GraphAccess.Core.Receipt
import Mathematics.GraphAccess.Exploration.Recaman

/-!
# Access/authority and presentation noninterference
-/

namespace Mathematics.GraphAccess

theorem access_receipt_cannot_commit_state
    (receipt : GraphAccessReceipt) :
    receipt.authoritativeEffect = false :=
  receipt.authoritativeEffect_exact

structure AccessPresentationChange
    (before after : GraphAccessReceipt) where
  requestIdentity :
    after.requestRef = before.requestRef
  graphCutIdentity :
    after.graphCutRef = before.graphCutRef
  dispositionIdentity :
    after.disposition = before.disposition
  exactnessIdentity :
    after.exactness = before.exactness
  certificateIdentity :
    after.certificateRef = before.certificateRef
  obstructionIdentity :
    after.obstructionRef = before.obstructionRef

theorem presentation_change_preserves_access_certificate
    {before after : GraphAccessReceipt}
    (change : AccessPresentationChange before after) :
    after.certificateRef = before.certificateRef :=
  change.certificateIdentity

structure TraversalAuthorityBoundary where
  traversalMode : TraversalMode
  commitAuthority : Bool := false
  commitAuthority_exact : commitAuthority = false
deriving Repr

theorem traversal_mode_does_not_grant_commit_authority
    (boundary : TraversalAuthorityBoundary) :
    boundary.commitAuthority = false :=
  boundary.commitAuthority_exact

end Mathematics.GraphAccess
