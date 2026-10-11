import GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.SturmianFiniteVolume Filter

-- Deliberately invalid: a free count limit does not supply the target limit.
example (α V ξ : ℝ) (origin : ℤ) (free ids : ℝ → ℝ)
    (hfree : ∀ E, Tendsto (fun N => freeNormalizedCount N E) atTop (nhds (free E))) :
    ∀ E, free (E-max V 0) ≤ ids E ∧ ids E ≤ free (E-min V 0) := by
  exact ids_comparison_of_count_limits α V ξ origin free ids hfree
