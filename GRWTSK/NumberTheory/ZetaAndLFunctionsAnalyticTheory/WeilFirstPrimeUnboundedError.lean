/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeMagnitudeError

/-!
# Unbounded first-prime error on the original test window

The original compact smooth window has no amplitude constraint. Scaling both
tests in the conjugate collision preserves equality of their real and magnitude
correlations and multiplies their signed readout gap by the square of the scale.
Thus a sensor identifying those equal observations admits no finite uniform
absolute error budget for the signed first-window consumer in grwtsk/math#1819.
Normalizing the common energy to one leaves a strictly positive error floor.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur SourcePrimeCorrelation

private def scaleTest {A : ℝ} (s : ℝ) (f : WindowTest A) : WindowTest A := by
  have hsupport : tsupport (fun t => (s : ℂ) * f.1 t) ⊆ Icc (-A) A :=
    tsupport_mul_subset_right.trans f.2.2.2
  exact ⟨fun t => (s : ℂ) * f.1 t, contDiff_const.mul f.2.1,
    isCompact_Icc.of_isClosed_subset isClosed_closure hsupport, hsupport⟩

private theorem correlation_scaleTest {A : ℝ} (s : ℝ) (f : WindowTest A) (r : ℝ) :
    correlation (scaleTest s f).1 r = ((s ^ 2 : ℝ) : ℂ) * correlation f.1 r := by
  unfold correlation
  rw [← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with t
  simp only [scaleTest, map_mul, Complex.conj_ofReal, Complex.ofReal_pow]
  ring

private theorem signedWindowValue_scaleTest {q : ℕ} {A : ℝ} (χ : DirichletCharacter ℂ q)
    (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3) (s : ℝ) (f : WindowTest A) :
    signedWindowValue χ A (scaleTest s f).1 = s ^ 2 * signedWindowValue χ A f.1 := by
  rw [signedWindowValue_eq_onePrime χ _ lo hi, signedWindowValue_eq_onePrime χ f.1 lo hi]
  simp only [correlation_scaleTest, Complex.mul_re, Complex.mul_im, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero]
  ring

private theorem scaleTest_preserves_same_observation {A : ℝ} (s : ℝ) {f g : WindowTest A}
    (same : ∀ r, ((correlation f.1 r).re, ‖correlation f.1 r‖) =
      ((correlation g.1 r).re, ‖correlation g.1 r‖)) (r : ℝ) :
    ((correlation (scaleTest s f).1 r).re, ‖correlation (scaleTest s f).1 r‖) =
      ((correlation (scaleTest s g).1 r).re, ‖correlation (scaleTest s g).1 r‖) := by
  simp only [correlation_scaleTest, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    zero_mul, sub_zero, norm_mul]
  exact congrArg (fun p : ℝ × ℝ => (s ^ 2 * p.1, ‖((s ^ 2 : ℝ) : ℂ)‖ * p.2)) (same r)

private theorem scaleTest_error_lower {q : ℕ} {A : ℝ} (χ : DirichletCharacter ℂ q)
    (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3) (s : ℝ) {f g : WindowTest A}
    {d : ℝ} (hs : 0 < s ^ 2)
    (lower : ∀ x : ℝ, d ≤ max |x - signedWindowValue χ A f.1|
      |x - signedWindowValue χ A g.1|) (x : ℝ) :
    s ^ 2 * d ≤ max |x - signedWindowValue χ A (scaleTest s f).1|
      |x - signedWindowValue χ A (scaleTest s g).1| := by
  have rescale (v : ℝ) : s ^ 2 * |x / s ^ 2 - v| = |x - s ^ 2 * v| := by
    calc
      s ^ 2 * |x / s ^ 2 - v| = |s ^ 2 * (x / s ^ 2 - v)| := by rw [abs_mul, abs_of_pos hs]
      _ = |x - s ^ 2 * v| := by rw [mul_sub, mul_div_cancel₀ _ hs.ne']
  have bound := mul_le_mul_of_nonneg_left (lower (x / s ^ 2)) hs.le
  rw [mul_max_of_nonneg _ _ hs.le, rescale, rescale] at bound
  simpa only [signedWindowValue_scaleTest χ lo hi] using bound

/-- Any decoder of an observation that identifies equal real and magnitude
correlations has arbitrarily large absolute error on the original test class
when the phase of the first active character coefficient is nonreal. -/
theorem onePrime_decoder_error_unbounded {q : ℕ} {A : ℝ} {Obs : Type*}
    (χ : DirichletCharacter ℂ q) (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    (hχ : (χ (2 : ℕ)).im ≠ 0) (observe : WindowTest A → Obs)
    (identify : ∀ f g : WindowTest A,
      (∀ r, ((correlation f.1 r).re, ‖correlation f.1 r‖) =
        ((correlation g.1 r).re, ‖correlation g.1 r‖)) → observe f = observe g)
    (decode : Obs → ℝ) (E : ℝ) :
    ∃ f : WindowTest A, E < |decode (observe f) - signedWindowValue χ A f.1| := by
  obtain ⟨f, g, same, positive, lower, _⟩ :=
    exists_onePrime_magnitude_collision_error_floor χ lo hi hχ
  let d := |2 * primeWeight 2 * (χ (2 : ℕ)).im * (correlation f.1 (Real.log 2)).im|
  have hd : 0 < d := positive
  let s := Real.sqrt ((max E 0 + 1) / d)
  let k := s ^ 2
  have hk_eq : k = (max E 0 + 1) / d :=
    Real.sq_sqrt (div_nonneg (by positivity) hd.le)
  have hk : 0 < k := by
    rw [hk_eq]
    positivity
  have large : E < k * d := by
    rw [hk_eq, div_mul_cancel₀ _ hd.ne']
    linarith [le_max_left E 0]
  have equal : observe (scaleTest s f) = observe (scaleTest s g) :=
    identify _ _ (scaleTest_preserves_same_observation s same)
  let x := decode (observe (scaleTest s f))
  have hmax := large.trans_le (scaleTest_error_lower χ lo hi s hk lower x)
  rcases lt_max_iff.mp hmax with hf | hg
  · exact ⟨scaleTest s f, hf⟩
  · refine ⟨scaleTest s g, ?_⟩
    simpa only [← equal] using hg

private theorem correlation_zero_eq_energy (f : ℝ → ℂ) :
    correlation f 0 = (energy f : ℂ) := by
  have pointwise (t : ℝ) :
      conj (f t) * f t = ((‖f t‖ ^ 2 : ℝ) : ℂ) := by
    rw [mul_comm, Complex.mul_conj, Complex.normSq_eq_norm_sq]
  unfold correlation energy
  simp_rw [add_zero, pointwise]
  exact integral_ofReal

/-- Unit energy still permits indistinguishable tests with a positive lower
bound for every common signed first-window estimate. -/
theorem exists_onePrime_unitEnergy_collision_error_floor {q : ℕ} {A : ℝ}
    (χ : DirichletCharacter ℂ q) (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    (hχ : (χ (2 : ℕ)).im ≠ 0) :
    ∃ f g : WindowTest A, energy f.1 = 1 ∧ energy g.1 = 1 ∧
      (∀ r, ((correlation f.1 r).re, ‖correlation f.1 r‖) =
        ((correlation g.1 r).re, ‖correlation g.1 r‖)) ∧
      ∃ d : ℝ, 0 < d ∧ ∀ x : ℝ, d ≤ max |x - signedWindowValue χ A f.1|
        |x - signedWindowValue χ A g.1| := by
  obtain ⟨f, g, same, positive, lower, _⟩ :=
    exists_onePrime_magnitude_collision_error_floor χ lo hi hχ
  let d := |2 * primeWeight 2 * (χ (2 : ℕ)).im * (correlation f.1 (Real.log 2)).im|
  have hd : 0 < d := positive
  have hcorr : 0 < ‖correlation f.1 (Real.log 2)‖ := by
    apply norm_pos_iff.mpr
    intro h
    simp [d, h] at hd
  have he : 0 < energy f.1 := hcorr.trans_le (norm_correlation_le_energy
    (f.2.1.continuous.memLp_of_hasCompactSupport f.2.2.1) _)
  have heq : energy f.1 = energy g.1 := by
    simpa only [correlation_zero_eq_energy, Complex.ofReal_re] using congrArg Prod.fst (same 0)
  let s := Real.sqrt (1 / energy f.1)
  have hsq : s ^ 2 = 1 / energy f.1 := Real.sq_sqrt (by positivity)
  have hs : 0 < s ^ 2 := by rw [hsq]; positivity
  have scaleEnergy (u : WindowTest A) : energy (scaleTest s u).1 = s ^ 2 * energy u.1 := by
    have h := congrArg Complex.re (correlation_scaleTest s u 0)
    simpa only [correlation_zero_eq_energy, ← Complex.ofReal_mul, Complex.ofReal_re] using h
  have unit_f : energy (scaleTest s f).1 = 1 := by
    rw [scaleEnergy, hsq, div_mul_cancel₀ _ he.ne']
  have unit_g : energy (scaleTest s g).1 = 1 := by
    rw [scaleEnergy, ← heq, hsq, div_mul_cancel₀ _ he.ne']
  exact ⟨scaleTest s f, scaleTest s g, unit_f, unit_g, scaleTest_preserves_same_observation s same,
    s ^ 2 * d, mul_pos hs hd, scaleTest_error_lower χ lo hi s hs lower⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
