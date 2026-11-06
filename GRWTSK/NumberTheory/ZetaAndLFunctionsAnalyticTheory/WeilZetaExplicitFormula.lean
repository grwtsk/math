/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Zeta23.WeilEF.Main
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.RiemannZeroSymmetry
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaFourierReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralCofinal
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWindowPoleReturn
import Mathlib.Analysis.Calculus.ContDiff.RCLike

/-!
# The literal real odd zeta form and the completed explicit formula

The source is `Zeta23.WeilEF.EF_lit_zetaZeroConfig` from
`anthropics/formal-math@16a5ce41304fcdaea4e0be7c132e1c361dc26da5`,
`Zeta23/WeilEF/Main.lean` and `Zeta23/ExplicitFormula.lean`. The upstream
Zeta23 authorship and license apply to that dependency. This consumer is
checked in an isolated replay with the root Mathlib pin and proof-level
compatibility edits to that exact upstream source. The root build has
no import of this module.

The actual autocorrelation kernel is even and its transform on the real
axis is a squared norm. Its cosine inversion supplies the literal gamma
return with angular factor `1/(2*pi)`. The exact support cutoff reduces
both signed prime shifts to the finite inventory. At the two imaginary
pole frequencies the two exponential moments are exchanged, and the
local odd pole theorem returns their product to the negative rank-one
term. The upstream theorem then returns the resulting value to the
actual open-strip zero sum with analytic multiplicities.

Smoothness and compact support put the test in `L²` and give finite
gamma energy. The exact zero carrier gives the Mathlib RH target via
the functional-equation and nonvanishing strip restriction. Under RH
each zero contribution is a squared norm with its own multiplicity.
The converse positivity criterion, cofinal sign and Dirichlet source
return remain open. Independent analytical review is pending.
-/

set_option autoImplicit false
noncomputable section

open Complex MeasureTheory Set
open scoped ComplexConjugate Convolution FourierTransform

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RealWeilSource

open OddRootProjection OddWrapEnergy OddHighComplement GammaFourierReturn
open LowSchur OddSineForm OddLiteralWindow OddWindowPoleReturn

def realTest (f : ℝ → ℝ) : ℝ → ℂ := fun t => (f t : ℂ)

def testKernel (f : ℝ → ℝ) : ℝ → ℂ := Zeta23.EF.weilTest (realTest f) (realTest f)

theorem testKernel_eq_autocorrelation (f : ℝ → ℝ) (r : ℝ) :
    testKernel f r = ((∫ t : ℝ, f t * f (t + r) : ℝ) : ℂ) := by
  simp only [testKernel, Zeta23.EF.weilTest, convolution_def, ContinuousLinearMap.mul_apply',
    Zeta23.EF.tilde, realTest, Complex.conj_ofReal, ← Complex.ofReal_mul, integral_complex_ofReal]
  congr 1
  rw [← integral_add_right_eq_self (fun t : ℝ => f t * f (-(r - t))) r]
  apply integral_congr_ae (Filter.Eventually.of_forall fun t => ?_)
  rw [show -(r - (t + r)) = t by ring, mul_comm]

theorem testKernel_even (f : ℝ → ℝ) (r : ℝ) : testKernel f (-r) = testKernel f r := by
  have h : (∫ t : ℝ, f t * f (t + -r)) = ∫ t : ℝ, f t * f (t + r) := by
    rw [← integral_add_right_eq_self (fun t : ℝ => f t * f (t + -r)) r]
    apply integral_congr_ae (Filter.Eventually.of_forall fun t => ?_)
    rw [show t + r + -r = t by ring, mul_comm]
  simpa only [testKernel_eq_autocorrelation] using congrArg (fun x : ℝ => (x : ℂ)) h

theorem gamma_eq_paper {f : ℝ → ℝ} (hf : ContDiff ℝ 2 f) (hfc : HasCompactSupport f)
    (hfLp : MemLp f 2 volume)
    (hGamma : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    ((gammaConstant 1 0 * (∫ t : ℝ, f t ^ 2) + oddArchimedeanEnergy f : ℝ) : ℂ) =
      (1 / (2 * Real.pi) : ℂ) * ∫ w : ℝ,
        Zeta23.paperFT (testKernel f) w * (Zeta23.EF.gammaBracket w : ℂ) := by
  have hfC : ContDiff ℝ 2 (realTest f) := Complex.ofRealCLM.contDiff.comp hf
  have hfCC : HasCompactSupport (realTest f) := hfc.comp_left (g := Complex.ofReal) Complex.ofReal_zero
  have hkd : ContDiff ℝ 2 (testKernel f) := Zeta23.EF.weilTest_contDiff hfC hfC.continuous hfCC
  have hkc : HasCompactSupport (testKernel f) := Zeta23.EF.weilTest_hasCompactSupport hfCC hfCC
  have hki : Integrable (testKernel f) volume := hkd.continuous.integrable_of_hasCompactSupport hkc
  have hFk := Zeta23.EF.integrable_fourier_of_contDiff_two hkd hkc
  let spectrum (w : ℝ) := (Zeta23.paperFT (testKernel f) w).re
  have hPaperNorm (w : ℝ) : Zeta23.paperFT (testKernel f) w =
      (Complex.normSq (Zeta23.paperFT (realTest f) w) : ℂ) := by
    rw [testKernel, Zeta23.EF.paperFT_weilTest hfC.continuous hfC.continuous hfCC hfCC,
      Complex.conj_ofReal, Complex.mul_conj]
  have hSpec (w : ℝ) : spectrum w = Complex.normSq (Zeta23.paperFT (realTest f) w) := by
    simp only [spectrum, hPaperNorm, Complex.ofReal_re]
  have hPaper (w : ℝ) : Zeta23.paperFT (testKernel f) w = (spectrum w : ℂ) := by
    rw [hPaperNorm, hSpec]
  have hS0 (w : ℝ) : 0 ≤ spectrum w := by
    rw [hSpec]
    exact Complex.normSq_nonneg _
  have hS : Integrable spectrum := (Zeta23.EF.integrable_paperFT_ofReal hFk).re
  have hCont : Continuous (𝓕 (testKernel f)) :=
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ).continuous₂ hki
  have hSmeas : Measurable spectrum := by
    unfold spectrum
    simp_rw [Zeta23.EF.paperFT_ofReal_eq_fourier]
    exact Complex.continuous_re.measurable.comp
      (hCont.measurable.comp (by fun_prop : Measurable fun w : ℝ => -w / (2 * Real.pi)))
  have hInv (r : ℝ) : (∫ t : ℝ, f t * f (t+r)) =
      (∫ w : ℝ, Real.cos (w*r) * spectrum w) / (2*Real.pi) := by
    have h := Zeta23.EF.k_add_k_neg hkd.continuous hki hFk r
    rw [testKernel_even f r, testKernel_eq_autocorrelation] at h
    simp_rw [hPaper, ← Complex.ofReal_mul, integral_complex_ofReal] at h
    rw [show (1 / (Real.pi : ℂ)) = ((1 / Real.pi : ℝ) : ℂ) by push_cast; rfl,
      ← Complex.ofReal_mul, ← Complex.ofReal_add] at h
    have hr := Complex.ofReal_inj.mp h
    simp only [mul_comm (spectrum _)] at hr
    field_simp [Real.pi_ne_zero] at hr ⊢
    linarith only [hr]
  have hg := zeta_archimedean_eq_of_cosine_inversion hfLp hSmeas hS hS0 hInv hGamma
  rw [hg]
  simp_rw [hPaper, ← Complex.ofReal_mul, integral_complex_ofReal]
  push_cast
  unfold Zeta23.EF.gammaBracket
  simp_rw [mul_comm (spectrum _)]
  ring

/-- The positive prime sum in Zeta23's literal formula is the real prime energy.
The support cutoff includes the endpoint where the overlap is null. -/
theorem prime_eq_paper (T : ℝ) {f : ℝ → ℝ}
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    (∑' q : ℕ, ((ArithmeticFunction.vonMangoldt q / Real.sqrt q : ℝ) : ℂ) *
      (testKernel f (Real.log q) + testKernel f (-Real.log q))) =
      (primeEnergy T f : ℂ) := by
  have hzero (q : ℕ) (hq : q ∉ activePrimePowers T) :
      ((ArithmeticFunction.vonMangoldt q / Real.sqrt q : ℝ) : ℂ) *
        (testKernel f (Real.log q) + testKernel f (-Real.log q)) = 0 := by
    by_cases hlow : q < 2
    · interval_cases q <;> simp
    have hq₂ : 2 ≤ q := by omega
    have hn : Real.exp (2 * T) ≤ (q : ℝ) := le_of_not_gt fun hlt =>
      hq (by simp [activePrimePowers, Nat.lt_ceil, hq₂, hlt])
    have hcut : 2 * T ≤ Real.log (q : ℝ) := by
      simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hn
    rw [testKernel_even, testKernel_eq_autocorrelation,
      OddLiteralCofinal.integral_mul_translate_eq_zero_of_cutoff hs hcut]
    simp
  rw [tsum_eq_sum (s := activePrimePowers T) hzero]
  unfold primeEnergy
  push_cast
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun q _ => ?_
  rw [testKernel_even, testKernel_eq_autocorrelation]
  unfold primeWeight
  push_cast
  ring

private theorem paperFT_real_mul_I (f : ℝ → ℝ) (b : ℝ) :
    Zeta23.paperFT (fun t => (f t : ℂ)) ((b : ℂ) * I) =
      ((∫ t : ℝ, f t * Real.exp (-b * t) : ℝ) : ℂ) := by
  unfold Zeta23.paperFT
  rw [← integral_complex_ofReal]
  apply integral_congr_ae
  filter_upwards [] with t
  rw [show I * ((b : ℂ) * I) * (t : ℂ) = ((-b * t : ℝ) : ℂ) by
    push_cast
    ring_nf
    rw [Complex.I_sq]
    ring, ← Complex.ofReal_exp, ← Complex.ofReal_mul]

/-- The actual two pole evaluations give the two-orientation moment product. -/
theorem pole_eq_paper {f : ℝ → ℝ} (hf : Continuous f) (hfc : HasCompactSupport f) :
    Zeta23.paperFT (testKernel f) (I / 2) + Zeta23.paperFT (testKernel f) (-I / 2) =
      ((2 * (∫ t : ℝ, f t * Real.exp (t/2)) * (∫ t : ℝ, f t * Real.exp (-t/2)) : ℝ) : ℂ) := by
  have hF : Continuous (realTest f) := Complex.continuous_ofReal.comp hf
  have hFc : HasCompactSupport (realTest f) :=
    hfc.comp_left (g := Complex.ofReal) Complex.ofReal_zero
  have hPlus : Zeta23.paperFT (realTest f) (I / 2) =
      ((∫ t : ℝ, f t * Real.exp (-t/2) : ℝ) : ℂ) := by
    rw [show I / 2 = (((1 / 2 : ℝ) : ℂ) * I) by push_cast; ring]
    unfold realTest
    rw [paperFT_real_mul_I]
    congr 1
    apply integral_congr_ae (Filter.Eventually.of_forall fun t => ?_)
    rw [show -(1 / 2 : ℝ) * t = -t/2 by ring]
  have hMinus : Zeta23.paperFT (realTest f) (-I / 2) =
      ((∫ t : ℝ, f t * Real.exp (t/2) : ℝ) : ℂ) := by
    rw [show -I / 2 = (((-(1 / 2) : ℝ) : ℂ) * I) by push_cast; ring]
    unfold realTest
    rw [paperFT_real_mul_I]
    congr 1
    apply integral_congr_ae (Filter.Eventually.of_forall fun t => ?_)
    rw [show -(-(1 / 2) : ℝ) * t = t/2 by ring]
  rw [testKernel, Zeta23.EF.paperFT_weilTest hF hF hFc hFc (I / 2),
    Zeta23.EF.paperFT_weilTest hF hF hFc hFc (-I / 2)]
  simp only [map_div₀, map_neg, Complex.conj_I, map_ofNat, neg_neg, hPlus, hMinus,
    Complex.conj_ofReal]
  push_cast
  ring

private theorem smooth_literal_domain {f : ℝ → ℝ} (hf : ContDiff ℝ 2 f) (hfc : HasCompactSupport f) :
    MemLp f 2 volume ∧ IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0) := by
  refine ⟨hf.continuous.memLp_of_hasCompactSupport hfc, ?_⟩
  obtain ⟨K, hLip⟩ := ContDiff.lipschitzWith_of_hasCompactSupport hfc hf (by decide)
  obtain ⟨B, hBound⟩ := hfc.exists_bound_of_continuous hf.continuous
  simpa only [zeroShiftEnergy, zeroShiftSquare, pow_two] using
    OddGammaOutput.integrableOn_mixedGamma hLip hBound
      (hf.continuous.integrable_of_hasCompactSupport hfc) hf.continuous.measurable

/-- The unshifted literal odd form on the smooth compact real test is the
actual multiplicity-weighted zeta zero sum for its autocorrelation kernel. -/
theorem literalOdd_zeta_zeroSum {T : ℝ} {f : ℝ → ℝ}
    (hf : ContDiff ℝ 2 f) (hfc : HasCompactSupport f)
    (hOdd : Function.Odd f) (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    Summable (fun ρ : Zeta23.zetaZeroConfig.carrier =>
      (Zeta23.zetaZeroConfig.mult ρ : ℂ) * Zeta23.paperFT (testKernel f) (Zeta23.gammaOf ρ)) ∧
    (∑' ρ : Zeta23.zetaZeroConfig.carrier,
      (Zeta23.zetaZeroConfig.mult ρ : ℂ) * Zeta23.paperFT (testKernel f) (Zeta23.gammaOf ρ)) =
      (shiftedOddWeilEnergy T 0 f : ℂ) := by
  have hfC : ContDiff ℝ 2 (realTest f) := Complex.ofRealCLM.contDiff.comp hf
  have hfCC : HasCompactSupport (realTest f) := hfc.comp_left (g := Complex.ofReal) Complex.ofReal_zero
  have hkd : ContDiff ℝ 2 (testKernel f) := Zeta23.EF.weilTest_contDiff hfC hfC.continuous hfCC
  have hkc : HasCompactSupport (testKernel f) := Zeta23.EF.weilTest_hasCompactSupport hfCC hfCC
  obtain ⟨hfLp, hGamma⟩ := smooth_literal_domain hf hfc
  obtain ⟨hsum, hFormula⟩ := Zeta23.WeilEF.EF_lit_zetaZeroConfig (testKernel f) hkd hkc
  refine ⟨hsum, hFormula.trans ?_⟩
  unfold Zeta23.EF.literatureRHS
  rw [pole_eq_paper hf.continuous hfc, prime_eq_paper T hs, ← gamma_eq_paper hf hfc hfLp hGamma]
  rw [shiftedOddWeilEnergy_eq_core_add_pole_moments T 0 hfLp (Filter.Eventually.of_forall hOdd) hs]
  simp only [shiftedOddCoreEnergy, sub_zero, Real.norm_eq_abs, sq_abs]
  push_cast
  ring

/-- A cofinal family of literal stage bounds gives positivity of the actual
zero sum on every compactly supported smooth real odd test. -/
theorem zetaZeroSum_nonneg_of_stageLower (hstage : ∀ j : ℕ, OddLiteralCofinal.StageLower j)
    {f : ℝ → ℝ} (hf : ContDiff ℝ 2 f) (hfc : HasCompactSupport f) (hOdd : Function.Odd f) :
    0 ≤ (∑' ρ : Zeta23.zetaZeroConfig.carrier,
      (Zeta23.zetaZeroConfig.mult ρ : ℂ) * Zeta23.paperFT (testKernel f) (Zeta23.gammaOf ρ)).re := by
  obtain ⟨T, hT⟩ := hfc.isCompact.isBounded.subset_closedBall (0 : ℝ)
  have hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0 := Filter.Eventually.of_forall fun t ht => by
    by_contra hne
    have htSupport := hT (subset_tsupport f hne)
    exact ht (by simpa only [Real.closedBall_eq_Icc, zero_sub, zero_add] using htSupport)
  rw [(literalOdd_zeta_zeroSum hf hfc hOdd hs).2, Complex.ofReal_re]
  obtain ⟨hfLp, hGamma⟩ := smooth_literal_domain hf hfc
  exact OddLiteralCofinal.nonnegative_of_stageLower hstage hfLp hf.continuous.measurable hOdd hs hGamma

/-- The literal formula's carrier covers precisely the zeros in the Mathlib RH target. -/
theorem riemannHypothesis_iff_zetaZeroConfig_onLine :
    _root_.RiemannHypothesis ↔ ∀ ρ : Zeta23.zetaZeroConfig.carrier, (ρ : ℂ).re = 1 / 2 := by
  constructor
  · intro hRH ρ
    exact Zeta23.RH_implies_on_line hRH ρ.property
  · intro hOnLine s hz hTrivial hs1
    have hs : GRWTSK.RiemannHypothesis.NontrivialZetaZero s := ⟨hz, hTrivial, hs1⟩
    have hStrip := hs.mem_critical_strip
    exact hOnLine ⟨s, hz, hStrip.1, hStrip.2⟩

/-- Under Mathlib RH every summand is a nonnegative squared norm with its
actual multiplicity, so the literal unshifted odd form is nonnegative. -/
theorem literalOdd_nonneg_of_riemannHypothesis (hRH : _root_.RiemannHypothesis)
    {T : ℝ} {f : ℝ → ℝ} (hf : ContDiff ℝ 2 f) (hfc : HasCompactSupport f)
    (hOdd : Function.Odd f) (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    0 ≤ shiftedOddWeilEnergy T 0 f := by
  obtain ⟨hSum, hValue⟩ := literalOdd_zeta_zeroSum hf hfc hOdd hs
  have hF : Continuous (realTest f) := Complex.continuous_ofReal.comp hf.continuous
  have hFc : HasCompactSupport (realTest f) :=
    hfc.comp_left (g := Complex.ofReal) Complex.ofReal_zero
  rw [← Complex.ofReal_re (shiftedOddWeilEnergy T 0 f), ← hValue, Complex.re_tsum hSum]
  apply tsum_nonneg
  intro ρ
  have hRe := riemannHypothesis_iff_zetaZeroConfig_onLine.mp hRH ρ
  have hConj : conj (Zeta23.gammaOf ρ) = Zeta23.gammaOf ρ := by
    apply Complex.conj_eq_iff_im.mpr
    simp [Zeta23.gammaOf, Complex.div_I, Complex.mul_im, hRe]
  rw [testKernel, Zeta23.EF.paperFT_weilTest hF hF hFc hFc, hConj, Complex.mul_conj]
  simpa only [← Complex.ofReal_natCast, ← Complex.ofReal_mul, Complex.ofReal_re] using
    mul_nonneg (Nat.cast_nonneg (Zeta23.zetaZeroConfig.mult ρ))
      (Complex.normSq_nonneg (Zeta23.paperFT (realTest f) (Zeta23.gammaOf ρ)))

end GRWTSK.NumberTheory.WeilQuadraticForm.RealWeilSource
