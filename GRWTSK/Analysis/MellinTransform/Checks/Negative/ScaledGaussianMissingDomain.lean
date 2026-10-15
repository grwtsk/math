/- Intentional missing-away-from-zero-domain control. Apache-2.0. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.ScaledGaussianDerivatives
open Set
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.ScaledGaussianDerivatives

-- Intended rejection: a domain containing zero cannot supply the actual annular domain.
example : ∃ C : ℝ, 0<C ∧ ∀ r : ℝ, 0<r →
    ‖iteratedDeriv 0 (fun x : ℝ => gaussianMellinProfile (r*x)) 0‖ ≤ C*r^(-(1:ℝ)) := by
  obtain ⟨C,hC,h⟩ := gaussianLog_scaled_derivative_bound 1 0
  refine ⟨C,hC,?_⟩
  intro r hr
  exact h r hr 0 (by norm_num : (0:ℝ) ∈ Set.Icc (0:ℝ) 2)
