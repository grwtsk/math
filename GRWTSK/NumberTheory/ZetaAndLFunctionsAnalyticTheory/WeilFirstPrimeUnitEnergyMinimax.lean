/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeEnergyBudget
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeUnboundedError

/-!
# Exact worst-case first-prime error at unit energy

The complete real and magnitude correlations permit an absolute signed
first-window error tolerance exactly when it covers the missing imaginary
character weight. The two original unit-energy conjugate tests attain
opposite signed values at one common observation. The real-channel readout
achieves the tolerance on the whole unit-energy test class.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur SourcePrimeCorrelation

/-- The least uniform absolute tolerance of a decoder from both phase-blind
channels is `primeWeight 2 * |Im χ(2)|` on the original unit-energy tests. -/
theorem exists_onePrime_unitEnergy_decoder_iff {q : ℕ} {A : ℝ}
    (χ : DirichletCharacter ℂ q) (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    (ε : ℝ) :
    (∃ decode : (ℝ → ℝ × ℝ) → ℝ, ∀ f : WindowTest A, energy f.1 = 1 →
      |decode (fun r => ((correlation f.1 r).re, ‖correlation f.1 r‖)) -
        signedWindowValue χ A f.1| ≤ ε) ↔
      primeWeight 2 * |(χ (2 : ℕ)).im| ≤ ε := by
  constructor
  · rintro ⟨decode, accurate⟩
    obtain ⟨f, hf, phase⟩ := exists_windowTest_unitEnergy_correlation_eq_I_div_two
      (Real.log_pos (by norm_num)) lo
    have hsupport : tsupport (fun t => conj (f.1 t)) = tsupport f.1 := by
      unfold tsupport
      congr 1
      ext t
      simp
    let g : WindowTest A := ⟨fun t => conj (f.1 t), Complex.conjCLE.contDiff.comp f.2.1,
      by simpa only [HasCompactSupport, hsupport] using f.2.2.1,
      by simpa only [hsupport] using f.2.2.2⟩
    have hg : energy g.1 = 1 := by
      simpa only [g, energy, Complex.norm_conj] using hf
    have conjugated (r : ℝ) : correlation g.1 r = conj (correlation f.1 r) := by
      simp only [g, correlation, ← integral_conj, map_mul, Complex.conj_conj]
    have same :
        (fun r => ((correlation g.1 r).re, ‖correlation g.1 r‖)) =
          (fun r => ((correlation f.1 r).re, ‖correlation f.1 r‖)) := by
      funext r
      rw [conjugated, Complex.conj_re, Complex.norm_conj]
    have re_zero : (Complex.I / 2).re = 0 := by norm_num [Complex.div_re, Complex.normSq_apply]
    have im_half : (Complex.I / 2).im = 1 / 2 := by norm_num [Complex.div_im, Complex.normSq_apply]
    let d := primeWeight 2 * (χ (2 : ℕ)).im
    have read_f : signedWindowValue χ A f.1 = -d := by
      rw [signedWindowValue_eq_onePrime χ f.1 lo hi]
      simp only [phase, re_zero, im_half, mul_zero]
      unfold d
      ring
    have read_g : signedWindowValue χ A g.1 = d := by
      rw [signedWindowValue_eq_onePrime χ g.1 lo hi, conjugated]
      simp only [phase, Complex.conj_re, Complex.conj_im, re_zero, im_half, mul_zero]
      unfold d
      ring
    let x := decode (fun r => ((correlation f.1 r).re, ‖correlation f.1 r‖))
    have close_f : |x - -d| ≤ ε := by
      simpa only [x, read_f] using accurate f hf
    have close_g : |x - d| ≤ ε := by
      simpa only [x, read_g, same] using accurate g hg
    have triangle := abs_add_le (x - -d) (-(x - d))
    rw [show x - -d + -(x - d) = 2 * d by ring,
      abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2), abs_neg] at triangle
    have necessary : |d| ≤ ε := by linarith
    simpa only [d, abs_mul, abs_of_nonneg (primeWeight_nonneg _)] using necessary
  · intro sufficient
    refine ⟨fun o => 2 * primeWeight 2 * (χ (2 : ℕ)).re * (o (Real.log 2)).1, ?_⟩
    intro f hf
    have error := abs_onePrime_realChannel_error_le_energy χ lo hi f
      (correlation f.1 (Real.log 2)).re 0 (by simp)
    have upper : |2 * primeWeight 2 * (χ (2 : ℕ)).re * (correlation f.1 (Real.log 2)).re -
        signedWindowValue χ A f.1| ≤ primeWeight 2 * |(χ (2 : ℕ)).im| := by
      simpa only [hf, mul_zero, zero_add, mul_one] using error
    exact upper.trans sufficient

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
