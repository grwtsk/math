import Surface.Legacy.AffineTopos.Core

namespace Surface
namespace Legacy
namespace AffineTopos

inductive AffineModality
| reversibleFlow
| quotient
| averaging
| heat
| oracle
| choice
| ricciObstruction
| homologyStabilization
| infiniteTimeLimit
| relaxation
deriving DecidableEq, Repr

def AffineModality.irreversible : AffineModality → Bool
| AffineModality.reversibleFlow => false
| _ => true

structure ModalityBoundary where
  modality : AffineModality
  claimBoundary : AffineClaimBoundary
  irreversibleVisible : modality.irreversible = true → True

theorem irreversible_modality_visible
    (B : ModalityBoundary) :
    B.modality.irreversible = true → True := by
  exact B.irreversibleVisible

theorem reversibleFlow_modality_not_irreversible :
    AffineModality.reversibleFlow.irreversible = false := by
  rfl

end AffineTopos
end Legacy
end Surface
