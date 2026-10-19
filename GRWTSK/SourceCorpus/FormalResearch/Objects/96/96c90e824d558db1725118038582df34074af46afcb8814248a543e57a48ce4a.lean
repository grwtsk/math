import Mathematics.GammaBridge.Interpolation

/-! # Reflected parameter profiles -/

namespace Mathematics.GammaBridge

/-- Reflection reverses a unit-interval parameter without altering its range. -/
def reflect (time : ℝ) : ℝ := 1 - time

@[simp] theorem reflect_left : reflect 0 = 1 := by
  simp [reflect]

@[simp] theorem reflect_right : reflect 1 = 0 := by
  simp [reflect]

@[simp] theorem reflect_involution (time : ℝ) :
    reflect (reflect time) = time := by
  simp [reflect]

end Mathematics.GammaBridge
