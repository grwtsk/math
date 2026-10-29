import Folder.Rebuild.NumberTheory.Divisibility

/-!
# Folder.Rebuild.NumberTheory.MultiplicativeFunction

Local multiplicative predicates for arithmetic functions in the rebuild branch.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

abbrev ArithFn (R : Type*) := Nat → R

def IsMultiplicative
    [Mul R] [One R]
    (f : ArithFn R) : Prop :=
  f 1 = 1 ∧
    ∀ a b : Nat, Nat.Coprime a b → f (a * b) = f a * f b

def IsCompletelyMultiplicative
    [Mul R] [One R]
    (f : ArithFn R) : Prop :=
  f 1 = 1 ∧
    ∀ a b : Nat, f (a * b) = f a * f b

theorem completely_multiplicative_is_multiplicative
    [Mul R] [One R]
    {f : ArithFn R}
    (hf : IsCompletelyMultiplicative f) :
    IsMultiplicative f := by
  constructor
  · exact hf.1
  · intro a b _hab
    exact hf.2 a b

theorem multiplicative_mul
    [CommMonoid R]
    {f g : ArithFn R}
    (hf : IsMultiplicative f)
    (hg : IsMultiplicative g) :
    IsMultiplicative fun n => f n * g n := by
  constructor
  · simp [hf.1, hg.1]
  · intro a b hab
    change f (a * b) * g (a * b) =
      (f a * g a) * (f b * g b)
    rw [hf.2 a b hab, hg.2 a b hab]
    simp [mul_left_comm, mul_comm]

end NumberTheory
end Rebuild
end Folder
