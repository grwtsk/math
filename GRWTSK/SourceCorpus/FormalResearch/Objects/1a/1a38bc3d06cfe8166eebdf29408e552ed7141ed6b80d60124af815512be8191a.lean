import Mathematics.Surgery.Boundary

/-! # Explicit surgery requests -/

namespace Mathematics.Surgery

/-- A surgery request is always a candidate; acceptance is a different sealed type. -/
inductive RequestAuthority
  | candidateOnly
  deriving DecidableEq, Repr

structure Request where
  id : SurgeryRequestId
  boundary : BoundaryObservation
  preservedInvariants : List StableId
  changedInvariants : List StableId
  lostInvariants : List StableId
  authority : RequestAuthority := .candidateOnly
  deriving DecidableEq, Repr

@[simp]
theorem request_authority_is_candidate
    (request : Request) :
    request.authority = .candidateOnly := by
  cases request
  rfl

end Mathematics.Surgery
