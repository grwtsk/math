/-!
# Six-face cube presentation

This is the formal presentation shape used to classify the Rust `bits-to-cube`
mode. It is a finite layout, not a cubical-topology construction.
-/

namespace BitMatrix.Codec.CubeSurface

/-- Stable six-face serialization order. -/
inductive Face where
  | front
  | back
  | top
  | bottom
  | left
  | right
  deriving DecidableEq, Repr

/-- One square, six-face Boolean presentation with zero-padding capacity. -/
structure Presentation where
  side : Nat
  sidePositive : 0 < side
  sourceBitCount : Nat
  cell : Face → Fin side → Fin side → Bool
  sourceFits : sourceBitCount ≤ 6 * side * side

/-- Total number of presented face cells. -/
def Presentation.surfaceCapacity (presentation : Presentation) : Nat :=
  6 * presentation.side * presentation.side

/-- Padding is the unused suffix of the face presentation. -/
def Presentation.paddingBitCount (presentation : Presentation) : Nat :=
  presentation.surfaceCapacity - presentation.sourceBitCount

end BitMatrix.Codec.CubeSurface
