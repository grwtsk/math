import Mathematics.GraphAccess.Frontier

/-!
# Request-indexed output and certificate families

The objective fixes the payload kind.  Exactness can only be obtained from the
certificate constructor selected by the mode implementation.
-/

namespace Mathematics.GraphAccess

inductive Exactness
  | exact
  | bounded
  | asymptotic
  | heuristic
  | unknown
deriving DecidableEq, Repr

structure ModeOutputFamily
    (G : GraphCut)
    {profiles : ModeProfileFamily G}
    (req : AdmittedAccessRequest G profiles) where
  Payload : AccessProductKind → Type
  Certificate :
    Payload req.objective.productKind → Type
  exactness :
    ∀ payload, Certificate payload → Exactness

structure CertifiedModeOutput
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    (outputs : ModeOutputFamily G req) where
  payload :
    outputs.Payload req.objective.productKind
  certificate :
    outputs.Certificate payload

def CertifiedModeOutput.exactness
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (result : CertifiedModeOutput outputs) :
    Exactness :=
  outputs.exactness
    result.payload result.certificate

end Mathematics.GraphAccess
