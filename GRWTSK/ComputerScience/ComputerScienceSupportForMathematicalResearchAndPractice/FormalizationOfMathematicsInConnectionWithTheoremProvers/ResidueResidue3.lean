import Mathematics.SemiLocalDefect.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.DeriveFintype
import Mathlib.Tactic.NormNum

/-!
# Residues modulo three

Reflection fixes the excluded zero stratum and exchanges exactly the two safe
residues.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

inductive Residue3
  | zero
  | plus
  | minus
deriving DecidableEq, Ord, Repr, Fintype

def Residue3.reflect :
    Residue3 → Residue3
  | .zero => .zero
  | .plus => .minus
  | .minus => .plus

def Residue3.Safe :
    Residue3 → Prop
  | .zero => False
  | .plus => True
  | .minus => True

instance (residue : Residue3) :
    Decidable residue.Safe := by
  cases residue <;>
    unfold Residue3.Safe <;>
    infer_instance

def Residue3.value :
    Residue3 → ZMod 3
  | .zero => 0
  | .plus => 1
  | .minus => -1

theorem residue3_reflect_involutive :
    Function.Involutive
      Residue3.reflect := by
  intro residue
  cases residue <;> rfl

theorem residue3_reflect_preserves_safe
    {residue : Residue3} :
    residue.Safe →
      residue.reflect.Safe := by
  cases residue <;>
    simp [Residue3.Safe, Residue3.reflect]

@[simp]
theorem residue3_zero_fixed :
    Residue3.zero.reflect =
      Residue3.zero :=
  rfl

theorem residue3_safe_ne_zero
    {residue : Residue3}
    (safe : residue.Safe) :
    residue ≠ .zero := by
  intro equality
  subst equality
  exact safe

theorem residue3_reflect_value
    (residue : Residue3) :
    residue.reflect.value =
      -residue.value := by
  cases residue <;>
    norm_num [Residue3.reflect,
      Residue3.value]

end Mathematics.SemiLocalDefect.ResidueDeflection
