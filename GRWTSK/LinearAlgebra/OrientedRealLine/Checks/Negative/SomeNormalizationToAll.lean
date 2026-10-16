/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.LinearAlgebra.OrientedRealLine.Coherence

set_option autoImplicit false

open GRWTSK.LinearAlgebra.OrientedRealLine

example {L M : Line} (P : PolyIsomorphism L M) (x : L.Carrier)
    (h : ∃ f ∈ P, M.coordinate (f.linearEquiv x) ≤ 1) :
    ∀ f ∈ P, M.coordinate (f.linearEquiv x) ≤ 1 := by
  exact h
