import Boolean.Matrix.Encoding
import Boolean.Matrix.Operations

namespace Boolean

namespace Matrix

/-- Number of true entries in row-major order. -/
def trueCount
    (A : Matrix rows cols) :
    Nat :=
  (rowMajorBits A).filter (fun b => b = true) |>.length

theorem trueCount_nonneg
    (A : Matrix rows cols) :
    0 ≤ trueCount A :=
  Nat.zero_le _

theorem trueCount_zeros :
    trueCount (Matrix.zeros : Matrix rows cols) = 0 := by
  simp [trueCount, rowMajorBits, Matrix.zeros]

end Matrix

end Boolean
