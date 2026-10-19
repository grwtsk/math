/-!
# Jurisdictional disposition

Only an explicit `allowed` result can participate in an execution admission.
Unknown legal or policy state remains unresolved and fails closed.
-/

namespace Mathematics.Juris

inductive JurisDisposition
  | allowed
  | prohibited
  | unresolved
  | conflicting
  deriving DecidableEq, Repr

def JurisDisposition.MayExecute : JurisDisposition → Prop
  | .allowed => True
  | _ => False

@[simp] theorem unresolved_blocks_execution :
    ¬ JurisDisposition.unresolved.MayExecute := by
  simp [JurisDisposition.MayExecute]

@[simp] theorem conflicting_blocks_execution :
    ¬ JurisDisposition.conflicting.MayExecute := by
  simp [JurisDisposition.MayExecute]

@[simp] theorem prohibited_blocks_execution :
    ¬ JurisDisposition.prohibited.MayExecute := by
  simp [JurisDisposition.MayExecute]

end Mathematics.Juris
