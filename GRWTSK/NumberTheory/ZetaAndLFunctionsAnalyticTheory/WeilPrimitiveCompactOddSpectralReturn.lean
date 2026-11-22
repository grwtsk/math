/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.FunctionsOfAComplexVariable.CompactOddSpectralIsolation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroMultiplicity
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationFourier
import GRWTSK.MeasureAndIntegration.DyadicDecayMoment

/-!
# A negative Weil correlation sum on the primitive Dirichlet divisor

A multiplicity bound for the actual finite height windows supplies the
inverse-square mass of the full spectral divisor. Compact odd isolation
then supplies a test whose actual correlation sum has negative real part.
The complex reflection in the correlation identity gives the negative
square at the original ordinate. No reflection symmetry of an individual
nonreal character's zero set is needed.

The arithmetic consumer is the canonical explicit formula in
`WeilGammaPhysicalReturn`. The height estimate is a premise here so that
the spectral return can also consume a separate source-bound estimate.
-/

set_option autoImplicit false
noncomputable section

open Complex MeasureTheory Set
open scoped BigOperators ComplexConjugate ContDiff

namespace GRWTSK.NumberTheory.WeilNegativeWitness

open GRWTSK.ComplexAnalysis.CompactOddFourierFilter
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
open GRWTSK.MeasureAndIntegration.DyadicDecayMoment
open GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

variable {q : ℕ} [NeZero q]

private theorem spectralCoordinate_re (s : ℂ) : (spectralCoordinate s).re = s.im := by
  simp [spectralCoordinate, Complex.mul_re]

private theorem spectralCoordinate_in_strip (s : ℂ) (h₀ : 0 < s.re) (h₁ : s.re < 1) :
    |(spectralCoordinate s).im| ≤ 1 := by
  rw [spectralCoordinate_im, abs_le]
  constructor <;> linarith

/-- The actual analytic multiplicities have finite inverse-square mass
given the all-height counting bound. -/
theorem summable_source_inverseSquareMass_of_heightCount (χ : DirichletCharacter ℂ q)
    (hprim : χ.IsPrimitive) {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ H : ℝ, 2 ≤ H →
      (heightCount χ hprim H : ℝ) ≤ D * H * (Real.log H + L)) :
    Summable (inverseSquareMass (fun ρ : CriticalStripZero χ => spectralCoordinate ρ.1)
      (zeroMultiplicity χ)) := by
  classical
  let z := fun ρ : CriticalStripZero χ => spectralCoordinate ρ.1
  let m := fun ρ : CriticalStripZero χ => (zeroMultiplicity χ ρ : ℝ)
  have hm (ρ : CriticalStripZero χ) : 0 ≤ m ρ := Nat.cast_nonneg _
  have hstrip (ρ : CriticalStripZero χ) : |(z ρ).im| ≤ 1 :=
    spectralCoordinate_in_strip ρ.1 ρ.2.2.1 ρ.2.2.2
  have hheight (H : ℝ) (hH : 2 ≤ H) (s : Finset (CriticalStripZero χ))
      (hs : ∀ ρ ∈ s, |(z ρ).re| < H) :
      (∑ ρ ∈ s, m ρ) ≤ D * H * (Real.log H + L) :=
    (heightCount_le_iff χ hprim H _).mp (hcount H hH) s
      (fun ρ hρ => by simpa only [z, spectralCoordinate_re] using hs ρ hρ)
  have hDyadic := dyadic_count_of_height_count m z D L hD hL hheight
  have hMoment := (full_moment m z 0 1 (2 * D * (L + 1)) 1 (by norm_num)
    (by positivity) (by norm_num) hm hstrip hDyadic 1 (by norm_num)).1
  refine Summable.of_nonneg_of_le (fun ρ => by unfold inverseSquareMass; positivity)
    (fun ρ => ?_) (hMoment.mul_left 2)
  change m ρ / (1 + ‖z ρ‖ ^ 2) ≤ 2 * (m ρ * decayWeight 0 1 (z ρ) ^ 2)
  have hratio : 1 / (1 + ‖z ρ‖ ^ 2) ≤ 2 / (1 + ‖z ρ‖) ^ 2 := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
    nlinarith only [sq_nonneg (‖z ρ‖ - 1)]
  calc
    _ = m ρ * (1 / (1 + ‖z ρ‖ ^ 2)) := by ring
    _ ≤ m ρ * (2 / (1 + ‖z ρ‖) ^ 2) := mul_le_mul_of_nonneg_left hratio (hm ρ)
    _ = _ := by simp only [decayWeight, zero_mul, Real.exp_zero, pow_one, div_pow, one_pow]; ring

/-- At a zero off the critical line there is a positive support radius and
an original smooth compact odd test with strictly negative spectral sum. -/
theorem exists_negative_primitive_correlation_of_heightCount
    (χ : DirichletCharacter ℂ q) (hprim : χ.IsPrimitive)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ H : ℝ, 2 ≤ H →
      (heightCount χ hprim H : ℝ) ≤ D * H * (Real.log H + L))
    (ρ₀ : CriticalStripZero χ) (hoff : ρ₀.1.re ≠ 1 / 2) :
    ∃ (A : ℝ) (f : ℝ → ℝ), 0 < A ∧ Function.Odd f ∧ Admissible (realTest f) ∧
      tsupport (realTest f) ⊆ Icc (-A) A ∧
      ∃ v : ℂ, HasSum (fun ρ : CriticalStripZero χ => (zeroMultiplicity χ ρ : ℂ) *
        ∫ r : ℝ, correlation (realTest f) r *
          Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ))) v ∧ v.re < 0 := by
  classical
  let z := fun ρ : CriticalStripZero χ => spectralCoordinate ρ.1
  have hstrip (ρ : CriticalStripZero χ) : |(z ρ).im| ≤ 1 :=
    spectralCoordinate_in_strip ρ.1 ρ.2.2.1 ρ.2.2.2
  have hfinite (R : ℝ) : {ρ : CriticalStripZero χ | |(z ρ).re| ≤ R}.Finite :=
    (criticalStrip_height_finite χ hprim (R + 1)).subset (fun ρ hρ => by
      change |(z ρ).re| ≤ R at hρ
      change |ρ.1.im| < R + 1
      simp only [z, spectralCoordinate_re] at hρ
      linarith)
  obtain ⟨f, hdiff, hcomp, hodd, v, hv, hvneg⟩ :=
    exists_negative_odd_square z (zeroMultiplicity χ) hstrip hfinite
      (summable_source_inverseSquareMass_of_heightCount χ hprim hD hL hcount)
      ρ₀ (zeroMultiplicity_pos χ ρ₀)
      (fun h => hoff ((spectralCoordinate_im_eq_zero_iff ρ₀.1).mp h))
  have hc : HasCompactSupport (realTest f) :=
    hcomp.comp_left (g := Complex.ofReal) Complex.ofReal_zero
  have hd : ContDiff ℝ ∞ (realTest f) := Complex.ofRealCLM.contDiff.comp hdiff
  obtain ⟨A₀, hA₀⟩ := hc.isCompact.isBounded.subset_closedBall (0 : ℝ)
  let A := max 1 A₀
  have hA : 0 < A := zero_lt_one.trans_le (le_max_left _ _)
  have hs : tsupport (realTest f) ⊆ Icc (-A) A := by
    intro t ht
    have h := hA₀ ht
    rw [Metric.mem_closedBall, Real.dist_eq, sub_zero] at h
    exact abs_le.mp (h.trans (le_max_right _ _))
  have hout (t : ℝ) (h : A < |t|) : realTest f t = 0 := by
    by_contra hne
    exact (not_le_of_gt h) (abs_le.mpr (hs (subset_tsupport _ hne)))
  refine ⟨A, f, hA, hodd, ⟨hd, hc⟩, hs, v, ?_, hvneg⟩
  convert hv using 1
  funext ρ
  rw [show ρ.1 - 1 / 2 = I * z ρ by
    dsimp [z, spectralCoordinate]
    rw [← mul_assoc, mul_neg, I_mul_I, neg_neg, one_mul]]
  rw [fourier_correlation_eq_reflected_product _ A
    (hd.continuous.integrable_of_hasCompactSupport hc) hout]
  change _ * (angularFourier (realTest f) (z ρ) *
    conj (angularFourier (realTest f) (conj (z ρ)))) =
      oddSquareTerm z (zeroMultiplicity χ) (angularFourier (realTest f)) ρ
  rw [real_angularFourier_conj_neg f (conj (z ρ)), starRingEnd_self_apply,
    realOdd_angularFourier_neg hodd]
  simp only [oddSquareTerm, mul_neg, pow_two]

end GRWTSK.NumberTheory.WeilNegativeWitness
