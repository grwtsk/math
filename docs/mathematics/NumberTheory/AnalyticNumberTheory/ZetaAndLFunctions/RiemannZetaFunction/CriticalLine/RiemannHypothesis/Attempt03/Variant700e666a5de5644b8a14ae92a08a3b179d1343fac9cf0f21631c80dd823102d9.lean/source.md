# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt03.Variant700e666a5de5644b8a14ae92a08a3b179d1343fac9cf0f21631c80dd823102d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92bc7f542d15efd787ce0d764e6edb75112ee65c` · SHA-256 `610b8f57597b5ccade1b11c0d7cc4ee68137354667ab0c32c756b71053e6fc35`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.P.Variantd7e4d461c93144b504e00095ecff23b6df875e7748398eefe83aee5e2ce4979d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7e4d461c93144b504e00095ecff23b6df875e7748398eefe83aee5e2ce4979d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.P.Variantd7e4d461c93144b504e00095ecff23b6df875e7748398eefe83aee5e2ce4979d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d7e4d461c93144b504e00095ecff23b6df875e7748398eefe83aee5e2ce4979d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass8/real_mode/attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Laplace.Expansion
import Mathlib.Analysis.SpecialFunctions.Exp


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.P.Variantd7e4d461c93144b504e00095ecff23b6df875e7748398eefe83aee5e2ce4979d

set_option autoImplicit false
namespace ContinuousResearch.ActualRealMode
open Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets
open FormalResearch.RiemannHypothesis.Laplace.Algebra
open FormalResearch.RiemannHypothesis.Laplace.Expansion
noncomputable section

def p (x : ℝ) : ℝ := x^4-10*x^3+45*x^2-105*x+105

def normalizedSquare (A z : ℝ) : ℝ :=
  ((bilateralTransform A (z : ℂ) / (Real.sqrt (sourceNormalization A) : ℂ))^2).re

theorem p_coe (x : ℝ) : transformPolynomial (x : ℂ) = (p x : ℂ) := by
  simp [p,transformPolynomial]

theorem actual_scaled_square_real (A : ℝ) (hA : 0 < A) (z : ℝ) (hz : z ≠ 0) :
  A^17 * sourceNormalization A * normalizedSquare A z =
    (384^2 * (z^2-1/4)^2/z^18) *
      (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 := by
  have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  have hs : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr hZ).ne'
  have hsq : (Real.sqrt (sourceNormalization A) : ℂ)^2 = (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hZ.le
  have he := actual_scaled_square A hA (z : ℂ) (by exact_mod_cast hz)
  have hc : ((A^17 * sourceNormalization A : ℝ) : ℂ) *
      (bilateralTransform A (z : ℂ) / (Real.sqrt (sourceNormalization A) : ℂ))^2 =
      ((384^2*(z^2-1/4)^2/z^18) *
        (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 : ℝ) := by
    calc
      _ = (A : ℂ)^17 * bilateralTransform A (z : ℂ)^2 := by
        push_cast; rw [div_pow,hsq]; field_simp [show (sourceNormalization A : ℂ) ≠ 0 by exact_mod_cast hZ.ne']
      _ = _ := he
      _ = _ := by
        unfold modeCoefficient
        rw [← Complex.ofReal_mul,← Complex.ofReal_neg,← Complex.ofReal_exp,
          ← Complex.ofReal_exp,p_coe,p_coe]
        push_cast; rfl
  have hr := congrArg Complex.re hc
  simpa only [normalizedSquare, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using hr

#check actual_scaled_square_real
#print axioms actual_scaled_square_real
end
end ContinuousResearch.ActualRealMode
```
