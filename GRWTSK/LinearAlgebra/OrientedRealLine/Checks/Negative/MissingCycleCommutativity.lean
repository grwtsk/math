/- Copyright (c) 2026 R.A. Jacob Martone. MIT. Intended type rejection. -/
import GRWTSK.LinearAlgebra.OrientedRealLine.PositiveScale

set_option autoImplicit false

open GRWTSK.LinearAlgebra.OrientedRealLine
open scoped BigOperators

example (C : Chain) (n : ℕ)
    (close : PositiveScaleEquiv (C.object n) (C.object 0)) :
    close.scale * (∏ i ∈ Finset.range n, (C.edge i).scale) = 1 := by
  exact C.cycle_scale n close
