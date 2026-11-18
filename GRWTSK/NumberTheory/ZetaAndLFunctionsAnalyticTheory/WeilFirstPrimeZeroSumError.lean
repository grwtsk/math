/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeUnboundedError
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindowPhysicalSource

/-!
# First-prime phase error in the original Weil zero sum

The arithmetic estimate uses the same signed reading for both tests and
evaluates each test's remaining arithmetic terms exactly.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory
open GRWTSK.NumberTheory.WeilNegativeWitness

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur SourcePrimeCorrelation

/-- Even with all other arithmetic terms exact, discarding the first-prime
phase gives an attained positive worst-case error for the original zero sum
on a pair with identical real correlations and correlation magnitudes. -/
theorem exists_onePrime_zeroSum_error_floor {q : ℕ} [NeZero q] {A : ℝ}
    (χ : DirichletCharacter ℂ q) (hprim : χ.IsPrimitive)
    (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    (hχ : (χ (2 : ℕ)).im ≠ 0) :
    let error := fun (t : WindowTest A) (x : ℝ) =>
      ‖(∑' ρ : CriticalStripZero χ, (zeroMultiplicity χ ρ : ℂ) *
        (∫ r : ℝ, correlation t.1 r * Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ)))) -
        windowValue χ A t.1 x‖
    ∃ f g : WindowTest A,
      (∀ r, ((correlation f.1 r).re, ‖correlation f.1 r‖) =
        ((correlation g.1 r).re, ‖correlation g.1 r‖)) ∧
      let c := correlation f.1 (Real.log 2)
      let center := 2 * primeWeight 2 * (χ (2 : ℕ)).re * c.re
      let radius := |2 * primeWeight 2 * (χ (2 : ℕ)).im * c.im|
      0 < radius ∧
        (∀ x : ℝ, radius ≤ max (error f x) (error g x)) ∧
        max (error f center) (error g center) = radius := by
  intro error
  have hlog : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hA : 0 ≤ A := by linarith
  have herror (t : WindowTest A) (x : ℝ) :
      error t x = |x - signedWindowValue χ A t.1| := by
    change ‖_ - windowValue χ A t.1 x‖ = _
    rw [primitive_tsum_sub_windowValue_eq_readout_error χ hprim t.1 A hA
      ⟨t.2.1, t.2.2.1⟩ t.2.2.2 x, Complex.norm_real, Real.norm_eq_abs]
  obtain ⟨f, g, hobs, hfloor⟩ := exists_onePrime_magnitude_collision_error_floor χ lo hi hχ
  exact ⟨f, g, hobs, by simpa only [herror] using hfloor⟩

/-- A decoder which identifies tests with the same real correlations and
correlation magnitudes has no uniform absolute error bound for the original
zero sum when used as the signed first-window input. The remaining arithmetic
terms are evaluated exactly at each test. -/
theorem onePrime_zeroSum_decoder_error_unbounded {q : ℕ} [NeZero q] {A : ℝ} {Obs : Type*}
    (χ : DirichletCharacter ℂ q) (hprim : χ.IsPrimitive)
    (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    (hχ : (χ (2 : ℕ)).im ≠ 0) (observe : WindowTest A → Obs)
    (identify : ∀ f g : WindowTest A,
      (∀ r, ((correlation f.1 r).re, ‖correlation f.1 r‖) =
        ((correlation g.1 r).re, ‖correlation g.1 r‖)) → observe f = observe g)
    (decode : Obs → ℝ) (E : ℝ) :
    ∃ f : WindowTest A,
      E < ‖(∑' ρ : CriticalStripZero χ, (zeroMultiplicity χ ρ : ℂ) *
        (∫ r : ℝ, correlation f.1 r * Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ)))) -
        windowValue χ A f.1 (decode (observe f))‖ := by
  have hlog : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hA : 0 ≤ A := by linarith
  obtain ⟨f, hf⟩ := onePrime_decoder_error_unbounded χ lo hi hχ observe identify decode E
  refine ⟨f, ?_⟩
  rw [primitive_tsum_sub_windowValue_eq_readout_error χ hprim f.1 A hA
    ⟨f.2.1, f.2.2.1⟩ f.2.2.2 (decode (observe f)), Complex.norm_real, Real.norm_eq_abs]
  exact hf

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
