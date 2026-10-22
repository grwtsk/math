/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SourceSensitivePackingNoGo
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SourceSensitivePackingNoGoControls

open Filter Topology
open GRWTSK.RiemannHypothesis

/-- A fixed zero model with zero limit cannot asymptotically encode target 1
through a positive limiting coefficient and vanishing residual. -/
theorem fixed_zero_model_rejects_nonzero_target
    (weight residual : ℕ → ℝ) (L : ℝ)
    (hweight : Tendsto weight atTop (𝓝 L))
    (hL : 0 < L)
    (hres : Tendsto residual atTop (𝓝 0))
    (hidentity : ∀ n, (0 : ℝ) = weight n * 1 + residual n) :
    False := by
  have h :=
    target_eq_zero_of_model_tendsto_zero
      (fun _ => 0) weight residual 1 L
      tendsto_const_nhds hweight hL hres hidentity
  norm_num at h

end GRWTSK.RiemannHypothesis.Checks.SourceSensitivePackingNoGoControls
