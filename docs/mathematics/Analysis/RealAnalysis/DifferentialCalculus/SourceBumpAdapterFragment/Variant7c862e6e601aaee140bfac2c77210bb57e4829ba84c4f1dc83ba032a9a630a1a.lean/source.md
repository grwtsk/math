# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBumpAdapterFragment.Variant7c862e6e601aaee140bfac2c77210bb57e4829ba84c4f1dc83ba032a9a630a1a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a31da75dc33eef501011af1c85118f025916db25` · SHA-256 `7e80cfd76924cb2e6d3757b3f293eff17c387e10233926c62ce2960c0517a68b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BumpPrimitiveHasDerivAt.Variant283c057dc97bbc1bd93d9b544a5c2c76016426cee53da8c9d4f227c65544ffee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"283c057dc97bbc1bd93d9b544a5c2c76016426cee53da8c9d4f227c65544ffee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.BumpPrimitiveHasDerivAt.Variant283c057dc97bbc1bd93d9b544a5c2c76016426cee53da8c9d4f227c65544ffee","mathematical_subject":"Analysis.Calculus","original_sha256":"283c057dc97bbc1bd93d9b544a5c2c76016426cee53da8c9d4f227c65544ffee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/SourceBumpAdapterFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BumpPrimitiveHasDerivAt.Variant283c057dc97bbc1bd93d9b544a5c2c76016426cee53da8c9d4f227c65544ffee

set_option autoImplicit false
namespace SourceBumpAdapterScratch
open MeasureTheory Set Polynomial
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FixedSourceFilter PrimeSquareCorrelation ZeroSideTargets
open SourceBumpMomentsScratch
noncomputable section

private theorem bumpPrimitive_hasDerivAt (z : ℂ) (x : ℝ) :
    HasDerivAt (fun y : ℝ => Complex.exp (z * y) *
      (ZeroTransform.primitivePolynomial 1 z).eval (y : ℂ))
      (z ^ 9 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * x)) x := by
  have hx : HasDerivAt (fun y : ℝ => z * (y : ℂ)) z x := by
    simpa using (((hasDerivAt_id (x : ℂ)).const_mul z).comp_ofReal)
  have h := hx.cexp.mul
    (((ZeroTransform.primitivePolynomial 1 z).hasDerivAt (x : ℂ)).comp_ofReal)
  convert! h using 1
  have hp := congrArg (Polynomial.eval (x : ℂ)) (ZeroTransform.primitive_derivative 1 z)
  simp only [eval_add, eval_mul, eval_C, ZeroTransform.bumpPolynomial, eval_pow,
    eval_sub, eval_X, one_pow] at hp
  linear_combination (-(Complex.exp (z * x))) * hp

/-- The original bump moment has the source's exact two-endpoint closed formula. -/
theorem bumpMoment_closedFormula (z : ℂ) (hz : z ≠ 0) :
    bumpMoment 0 z = 384 *
      (Complex.exp z * transformPolynomial z -
        Complex.exp (-z) * transformPolynomial (-z)) / z ^ 9 := by
  have hi : IntervalIntegrable (fun x : ℝ =>
      z ^ 9 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * x)) volume (-1) 1 := by
    apply Continuous.intervalIntegrable
    fun_prop
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => bumpPrimitive_hasDerivAt z x) hi
  have hleft : (∫ x : ℝ in (-1)..1,
      z ^ 9 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * x)) =
      z ^ 9 * bumpMoment 0 z := by
    simp only [bumpMoment, pow_zero, one_mul, ← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro x _
    ring
  rw [hleft] at h
  simp only [Complex.ofReal_one, Complex.ofReal_neg, mul_one, mul_neg] at h
  rw [ZeroTransform.primitive_endpoint_pos 1 z, ZeroTransform.primitive_endpoint_neg 1 z] at h
  simp only [one_mul] at h
  apply (eq_div_iff (pow_ne_zero 9 hz)).mpr
  linear_combination h

/-- The exact normalized source integral supplies its value at zero. -/
theorem V_zero : V 0 = ((-64 / (315 * Real.sqrt (45056 / 1105 : ℝ)) : ℝ) : ℂ) := by
  simp only [V, zero_mul, Complex.exp_zero, mul_one, integral_complex_ofReal]
  have h := normalizedTest_integral 1 (by norm_num)
  change (∫ x : ℝ, v x) = _ at h
  rw [h]
  norm_num [sourceNormalization_one]
  ring

/-- The actual normalized source filter factors through the admitted original bump at every z. -/
theorem V_eq_bumpMoment (z : ℂ) :
    V z = (z ^ 2 - 1 / 4) * bumpMoment 0 z /
      (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := by
  by_cases hz : z = 0
  · subst z
    rw [V_zero, bumpMoment_zero_zero]
    push_cast
    ring
  · rw [V_eq_removedFilter z hz, bumpMoment_closedFormula z hz]
    unfold removedFilter
    ring

/-- Translation retains the exact entire bump factor and both prescribed polynomial zeros. -/
theorem W_eq_bumpMoment (z : ℂ) :
    MobiusSourceFilterQuotient.W z =
      Complex.exp (-z) * (z ^ 2 - 1 / 4) * bumpMoment 0 z /
        (Real.sqrt (45056 / 1105 : ℝ) : ℂ) := by
  rw [MobiusSourceFilterQuotient.W, V_eq_bumpMoment]
  ring

end
end SourceBumpAdapterScratch
```
