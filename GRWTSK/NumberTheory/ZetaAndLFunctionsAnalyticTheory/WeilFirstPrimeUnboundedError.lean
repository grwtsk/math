/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeMagnitudeError

/-!
# Unbounded first-prime error on the original test window

The original compact smooth window has no amplitude constraint. Scaling both
tests in the conjugate collision preserves equality of their real and magnitude
correlations and multiplies their signed readout gap by the square of the scale.
Thus a sensor identifying those equal observations admits no finite uniform
absolute error budget for the signed first-window consumer in grwtsk/math#1819.
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
  have equal : observe (scaleTest s f) = observe (scaleTest s g) := by
    apply identify
    intro r
    simp only [correlation_scaleTest, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
      zero_mul, sub_zero, norm_mul]
    exact congrArg (fun p : ℝ × ℝ => (s ^ 2 * p.1, ‖((s ^ 2 : ℝ) : ℂ)‖ * p.2)) (same r)
  let x := decode (observe (scaleTest s f))
  have rescale (v : ℝ) : k * |x / k - v| = |x - k * v| := by
    calc
      k * |x / k - v| = |k * (x / k - v)| := by rw [abs_mul, abs_of_pos hk]
      _ = |x - k * v| := by rw [mul_sub, mul_div_cancel₀ _ hk.ne']
  have bound := mul_le_mul_of_nonneg_left (lower (x / k)) hk.le
  rw [mul_max_of_nonneg _ _ hk.le, rescale, rescale] at bound
  have hmax : E < max |x - k * signedWindowValue χ A f.1|
      |x - k * signedWindowValue χ A g.1| := large.trans_le bound
  rcases lt_max_iff.mp hmax with hf | hg
  · refine ⟨scaleTest s f, ?_⟩
    simpa only [signedWindowValue_scaleTest χ lo hi] using hf
  · refine ⟨scaleTest s g, ?_⟩
    simpa only [signedWindowValue_scaleTest χ lo hi, ← equal] using hg

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
