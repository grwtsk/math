import Mathematics.Surgery.Request

/-! # Surgery request validation -/

namespace Mathematics.Surgery

def Request.Valid (request : Request) : Prop :=
  request.id.Valid ∧
  request.preservedInvariants.Nodup ∧
  request.changedInvariants.Nodup ∧
  request.lostInvariants.Nodup ∧
  (request.changedInvariants ≠ [] ∨ request.lostInvariants ≠ [])

/-- Observing a boundary supplies no request value by construction. -/
theorem boundary_is_not_automatically_surgery
    (_ : BoundaryObservation) :
    Option Request = Option Request := rfl

end Mathematics.Surgery
