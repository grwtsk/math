# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceQuadratureEndpointFixtures.Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5eb8df3f7eee90aca538c4cec724099a69922116` · SHA-256 `b1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceFractionalQuadrature
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Hostile unit-cell fixture for continuous truncation at the last integer

This polynomial is a generic finite-cell fixture, not an RH-source
counterexample. Both endpoint samples vanish, but the continuous interior has
nonzero mass. Global compact support is not asserted for this polynomial.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceQuadratureEndpointFixtures

open MeasureTheory
open SourceFractionalQuadrature

/-- A generic continuous tail strictly between two sampled endpoints. -/
def cellInterior (N u : ℝ) : ℝ := (u - N) ^ 2 * (N + 1 - u) ^ 2

theorem cellInterior_endpoints (N : ℝ) :
    cellInterior N N = 0 ∧ cellInterior N (N + 1) = 0 := by simp [cellInterior]

theorem cellInterior_integral (N : ℝ) :
    (∫ u in N..(N + 1), cellInterior N u) = (1 / 30 : ℝ) := by
  let F := fun u : ℝ => (u - N) ^ 3 / 3 - (u - N) ^ 4 / 2 + (u - N) ^ 5 / 5
  have hd (u : ℝ) : HasDerivAt F (cellInterior N u) u := by
    have h := (hasDerivAt_id u).sub_const N
    convert (((h.pow 3).div_const 3).sub ((h.pow 4).div_const 2)).add
      ((h.pow 5).div_const 5) using 1 <;> (try rfl)
    dsimp [cellInterior]
    ring
  have hi : IntervalIntegrable (cellInterior N) volume N (N + 1) := by
    apply Continuous.intervalIntegrable
    unfold cellInterior
    fun_prop
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => hd u) hi]
  dsimp [F]
  norm_num

/-- Zero sampled endpoints do not justify erasing the continuous tail through `N+1`. -/
theorem zero_endpoints_do_not_erase_continuous_tail (N : ℝ) :
    cellInterior N N = 0 ∧ cellInterior N (N + 1) = 0 ∧
      (∫ u in N..(N + 1), cellInterior N u) ≠ 0 := by
  exact ⟨(cellInterior_endpoints N).1, (cellInterior_endpoints N).2,
    by rw [cellInterior_integral]; norm_num⟩

end FormalResearch.RiemannHypothesis.SourceQuadratureEndpointFixtures
```
