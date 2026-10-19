set_option autoImplicit false

namespace Think.Compact

inductive CompactPole where
  | request
  | carrier
  | lowering
  | trace
  | compact
  | classifier
  | scheduler
  | cluster
  | boundary
deriving DecidableEq, Repr

def CompactPole.centerControlled :
    CompactPole → Bool
  | _ => true

theorem everyCompactPole_centerControlled
    (p : CompactPole) :
    p.centerControlled = true := by
  cases p <;> rfl

end Think.Compact
