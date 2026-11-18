/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindowReturn

/-!
# Signed prime-2 readout from two Green boundary rows

The rows use forward logarithmic correlations. The signed readout retains
prime 3 separately at the strict cutoff `log 4 < 2 * A ≤ log 5`.
The source recurrence and observation error hypotheses are explicit.
SOURCE_PROOF_CANDIDATE. The recurrence is an input at the original test.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur SourcePrimeCorrelation

def dyadicRatio (a : ℂ) : ℂ := a / (Real.sqrt 2 : ℂ)

def dyadicBoundary (a : ℂ) (S : ℤ → ℂ) (n : ℤ) : ℂ :=
  3 * S n - (Real.sqrt 2 : ℂ) * (conj a * S (n + 1) + a * S (n - 1))

theorem dyadicBoundary_eq (a : ℂ) (ha : ‖a‖ = 1) (g S : ℤ → ℂ)
    (step : ∀ n : ℤ, S n = dyadicRatio a * g (1 - n) + dyadicRatio a * S (n - 1))
    (n : ℤ) :
    dyadicBoundary a S n = 2 * dyadicRatio a * g (1 - n) - g (-n) := by
  let c : ℂ := (Real.sqrt 2 : ℝ)
  let r := dyadicRatio a
  have hc : c ≠ 0 := Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.2 (by norm_num)).ne'
  have hc2 : c * c = 2 := by
    change (Real.sqrt 2 : ℂ) * (Real.sqrt 2 : ℂ) = 2
    rw [← Complex.ofReal_mul]
    exact_mod_cast (Real.mul_self_sqrt (by norm_num : (0 : ℝ) ≤ 2))
  have hunit : conj a * a = 1 := by simp [Complex.conj_mul', ha]
  have hforward : c * conj a * r = 1 := by
    change c * conj a * (a / c) = 1
    calc
      _ = (conj a * a) * (c / c) := by ring
      _ = 1 := by rw [hunit, div_self hc, one_mul]
  have hbackward : c * a = 2 * r := by
    change c * a = 2 * (a / c)
    rw [show (2 : ℂ) * (a / c) = (2 * a) / c by ring]
    apply (eq_div_iff hc).2
    linear_combination a * hc2
  have hnext := step (n + 1)
  rw [show 1 - (n + 1) = -n by omega, show n + 1 - 1 = n by omega] at hnext
  have hcurr : S n - r * S (n - 1) = r * g (1 - n) := by
    linear_combination (step n)
  change 3 * S n - c * (conj a * S (n + 1) + a * S (n - 1)) =
    2 * r * g (1 - n) - g (-n)
  rw [hnext]
  calc
    _ = 3 * S n - (c * conj a * r * g (-n) + c * conj a * r * S n +
        c * a * S (n - 1)) := by ring
    _ = 2 * (S n - r * S (n - 1)) - g (-n) := by rw [hforward, hbackward]; ring
    _ = _ := by rw [hcurr]; ring

/-- The two rows determine the first two complex correlations at known energy. -/
theorem dyadicBoundary_recover (a : ℂ) (ha : ‖a‖ = 1) (g S : ℤ → ℂ) (E : ℝ)
    (energy_eq : g 0 = (E : ℂ))
    (step : ∀ n : ℤ, S n = dyadicRatio a * g (1 - n) + dyadicRatio a * S (n - 1)) :
    let c := 2 * dyadicRatio a
    let B := dyadicBoundary a S
    g 1 = (B 0 + (E : ℂ)) / c ∧
    g 2 = (B (-1) + (B 0 + (E : ℂ)) / c) / c := by
  intro c B
  have hr : dyadicRatio a ≠ 0 := by
    apply div_ne_zero
    · intro h
      simp [h] at ha
    · exact Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.2 (by norm_num)).ne'
  have hc : c ≠ 0 := mul_ne_zero (by norm_num) hr
  have row_zero : B 0 = c * g 1 - (E : ℂ) := by
    simpa [B, c, energy_eq] using dyadicBoundary_eq a ha g S step 0
  have row_neg_one : B (-1) = c * g 2 - g 1 := by
    simpa [B, c] using dyadicBoundary_eq a ha g S step (-1)
  have first : g 1 = (B 0 + (E : ℂ)) / c := by
    apply (eq_div_iff hc).2
    rw [row_zero]
    ring
  refine ⟨first, (eq_div_iff hc).2 ?_⟩
  rw [← first, row_neg_one]
  ring

/-- Enclosures for the two rows give complex norm bounds on the recovered
forward correlations. The energy is exact in both reconstructions. -/
theorem norm_dyadicRecovery_sub_le (a : ℂ) (ha : ‖a‖ = 1) (g S : ℤ → ℂ) (E : ℝ)
    (energy_eq : g 0 = (E : ℂ))
    (step : ∀ n : ℤ, S n = dyadicRatio a * g (1 - n) + dyadicRatio a * S (n - 1))
    (b0 bneg : ℂ) (δ0 δneg : ℝ)
    (h0 : ‖b0 - dyadicBoundary a S 0‖ ≤ δ0)
    (hneg : ‖bneg - dyadicBoundary a S (-1)‖ ≤ δneg) :
    let d := 2 * dyadicRatio a
    let z1 := (b0 + (E : ℂ)) / d
    let z2 := (bneg + z1) / d
    ‖z1 - g 1‖ ≤ δ0 / Real.sqrt 2 ∧
      ‖z2 - g 2‖ ≤ δneg / Real.sqrt 2 + δ0 / 2 := by
  intro d z1 z2
  have hd : ‖d‖ = Real.sqrt 2 := by
    have hs : 0 < Real.sqrt 2 := Real.sqrt_pos.2 (by norm_num)
    have hs2 : Real.sqrt 2 * Real.sqrt 2 = 2 := Real.mul_self_sqrt (by norm_num)
    simp only [d, dyadicRatio, norm_mul, norm_div, Complex.norm_two, ha,
      Complex.norm_real, Real.norm_eq_abs, abs_of_pos hs]
    calc
      (2 : ℝ) * (1 / Real.sqrt 2) = 2 / Real.sqrt 2 := by ring
      _ = Real.sqrt 2 := ((eq_div_iff hs.ne').2 hs2).symm
  obtain ⟨g1, g2⟩ := dyadicBoundary_recover a ha g S E energy_eq step
  change g 1 = (dyadicBoundary a S 0 + (E : ℂ)) / d at g1
  change g 2 = (dyadicBoundary a S (-1) +
    (dyadicBoundary a S 0 + (E : ℂ)) / d) / d at g2
  have h1 : ‖z1 - g 1‖ ≤ δ0 / Real.sqrt 2 := by
    have difference : z1 - g 1 = (b0 - dyadicBoundary a S 0) / d := by
      rw [g1]
      dsimp only [z1]
      ring
    rw [difference, norm_div, hd]
    exact div_le_div_of_nonneg_right h0 (Real.sqrt_nonneg _)
  refine ⟨h1, ?_⟩
  have difference : z2 - g 2 = ((bneg - dyadicBoundary a S (-1)) + (z1 - g 1)) / d := by
    rw [g2, g1]
    dsimp only [z2]
    ring
  rw [difference, norm_div, hd]
  calc
    _ ≤ (δneg + δ0 / Real.sqrt 2) / Real.sqrt 2 :=
      div_le_div_of_nonneg_right ((norm_add_le _ _).trans (add_le_add hneg h1))
        (Real.sqrt_nonneg _)
    _ = _ := by
      rw [add_div, div_div, Real.mul_self_sqrt (by norm_num : (0 : ℝ) ≤ 2)]

def dyadicSignedEstimate (a : ℂ) (E : ℝ) (b0 bneg : ℂ) : ℝ :=
  Real.log 2 * (((3 : ℂ) / 2) * (b0 + (E : ℂ)) + dyadicRatio a * bneg).re

theorem dyadicSignedEstimate_eq (a : ℂ) (ha : ‖a‖ = 1) (g S : ℤ → ℂ) (E : ℝ)
    (energy_eq : g 0 = (E : ℂ))
    (step : ∀ n : ℤ, S n = dyadicRatio a * g (1 - n) + dyadicRatio a * S (n - 1)) :
    dyadicSignedEstimate a E (dyadicBoundary a S 0) (dyadicBoundary a S (-1)) =
      2 * Real.log 2 * (dyadicRatio a * g 1 + dyadicRatio a ^ 2 * g 2).re := by
  have row_zero : dyadicBoundary a S 0 = 2 * dyadicRatio a * g 1 - (E : ℂ) := by
    simpa [energy_eq] using dyadicBoundary_eq a ha g S step 0
  have row_neg_one : dyadicBoundary a S (-1) = 2 * dyadicRatio a * g 2 - g 1 := by
    simpa using dyadicBoundary_eq a ha g S step (-1)
  unfold dyadicSignedEstimate
  rw [row_zero, row_neg_one, show
    ((3 : ℂ) / 2) * (2 * dyadicRatio a * g 1 - (E : ℂ) + (E : ℂ)) +
      dyadicRatio a * (2 * dyadicRatio a * g 2 - g 1) =
    2 * (dyadicRatio a * g 1 + dyadicRatio a ^ 2 * g 2) by ring]
  rw [show (2 : ℂ) = ((2 : ℝ) : ℂ) by norm_num, Complex.re_ofReal_mul]
  ring

/-- Two certified complex row errors propagate to the signed base-2 readout. -/
theorem abs_dyadicSignedEstimate_sub_le (a : ℂ) (ha : ‖a‖ = 1) (E : ℝ)
    (b0 bneg b0' bneg' : ℂ) (δ0 δneg : ℝ)
    (h0 : ‖b0' - b0‖ ≤ δ0) (hneg : ‖bneg' - bneg‖ ≤ δneg) :
    |dyadicSignedEstimate a E b0' bneg' - dyadicSignedEstimate a E b0 bneg| ≤
      Real.log 2 * (3 / 2 * δ0 + δneg / Real.sqrt 2) := by
  have hs : 0 < Real.sqrt 2 := Real.sqrt_pos.2 (by norm_num)
  have hr : ‖dyadicRatio a‖ = 1 / Real.sqrt 2 := by
    rw [dyadicRatio, norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hs, ha]
  have hcoeff : ‖(3 : ℂ) / 2‖ = (3 / 2 : ℝ) := by
    rw [show (3 : ℂ) / 2 = ((3 / 2 : ℝ) : ℂ) by norm_num,
      Complex.norm_real, Real.norm_eq_abs]
    norm_num
  unfold dyadicSignedEstimate
  rw [← mul_sub, ← Complex.sub_re, show
    ((3 : ℂ) / 2) * (b0' + (E : ℂ)) + dyadicRatio a * bneg' -
      (((3 : ℂ) / 2) * (b0 + (E : ℂ)) + dyadicRatio a * bneg) =
    ((3 : ℂ) / 2) * (b0' - b0) + dyadicRatio a * (bneg' - bneg) by ring]
  have hlog : 0 ≤ Real.log 2 := (Real.log_pos (by norm_num)).le
  rw [abs_mul, abs_of_nonneg hlog]
  apply mul_le_mul_of_nonneg_left _ hlog
  refine (Complex.abs_re_le_norm _).trans ((norm_add_le _ _).trans ?_)
  rw [norm_mul, norm_mul, hcoeff, hr]
  calc
    _ ≤ 3 / 2 * δ0 + (1 / Real.sqrt 2) * δneg :=
      add_le_add (mul_le_mul_of_nonneg_left h0 (by norm_num))
        (mul_le_mul_of_nonneg_left hneg (by positivity))
    _ = _ := by ring

theorem firstPowers_eq_two_three_four {A : ℝ}
    (lo : Real.log 4 < 2 * A) (hi : 2 * A ≤ Real.log 5) :
    firstPowers A = {2, 3, 4} := by
  have h4 : (4 : ℝ) < Real.exp (2 * A) := by
    calc
      (4 : ℝ) = Real.exp (Real.log 4) := (Real.exp_log (by norm_num)).symm
      _ < Real.exp (2 * A) := Real.exp_lt_exp.mpr lo
  have h5 : Real.exp (2 * A) ≤ 5 := by
    rw [← Real.exp_log (by norm_num : (0 : ℝ) < 5)]
    exact Real.exp_le_exp.mpr hi
  ext n
  simp only [Finset.mem_insert, Finset.mem_singleton]
  constructor
  · intro hn
    have active := (Finset.mem_filter.mp (Finset.mem_filter.mp hn).1).1
    have ⟨low, cutoff⟩ := (Finset.mem_filter.mp active).2
    have high : n < 5 := by exact_mod_cast cutoff.trans_le h5
    omega
  · rintro (rfl | rfl | rfl)
    · simpa using (pow_mem_firstPowers_iff (A := A) Nat.prime_two (m := 1) (by decide)).2
        ⟨by decide, by norm_num; linarith⟩
    · simpa using (pow_mem_firstPowers_iff (A := A) Nat.prime_three (m := 1) (by decide)).2
        ⟨by decide, by norm_num; linarith⟩
    · simpa using (pow_mem_firstPowers_iff (A := A) Nat.prime_two (m := 2) (by decide)).2
        ⟨by decide, by simpa using h4⟩

/-- Keep the prime-3 atom separate from the two reconstructed powers of 2. -/
theorem signedWindowValue_eq_dyadic_add_three {q : ℕ} {A : ℝ}
    (χ : DirichletCharacter ℂ q) (f : ℝ → ℂ)
    (lo : Real.log 4 < 2 * A) (hi : 2 * A ≤ Real.log 5) :
    let g := fun j : ℤ => correlation f ((j : ℝ) * Real.log 2)
    let r := dyadicRatio (χ (2 : ℕ))
    signedWindowValue χ A f =
      2 * Real.log 2 * (r * g 1 + r ^ 2 * g 2).re +
      primeReadout {3} (primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))) := by
  intro g r
  let C := fun n : ℕ => correlation f (Real.log (n : ℝ))
  have dual (n : ℕ) : conj (χ⁻¹ (n : ZMod q)) = χ (n : ZMod q) := by
    have hinv := (MulChar.star_apply' χ (n : ZMod q)).symm
    rw [show χ⁻¹ (n : ZMod q) = conj (χ (n : ZMod q)) by
      simpa only [RCLike.star_def] using hinv, Complex.conj_conj]
  have h4 : χ (4 : ℕ) = χ (2 : ℕ) ^ 2 := by
    rw [← map_pow]
    norm_num
  have c1 : C 2 = g 1 := by norm_num [C, g]
  have c2 : C 4 = g 2 := by
    have log_four : Real.log 4 = 2 * Real.log 2 := by
      calc
        _ = Real.log ((2 : ℝ) ^ (2 : ℕ)) := by norm_num
        _ = _ := by simpa only [Nat.cast_ofNat] using (Real.log_pow (2 : ℝ) 2)
    simpa [C, g] using congrArg (correlation f) log_four
  have w2 : primeWeight 2 = Real.log 2 / Real.sqrt 2 := by
    rw [primeWeight, ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
    norm_num
  have w4 : primeWeight 4 = Real.log 2 / 2 := by
    have h : ArithmeticFunction.vonMangoldt 4 = Real.log 2 := by
      rw [show (4 : ℕ) = 2 ^ (2 : ℕ) by decide,
        ArithmeticFunction.vonMangoldt_apply_pow (by decide),
        ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
      norm_num
    have hs : Real.sqrt (4 : ℝ) = 2 := by
      rw [show (4 : ℝ) = 2 ^ (2 : ℕ) by norm_num, Real.sqrt_sq (by norm_num)]
    rw [primeWeight, h]
    simp only [Nat.cast_ofNat, hs]
  have sq : (Real.sqrt 2 : ℂ) ^ 2 = 2 := by
    rw [← Complex.ofReal_pow]
    exact_mod_cast (Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2))
  have r2 : r ^ 2 = (χ (2 : ℕ)) ^ 2 / 2 := by
    change (χ (2 : ℕ) / (Real.sqrt 2 : ℂ)) ^ 2 = _
    rw [div_pow, sq]
  have a2 : primeAtom χ⁻¹ C 2 = (Real.log 2 : ℂ) * (r * g 1) := by
    rw [primeAtom, dual, w2, c1]
    push_cast
    dsimp [r, dyadicRatio]
    ring
  have a4 : primeAtom χ⁻¹ C 4 = (Real.log 2 : ℂ) * (r ^ 2 * g 2) := by
    rw [primeAtom, dual, w4, c2, r2, h4]
    push_cast
    ring
  change primeReadout (firstPowers A) (primeAtom χ⁻¹ C) = _
  rw [firstPowers_eq_two_three_four lo hi]
  simp only [primeReadout,
    Finset.sum_insert (show (2 : ℕ) ∉ ({3, 4} : Finset ℕ) by decide),
    Finset.sum_insert (show (3 : ℕ) ∉ ({4} : Finset ℕ) by decide),
    Finset.sum_singleton, a2, a4, Complex.re_ofReal_mul, Complex.add_re]
  ring

/-- Certified row enclosures approximate the original signed window when the
prime-3 atom is supplied exactly. The recurrence uses the same test throughout. -/
theorem abs_dyadic_add_three_sub_signedWindowValue_le {q : ℕ} {A : ℝ}
    (χ : DirichletCharacter ℂ q) (f : WindowTest A)
    (lo : Real.log 4 < 2 * A) (hi : 2 * A ≤ Real.log 5)
    (ha : ‖χ (2 : ℕ)‖ = 1) (S : ℤ → ℂ)
    (step : ∀ n : ℤ, S n = dyadicRatio (χ (2 : ℕ)) *
      correlation f.1 (((1 - n : ℤ) : ℝ) * Real.log 2) + dyadicRatio (χ (2 : ℕ)) * S (n - 1))
    (b0 bneg : ℂ) (δ0 δneg : ℝ)
    (h0 : ‖b0 - dyadicBoundary (χ (2 : ℕ)) S 0‖ ≤ δ0)
    (hneg : ‖bneg - dyadicBoundary (χ (2 : ℕ)) S (-1)‖ ≤ δneg) :
    |dyadicSignedEstimate (χ (2 : ℕ)) (energy f.1) b0 bneg +
        primeReadout {3} (primeAtom χ⁻¹ (fun n => correlation f.1 (Real.log (n : ℝ)))) -
        signedWindowValue χ A f.1| ≤ Real.log 2 * (3 / 2 * δ0 + δneg / Real.sqrt 2) := by
  let g := fun j : ℤ => correlation f.1 ((j : ℝ) * Real.log 2)
  have g0 : g 0 = (energy f.1 : ℂ) := by
    have hp (t : ℝ) : conj (f.1 t) * f.1 t = ((‖f.1 t‖ ^ 2 : ℝ) : ℂ) := by
      rw [mul_comm, Complex.mul_conj, Complex.normSq_eq_norm_sq]
    simp only [g, Int.cast_zero, zero_mul, correlation, energy, add_zero, hp]
    exact integral_ofReal
  have hexact := dyadicSignedEstimate_eq (χ (2 : ℕ)) ha g S (energy f.1) g0 step
  rw [signedWindowValue_eq_dyadic_add_three χ f.1 lo hi]
  change |dyadicSignedEstimate (χ (2 : ℕ)) (energy f.1) b0 bneg + _ -
    (2 * Real.log 2 * (dyadicRatio (χ (2 : ℕ)) * g 1 + dyadicRatio (χ (2 : ℕ)) ^ 2 * g 2).re +
      primeReadout {3} (primeAtom χ⁻¹ (fun n => correlation f.1 (Real.log (n : ℝ)))))| ≤ _
  rw [← hexact, add_sub_add_right_eq_sub]
  exact abs_dyadicSignedEstimate_sub_le _ ha _ _ _ _ _ δ0 δneg h0 hneg

/-- Charge a signed prime-3 estimate separately from the two row enclosures. -/
theorem abs_dyadic_add_three_estimate_sub_signedWindowValue_le {q : ℕ} {A : ℝ}
    (χ : DirichletCharacter ℂ q) (f : WindowTest A)
    (lo : Real.log 4 < 2 * A) (hi : 2 * A ≤ Real.log 5)
    (ha : ‖χ (2 : ℕ)‖ = 1) (S : ℤ → ℂ)
    (step : ∀ n : ℤ, S n = dyadicRatio (χ (2 : ℕ)) *
      correlation f.1 (((1 - n : ℤ) : ℝ) * Real.log 2) + dyadicRatio (χ (2 : ℕ)) * S (n - 1))
    (b0 bneg : ℂ) (δ0 δneg threeEstimate ε3 : ℝ)
    (h0 : ‖b0 - dyadicBoundary (χ (2 : ℕ)) S 0‖ ≤ δ0)
    (hneg : ‖bneg - dyadicBoundary (χ (2 : ℕ)) S (-1)‖ ≤ δneg)
    (h3 : |threeEstimate -
      primeReadout {3} (primeAtom χ⁻¹ (fun n => correlation f.1 (Real.log (n : ℝ))))| ≤ ε3) :
    |dyadicSignedEstimate (χ (2 : ℕ)) (energy f.1) b0 bneg + threeEstimate -
        signedWindowValue χ A f.1| ≤ Real.log 2 * (3 / 2 * δ0 + δneg / Real.sqrt 2) + ε3 := by
  let D := dyadicSignedEstimate (χ (2 : ℕ)) (energy f.1) b0 bneg
  let R := signedWindowValue χ A f.1
  let t := primeReadout {3} (primeAtom χ⁻¹ (fun n => correlation f.1 (Real.log (n : ℝ))))
  have h2 : |D + t - R| ≤ Real.log 2 * (3 / 2 * δ0 + δneg / Real.sqrt 2) :=
    abs_dyadic_add_three_sub_signedWindowValue_le χ f lo hi ha S step b0 bneg δ0 δneg h0 hneg
  change |D + threeEstimate - R| ≤ _
  rw [show D + threeEstimate - R = (D + t - R) + (threeEstimate - t) by ring]
  exact (abs_add_le _ _).trans (add_le_add h2 h3)

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
