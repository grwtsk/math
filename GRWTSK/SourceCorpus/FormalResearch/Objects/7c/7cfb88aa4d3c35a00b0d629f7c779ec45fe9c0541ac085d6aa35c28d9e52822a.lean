import Mathematics.SemiLocalDefect.ResidueDeflection.Residue

/-!
# The two-element residue phase
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

inductive Phase3
  | identity
  | reflect
deriving DecidableEq, Ord, Repr, Fintype

def Phase3.mul :
    Phase3 → Phase3 → Phase3
  | .identity, phase => phase
  | phase, .identity => phase
  | .reflect, .reflect => .identity

def Phase3.act :
    Phase3 → Residue3 → Residue3
  | .identity, residue => residue
  | .reflect, residue => residue.reflect

theorem phase3_mul_assoc
    (first second third : Phase3) :
    Phase3.mul
        (Phase3.mul first second) third =
      Phase3.mul first
        (Phase3.mul second third) := by
  cases first <;>
    cases second <;>
    cases third <;> rfl

@[simp]
theorem phase3_identity_left
    (phase : Phase3) :
    Phase3.mul .identity phase = phase := by
  cases phase <;> rfl

@[simp]
theorem phase3_identity_right
    (phase : Phase3) :
    Phase3.mul phase .identity = phase := by
  cases phase <;> rfl

@[simp]
theorem phase3_reflect_square :
    Phase3.mul .reflect .reflect =
      .identity :=
  rfl

theorem phase3_action_preserves_safe
    (phase : Phase3)
    {residue : Residue3} :
    residue.Safe →
      (phase.act residue).Safe := by
  cases phase with
  | identity =>
      intro safe
      exact safe
  | reflect =>
      exact residue3_reflect_preserves_safe

theorem phase3_mul_act
    (left right : Phase3)
    (residue : Residue3) :
    (Phase3.mul left right).act residue =
      left.act (right.act residue) := by
  cases left <;>
    cases right <;>
    cases residue <;> rfl

@[simp]
theorem phase3_reflect_act
    (residue : Residue3) :
    Phase3.reflect.act residue =
      residue.reflect := by
  exact rfl

@[simp]
theorem phase3_act_zero
    (phase : Phase3) :
    phase.act .zero = .zero := by
  cases phase <;> rfl

theorem phase3_safe_action_ne_zero
    (phase : Phase3)
    {residue : Residue3}
    (safe : residue.Safe) :
    phase.act residue ≠ .zero :=
  residue3_safe_ne_zero
    (phase3_action_preserves_safe
      phase safe)

end Mathematics.SemiLocalDefect.ResidueDeflection
