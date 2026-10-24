# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceQuadratureEndpointFixtures.Variantfb2b0ebac729f255f44a9298ffbf51712c4c28581e3a8da168c54418b78f3fad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b85148de42d50efebb9f9a81c9760d9f65d04ad` · SHA-256 `6a2d967b44dc2b1c147b5724334456863ed78570ca9ada838d136ee58d5b655b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CellInterior.Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CellInterior.Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/pointwise-sampling/SourceQuadratureEndpointFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceFractionalQuadrature
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Hostile unit-cell fixture for continuous truncation at the last integer

This polynomial is a generic finite-cell fixture, not an RH-source
counterexample. Both endpoint samples vanish, but the continuous interior has
nonzero mass. Global compact support is not asserted for this polynomial.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CellInterior.Variantb1692c02a45eaff5606892ff3359bbf8639f843d9500dbacd47549872964ad14

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
