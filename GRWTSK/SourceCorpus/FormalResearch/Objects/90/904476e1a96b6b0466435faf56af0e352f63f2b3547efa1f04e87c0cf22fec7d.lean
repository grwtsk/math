import BooleanMatrix.Matrix.Core

/-!
# BooleanMatrix applications

An application is an extensional, total transformation of the common matrix
carrier. Interpretation and validity conditions are supplied separately by
formats and typed applications.
-/

namespace BooleanMatrix

/-- A total transformation of the BooleanMatrix carrier. -/
abbrev Application := Matrix → Matrix

namespace Application

/-- The identity matrix application. -/
def identity : Application :=
  fun input => input

/-- Sequential composition, applying `before` and then `after`. -/
def comp
    (after before : Application) :
    Application :=
  fun input => after (before input)

@[simp]
theorem identity_apply (input : Matrix) :
    identity input = input :=
  rfl

@[simp]
theorem comp_apply
    (after before : Application)
    (input : Matrix) :
    comp after before input = after (before input) :=
  rfl

end Application
end BooleanMatrix
