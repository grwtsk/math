/- Intentional nonpositive-parameter control. Apache-2.0. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianDyadicSummation
open GRWTSK.Analysis.MellinTransform.GaussianDyadicSummation
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
-- Intended rejection: the actual value-sum consumer requires a strictly positive parameter.
example : Summable (fun j : ℕ => ((2:ℝ)^j)^(1:ℝ)*‖gaussianDyadicProfile 0 j (3/4)‖) := by
  obtain ⟨C,hC,h⟩ := gaussianDyadicProfile_values_summed 1 (by norm_num)
  exact (h 0 (le_refl (0:ℝ)) (3/4)).1
