# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceBumpMomentsStatements.Variantf6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8bc5f240a57343122457cafb19b8df17baba6012` · SHA-256 `f6bd827997955d492ef869d4dc71713fe1a7ba607041a99608b022ada8d3a5a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

/-!
Exact moments and the integration-by-parts identity for the unchanged bump.
Parameter differentiation and the radial energy theorem remain separate work.
-/

set_option autoImplicit false
namespace SourceBumpMomentsScratch

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter PrimeSquareCorrelation

noncomputable section

/-- Polynomial exponential moments of the original radius-one bump on its full support. -/
def bumpMoment (k : ℕ) (z : ℂ) : ℂ :=
  ∫ x : ℝ in (-1)..1, (x : ℂ) ^ k * (1 - (x : ℂ) ^ 2) ^ 4 *
    Complex.exp (z * (x : ℂ))

/-- Every moment is genuinely integrable before any integral algebra is applied. -/
theorem bumpMoment_intervalIntegrable (k : ℕ) (z : ℂ) :
    IntervalIntegrable (fun x : ℝ => (x : ℂ) ^ k * (1 - (x : ℂ) ^ 2) ^ 4 *
      Complex.exp (z * (x : ℂ))) volume (-1) 1 := by
  apply Continuous.intervalIntegrable
  fun_prop

/-- The zeroth moment is the bilateral transform of the actual zero-extended source bump. -/
theorem bumpMoment_zero_eq_source (z : ℂ) : bumpMoment 0 z =
    ∫ x : ℝ, (fixedBump x : ℂ) * Complex.exp (z * (x : ℂ)) := by
  have he : (fun x : ℝ => (fixedBump x : ℂ) * Complex.exp (z * (x : ℂ))) =
      (Icc (-1 : ℝ) 1).indicator
        (fun x : ℝ => (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * (x : ℂ))) := by
    funext x
    simp only [fixedBump, sourceBump, indicator_apply]
    split_ifs <;> push_cast <;> simp
  rw [he, integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by norm_num : (-1 : ℝ) ≤ 1)]
  simp only [bumpMoment, pow_zero, one_mul]

/-- At zero the source mass is the exact positive rational `256 / 315`. -/
theorem bumpMoment_zero_zero : bumpMoment 0 0 = (256 / 315 : ℂ) := by
  rw [bumpMoment_zero_eq_source]
  simp only [zero_mul, Complex.exp_zero, mul_one]
  rw [integral_complex_ofReal]
  have h := scaledBump_integral 1 (by norm_num)
  rw [← fixedBump_eq_scaled] at h
  norm_num at h
  rw [h]
  norm_num

private theorem bumpFlux_hasDerivAt (z : ℂ) (x : ℝ) :
    HasDerivAt (fun t : ℝ => (1 - (t : ℂ) ^ 2) ^ 5 * Complex.exp (z * (t : ℂ)))
      ((z * (1 - (x : ℂ) ^ 2) ^ 5 - 10 * (x : ℂ) * (1 - (x : ℂ) ^ 2) ^ 4) *
        Complex.exp (z * (x : ℂ))) x := by
  have hp := (((hasDerivAt_id (x : ℂ)).pow 2).const_sub 1).pow 5
  have he := ((hasDerivAt_id (x : ℂ)).const_mul z).cexp
  convert! (hp.mul he).comp_ofReal using 1
  simp only [id_eq, Pi.pow_apply]
  ring

/-- Integrating the exact fifth-power flux gives the coefficient-ten moment equation. -/
theorem bumpMoment_equation (z : ℂ) :
    z * bumpMoment 2 z + 10 * bumpMoment 1 z - z * bumpMoment 0 z = 0 := by
  let g : ℝ → ℂ := fun x =>
    (z * (1 - (x : ℂ) ^ 2) ^ 5 - 10 * (x : ℂ) * (1 - (x : ℂ) ^ 2) ^ 4) *
      Complex.exp (z * (x : ℂ))
  have hg : IntervalIntegrable g volume (-1) 1 := by
    apply Continuous.intervalIntegrable
    dsimp [g]
    fun_prop
  have hz := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => bumpFlux_hasDerivAt z x) hg
  have hzero : (∫ x : ℝ in (-1)..1, g x) = 0 := by
    simpa only [Complex.ofReal_one, Complex.ofReal_neg, one_pow, neg_one_sq,
      sub_self, zero_pow (by omega : 5 ≠ 0), zero_mul, sub_zero] using hz
  calc
    _ = ∫ x : ℝ in (-1)..1,
        z * ((x : ℂ) ^ 2 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * (x : ℂ))) +
        10 * ((x : ℂ) ^ 1 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * (x : ℂ))) -
        z * ((x : ℂ) ^ 0 * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (z * (x : ℂ))) := by
      rw [intervalIntegral.integral_sub
        (((bumpMoment_intervalIntegrable 2 z).const_mul z).add
          ((bumpMoment_intervalIntegrable 1 z).const_mul 10))
        ((bumpMoment_intervalIntegrable 0 z).const_mul z),
        intervalIntegral.integral_add ((bumpMoment_intervalIntegrable 2 z).const_mul z)
          ((bumpMoment_intervalIntegrable 1 z).const_mul 10)]
      simp only [intervalIntegral.integral_const_mul, bumpMoment]
    _ = -(∫ x : ℝ in (-1)..1, g x) := by
      rw [← intervalIntegral.integral_neg]
      apply intervalIntegral.integral_congr
      intro x _
      dsimp [g]
      ring
    _ = 0 := by rw [hzero, neg_zero]

/-- A positive weighted mass and the signed radial energy identity force zero real part. -/
theorem re_eq_zero_of_weighted_energy (z : ℂ) (D E : ℝ) (hD : 0 < D) (hE : 0 ≤ E)
    (henergy : -(E : ℂ) = z ^ 2 * (D : ℂ)) : z.re = 0 := by
  have hr := congrArg Complex.re henergy
  have hi := congrArg Complex.im henergy
  simp only [Complex.neg_re, Complex.neg_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.mul_re, Complex.mul_im, pow_two, mul_zero, sub_zero, zero_add, neg_zero] at hr hi
  have hp : (2 * (z.re * z.im)) * D = 0 := by nlinarith [hi]
  have hprod : z.re * z.im = 0 := by
    have h := (mul_eq_zero.mp hp).resolve_right hD.ne'
    nlinarith
  rcases mul_eq_zero.mp hprod with hz | hz
  · exact hz
  · rw [hz] at hr
    have hq : z.re ^ 2 * D ≤ 0 := by nlinarith [hr, hE]
    have hs : z.re ^ 2 ≤ 0 := le_of_mul_le_mul_right (by simpa only [zero_mul] using hq) hD
    nlinarith [sq_nonneg z.re]

end
end SourceBumpMomentsScratch

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter
open SourceBumpMomentsScratch

example (k : ℕ) (z : ℂ) : bumpMoment k z =
    ∫ x : ℝ in (-1)..1, (x : ℂ)^k * (1-(x : ℂ)^2)^4 * Complex.exp (z*(x : ℂ)) := rfl

example (k : ℕ) (z : ℂ) : IntervalIntegrable
    (fun x : ℝ => (x : ℂ)^k * (1-(x : ℂ)^2)^4 * Complex.exp (z*(x : ℂ)))
      volume (-1) 1 := bumpMoment_intervalIntegrable k z

example (z : ℂ) : bumpMoment 0 z =
    ∫ x : ℝ, (fixedBump x : ℂ) * Complex.exp (z * (x : ℂ)) :=
  bumpMoment_zero_eq_source z

example : bumpMoment 0 0 = (256 / 315 : ℂ) := bumpMoment_zero_zero

example (z : ℂ) :
    z*bumpMoment 2 z + 10*bumpMoment 1 z - z*bumpMoment 0 z = 0 :=
  bumpMoment_equation z

example (z : ℂ) (D E : ℝ) (hD : 0 < D) (hE : 0 ≤ E)
    (h : -(E : ℂ) = z^2*(D : ℂ)) : z.re = 0 :=
  re_eq_zero_of_weighted_energy z D E hD hE h

example : bumpMoment 0 0 ≠ 0 := by rw [bumpMoment_zero_zero]; norm_num

example (z : ℂ) :
    z * (∫ x : ℝ in (-1)..1, (x : ℂ)^2 * (1-(x : ℂ)^2)^4 * Complex.exp (z*(x : ℂ))) +
    10 * (∫ x : ℝ in (-1)..1, (x : ℂ)^1 * (1-(x : ℂ)^2)^4 * Complex.exp (z*(x : ℂ))) -
    z * (∫ x : ℝ in (-1)..1, (x : ℂ)^0 * (1-(x : ℂ)^2)^4 * Complex.exp (z*(x : ℂ))) = 0 :=
  bumpMoment_equation z
```
