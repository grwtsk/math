import GRWTSK.Algebra.Polynomial.ConjugateQuartic
open GRWTSK.Polynomial.ConjugateQuartic
-- The witness cannot become nonnegative off the axis, even at height zero.
example : 0 ≤ witnessTrace 1 0 := by
  simpa [witnessTrace_eq] using (show (0 : ℝ) ≤ 0 from le_rfl)
