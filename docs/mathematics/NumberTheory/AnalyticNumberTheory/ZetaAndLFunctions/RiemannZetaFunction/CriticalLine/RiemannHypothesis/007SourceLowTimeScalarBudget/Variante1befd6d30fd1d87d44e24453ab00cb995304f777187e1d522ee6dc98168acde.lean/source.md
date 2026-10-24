# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.007SourceLowTimeScalarBudget.Variante1befd6d30fd1d87d44e24453ab00cb995304f777187e1d522ee6dc98168acde

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cdb589499d1280237a86c9a259930ba91cdf4e2` · SHA-256 `0d703fc606d253bc95da9ecbdbe7994606c7a76f7940f16499ab1d421c4a75a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShortMoebiusAbsSumLeCutoff.Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ShortMoebiusAbsSumLeCutoff.Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/owner79-source-reconciliation-20261007T004709Z/raw/007-SourceLowTimeScalarBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaCentering
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Literal low-time scalar budget

UNCOMPILED proof-text preparation. The actual centered prefix is bounded using
its recorded discrepancy theorem. The exponential strip mass pays its cutoff
factor. These scalar facts do not bound the full signed interaction. Region
restriction, Fubini and actual state composition remain separate prerequisites.

AI attribution: OpenAI Codex proof-text preparation; native execution is held.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShortMoebiusAbsSumLeCutoff.Variantf5e2896b89335041277632bd777f2e03d553c52a7dc16cc57b2ca4ee7ea4704b

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceLowTimeScalarBudget

open ArithmeticFunction MeasureTheory
open scoped BigOperators Interval
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering SourceMangoldtAbel

noncomputable section

/-- The original finite divisor budget has its literal U factor. -/
theorem short_moebius_abs_sum_le_cutoff (U : ℕ) :
    (∑ d ∈ Finset.Icc 1 U, |(moebius d : ℝ)|) ≤ (U : ℝ) := by
  calc
    _ ≤ ∑ _d ∈ Finset.Icc 1 U, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro d _
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
    _ = _ := by simp

/-- This uses the original centered row, not a substitute bounded coefficient. -/
theorem centered_beta_prefix_abs_le_cutoff (U k : ℕ) (hU : 1 ≤ U) (hUk : U ≤ k) :
    |∑ n ∈ Finset.Ioc U k, centeredBeta U n| ≤ (U : ℝ) := by
  exact (centeredBeta_interval_abs_le U U k hU le_rfl hUk).trans
    (short_moebius_abs_sum_le_cutoff U)

/-- The disclosed Mangoldt error budget has a positive exact value. -/
theorem mangoldt_error_budget_pos : 0 < Real.log 4 + 4 + Real.log 2 := by
  have h4 : 0 ≤ Real.log (4 : ℝ) := Real.log_nonneg (by norm_num)
  have h2 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  linarith

/-- The below-zero error convention is not used on this actual positive strip. -/
theorem mangoldt_error_on_low_time_abs_le (U : ℕ) (hU : 1 ≤ U)
    (t : ℝ) (ht : Real.log (U : ℝ) ≤ t) :
    |mangoldtLogError t| ≤ Real.log 4 + 4 + Real.log 2 := by
  have hUr : (1 : ℝ) ≤ U := by exact_mod_cast hU
  exact mangoldtLogError_abs_le t ((Real.log_nonneg hUr).trans ht)

/-- U>0 is essential: Real.log 0 is assigned zero and cannot be exponentiated back. -/
theorem exponential_low_time_mass (U : ℕ) (hU : 1 ≤ U) :
    (∫ t in Real.log (U : ℝ)..Real.log ((U + 1 : ℕ) : ℝ), Real.exp (t / 2)) =
      2 * (Real.sqrt ((U + 1 : ℕ) : ℝ) - Real.sqrt (U : ℝ)) := by
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have ha0 : 0 < ((U + 1 : ℕ) : ℝ) := by positivity
  rw [intervalIntegral.integral_comp_div (f := Real.exp) (by norm_num : (2 : ℝ) ≠ 0),
    _root_.integral_exp]
  simp only [smul_eq_mul, Real.exp_half, Real.exp_log ha0, Real.exp_log hU0]

/-- The exact strip mass absorbs the actual centered-prefix and cell-mass factors. -/
theorem exponential_low_time_mass_prefix_budget (U : ℕ) (hU : 1 ≤ U) :
    (∫ t in Real.log (U : ℝ)..Real.log ((U + 1 : ℕ) : ℝ), Real.exp (t / 2)) *
      (2 * (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) ≤ 2 := by
  rw [exponential_low_time_mass U hU]
  let u : ℝ := U
  let r := Real.sqrt u
  let s := Real.sqrt (u + 1)
  have hu : 1 ≤ u := by dsimp only [u]; exact_mod_cast hU
  have hr0 : 0 ≤ r := Real.sqrt_nonneg _
  have hs0 : 0 < s := Real.sqrt_pos.mpr (by linarith)
  have hrs : r ≤ s := Real.sqrt_le_sqrt (by linarith)
  have hr2 : r ^ 2 = u := Real.sq_sqrt (by linarith)
  have hs2 : s ^ 2 = u + 1 := Real.sq_sqrt (by linarith)
  have hsr : (s - r) * (s + r) = 1 := by nlinarith
  have hprod : u ≤ s * r := by nlinarith [mul_le_mul_of_nonneg_right hrs hr0]
  have hden : 2 * u ≤ s * (s + r) := by nlinarith
  have hsum : 0 < s + r := by linarith
  have hnum : 4 * u * (s - r) ≤ 2 * s := by
    apply le_of_mul_le_mul_right (a := s + r) _ hsum
    calc
      (4 * u * (s - r)) * (s + r) = 4 * u := by rw [mul_assoc, hsr]; ring
      _ ≤ (2 * s) * (s + r) := by nlinarith
  simp only [Nat.cast_add, Nat.cast_one]
  change 2 * (s - r) * (2 * u / s) ≤ 2
  rw [show 2 * (s - r) * (2 * u / s) = (4 * u * (s - r)) / s by ring]
  apply (div_le_iff₀ hs0).mpr
  exact hnum

/-- The inherited curvature coefficient is used, not recomputed. -/
theorem twice_curvature_budget_le_margin {A : ℝ} (hA : 1 ≤ A) :
    2 * (162826 / (7623 * A ^ 2) + 1 / 4) ≤ (45 : ℝ) := by
  have hA2 : 1 ≤ A ^ 2 := by nlinarith
  have hc : 162826 / (7623 * A ^ 2) ≤ (162826 : ℝ) / 7623 := by
    apply div_le_div_of_nonneg_left (by norm_num) (by norm_num)
    nlinarith
  have hm : 2 * ((162826 : ℝ) / 7623 + 1 / 4) < 45 := by norm_num
  linarith

/-- The scale-independent margin remains multiplied by the actual error budget. -/
theorem error_times_twice_curvature_budget_le_margin {A : ℝ} (hA : 1 ≤ A) :
    (Real.log 4 + 4 + Real.log 2) *
      (2 * (162826 / (7623 * A ^ 2) + 1 / 4)) ≤
      45 * (Real.log 4 + 4 + Real.log 2) := by
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left
    (twice_curvature_budget_le_margin hA) mangoldt_error_budget_pos.le

end
end FormalResearch.RiemannHypothesis.SourceLowTimeScalarBudget
```
