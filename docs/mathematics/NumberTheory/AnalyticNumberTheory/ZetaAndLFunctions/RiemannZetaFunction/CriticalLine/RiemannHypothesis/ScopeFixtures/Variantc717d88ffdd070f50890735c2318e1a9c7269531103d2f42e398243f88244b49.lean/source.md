# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScopeFixtures.Variantc717d88ffdd070f50890735c2318e1a9c7269531103d2f42e398243f88244b49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16b737c51b40275d12632b1485ea88147d972059` · SHA-256 `d42105a51eb17b08c6b93206d5c9c4f20cf0b624986315b0fc706c9c9879fdc2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MissingEndpointOneRejected.Variantdcf5be2648b25697a20f994f1589e64b988d19246b42eaf59ae654a8d24ba0e9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcf5be2648b25697a20f994f1589e64b988d19246b42eaf59ae654a8d24ba0e9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.MissingEndpointOneRejected.Variantdcf5be2648b25697a20f994f1589e64b988d19246b42eaf59ae654a8d24ba0e9","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"dcf5be2648b25697a20f994f1589e64b988d19246b42eaf59ae654a8d24ba0e9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle19/principal-cumulative/attempt-04/ScopeFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCriticalCumulativeDiscrepancy

/-! Actual endpoint, pre-prime and touching-atom guards outside the primary eighteen roots.
AI attribution: developed with OpenAI Codex. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MissingEndpointOneRejected.Variantdcf5be2648b25697a20f994f1589e64b988d19246b42eaf59ae654a8d24ba0e9

set_option autoImplicit false
set_option linter.hashCommand false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCumulativeScopeFixtures
open MeasureTheory
open scoped Interval
open SourceCriticalCumulativeDiscrepancy SourceCriticalDensityQuadrature SourceCriticalDecayWork
open SourceFirstPrimeAbel WeightedPrimeAbel

/-- Removing the literal plus-one compensation already changes the lower endpoint. -/
theorem missing_endpoint_one_rejected :
    criticalCumulativeDiscrepancy 0 ≠ primeLogError 0 - criticalDecay 0 := by
  rw [criticalCumulativeDiscrepancy_at_zero]
  simp [primeLogError, primeLogPrefix_zero, criticalDecay]

/-- A literal coordinate below the first prime has negative discrepancy. -/
theorem actual_preprime_discrepancy_negative :
    criticalCumulativeDiscrepancy (Real.log 2 / 2) < 0 := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have he := primeLogError_below_first_prime
    (show Real.log 2 / 2 < Real.log 2 by linarith)
  have hz : primeLogPrefix (Real.log 2 / 2) = 0 := by
    unfold primeLogError at he
    linarith
  unfold criticalCumulativeDiscrepancy
  rw [hz, zero_sub]
  have hd := criticalDensity_integral_pos (A := Real.log 2 / 4) (by linarith)
  have hx : 2 * (Real.log 2 / 4) = Real.log 2 / 2 := by ring
  rw [hx] at hd
  exact neg_neg_of_pos hd

/-- The upper touching prime remains in the closed inventory with zero primitive factor. -/
theorem actual_touching_prime_retained_zero_factor :
    2 ∈ primeLogInventory (Real.log 2) ∧
      Real.log (2 : ℝ) / 2 * (Real.log 2 - Real.log 2) = 0 := by
  constructor
  · unfold primeLogInventory
    norm_num [Real.exp_log (show 0 < (2 : ℝ) by norm_num)]
  · ring

/-- Actual positive scale does not balance its raw closed prime mass with the density. -/
theorem actual_endpoint_correction_required {A : ℝ} (hA : 0 < A) :
    criticalCumulativeDiscrepancy (2 * A) ≠ primeLogError (2 * A) := by
  rw [criticalCumulativeDiscrepancy_eq]
  have hh : criticalDecay (2 * A) < 1 := by
    unfold criticalDecay
    rw [Real.exp_lt_one_iff]
    linarith
  linarith

end FormalResearch.RiemannHypothesis.SourceCumulativeScopeFixtures
open FormalResearch.RiemannHypothesis.SourceCumulativeScopeFixtures
#check @missing_endpoint_one_rejected
#print axioms missing_endpoint_one_rejected
#check @actual_preprime_discrepancy_negative
#print axioms actual_preprime_discrepancy_negative
#check @actual_touching_prime_retained_zero_factor
#print axioms actual_touching_prime_retained_zero_factor
#check @actual_endpoint_correction_required
#print axioms actual_endpoint_correction_required
```
