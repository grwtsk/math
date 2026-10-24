# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScopeFixturesPrint.Variantb6bb2bab356f845605c88bccdddec5f1abfc5724ac00ee6b22567486cb1b8be8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e89d9d134b5a7c442d138737545cd826b5c8e77` · SHA-256 `9b7df3e4911e048466e0d9a371b04b836529135bbea66b98d88802cb6f569def`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BoundaryMassCorrectionRequired.Variant22f756ba1d512f8c7abc5a2970b1c227677c3f176e2709d41263aa13fef73515","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22f756ba1d512f8c7abc5a2970b1c227677c3f176e2709d41263aa13fef73515","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.BoundaryMassCorrectionRequired.Variant22f756ba1d512f8c7abc5a2970b1c227677c3f176e2709d41263aa13fef73515","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"22f756ba1d512f8c7abc5a2970b1c227677c3f176e2709d41263aa13fef73515","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle18/regent-critical20/native-replay-v1/SourceCriticalDensityQuadrature/ScopeFixturesPrint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature
import FormalResearch.RiemannHypothesis.SourcePairedSquareMainTerm

/-! Actual private endpoint, mass and signed-weight guards, excluded from the ten primary roots.
AI attribution: developed with OpenAI Codex. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BoundaryMassCorrectionRequired.Variant22f756ba1d512f8c7abc5a2970b1c227677c3f176e2709d41263aa13fef73515

set_option autoImplicit false
set_option linter.hashCommand false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalDensityScopeFixtures
open MeasureTheory
open scoped Interval
open SourceCriticalDensityQuadrature SourceCriticalDecayWork SourcePairedPrimeAverages
open SourcePairedTailTest SourcePairedTailQuadrature SourcePairedSquareMainTerm
open SourceFirstPrimeAbel SourceDiagonalMainTerm WeightedPrimeAbel

/-- The actual positive-scale endpoint mass correction cannot be removed. -/
theorem boundary_mass_correction_required {A : ℝ} (hA : 0 < A) :
    criticalDensityPrefixDiscrepancy A ≠ primeLogError (2*A) := by
  rw [criticalDensityPrefixDiscrepancy_eq]
  have hh : criticalDecay (2*A) < 1 := by
    unfold criticalDecay
    rw [Real.exp_lt_one_iff]
    linarith
  linarith

/-- A literal pre-prime scale has no prime atoms and strictly positive density mass. -/
theorem actual_preprime_mass_not_balanced :
    criticalDensityPrefixDiscrepancy (Real.log 2/4) < 0 := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have he := primeLogError_below_first_prime
    (show 2*(Real.log 2/4) < Real.log 2 by linarith)
  have hz : primeLogPrefix (2*(Real.log 2/4)) = 0 := by
    unfold primeLogError at he
    linarith
  unfold criticalDensityPrefixDiscrepancy
  rw [hz, zero_sub]
  exact neg_neg_of_pos (criticalDensity_integral_pos (by linarith))

/-- Actual source integrals have opposite signs despite the strictly positive decay weight. -/
theorem actual_opposite_signed_source_integrals {A : ℝ} (hA : 8000 ≤ A) :
    (0 < ∫ u in 0..2*A, pairedTailTest A u) ∧
      (1/2 : ℝ)*(∫ u in 0..2*A, criticalDecay u*pairedTailTest A u) < 0 := by
  have h1 : 1 ≤ A := by linarith
  constructor
  · rw [pairedTailTest_integral_eq h1]
    exact pairedTailTest_drift_pos h1
  · rw [criticalDensity_weighted_pairedTailTest h1]
    have hc := diagonalMainCoefficient_ge_one_div_four_thousand h1
    have hs := mul_le_mul_of_nonneg_right hc (show 0 ≤ A by linarith)
    have hb := (criticalDecayNegativeMean_mem_Icc h1).1
    linarith

/-- A density bounded above by one can increase this actual signed source integral. -/
theorem actual_bounded_density_increases_signed_integral {A : ℝ} (hA : 8000 ≤ A) :
    (∫ u in 0..2*A, pairedTailTest A u) <
      ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u := by
  have h1 : 1 ≤ A := by linarith
  rw [pairedTailTest_integral_eq h1, criticalDensity_quadrature_eq_full_drift h1]
  have hc := diagonalMainCoefficient_ge_one_div_four_thousand h1
  have hs := mul_le_mul_of_nonneg_right hc (show 0 ≤ A by linarith)
  have hb := (criticalDecayNegativeMean_mem_Icc h1).1
  linarith

/-- The nonnegative-axis range cannot be extended to all real positions. -/
theorem actual_negative_axis_density : criticalDensity (-2*Real.log 4) = -1 := by
  unfold criticalDensity criticalDecay
  rw [show -(-2*Real.log 4)/2=Real.log 4 by ring, Real.exp_log (by norm_num)]
  norm_num

end FormalResearch.RiemannHypothesis.SourceCriticalDensityScopeFixtures

open FormalResearch.RiemannHypothesis.SourceCriticalDensityScopeFixtures
#print boundary_mass_correction_required
#print actual_preprime_mass_not_balanced
#print actual_opposite_signed_source_integrals
#print actual_bounded_density_increases_signed_integral
#print actual_negative_axis_density
```
