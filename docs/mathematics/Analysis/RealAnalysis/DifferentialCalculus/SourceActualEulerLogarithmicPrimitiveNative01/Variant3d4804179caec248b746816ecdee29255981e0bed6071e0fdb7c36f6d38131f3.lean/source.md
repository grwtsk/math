# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualEulerLogarithmicPrimitiveNative01.Variant3d4804179caec248b746816ecdee29255981e0bed6071e0fdb7c36f6d38131f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd9d46b50b9485ca535de21b1913b28acd2b23c8` · SHA-256 `3d4804179caec248b746816ecdee29255981e0bed6071e0fdb7c36f6d38131f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualEulerSupportHead

/-!
The literal finite logarithmic potential of the closed Mangoldt polynomial.
Its finite contour integration by parts preserves the ordinary complex square,
both endpoints, every prime power and the closed floor cutoff. The quantitative
endpoint payment does not bound the remaining signed derivative-potential bulk.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualEulerLogarithmicPrimitive
open MeasureTheory Set Complex Filter
open SourcePairing SourceActualEulerSupportHead SourceActualInitialPrimeContour
open SourceActualPrimeBumpDictionary SourceActualBumpMellinLineBudget
open SourceActualRightBumpTail SourceActualBumpMovingHeight SourceBumpLaplace
noncomputable section

/-- The exact closed finite potential; the actual zero and unit coefficients vanish. -/
def actualClosedPrimeLogPotential (A : ℝ) (s : ℂ) : ℂ :=
  ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
    ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ) : ℂ) *
      Complex.exp (-s * (Real.log n : ℂ))

private theorem term_eq_exp (n : ℕ) (s : ℂ) :
    LSeries.term actualMangoldtCoefficients s n =
      (ArithmeticFunction.vonMangoldt n : ℂ) * Complex.exp (-s*(Real.log n:ℂ)) := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp [actualMangoldtCoefficients]
  have hp : 0 < (n:ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  rw [LSeries.term_of_ne_zero hn, actualMangoldtCoefficients,
    Complex.cpow_def_of_ne_zero (by exact_mod_cast hn),
    ← Complex.ofReal_log hp.le]
  simp only [div_eq_mul_inv, ← Complex.exp_neg]
  ring

private theorem log_term_hasDerivAt (n : ℕ) (s : ℂ) :
    HasDerivAt (fun z : ℂ =>
      ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
        Complex.exp (-z*(Real.log n:ℂ)))
      (-LSeries.term actualMangoldtCoefficients s n) s := by
  have h := (((hasDerivAt_id s).neg.mul_const (Real.log n:ℂ)).cexp).const_mul
    ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ)
  convert h using 1
  rcases eq_or_ne n 0 with rfl | hn0
  · simp [actualMangoldtCoefficients]
  rcases eq_or_ne n 1 with rfl | hn1
  · simp [actualMangoldtCoefficients]
  have hl : Real.log (n:ℝ) ≠ 0 := by
    exact Real.log_ne_zero (by exact_mod_cast hn0) (by exact_mod_cast hn1)
  rw [term_eq_exp]
  push_cast
  field_simp

/-- Genuine derivative of the literal potential, with all closed actual coefficients. -/
theorem actualClosedPrimeLogPotential_hasDerivAt (A : ℝ) (s : ℂ) :
    HasDerivAt (actualClosedPrimeLogPotential A)
      (-actualClosedPrimeDirichletPolynomial A s) s := by
  have h := HasDerivAt.fun_sum (u := Finset.range (⌊Real.exp (2*A)⌋₊+1))
    (fun n _ => log_term_hasDerivAt n s)
  simpa only [actualClosedPrimeLogPotential, actualClosedPrimeDirichletPolynomial,
    Finset.sum_neg_distrib] using h

/-- Explicit source derivative, retaining both polynomial and first-moment sectors. -/
def actualEulerMellinSlope (A : ℝ) (s : ℂ) : ℂ :=
  (A/sourceNormalization A : ℂ) *
    ((2*s*(s-1)^2 + 2*s^2*(s-1)) *
        bumpLaplace ((A:ℂ)*(s-1/2))^2 +
      2*(A:ℂ)*s^2*(s-1)^2 * bumpLaplace ((A:ℂ)*(s-1/2)) *
        bumpLaplaceMoment 1 ((A:ℂ)*(s-1/2)))

private theorem bump_hasDerivAt (z : ℂ) :
    HasDerivAt bumpLaplace (bumpLaplaceMoment 1 z) z := by
  simpa only [bump_laplace_moment_zero] using bump_laplace_moment_has_deriv_at 0 z

/-- The actual initial source Mellin multiplier differentiates to its explicit slope. -/
theorem actualEulerMellin_hasDerivAt (A : ℝ) (hA : 1 ≤ A) (s : ℂ) :
    HasDerivAt (actualInitialPrimeMellin A) (actualEulerMellinSlope A s) s := by
  have hb := (bump_hasDerivAt ((A:ℂ)*(s-1/2))).comp s
    (((hasDerivAt_id s).sub_const (1/2)).const_mul (A:ℂ))
  have h := (((hasDerivAt_id s).pow 2).mul
      (((hasDerivAt_id s).sub_const 1).pow 2)).mul (hb.pow 2) |>.const_mul
        (A/sourceNormalization A : ℂ)
  convert h using 1
  · funext z
    rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA]
    rfl
  · unfold actualEulerMellinSlope
    ring

private theorem potential_continuous (A : ℝ) :
    Continuous (actualClosedPrimeLogPotential A) :=
  continuous_iff_continuousAt.mpr fun s =>
    (actualClosedPrimeLogPotential_hasDerivAt A s).continuousAt

private theorem mellin_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (actualInitialPrimeMellin A) :=
  continuous_iff_continuousAt.mpr fun s => (actualEulerMellin_hasDerivAt A hA s).continuousAt

private theorem slope_continuous (A : ℝ) : Continuous (actualEulerMellinSlope A) := by
  have hb : Continuous bumpLaplace := by
    simpa only [bump_laplace_moment_zero] using bump_laplace_moment_continuous 0
  have hm := bump_laplace_moment_continuous 1
  unfold actualEulerMellinSlope
  fun_prop

private theorem polynomial_continuous (A : ℝ) :
    Continuous (actualClosedPrimeDirichletPolynomial A) := by
  unfold actualClosedPrimeDirichletPolynomial
  simp_rw [term_eq_exp]
  fun_prop

/-- Literal phase-sensitive derivative-potential bulk on the complete retained interval. -/
def actualClosedPrimeLogBulk (A c T : ℝ) : ℂ :=
  (1/(2*Real.pi):ℂ) * ∫ t in -T..T,
    actualEulerMellinSlope A ((c:ℂ)+(t:ℂ)*I) *
      actualClosedPrimeLogPotential A ((c:ℂ)+(t:ℂ)*I)

/-- Both contour endpoints, with their orientation and ordinary complex phases. -/
def actualClosedPrimeLogBoundary (A c T : ℝ) : ℂ :=
  (I/(2*Real.pi):ℂ) *
    (actualInitialPrimeMellin A ((c:ℂ)+(T:ℂ)*I) *
        actualClosedPrimeLogPotential A ((c:ℂ)+(T:ℂ)*I) -
      actualInitialPrimeMellin A ((c:ℂ)+(-T:ℂ)*I) *
        actualClosedPrimeLogPotential A ((c:ℂ)+(-T:ℂ)*I))

/-- Genuine compact L1 of the complete derivative-potential bulk. -/
theorem actualClosedPrimeLogBulk_intervalIntegrable (A c T : ℝ) :
    IntervalIntegrable (fun t : ℝ =>
      actualEulerMellinSlope A ((c:ℂ)+(t:ℂ)*I) *
        actualClosedPrimeLogPotential A ((c:ℂ)+(t:ℂ)*I)) volume (-T) T := by
  have hp := potential_continuous A
  have hs := slope_continuous A
  exact (by fun_prop : Continuous _).intervalIntegrable _ _

/-- Exact finite integration by parts; neither endpoint is discarded. -/
theorem actualClosedPrimeHead_eq_logBulk_add_boundary
    (A c T : ℝ) (hA : 1 ≤ A) :
    actualClosedPrimeHead A c T =
      actualClosedPrimeLogBulk A c T + actualClosedPrimeLogBoundary A c T := by
  let s : ℝ → ℂ := fun t => (c:ℂ)+(t:ℂ)*I
  have hs (t : ℝ) : HasDerivAt s I t := by
    simpa [s] using ((hasDerivAt_id t).ofReal_comp.mul_const I).const_add (c:ℂ)
  have hh (t : ℝ) : HasDerivAt (fun t => actualInitialPrimeMellin A (s t))
      (I*actualEulerMellinSlope A (s t)) t := by
    convert (actualEulerMellin_hasDerivAt A hA (s t)).comp t (hs t) using 1 <;> ring
  have hp (t : ℝ) : HasDerivAt (fun t => actualClosedPrimeLogPotential A (s t))
      (-I*actualClosedPrimeDirichletPolynomial A (s t)) t := by
    convert (actualClosedPrimeLogPotential_hasDerivAt A (s t)).comp t (hs t)
      using 1 <;> ring
  have hi := intervalIntegral.integral_deriv_mul_eq_sub
    (a := -T) (b := T) (fun t _ => hh t) (fun t _ => hp t)
    ((by have h := slope_continuous A; fun_prop : Continuous
      (fun t => I*actualEulerMellinSlope A (s t))).intervalIntegrable _ _)
    ((by have h := polynomial_continuous A; fun_prop : Continuous
      (fun t => -I*actualClosedPrimeDirichletPolynomial A (s t))).intervalIntegrable _ _)
  have he : (fun t : ℝ => I*actualEulerMellinSlope A (s t) *
      actualClosedPrimeLogPotential A (s t) + actualInitialPrimeMellin A (s t) *
      (-I*actualClosedPrimeDirichletPolynomial A (s t))) =
      (fun t => I*(actualEulerMellinSlope A (s t)*actualClosedPrimeLogPotential A (s t)) -
        I*(actualInitialPrimeMellin A (s t)*actualClosedPrimeDirichletPolynomial A (s t))) := by
    funext t
    ring
  rw [he, intervalIntegral.integral_sub] at hi
  · simp only [intervalIntegral.integral_const_mul] at hi
    unfold actualClosedPrimeHead actualClosedPrimeLogBulk actualClosedPrimeLogBoundary
    change _ = _ + (I/(2*Real.pi):ℂ) *
      (actualInitialPrimeMellin A (s T)*actualClosedPrimeLogPotential A (s T) -
        actualInitialPrimeMellin A (s (-T))*actualClosedPrimeLogPotential A (s (-T)))
    have hI : (I:ℂ)^2 = -1 := by norm_num
    linear_combination (I/(2*Real.pi):ℂ)*hi
  · exact (actualClosedPrimeLogBulk_intervalIntegrable A c T).const_mul I
  · have hm := mellin_continuous A hA
    have hd := polynomial_continuous A
    exact (by fun_prop : Continuous _).intervalIntegrable _ _

end
end FormalResearch.RiemannHypothesis.SourceActualEulerLogarithmicPrimitive
```
