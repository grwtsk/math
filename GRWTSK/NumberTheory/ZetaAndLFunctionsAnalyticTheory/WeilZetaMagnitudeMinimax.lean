/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeUnboundedError

/-!
# Exact magnitude-only obstruction for the first zeta prime window

The character is the actual conductor-one character. For
`log 2 < 2*A ≤ log 3`, the signed prime readout is
`2 * primeWeight 2 * Re (correlation f (log 2))`.

Unitary modulation preserves the original smooth compact test domain,
the energy, and the magnitude of the correlation at every real shift.
Apply opposite quarter-turn modulations to the existing unit-energy
two-bump witness with correlation `I/2` at `log 2`. The resulting
correlations are `-1/2` and `1/2`. Thus the original zeta readouts are
opposite, although the entire magnitude observations agree.

The exact uniform tolerance for any decoder of those observations is
`primeWeight 2`. Necessity is the triangle inequality on this pair.
Sufficiency follows from the physical half-correlation estimate and
the constant-zero decoder. The support-splitting proof of that estimate
below reuses the argument of `WeilPhysicalHalfCorrelation.lean` at
`grwtsk/math@5624239ab1a35db87d6eb8aa7771f68ad7117b74`; it is restated
privately here to avoid that file's unrelated primitive-stage imports.
The bump construction is reused, not reconstructed or claimed as new.

The consumer is the signed arithmetic measurement in `windowValue`.
This result does not say that the two tests have equal gamma or pole
terms, does not compare their full Weil forms, and does not supply or
refute all-test Weil positivity. It does rule out a source decoder
that retains only energy and correlation magnitudes.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped ComplexConjugate ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur SourcePrimeCorrelation

variable {A : ℝ}

/-- Multiply the original physical test by a real-frequency unit phase. -/
def modulateWindowTest (freq : ℝ) (f : WindowTest A) : WindowTest A := by
  let v : ℝ → ℂ := fun t => Complex.exp (((freq * t : ℝ) : ℂ) * Complex.I) * f.1 t
  have hv : ContDiff ℝ ∞ v := by
    have harg : ContDiff ℝ ∞ (fun t : ℝ => (((freq * t : ℝ) : ℂ) * Complex.I)) :=
      (Complex.ofRealCLM.contDiff.comp (contDiff_const.mul contDiff_id)).mul contDiff_const
    exact (Complex.contDiff_exp.comp harg).mul f.2.1
  have hs : tsupport v ⊆ Icc (-A) A := tsupport_mul_subset_right.trans f.2.2.2
  exact ⟨v, hv, isCompact_Icc.of_isClosed_subset isClosed_closure hs, hs⟩

/-- The correlation phase changes covariantly on every real shift. -/
theorem correlation_modulateWindowTest (freq : ℝ) (f : WindowTest A) (r : ℝ) :
    correlation (modulateWindowTest freq f).1 r =
      Complex.exp (((freq * r : ℝ) : ℂ) * Complex.I) * correlation f.1 r := by
  unfold correlation
  rw [← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with t
  dsimp [modulateWindowTest]
  rw [map_mul, ← Complex.exp_conj]
  calc
    _ = (Complex.exp (conj (((freq * t : ℝ) : ℂ) * Complex.I)) *
        Complex.exp (((freq * (t + r) : ℝ) : ℂ) * Complex.I)) *
          (conj (f.1 t) * f.1 (t + r)) := by ring
    _ = _ := by
      rw [← Complex.exp_add]
      congr 2
      simp only [map_mul, Complex.conj_ofReal, Complex.conj_I, Complex.ofReal_mul,
        Complex.ofReal_add]
      ring

/-- Modulation preserves every magnitude observation, not only one sample. -/
theorem norm_correlation_modulateWindowTest (freq : ℝ) (f : WindowTest A) (r : ℝ) :
    ‖correlation (modulateWindowTest freq f).1 r‖ = ‖correlation f.1 r‖ := by
  rw [correlation_modulateWindowTest, norm_mul, Complex.norm_exp_ofReal_mul_I, one_mul]

/-- Energy is unchanged on the original physical test. -/
theorem energy_modulateWindowTest (freq : ℝ) (f : WindowTest A) :
    energy (modulateWindowTest freq f).1 = energy f.1 := by
  unfold energy
  apply integral_congr_ae
  filter_upwards [] with t
  simp only [modulateWindowTest, norm_mul, Complex.norm_exp_ofReal_mul_I, one_mul]

/-- Equal energy and the full magnitude function can conceal opposite real
correlations of half-energy size at any positive interior shift. -/
theorem exists_unitEnergy_magnitude_collision_real_half {r : ℝ}
    (hr : 0 < r) (inside : r < 2 * A) :
    ∃ f g : WindowTest A, energy f.1 = 1 ∧ energy g.1 = 1 ∧
      (∀ u : ℝ, ‖correlation f.1 u‖ = ‖correlation g.1 u‖) ∧
      correlation f.1 r = -(1 / 2 : ℂ) ∧ correlation g.1 r = (1 / 2 : ℂ) := by
  obtain ⟨v, henergy, hcorr⟩ :=
    exists_windowTest_unitEnergy_correlation_eq_I_div_two hr inside
  let freq : ℝ := Real.pi / (2 * r)
  have hfreq : freq * r = Real.pi / 2 := by
    unfold freq
    field_simp [hr.ne']
  have hplus : Complex.exp (((freq * r : ℝ) : ℂ) * Complex.I) = Complex.I := by
    rw [hfreq]
    push_cast
    exact Complex.exp_pi_div_two_mul_I
  have hminus : Complex.exp ((((-freq) * r : ℝ) : ℂ) * Complex.I) = -Complex.I := by
    rw [neg_mul, hfreq]
    push_cast
    simpa only [neg_div] using Complex.exp_neg_pi_div_two_mul_I
  refine ⟨modulateWindowTest freq v, modulateWindowTest (-freq) v, ?_, ?_, ?_, ?_, ?_⟩
  · simpa only [energy_modulateWindowTest] using henergy
  · simpa only [energy_modulateWindowTest] using henergy
  · intro u
    rw [norm_correlation_modulateWindowTest, norm_correlation_modulateWindowTest]
  · rw [correlation_modulateWindowTest, hplus, hcorr]
    rw [← mul_div_assoc, ← pow_two, Complex.I_sq]
    ring
  · rw [correlation_modulateWindowTest, hminus, hcorr]
    rw [neg_mul, ← mul_div_assoc, ← pow_two, Complex.I_sq]
    ring

private theorem zeta_signedWindowValue_eq (f : ℝ → ℂ)
    (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3) :
    signedWindowValue (1 : DirichletCharacter ℂ 1) A f =
      2 * primeWeight 2 * (correlation f (Real.log 2)).re := by
  rw [signedWindowValue_eq_onePrime _ _ lo hi]
  simp [MulChar.one_apply (isUnit_of_subsingleton _)]

/-- The original conductor-one signed prime readout takes opposite values
on two unit-energy tests with identical magnitudes at every real delay. -/
theorem exists_zeta_onePrime_magnitude_collision
    (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3) :
    ∃ f g : WindowTest A, energy f.1 = 1 ∧ energy g.1 = 1 ∧
      (∀ u : ℝ, ‖correlation f.1 u‖ = ‖correlation g.1 u‖) ∧
      signedWindowValue (1 : DirichletCharacter ℂ 1) A f.1 = -primeWeight 2 ∧
      signedWindowValue (1 : DirichletCharacter ℂ 1) A g.1 = primeWeight 2 := by
  obtain ⟨f, g, hf, hg, same, cf, cg⟩ :=
    exists_unitEnergy_magnitude_collision_real_half (Real.log_pos (by norm_num)) lo
  refine ⟨f, g, hf, hg, same, ?_, ?_⟩
  · rw [zeta_signedWindowValue_eq f.1 lo hi, cf]
    norm_num
    ring
  · rw [zeta_signedWindowValue_eq g.1 lo hi, cg]
    norm_num
    ring

/-- Even adjoining exact energy to every correlation magnitude cannot
determine the signed first-prime readout on the original zeta test domain. -/
theorem not_determines_zeta_onePrime_energy_magnitude
    (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3) :
    ¬ DeterminesWindowReadout (1 : DirichletCharacter ℂ 1) A
      (fun f => (energy f.1, fun r : ℝ => ‖correlation f.1 r‖)) := by
  intro determines
  obtain ⟨f, g, hf, hg, same, readf, readg⟩ :=
    exists_zeta_onePrime_magnitude_collision lo hi
  have observed : (energy f.1, fun r : ℝ => ‖correlation f.1 r‖) =
      (energy g.1, fun r : ℝ => ‖correlation g.1 r‖) := by
    rw [hf, hg, funext same]
  have values := determines f g observed
  rw [readf, readg] at values
  have positive : 0 < primeWeight 2 := by
    rw [primeWeight, ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
    exact div_pos (Real.log_pos (by norm_num)) (Real.sqrt_pos.mpr (by norm_num))
  linarith

private theorem window_half_correlation (f : WindowTest A) {r : ℝ} (hr : A ≤ r) :
    ‖correlation f.1 r‖ ≤ energy f.1 / 2 := by
  let square : ℝ → ℝ := fun t => ‖f.1 t‖ ^ 2
  let left := (Iic (0 : ℝ)).indicator square
  let right := (Ici (0 : ℝ)).indicator square
  have hLp : MemLp f.1 2 volume :=
    f.2.1.continuous.memLp_of_hasCompactSupport f.2.2.1
  have hi : Integrable square := hLp.integrable_norm_pow (p := 2) (by norm_num)
  have hl : Integrable left := hi.indicator measurableSet_Iic
  have hrr : Integrable right := hi.indicator measurableSet_Ici
  have ht : Integrable (fun t => right (t+r)) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hrr
  have nonnegLeft (t : ℝ) : 0 ≤ left t := indicator_nonneg (fun _ _ => sq_nonneg _) _
  have nonnegRight (t : ℝ) : 0 ≤ right t := indicator_nonneg (fun _ _ => sq_nonneg _) _
  have support (t : ℝ) (hout : t ∉ Icc (-A) A) : f.1 t = 0 := by
    by_contra hne
    exact hout (f.2.2.2 (subset_tsupport _ hne))
  have point (t : ℝ) : ‖conj (f.1 t) * f.1 (t+r)‖ ≤ (left t + right (t+r))/2 := by
    by_cases hleft : t ≤ 0
    · by_cases hright : 0 ≤ t+r
      · simp only [left, right, Set.indicator, mem_Iic, mem_Ici, ite_eq_left hleft,
          ite_eq_left hright, square, norm_mul, Complex.norm_conj]
        nlinarith [sq_nonneg (‖f.1 t‖ - ‖f.1 (t+r)‖)]
      · have hz : f.1 t = 0 := support t (by
          intro h
          have hmin := h.1
          linarith)
        rw [hz, map_zero, zero_mul, norm_zero]
        exact div_nonneg (add_nonneg (nonnegLeft t) (nonnegRight (t+r))) (by norm_num)
    · have hz : f.1 (t+r) = 0 := support (t+r) (by
        intro h
        have hmax := h.2
        linarith)
      rw [hz, mul_zero, norm_zero]
      exact div_nonneg (add_nonneg (nonnegLeft t) (nonnegRight (t+r))) (by norm_num)
  have halves : (∫ t : ℝ, left t) + (∫ t : ℝ, right t) = energy f.1 := by
    rw [← integral_add hl hrr]
    apply integral_congr_ae
    filter_upwards [volume.ae_ne (0 : ℝ)] with t hne
    change left t + right t = square t
    rcases lt_or_gt_of_ne hne with hneg | hpos
    · simp [left, right, le_of_lt hneg, not_le.mpr hneg]
    · simp [left, right, not_le.mpr hpos, le_of_lt hpos]
  have h := norm_integral_le_of_norm_le ((hl.add ht).div_const 2)
    (Filter.Eventually.of_forall point)
  change ‖correlation f.1 r‖ ≤ ∫ t : ℝ, (left t + right (t+r))/2 at h
  rw [integral_div, integral_add hl ht, integral_add_right_eq_self right r, halves] at h
  exact h

private theorem zeta_onePrime_abs_le_weight (f : WindowTest A)
    (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3) (hf : energy f.1 = 1) :
    |signedWindowValue (1 : DirichletCharacter ℂ 1) A f.1| ≤ primeWeight 2 := by
  have logFour : Real.log 4 = 2 * Real.log 2 := by
    rw [show (4 : ℝ) = 2 * 2 by norm_num, Real.log_mul (by norm_num) (by norm_num)]
    ring
  have radius : A ≤ Real.log 2 := by
    have logLt : Real.log 3 < Real.log 4 :=
      Real.log_lt_log (by norm_num) (by norm_num)
    linarith
  have half := (Complex.abs_re_le_norm (correlation f.1 (Real.log 2))).trans
    (window_half_correlation f radius)
  rw [hf] at half
  rw [zeta_signedWindowValue_eq f.1 lo hi, abs_mul,
    abs_of_nonneg (mul_nonneg (by norm_num) (primeWeight_nonneg 2))]
  have h := mul_le_mul_of_nonneg_left half
    (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) (primeWeight_nonneg 2))
  nlinarith only [h]

/-- Exact minimax tolerance for a decoder of the entire correlation magnitude
function on the original unit-energy zeta test class. -/
theorem exists_zeta_onePrime_magnitude_decoder_iff
    (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3) (ε : ℝ) :
    (∃ decode : (ℝ → ℝ) → ℝ, ∀ f : WindowTest A, energy f.1 = 1 →
      |decode (fun r => ‖correlation f.1 r‖) -
        signedWindowValue (1 : DirichletCharacter ℂ 1) A f.1| ≤ ε) ↔
      primeWeight 2 ≤ ε := by
  constructor
  · rintro ⟨decode, accurate⟩
    obtain ⟨f, g, hf, hg, same, readf, readg⟩ :=
      exists_zeta_onePrime_magnitude_collision lo hi
    have sameFunction : (fun r => ‖correlation f.1 r‖) =
        (fun r => ‖correlation g.1 r‖) := funext same
    let x := decode (fun r => ‖correlation f.1 r‖)
    have closef : |x - -primeWeight 2| ≤ ε := by
      simpa only [x, readf] using accurate f hf
    have closeg : |x - primeWeight 2| ≤ ε := by
      simpa only [x, sameFunction, readg] using accurate g hg
    have triangle := abs_add_le (x - -primeWeight 2) (-(x - primeWeight 2))
    rw [show x - -primeWeight 2 + -(x - primeWeight 2) = 2 * primeWeight 2 by ring,
      abs_of_nonneg (mul_nonneg (by norm_num) (primeWeight_nonneg 2)), abs_neg] at triangle
    linarith
  · intro sufficient
    refine ⟨fun _ => 0, ?_⟩
    intro f hf
    simpa only [zero_sub, abs_neg] using (zeta_onePrime_abs_le_weight f lo hi hf).trans sufficient

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
