import BooleanMatrix.Application.Core

/-!
# Iterated BooleanMatrix execution
-/

namespace BooleanMatrix
namespace Application

/-- Execute an application a finite number of times. -/
def iterate
    (application : Application) :
    Nat → Application
  | 0 => identity
  | Nat.succ steps =>
      comp application (iterate application steps)

@[simp]
theorem iterate_zero
    (application : Application)
    (input : Matrix) :
    iterate application 0 input = input :=
  rfl

@[simp]
theorem iterate_succ
    (application : Application)
    (steps : Nat)
    (input : Matrix) :
    iterate application (Nat.succ steps) input =
      application (iterate application steps input) :=
  rfl

/-- The complete countable execution sequence from an initial matrix. -/
def orbit
    (application : Application)
    (initial : Matrix) :
    Nat → Matrix :=
  fun step => iterate application step initial

@[simp]
theorem orbit_zero
    (application : Application)
    (initial : Matrix) :
    orbit application initial 0 = initial :=
  rfl

@[simp]
theorem orbit_succ
    (application : Application)
    (initial : Matrix)
    (step : Nat) :
    orbit application initial (Nat.succ step) =
      application (orbit application initial step) :=
  rfl

end Application
end BooleanMatrix
