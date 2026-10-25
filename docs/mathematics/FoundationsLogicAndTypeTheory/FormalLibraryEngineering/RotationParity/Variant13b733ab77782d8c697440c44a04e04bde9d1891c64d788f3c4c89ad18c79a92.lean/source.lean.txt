namespace Noeoueue.Modular.RotationParity

def orientationStep (C : Nat) (epsilon : Bool) : Bool := epsilon.xor (C % 2 == 1)

theorem orientation_step (C : Nat) (epsilon : Bool) :
    orientationStep C epsilon = epsilon.xor (C % 2 == 1) := rfl

theorem even_ceiling_preserves (C : Nat) (epsilon : Bool) (h : C % 2 = 0) :
    orientationStep C epsilon = epsilon := by
  simp [orientationStep, h]

theorem odd_ceiling_toggles (C : Nat) (epsilon : Bool) (h : C % 2 = 1) :
    orientationStep C epsilon = !epsilon := by
  cases epsilon <;> simp [orientationStep, h]

end Noeoueue.Modular.RotationParity
