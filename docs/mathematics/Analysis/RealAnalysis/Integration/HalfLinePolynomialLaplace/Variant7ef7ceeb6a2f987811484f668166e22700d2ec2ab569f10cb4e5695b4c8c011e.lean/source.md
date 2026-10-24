# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.HalfLinePolynomialLaplace.Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb321471a2e1ca82d1fb519c014e18be246a7f40` · SHA-256 `07292c145bb8340640c89b4b80628349ad1570642dcc51ec397e01dc82f1b9a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.HalfLinePolynomialLaplaceIntegrable.Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.HalfLinePolynomialLaplaceIntegrable.Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa","mathematical_subject":"Analysis.Integration","original_sha256":"3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.Complex.RealDeriv

/-!
# Polynomial Laplace integration on the genuine complex right half-plane

Polynomial moments are integrable in the decay regime used here.
The exact formula is proved by an integrable derivative and half-line FTC.
The helper is used by both limiting and finite polynomial boundary transforms.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.HalfLinePolynomialLaplaceIntegrable.Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa

namespace FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace

open MeasureTheory Set Filter

noncomputable section

/-- Every polynomial moment is integrable when the Laplace parameter has positive real part. -/
theorem half_line_polynomial_laplace_integrable (k : ℕ) (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fun y : ℝ ↦ (y : ℂ) ^ k * Complex.exp (-s * (y : ℂ))) (Ioi 0) := by
  apply (integrable_norm_iff (by fun_prop)).mp
  have hi := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (k : ℝ)) (p := 1) (b := s.re)
    (lt_of_lt_of_le (by norm_num) (Nat.cast_nonneg k)) (by norm_num) hs
  have he : IntegrableOn (fun y : ℝ ↦ y ^ k * Real.exp (-s.re * y)) (Ioi 0) := by
    simpa only [Real.rpow_natCast, Real.rpow_one] using hi
  refine he.congr ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
  change 0 < y at hy
  simp [norm_pow, Complex.norm_real, Complex.norm_exp, Complex.mul_re, abs_of_pos hy]

/-- The derivative of one higher polynomial moment retains both terms of the recurrence. -/
theorem polynomial_laplace_has_deriv (k : ℕ) (s : ℂ) (y : ℝ) :
    HasDerivAt (fun x : ℝ ↦ (x : ℂ) ^ (k + 1) * Complex.exp (-s * (x : ℂ)))
      (((k + 1 : ℕ) : ℂ) * ((y : ℂ) ^ k * Complex.exp (-s * (y : ℂ))) -
        s * ((y : ℂ) ^ (k + 1) * Complex.exp (-s * (y : ℂ)))) y := by
  convert (((hasDerivAt_id y).ofReal_comp.pow (k + 1)).mul
    (((hasDerivAt_id y).ofReal_comp.const_mul (-s)).cexp)) using 1
  · rfl
  · rfl
  · simp only [id_eq, Nat.add_sub_cancel_right, Complex.ofReal_one, mul_one, Pi.pow_apply, pow_succ]
    ring

/-- The integrable derivative vanishes at infinity and has no boundary term at zero. -/
theorem half_line_polynomial_laplace_recurrence (k : ℕ) (s : ℂ) (hs : 0 < s.re) :
    s * (∫ y in Ioi (0 : ℝ), (y : ℂ) ^ (k + 1) * Complex.exp (-s * (y : ℂ))) =
      ((k + 1 : ℕ) : ℂ) *
        (∫ y in Ioi (0 : ℝ), (y : ℂ) ^ k * Complex.exp (-s * (y : ℂ))) := by
  have h0 := half_line_polynomial_laplace_integrable k s hs
  have h1 := half_line_polynomial_laplace_integrable (k + 1) s hs
  have hd := (h0.const_mul ((k + 1 : ℕ) : ℂ)).sub (h1.const_mul s)
  have ht := tendsto_zero_of_hasDerivAt_of_integrableOn_Ioi
    (fun y _ ↦ polynomial_laplace_has_deriv k s y) hd h1
  have hf := integral_Ioi_of_hasDerivAt_of_tendsto'
    (fun y _ ↦ polynomial_laplace_has_deriv k s y) hd ht
  rw [integral_sub (h0.const_mul _) (h1.const_mul s)] at hf
  simp only [integral_const_mul, Complex.ofReal_zero,
    zero_pow (by omega : k + 1 ≠ 0), zero_mul, mul_zero, sub_zero] at hf
  exact (sub_eq_zero.mp hf).symm

/-- The exact complex half-line polynomial Laplace formula, with genuine decay and integrability. -/
theorem half_line_polynomial_laplace_integral (k : ℕ) (s : ℂ) (hs : 0 < s.re) :
    (∫ y in Ioi (0 : ℝ), (y : ℂ) ^ k * Complex.exp (-s * (y : ℂ))) =
      (k.factorial : ℂ) / s ^ (k + 1) := by
  have hne : s ≠ 0 := by intro h; simp [h] at hs
  induction k with
  | zero =>
    have h := integral_exp_mul_complex_Ioi (a := -s) (by simpa using hs) 0
    simpa using h
  | succ k ih =>
    have hr := half_line_polynomial_laplace_recurrence k s hs
    rw [ih] at hr
    have he : (∫ y in Ioi (0 : ℝ), (y : ℂ) ^ (k + 1) * Complex.exp (-s * (y : ℂ))) =
        (((k + 1 : ℕ) : ℂ) * ((k.factorial : ℂ) / s ^ (k + 1))) / s := by
      apply (eq_div_iff hne).mpr
      simpa only [mul_comm] using hr
    rw [he, Nat.factorial_succ, Nat.cast_mul]
    simp only [pow_succ]
    field_simp

end
end FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace
```
