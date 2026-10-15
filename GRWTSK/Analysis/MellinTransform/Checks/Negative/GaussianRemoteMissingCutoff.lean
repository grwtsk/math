/- Intended rejection: missing positive cutoff in an actually false zero-cutoff bound. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianRemoteSeminorms
open GRWTSK.Analysis.MellinTransform.GaussianRemoteSeminorms
example : ∃C : ℝ,0<C ∧
    (∑'j : ℕ,gaussianRemoteValue 1 1 0 (3/4) j)≤C*(1:ℝ)^(1:ℝ)/(0:ℝ)^1 := by
  obtain ⟨C,hC,h⟩ := gaussianRemoteValue_summed 1 1 (by norm_num)
  exact ⟨C,hC,(h 1 (by norm_num) 0 (le_refl (0:ℝ)) (3/4)).2⟩
