/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import Mathlib.Analysis.Calculus.Deriv.MeanValue
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv

/-!
# Power drops across a unit interval

A mean-value estimate for the drop of a negative real power between `x` and
`x + 1`.  This is independent of the arithmetic application that motivated
it.
-/

set_option autoImplicit false
noncomputable section

open Set

namespace GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop

/-- The drop of the negative power `x ↦ x⁻ᵃ` across a unit interval is at
most the magnitude of its derivative at the left endpoint. -/
theorem rpow_sub_rpow_add_one_le {x a : ℝ} (hx : 0 < x) (ha : 0 ≤ a) :
    x ^ (-a) - (x + 1) ^ (-a) ≤ a * x ^ (-a - 1) := by
  have hxx : x < x + 1 := by linarith
  have hcont : ContinuousOn (fun y : ℝ => y ^ (-a)) (Icc x (x + 1)) := by
    intro y hy
    have hypos : 0 < y := hx.trans_le hy.1
    exact (continuousAt_id.rpow_const (Or.inl hypos.ne')).continuousWithinAt
  have hder : ∀ y ∈ Ioo x (x + 1),
      HasDerivAt (fun z : ℝ => z ^ (-a))
        ((-a) * y ^ (-a - 1)) y := by
    intro y hy
    exact Real.hasDerivAt_rpow_const (Or.inl (hx.trans hy.1).ne')
  obtain ⟨c, hc, hmean⟩ :=
    exists_hasDerivAt_eq_slope (fun y : ℝ => y ^ (-a))
      (fun y : ℝ => (-a) * y ^ (-a - 1)) hxx hcont hder
  have hmean' : (-a) * c ^ (-a - 1) =
      (x + 1) ^ (-a) - x ^ (-a) := by
    simpa using hmean
  have hdrop : x ^ (-a) - (x + 1) ^ (-a) =
      a * c ^ (-a - 1) := by
    linarith
  have hpow : c ^ (-a - 1) ≤ x ^ (-a - 1) :=
    Real.rpow_le_rpow_of_nonpos hx hc.1.le (by linarith)
  rw [hdrop]
  exact mul_le_mul_of_nonneg_left hpow ha

end GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop

#print axioms GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop.rpow_sub_rpow_add_one_le
