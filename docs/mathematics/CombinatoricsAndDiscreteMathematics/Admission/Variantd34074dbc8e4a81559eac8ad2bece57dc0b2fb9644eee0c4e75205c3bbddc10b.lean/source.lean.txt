import Mathematics.GraphAccess.Noninterference

/-!
# Request admission

Unknown evidence and malformed requests are distinct outcomes.  The raw
envelope is opaque to the core; an external deterministic admitter supplies
the fully typed request.
-/

namespace Mathematics.GraphAccess

structure RawGraphAccessRequest where
  requestId : RequestId
  payload : ByteArray
deriving DecidableEq

instance : Repr RawGraphAccessRequest where
  reprPrec request precedence :=
    Repr.reprPrec
      (request.requestId, request.payload.data)
      precedence

inductive RequestAdmissionFailure
  | unknownReference
  | modeObjectiveMismatch
  | missingProfile
  | invalidAuthority
  | cutDigestMismatch
  | malformedBudget
  | unsupportedCombination
  | missingRequiredTarget
  | sourceNotAdmissible
  | targetNotAdmissible
  | unknownAdmissibility
  | incompleteNeighborInterface
deriving DecidableEq, Repr

inductive RequestAdmission
    (G : GraphCut)
    (profiles : ModeProfileFamily G)
  | admitted
      (request : AdmittedAccessRequest G profiles)
  | unknown
      (requestId : RequestId)
      (unknowns : Finset GraphAccessUnknownKind)
      (unknowns_nonempty : unknowns.Nonempty)
  | rejected
      (requestId : RequestId)
      (failure : RequestAdmissionFailure)

structure RequestAdmitter
    (G : GraphCut)
    (profiles : ModeProfileFamily G) where
  admit :
    RawGraphAccessRequest →
      RequestAdmission G profiles

end Mathematics.GraphAccess
