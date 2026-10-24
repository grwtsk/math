# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.EndpointQuadrature.Checks.Positive.VanishingEndpointMass

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `126d9dd8b1ef9d0f61c2e9ae920fb60c5586167f` · SHA-256 `d3e9bfc8e4aa9424a1cff14e6d69e0759a79c481de9d2bf8738c2b276520c2cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Uncompiled individually reviewed candidate: VanishingEndpointMass

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians,
enthusiasts, and curious minds whose work and questions have helped shape these tools,
and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These provisional roles and computational characterizations are user-supplied;
the exact contribution, source ancestry, attribution and mechanism need clarification.
Existing contributor identities, intellectual sources and applicable notices remain
separate. No mathematical priority, new theorem credit or proof acceptance is claimed.

Original source SHA-256: b1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14
Organized source SHA-256: 83a6ce353352c64dc5a06cb03416db270c62631ba458ef530f581dfb6a766d2e
Source archive: grwtsk/math@99f310907528f620d85095b675ec1b6f9d7a7046
PMD: 510.5.010.040 integration; editorial subject placement only.
All original imports and whole-file documentation are retained. This candidate
contains its selected component; the inherited introduction covers the whole source.
Statements, hypotheses, declaration comments and bodies are exact source copies.
Containing namespace, explicit namespace context and candidate imports are receipted
changes. Historical proof-checking language is not a fresh replay claim.
Outside the public library umbrella; Lean and Lake have not been invoked.
-/

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

namespace GRWTSK.Analysis.RealAnalysis.Integration.EndpointQuadrature.Checks.Positive.VanishingEndpointMass

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceFractionalQuadrature

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

end GRWTSK.Analysis.RealAnalysis.Integration.EndpointQuadrature.Checks.Positive.VanishingEndpointMass
```
