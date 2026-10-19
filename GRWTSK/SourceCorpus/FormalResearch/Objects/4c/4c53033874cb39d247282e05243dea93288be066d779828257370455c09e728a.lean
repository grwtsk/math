import Mathematics.GraphAccess.Checkpoint

/-!
# Read-only graph-access effect

Every machine result has the sole access effect `none`.  The owner mutation
module is intentionally absent from this import cone.
-/

namespace Mathematics.GraphAccess

inductive AccessEffect
  | none
deriving DecidableEq, Repr

def MachineResolution.authoritativeEffect
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    (_result : MachineResolution machine) :
    AccessEffect :=
  .none

theorem accessMachine_has_no_authoritative_effect
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    (result : MachineResolution machine) :
    result.authoritativeEffect = .none :=
  rfl

end Mathematics.GraphAccess
