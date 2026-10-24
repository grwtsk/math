# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFiniteHeadMinusWeightAttempt01.Variant2167c116f9d651d39576fe37ff5039a3d22f06412aa24b2c29260a75e6e086ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4838205f347d3f1da0346305e49367a83047e2b` · SHA-256 `7a839705a16eda371abfd24376c1287534be47deec125f2587613c2e76b5b526`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMinusKernelErrorTBound.Variant7bed838935e3d9a6c8c746d23491745676cc1d65a16d38b594df1b0ab365a916","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7bed838935e3d9a6c8c746d23491745676cc1d65a16d38b594df1b0ab365a916","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualMinusKernelErrorTBound.Variant7bed838935e3d9a6c8c746d23491745676cc1d65a16d38b594df1b0ab365a916","mathematical_subject":"Analysis.Calculus","original_sha256":"7bed838935e3d9a6c8c746d23491745676cc1d65a16d38b594df1b0ab365a916","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/finite-head-formal/SourceFiniteHeadMinusWeight.attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceInvariantBoundaryCoefficient

/-!
The actual finite-head minus kernel differs from its -1/2 value by O(A^-2).
Every derivative is in physical t coordinates; source normalization is unchanged.
This bounds a finite-head transport error, not the surviving signed arithmetic tail.
Direction and conceptual origin: grwtsk contributors.
Source calculation and native proof construction: OpenAI Codex assistance.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMinusKernelErrorTBound.Variant7bed838935e3d9a6c8c746d23491745676cc1d65a16d38b594df1b0ab365a916

set_option autoImplicit false
noncomputable section
namespace RH16FiniteHeadMinusWeight

open RH16InvariantBoundary RH16ActualF7
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- Source evenness removes the O(1/A) error of a global first-derivative estimate. -/
theorem actual_minus_kernel_error_t_bound (A t : ℝ) (hA : 91 ≤ A) (ht : 0 ≤ t) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t -
      sourceCorrelation explicitSecondDerivative A t / 2 + 1 / 2| ≤
        5 * t / A ^ 2 + 5 * t ^ 2 / (4 * A ^ 2) := by
  have hd := actual_deriv_abs_le_linear A t hA
  rw [abs_of_nonneg ht] at hd
  have hc := actual_correlation_zero_taylor_bound A t hA
  have he : deriv (sourceCorrelation explicitSecondDerivative A) t -
      sourceCorrelation explicitSecondDerivative A t / 2 + 1 / 2 =
        deriv (sourceCorrelation explicitSecondDerivative A) t -
          (sourceCorrelation explicitSecondDerivative A t - 1) / 2 := by ring
  rw [he]
  calc
    _ ≤ |deriv (sourceCorrelation explicitSecondDerivative A) t| +
        |(sourceCorrelation explicitSecondDerivative A t - 1) / 2| := abs_sub _ _
    _ = |deriv (sourceCorrelation explicitSecondDerivative A) t| +
        |sourceCorrelation explicitSecondDerivative A t - 1| / 2 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    _ ≤ 5 / A ^ 2 * t + (5 / A ^ 2 * t ^ 2 / 2) / 2 :=
      add_le_add hd (div_le_div_of_nonneg_right hc (by norm_num))
    _ = _ := by ring

/-- The same estimate is stated on the literal source's named minus-weight object. -/
theorem minusCorrelationWeight_error_t_bound (A t : ℝ) (hA : 91 ≤ A) (ht : 0 ≤ t) :
    |minusCorrelationWeight A t + 1 / 2| ≤
      5 * t / A ^ 2 + 5 * t ^ 2 / (4 * A ^ 2) :=
  actual_minus_kernel_error_t_bound A t hA ht

/-- Every real coordinate of the complete fixed head through seven has the same A^-2 budget. -/
theorem actual_minus_kernel_error_fixed_head (A t : ℝ) (hA : 91 ≤ A)
    (ht0 : 0 ≤ t) (ht7 : t ≤ Real.log 7) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t -
      sourceCorrelation explicitSecondDerivative A t / 2 + 1 / 2| ≤ 15 / A ^ 2 := by
  have ht2 : t ≤ 2 := ht7.trans log_seven_lt_two.le
  have htsq : t ^ 2 ≤ 4 := by nlinarith
  have h1 : 5 * t / A ^ 2 ≤ 10 / A ^ 2 :=
    div_le_div_of_nonneg_right (by linarith) (sq_nonneg A)
  have h2 : 5 * t ^ 2 / (4 * A ^ 2) ≤ 5 / A ^ 2 := by
    calc
      _ ≤ 5 * 4 / (4 * A ^ 2) :=
        div_le_div_of_nonneg_right (by linarith) (by positivity)
      _ = _ := by ring
  exact (actual_minus_kernel_error_t_bound A t hA ht0).trans
    (by nlinarith [add_le_add h1 h2])

end RH16FiniteHeadMinusWeight
```
