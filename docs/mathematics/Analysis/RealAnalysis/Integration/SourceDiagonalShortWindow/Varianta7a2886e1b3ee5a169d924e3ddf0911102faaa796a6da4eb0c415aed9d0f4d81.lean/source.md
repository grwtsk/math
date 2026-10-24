# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceDiagonalShortWindow.Varianta7a2886e1b3ee5a169d924e3ddf0911102faaa796a6da4eb0c415aed9d0f4d81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d66f955c9e243c25c4796dc2212961337839240` · SHA-256 `240d12f559f0054bf8c981ae70c5ecd1fd6449dab872022cbccadd3edd08270e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.DiagonalCorrelationSubOneAbsLe.Varianta4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.DiagonalCorrelationSubOneAbsLe.Varianta4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc","mathematical_subject":"Analysis.Integration","original_sha256":"a4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/FormalResearch/RiemannHypothesis/SourceDiagonalShortWindow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# The actual diagonal's short integral correction

The derivative bound for the unchanged source gives the exact quadratic
error budget on `[0, log floor(A²)]`. A fixed constant controls this error
at every real scale `A ≥ 1`; the moving floor and endpoint are retained.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.DiagonalCorrelationSubOneAbsLe.Varianta4b55abcf88a8d4cd8eb508dde52c229b0753195bd07f550e1136e399ecfa4bc

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDiagonalShortWindow

open MeasureTheory Set
open SourceDiagonalPrimeAbel

noncomputable section

/-- The actual normalized correlation is close to one on a short window. -/
theorem diagonalCorrelation_sub_one_abs_le (A : ℝ) (hA : 1 ≤ A)
    (t : ℝ) (ht : 0 ≤ t) :
    |diagonalCorrelation A t - 1| ≤ (10 / A) * t := by
  have hd := (diagonalCorrelation_contDiff A (by linarith)).differentiable (by norm_num)
  have hm := norm_image_sub_le_of_norm_deriv_le_segment'
    (a := 0) (b := t) (f := diagonalCorrelation A)
    (f' := deriv (diagonalCorrelation A))
    (fun x _ => (hd x).hasDerivAt.hasDerivWithinAt)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      diagonalCorrelation_deriv_abs_le A x hA)
    t ⟨ht, le_rfl⟩
  simpa only [diagonalCorrelation_at_zero A hA, Real.norm_eq_abs, sub_zero] using hm

/-- Integrating the literal source's derivative bound gives the factor five. -/
theorem diagonalCorrelation_short_integral_error (A : ℝ) (hA : 1 ≤ A)
    (L : ℝ) (hL : 0 ≤ L) :
    |(∫ t in 0..L, diagonalCorrelation A t) - L| ≤ 5 * L ^ 2 / A := by
  have hc := (diagonalCorrelation_contDiff A (by linarith)).continuous
  have hs : (∫ t in 0..L, diagonalCorrelation A t) - L =
      ∫ t in 0..L, diagonalCorrelation A t - 1 := by
    rw [intervalIntegral.integral_sub (hc.intervalIntegrable _ _)
      (continuous_const.intervalIntegrable _ _), intervalIntegral.integral_const]
    simp
  rw [hs]
  calc
    |∫ t in 0..L, diagonalCorrelation A t - 1| ≤
        ∫ t in 0..L, |diagonalCorrelation A t - 1| :=
      intervalIntegral.abs_integral_le_integral_abs hL
    _ ≤ ∫ t in 0..L, (10 / A) * t :=
      intervalIntegral.integral_mono_on hL
        ((hc.sub continuous_const).abs.intervalIntegrable _ _)
        ((continuous_const.mul continuous_id).intervalIntegrable _ _)
        (fun t ht => diagonalCorrelation_sub_one_abs_le A hA t ht.1)
    _ = 5 * L ^ 2 / A := by
      rw [intervalIntegral.integral_const_mul, integral_id]
      ring

/-- A coarse scale-independent logarithmic budget preserves the exact floor. -/
theorem floor_square_log_square_div_bound (A : ℝ) (hA : 1 ≤ A) :
    (Real.log (⌊A ^ 2⌋₊ : ℝ)) ^ 2 / A ≤ 16 := by
  have hA0 : 0 < A := by linarith
  have hfloor : 1 ≤ ⌊A ^ 2⌋₊ := (Nat.one_le_floor_iff _).mpr (by nlinarith)
  have hfR : (1 : ℝ) ≤ ⌊A ^ 2⌋₊ := by exact_mod_cast hfloor
  have hL0 : 0 ≤ Real.log (⌊A ^ 2⌋₊ : ℝ) := Real.log_nonneg hfR
  have hLA : Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ 2 * Real.log A := by
    calc
      Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ Real.log (A ^ 2) :=
        Real.log_le_log (by linarith) (Nat.floor_le (sq_nonneg A))
      _ = 2 * Real.log A := by rw [Real.log_pow]; norm_num
  have hs0 : 0 < Real.sqrt A := Real.sqrt_pos.2 hA0
  have hlog := Real.log_le_sub_one_of_pos hs0
  rw [Real.log_sqrt (le_of_lt hA0)] at hlog
  have hLs : Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ 4 * Real.sqrt A := by linarith
  have hs2 := Real.sq_sqrt (le_of_lt hA0)
  apply (div_le_iff₀ hA0).2
  nlinarith [sq_nonneg (4 * Real.sqrt A - Real.log (⌊A ^ 2⌋₊ : ℝ))]

/-- The literal lower window costs at most eighty, uniformly for all `A ≥ 1`. -/
theorem floor_square_short_integral_error (A : ℝ) (hA : 1 ≤ A) :
    |(∫ t in 0..Real.log (⌊A ^ 2⌋₊ : ℝ), diagonalCorrelation A t) -
      Real.log (⌊A ^ 2⌋₊ : ℝ)| ≤ 80 := by
  have he := diagonalCorrelation_short_integral_error A hA
    (Real.log (⌊A ^ 2⌋₊ : ℝ)) (floor_square_log_bounds A hA).1
  have hb := floor_square_log_square_div_bound A hA
  calc
    _ ≤ 5 * (Real.log (⌊A ^ 2⌋₊ : ℝ)) ^ 2 / A := he
    _ ≤ 80 := by
      rw [mul_div_assoc]
      exact (mul_le_mul_of_nonneg_left hb (by norm_num : (0 : ℝ) ≤ 5)).trans_eq
        (by norm_num)

end
end FormalResearch.RiemannHypothesis.SourceDiagonalShortWindow
```
