import GRWTSK.Algebra.LinearAlgebra.AlmostMathieu
open GRWTSK.Algebra.LinearAlgebra.AlmostMathieu

-- Must fail: multiplying the unscaled phase by 2π changes equation (1.1).
example (α coupling θ : ℝ) (n : ℤ) :
    potential α coupling θ n =
      2 * coupling * Real.cos (2 * Real.pi * (α * n + θ)) := rfl
