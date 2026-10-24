# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBumpAdapterFragment.Variant283c057dc97bbc1bd93d9b544a5c2c76016426cee53da8c9d4f227c65544ffee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5977963563c8dcedb17bfb86fdba9cff557fa59` · SHA-256 `283c057dc97bbc1bd93d9b544a5c2c76016426cee53da8c9d4f227c65544ffee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
