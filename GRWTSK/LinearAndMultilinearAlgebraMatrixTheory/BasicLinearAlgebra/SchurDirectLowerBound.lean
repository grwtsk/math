/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-!
# A direct lower bound on the full shifted form

In the source coordinates, fix a retained head vector and a trial high
response. The remaining high variation has norm `n`. Expanding the same
shifted form at the reconstructed head plus this variation gives its trial
value, twice the real residual cross term, and the high quadratic value.
A whole-residual norm bound `rho` and a high floor `gamma > 0` bound the
change below by `gamma*n^2 - 2*rho*n`. The square
`(gamma*n-rho)^2` gives the sharp loss `rho^2/gamma`. This direction
uses the form expansion for each high variation, with no exact solution map.

Compare `SchurResidual.block_square_completion` in
`SchurResidualEnclosure.lean`, which uses a supplied high solution to identify
the exact Schur form. Here the observer error and whole residual allowance
are paid directly to get a sufficient pointwise lower estimate. For the Weil
source, the domain expansion, residual cross-term bound, coercivity, and
remote residual estimate must concern that same source and its actual form
domain. This file proves their algebraic consequence. The sharp fixture places
the entire residual beyond the observed rows.

Standard square completion. Independent analytical review and novelty
assessment: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.LinearAlgebra.SchurDirectLowerBound

/-- Return an observed trial value to the full shifted form, with separate
prices for the upper observation and for the finite and remote residual. -/
theorem lower_from_coercive_variation
    {shiftedValue upper cross high observed error gamma n rho finiteGram remote : ℝ}
    (hgamma : 0 < gamma)
    (hexpand : shiftedValue = upper + 2 * cross + high)
    (hcross : -rho * n ≤ cross)
    (hhigh : gamma * n ^ 2 ≤ high)
    (hresidual : rho ^ 2 ≤ finiteGram + remote)
    (hupper : |upper - observed| ≤ error) :
    observed - error - (finiteGram + remote) / gamma ≤ shiftedValue := by
  have hsquare : 2 * rho * n - gamma * n ^ 2 ≤ rho ^ 2 / gamma :=
    (le_div_iff₀ hgamma).2 (by nlinarith [sq_nonneg (gamma * n - rho)])
  have hprice := div_le_div_of_nonneg_right hresidual hgamma.le
  have hobserved := (abs_le.mp hupper).1
  linarith

/-- For `Q(u,v) = u² + 4uv + v²`, take head `u = 1`, trial response zero,
and unobserved high variation `v = -2`. The floor is `1` and the entire
residual price comes from the unobserved high coordinate. -/
theorem zero_finite_gram_can_require_remote :
    (1 - (0 + 4) / 1 : ℝ) = 1 + 2 * (-4) + 4 ∧
      (1 + 2 * (-4) + 4 : ℝ) < 1 - 0 / 1 := by
  norm_num

end GRWTSK.LinearAlgebra.SchurDirectLowerBound
