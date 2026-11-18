/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindowReturn
import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension

/-!
# Signed phase recovery at the first active prime

On `log 2 < 2 * A ≤ log 3`, the source's strict cutoff retains only the
index `2`. Its imaginary correlation is weighted by the imaginary part of
the original character with a minus sign. The sign follows from the inverse
character supplied to `primeAtom`, which itself conjugates its character.

Two translated smooth bumps with relative phase `i` give a test with a
nonzero imaginary correlation at `log 2`. Conjugating that test keeps the
real correlation at every shift and reverses the imaginary correlation.
Thus the real correlation determines the readout exactly when `χ(2)` is real.

The calibrated reading uses the existing heat-wave map. Applying it to an
HS observation requires a producer theorem on `WindowTest`. The consumer
is the signed measurement in `windowValue`, including when the
pole-inclusive `HasSum` is supplied.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped ContDiff ComplexConjugate Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur SourcePrimeCorrelation WindowFilterLedger

variable {q : ℕ} {A : ℝ}

/-- The endpoint `log 3` is allowed because the source cutoff is strict. -/
theorem firstPowers_eq_singleton_two (lo : Real.log 2 < 2 * A)
    (hi : 2 * A ≤ Real.log 3) : firstPowers A = {2} := by
  have h₂ : (2 : ℝ) < Real.exp (2 * A) := by
    calc
      (2 : ℝ) = Real.exp (Real.log 2) := (Real.exp_log (by norm_num)).symm
      _ < Real.exp (2 * A) := Real.exp_lt_exp.mpr lo
  have h₃ : Real.exp (2 * A) ≤ 3 := by
    rw [← Real.exp_log (by norm_num : (0 : ℝ) < 3)]
    exact Real.exp_le_exp.mpr hi
  ext n
  rw [Finset.mem_singleton]
  constructor
  · intro hn
    have active := (Finset.mem_filter.mp (Finset.mem_filter.mp hn).1).1
    obtain ⟨low, cutoff⟩ := (Finset.mem_filter.mp active).2
    have high : (n : ℝ) < 3 := cutoff.trans_le h₃
    have highNat : n < 3 := by exact_mod_cast high
    omega
  · rintro rfl
    simpa using (pow_mem_firstPowers_iff (A := A) Nat.prime_two (m := 1) (by decide)).2
      ⟨by decide, by simpa using h₂⟩

/-- The literal source coefficient at the only supported prime. -/
theorem signedWindowValue_eq_onePrime (χ : DirichletCharacter ℂ q) (f : ℝ → ℂ)
    (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3) :
    let c := correlation f (Real.log 2)
    signedWindowValue χ A f =
      2 * primeWeight 2 * ((χ (2 : ℕ)).re * c.re - (χ (2 : ℕ)).im * c.im) := by
  intro c
  have hinv : χ⁻¹ (2 : ZMod q) = conj (χ (2 : ZMod q)) := by
    simpa only [RCLike.star_def] using (MulChar.star_apply' χ (2 : ZMod q)).symm
  simp only [signedWindowValue, firstPowers_eq_singleton_two lo hi, primeReadout,
    Finset.sum_singleton, primeAtom, Nat.cast_ofNat, hinv, Complex.conj_conj,
    Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero, c]
  ring

/-- Two separated translates of a smooth bump with relative phase `I` give
an original window test with positive imaginary correlation at their separation. -/
theorem exists_windowTest_correlation_im_pos {A r : ℝ} (hr : 0 < r) (hA : r < 2 * A) :
    ∃ f : WindowTest A, 0 < (correlation f.1 r).im := by
  let e := min (r / 4) ((2 * A - r) / 4)
  have he : 0 < e := lt_min (by linarith) (by linarith)
  have he₁ : e ≤ r / 4 := min_le_left _ _
  have he₂ : e ≤ (2 * A - r) / 4 := min_le_right _ _
  let c : ℝ := -(r / 2)
  let b : ContDiffBump c := ⟨e / 2, e, by linarith, by linarith⟩
  have out {t : ℝ} (h : b t ≠ 0) : |t - c| < e := by
    have hb : t ∈ Function.support b := h
    rw [b.support_eq, Metric.mem_ball, Real.dist_eq] at hb
    exact hb
  have orthogonal (t d : ℝ) (hd : r ≤ d) : b t * b (t + d) = 0 := by
    by_contra hn
    have hl := abs_lt.mp (out (left_ne_zero_of_mul hn))
    have hh := abs_lt.mp (out (right_ne_zero_of_mul hn))
    linarith [hl.1, hh.2]
  let f (t : ℝ) : ℂ := (b t : ℂ) + (b (t - r) : ℂ) * Complex.I
  have hb : ContDiff ℝ ∞ (fun t => (b t : ℂ)) :=
    Complex.ofRealCLM.contDiff.comp b.contDiff
  have hf : ContDiff ℝ ∞ f :=
    hb.add ((hb.comp (contDiff_id.sub contDiff_const)).mul contDiff_const)
  have hsupport : tsupport f ⊆ Icc (-A) A := by
    apply closure_minimal _ isClosed_Icc
    intro t ht
    by_contra hout
    have left : b t = 0 := by
      by_contra h
      have hh := abs_lt.mp (out h)
      exact hout ⟨by dsimp [c] at hh; linarith [hh.1], by dsimp [c] at hh; linarith [hh.2]⟩
    have right : b (t - r) = 0 := by
      by_contra h
      have hh := abs_lt.mp (out h)
      exact hout ⟨by dsimp [c] at hh; linarith [hh.1], by dsimp [c] at hh; linarith [hh.2]⟩
    exact ht (by simp [f, left, right])
  have hcompact : HasCompactSupport f := isCompact_Icc.of_isClosed_subset isClosed_closure hsupport
  refine ⟨⟨f, hf, hcompact, hsupport⟩, ?_⟩
  have integrand (t : ℝ) : conj (f t) * f (t + r) = ((b t ^ 2 : ℝ) : ℂ) * Complex.I := by
    have h₁ := orthogonal t r le_rfl
    have h₂ := orthogonal (t - r) r le_rfl
    have h₃ := orthogonal (t - r) (2 * r) (by linarith)
    rw [sub_add_cancel] at h₂
    rw [show t - r + 2 * r = t + r by ring] at h₃
    apply Complex.ext <;>
      simp only [f, add_sub_cancel_right, Complex.conj_re, Complex.conj_im,
        Complex.add_re, Complex.add_im, Complex.mul_re, Complex.mul_im,
        Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im,
        mul_zero, zero_add, add_zero, sub_zero, mul_one]
    · nlinarith only [h₁, h₂]
    · nlinarith only [h₃]
  have hb_at : b c = 1 := b.one_of_mem_closedBall
    (Metric.mem_closedBall_self (show 0 ≤ e / 2 by linarith))
  have hcompact_sq : HasCompactSupport (fun t : ℝ => (b t) ^ 2) := by
    apply b.hasCompactSupport.of_isClosed_subset isClosed_closure
    apply closure_mono
    intro t ht hz
    exact ht (by simp [show b t = 0 from hz])
  have hpos : 0 < ∫ t : ℝ, (b t) ^ 2 := by
    exact (b.continuous.pow 2).integral_pos_of_hasCompactSupport_nonneg_nonzero
      hcompact_sq (fun t => sq_nonneg (b t))
      (x := c) (by simp [hb_at])
  change 0 < (correlation f r).im
  rw [correlation, integral_congr_ae (Filter.Eventually.of_forall integrand),
    integral_mul_const, integral_complex_ofReal]
  simpa [Complex.mul_im] using hpos

private theorem correlation_conj (f : ℝ → ℂ) (r : ℝ) :
    correlation (fun x => conj (f x)) r = conj (correlation f r) := by
  simp only [correlation, ← integral_conj, map_mul, Complex.conj_conj]

private def conjugateTest (f : WindowTest A) : WindowTest A := by
  have hsupport : tsupport (fun t => conj (f.1 t)) = tsupport f.1 := by
    unfold tsupport
    congr 1
    ext t
    simp
  refine ⟨fun t => conj (f.1 t), ?_, ?_, ?_⟩
  · exact Complex.conjCLE.contDiff.comp f.2.1
  · simpa only [HasCompactSupport, hsupport] using f.2.2.1
  · rw [hsupport]
    exact f.2.2.2

/-- Any original test with a nonzero imaginary correlation exposes a
collision of the entire real-correlation observation at a complex phase. -/
private theorem not_determinesWindowReadout_realCorrelation_of_onePrime
    (χ : DirichletCharacter ℂ q) (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    (hχ : (χ (2 : ℕ)).im ≠ 0) (f : WindowTest A)
    (hf : (correlation f.1 (Real.log 2)).im ≠ 0) :
    ¬ DeterminesWindowReadout χ A (fun g r => (correlation g.1 r).re) := by
  intro determines
  have equalObs : (fun r => (correlation f.1 r).re) =
      (fun r => (correlation (conjugateTest f).1 r).re) := by
    funext r
    change (correlation f.1 r).re = (correlation (fun t => conj (f.1 t)) r).re
    simp only [correlation_conj, Complex.conj_re]
  have conjugated : correlation (conjugateTest f).1 (Real.log 2) =
      conj (correlation f.1 (Real.log 2)) := correlation_conj _ _
  have equalReadout := determines f (conjugateTest f) equalObs
  simp only [signedWindowValue_eq_onePrime χ _ lo hi, conjugated,
    Complex.conj_re, Complex.conj_im] at equalReadout
  have weight : 0 < primeWeight 2 := by
    rw [primeWeight, ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
    exact div_pos (Real.log_pos (by norm_num)) (Real.sqrt_pos.2 (by norm_num))
  have product : primeWeight 2 * ((χ (2 : ℕ)).im * (correlation f.1 (Real.log 2)).im) = 0 := by
    linear_combination -equalReadout / 4
  exact (mul_ne_zero weight.ne' (mul_ne_zero hχ hf)) product

/-- On the original one-prime test domain, the whole real correlation
determines the signed measurement exactly when the active phase is real. -/
theorem determinesWindowReadout_realCorrelation_iff_of_onePrime
    (χ : DirichletCharacter ℂ q) (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3) :
    DeterminesWindowReadout χ A (fun g r => (correlation g.1 r).re) ↔ (χ (2 : ℕ)).im = 0 := by
  constructor
  · intro determines
    by_contra hχ
    obtain ⟨f, hf⟩ := exists_windowTest_correlation_im_pos (Real.log_pos (by norm_num)) lo
    exact not_determinesWindowReadout_realCorrelation_of_onePrime χ lo hi hχ f hf.ne' determines
  · intro hχ f g equalObs
    have eq := congrFun equalObs (Real.log 2)
    rw [signedWindowValue_eq_onePrime χ f.1 lo hi, signedWindowValue_eq_onePrime χ g.1 lo hi]
    simpa only [hχ, zero_mul, sub_zero] using
      congrArg (fun x => 2 * primeWeight 2 * ((χ (2 : ℕ)).re * x)) eq

/-- A decoder from the whole real correlation incurs at least half the
signed readout gap on one of a test and its conjugate. -/
theorem onePrime_realCorrelation_decoder_error_lower
    (χ : DirichletCharacter ℂ q) (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    (decode : (ℝ → ℝ) → ℝ) (f : WindowTest A) :
    ∃ g : WindowTest A,
      (∀ r, (correlation g.1 r).re = (correlation f.1 r).re) ∧
      2 * primeWeight 2 * |(χ (2 : ℕ)).im * (correlation f.1 (Real.log 2)).im| ≤
        |decode (fun r => (correlation g.1 r).re) - signedWindowValue χ A g.1| := by
  let g := conjugateTest f
  have same (r : ℝ) : (correlation g.1 r).re = (correlation f.1 r).re := by
    change (correlation (fun t => conj (f.1 t)) r).re = _
    simp only [correlation_conj, Complex.conj_re]
  let x := decode (fun r => (correlation f.1 r).re)
  let u := signedWindowValue χ A f.1
  let v := signedWindowValue χ A g.1
  let phase := (χ (2 : ℕ)).im * (correlation f.1 (Real.log 2)).im
  have conjugated : correlation g.1 (Real.log 2) = conj (correlation f.1 (Real.log 2)) :=
    correlation_conj _ _
  have gap : v - u = (4 * primeWeight 2) * phase := by
    simp only [u, v, signedWindowValue_eq_onePrime χ _ lo hi, conjugated,
      Complex.conj_re, Complex.conj_im, phase]
    ring
  have triangle : |v - u| ≤ |x - u| + |x - v| := by
    convert abs_sub_le v x u using 1
    rw [abs_sub_comm v x, add_comm]
  let bound := 2 * primeWeight 2 * |phase|
  have twice : 2 * bound ≤ |x - u| + |x - v| := by
    rw [gap, abs_mul, abs_of_nonneg (mul_nonneg (by norm_num) (primeWeight_nonneg _))] at triangle
    simpa only [bound, ← mul_assoc, show (2 : ℝ) * 2 = 4 by norm_num] using triangle
  by_cases first : bound ≤ |x - u|
  · exact ⟨f, fun _ => rfl, first⟩
  · have second : bound ≤ |x - v| := by linarith [lt_of_not_ge first]
    refine ⟨g, same, ?_⟩
    simpa only [x, v, same] using second

/-- For tests with the same real sample, the exact signed readout gap is
the imaginary sample gap multiplied by the original signed coefficient. -/
theorem signedWindowValue_sub_of_same_onePrimeReal
    (χ : DirichletCharacter ℂ q) (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    {f g : WindowTest A}
    (same : (correlation f.1 (Real.log 2)).re = (correlation g.1 (Real.log 2)).re) :
    signedWindowValue χ A f.1 - signedWindowValue χ A g.1 =
      -(2 * primeWeight 2 * (χ (2 : ℕ)).im) *
        ((correlation f.1 (Real.log 2)).im - (correlation g.1 (Real.log 2)).im) := by
  simp only [signedWindowValue_eq_onePrime χ _ lo hi, same]
  ring

/-- Once a record determines the real sample, resolving its signed readout
is equivalent to resolving the imaginary sample at a nonreal character value. -/
theorem determinesWindowReadout_iff_onePrimeImaginary {Obs : Type*}
    (χ : DirichletCharacter ℂ q) (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    (phase : (χ (2 : ℕ)).im ≠ 0) (observe : WindowTest A → Obs)
    (real_fixed : ∀ f g, observe f = observe g →
      (correlation f.1 (Real.log 2)).re = (correlation g.1 (Real.log 2)).re) :
    DeterminesWindowReadout χ A observe ↔
      ∀ f g, observe f = observe g →
        (correlation f.1 (Real.log 2)).im = (correlation g.1 (Real.log 2)).im := by
  have weight : 0 < primeWeight 2 := by
    rw [primeWeight, ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
    exact div_pos (Real.log_pos (by norm_num)) (Real.sqrt_pos.2 (by norm_num))
  have coeff : -(2 * primeWeight 2 * (χ (2 : ℕ)).im) ≠ 0 :=
    neg_ne_zero.mpr (mul_ne_zero (mul_ne_zero (by norm_num) weight.ne') phase)
  constructor
  · intro readout f g same
    apply sub_eq_zero.mp
    have gap := signedWindowValue_sub_of_same_onePrimeReal χ lo hi (real_fixed f g same)
    rw [readout f g same, sub_self] at gap
    exact (mul_eq_zero.mp gap.symm).resolve_left coeff
  · intro imag f g same
    apply sub_eq_zero.mp
    rw [signedWindowValue_sub_of_same_onePrimeReal χ lo hi (real_fixed f g same),
      imag f g same, sub_self, mul_zero]

/-- The real reading after rotating by `-i` measures the signed imaginary
correlation at the original heat gain. -/
theorem heatWaveReadout_negI_re (s rate : ℝ) (z : ℂ) :
    (heatWaveReadout s rate (-Complex.I) z).re = Real.exp (-(s * rate)) * z.im := by
  simp only [heatWaveReadout, Complex.mul_re, Complex.mul_im, Complex.ofReal_re,
    Complex.ofReal_im, Complex.neg_re, Complex.neg_im, Complex.I_re, Complex.I_im]
  ring

/-- Given a certified heated phase reading and the exact real correlation,
recover the signed first-window measurement within the propagated error. -/
theorem abs_onePrimePhase_error_le (χ : DirichletCharacter ℂ q) (f : ℝ → ℂ)
    (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    (s rate reading error : ℝ)
    (hreading : |reading - (heatWaveReadout s rate (-Complex.I) (correlation f (Real.log 2))).re| ≤ error) :
    let c := correlation f (Real.log 2)
    let gain := Real.exp (-(s * rate))
    |2 * primeWeight 2 * ((χ (2 : ℕ)).re * c.re - (χ (2 : ℕ)).im * (reading / gain)) -
      signedWindowValue χ A f| ≤ 2 * primeWeight 2 * |(χ (2 : ℕ)).im| * (error / gain) := by
  intro c gain
  rw [heatWaveReadout_negI_re] at hreading
  have gain_pos : 0 < gain := Real.exp_pos _
  have him : |reading / gain - c.im| ≤ error / gain := by
    rw [show reading / gain - c.im = (reading - gain * c.im) / gain by
      field_simp [gain_pos.ne']]
    rw [abs_div, abs_of_pos gain_pos]
    exact div_le_div_of_nonneg_right hreading gain_pos.le
  rw [signedWindowValue_eq_onePrime χ f lo hi]
  change |2 * primeWeight 2 * ((χ (2 : ℕ)).re * c.re - (χ (2 : ℕ)).im * (reading / gain)) -
    2 * primeWeight 2 * ((χ (2 : ℕ)).re * c.re - (χ (2 : ℕ)).im * c.im)| ≤ _
  rw [show 2 * primeWeight 2 * ((χ (2 : ℕ)).re * c.re - (χ (2 : ℕ)).im * (reading / gain)) -
      2 * primeWeight 2 * ((χ (2 : ℕ)).re * c.re - (χ (2 : ℕ)).im * c.im) =
      -(2 * primeWeight 2) * (χ (2 : ℕ)).im * (reading / gain - c.im) by ring]
  have weight_nonneg : 0 ≤ 2 * primeWeight 2 := mul_nonneg (by norm_num) (primeWeight_nonneg _)
  rw [abs_mul, abs_mul, abs_neg, abs_of_nonneg weight_nonneg]
  exact mul_le_mul_of_nonneg_left him (mul_nonneg weight_nonneg (abs_nonneg _))

/-- Recover the original signed measurement at zero calibration error.
The real and heated channels refer to the same test. -/
theorem determinesWindowReadout_of_onePrimePhase {Obs : Type*}
    (χ : DirichletCharacter ℂ q) (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    (observe : WindowTest A → Obs) (realPart phasePart : Obs → ℝ) (s rate : ℝ)
    (real_ok : ∀ f, realPart (observe f) = (correlation f.1 (Real.log 2)).re)
    (phase_ok : ∀ f, phasePart (observe f) =
      (heatWaveReadout s rate (-Complex.I) (correlation f.1 (Real.log 2))).re) :
    DeterminesWindowReadout χ A observe := by
  apply (determinesWindowReadout_iff χ A observe).2
  let gain := Real.exp (-(s * rate))
  refine ⟨fun o => 2 * primeWeight 2 *
    ((χ (2 : ℕ)).re * realPart o - (χ (2 : ℕ)).im * (phasePart o / gain)), ?_⟩
  intro f
  have bound := abs_onePrimePhase_error_le χ f.1 lo hi s rate (phasePart (observe f)) 0
    (by simp [phase_ok f])
  apply sub_eq_zero.mp
  apply abs_eq_zero.mp
  apply le_antisymm _ (abs_nonneg _)
  simpa only [zero_div, mul_zero, real_ok f, gain] using bound

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
