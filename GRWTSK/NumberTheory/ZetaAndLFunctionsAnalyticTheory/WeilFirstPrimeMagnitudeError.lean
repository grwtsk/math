/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimePhaseReadout

/-!
# Sharp error from discarding the first-prime phase

Conjugate tests in the original smooth compact window have identical real
correlations and correlation magnitudes at every shift. Their original signed
first-window values lie on opposite sides of the real-channel contribution.
The midpoint attains the least worst-case error on this pair. This gives an
obstruction for the observation interface in grwtsk/math#1819 whenever the
actual sensor identifies the pair.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur SourcePrimeCorrelation

/-- At the first active prime, an admissible conjugate pair forces any common
estimate to incur at least the absolute missing phase contribution. The
estimate from the real channel attains that bound on the pair. -/
theorem exists_onePrime_magnitude_collision_error_floor {q : ℕ} {A : ℝ}
    (χ : DirichletCharacter ℂ q) (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    (hχ : (χ (2 : ℕ)).im ≠ 0) :
    ∃ f g : WindowTest A,
      (∀ r, ((correlation f.1 r).re, ‖correlation f.1 r‖) =
        ((correlation g.1 r).re, ‖correlation g.1 r‖)) ∧
      let c := correlation f.1 (Real.log 2)
      let center := 2 * primeWeight 2 * (χ (2 : ℕ)).re * c.re
      let radius := |2 * primeWeight 2 * (χ (2 : ℕ)).im * c.im|
      0 < radius ∧
        (∀ x : ℝ, radius ≤ max |x - signedWindowValue χ A f.1|
          |x - signedWindowValue χ A g.1|) ∧
        max |center - signedWindowValue χ A f.1| |center - signedWindowValue χ A g.1| =
          radius := by
  obtain ⟨f, hf⟩ := exists_windowTest_correlation_im_pos (Real.log_pos (by norm_num)) lo
  have hsupport : tsupport (fun t => conj (f.1 t)) = tsupport f.1 := by
    unfold tsupport
    congr 1
    ext t
    simp
  let g : WindowTest A := ⟨fun t => conj (f.1 t), Complex.conjCLE.contDiff.comp f.2.1,
    by simpa only [HasCompactSupport, hsupport] using f.2.2.1,
    by simpa only [hsupport] using f.2.2.2⟩
  have hconj (r : ℝ) : correlation g.1 r = conj (correlation f.1 r) := by
    simp only [g, correlation, ← integral_conj, map_mul, Complex.conj_conj]
  refine ⟨f, g, fun r => by rw [hconj r, Complex.conj_re, Complex.norm_conj], ?_⟩
  dsimp only
  let c := correlation f.1 (Real.log 2)
  let center := 2 * primeWeight 2 * (χ (2 : ℕ)).re * c.re
  let d := 2 * primeWeight 2 * (χ (2 : ℕ)).im * c.im
  have read_f : signedWindowValue χ A f.1 = center - d := by
    rw [signedWindowValue_eq_onePrime χ f.1 lo hi]
    dsimp only [c, center, d]
    ring
  have read_g : signedWindowValue χ A g.1 = center + d := by
    rw [signedWindowValue_eq_onePrime χ g.1 lo hi, hconj]
    simp only [Complex.conj_re, Complex.conj_im, c, center, d]
    ring
  have hw : 0 < primeWeight 2 := by
    rw [primeWeight, ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
    exact div_pos (Real.log_pos (by norm_num)) (Real.sqrt_pos.2 (by norm_num))
  change 0 < |d| ∧ _
  refine ⟨abs_pos.mpr (mul_ne_zero (mul_ne_zero (by positivity : 2 * primeWeight 2 ≠ 0) hχ)
    hf.ne'), ?_, ?_⟩
  · intro x
    rw [read_f, read_g]
    have triangle := abs_add_le (x - (center - d)) (-(x - (center + d)))
    rw [show x - (center - d) + -(x - (center + d)) = 2 * d by ring,
      abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2), abs_neg] at triangle
    linarith [le_max_left |x - (center - d)| |x - (center + d)|,
      le_max_right |x - (center - d)| |x - (center + d)|]
  · rw [read_f, read_g]
    change max |center - (center - d)| |center - (center + d)| = |d|
    rw [show center - (center - d) = d by ring, show center - (center + d) = -d by ring,
      abs_neg, max_self]

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
