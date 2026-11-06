/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineProjection
import Mathlib.Analysis.Fourier.AddCircle
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Push
import Mathlib.Tactic.Ring

/-!
# Parseval on the literal real odd Weil coordinates

Use Mathlib's `hasSum_sq_fourierCoeffOn`, which comes from the complex
Fourier Hilbert basis on the additive circle with Haar probability measure.
For the centered interval `[-T,T]` the circle length is `2*T`, so its Haar
energy is the interval Lebesgue energy divided by `2*T`. The Fourier
coefficient of an odd real function has vanishing cosine part by reflection,
and its sine part uses the minus-sign Fourier convention. The actual source
sine is divided by `sqrt(T)`. Its coefficient therefore has squared
magnitude `4*T` times the energy of the individual Fourier coefficient.
The zero mode vanishes and the positive and negative modes carry equal
energy. Pairing them and removing the Haar scaling yields the Lebesgue
Parseval identity indexed by the positive source modes.

For whole-line representatives with almost-everywhere oddness and support,
antisymmetrization on the interval gives a pointwise odd zero extension
without changing any coefficient or its energy. The same coefficients occur
in the existing finite sine projection. This is the Hilbert norm identity;
the logarithmic form domain and boundary-periodization comparison require
their separate estimates. Standard Fourier analysis and transport.
Independent analytical review and novelty assessment: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped Interval Real

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSineParseval

open OddRootProjection

private theorem neg_lt_pos {T : ℝ} (hT : 0 < T) : -T < T := by linarith

private def phase (T : ℝ) (n : ℤ) (t : ℝ) : ℝ :=
  Real.pi * (n : ℝ) * t / T

private def sineMoment (T : ℝ) (f : ℝ → ℝ) (n : ℤ) : ℝ :=
  ∫ t in (-T)..T, Real.sin (phase T n t) * f t

/-- The coefficient of the source's normalized, zero-extended sine. -/
def sineCoefficient (T : ℝ) (f : ℝ → ℝ) (n : ℕ) : ℝ :=
  ∫ t : ℝ, zeroExtendedSine T n t * f t

private theorem cosMoment_eq_zero (T : ℝ) (f : ℝ → ℝ) (n : ℤ) (hodd : Function.Odd f) :
    (∫ t in (-T)..T, Real.cos (phase T n t) * f t) = 0 := by
  let g := fun t : ℝ => Real.cos (phase T n t) * f t
  have hneg (t : ℝ) : g (-t) = -g t := by
    dsimp [g]
    rw [show phase T n (-t) = -phase T n t by unfold phase; ring,
      Real.cos_neg, hodd t, mul_neg]
  have hrefl := intervalIntegral.integral_comp_neg (a := -T) (b := T) g
  simp only [hneg, intervalIntegral.integral_neg, neg_neg] at hrefl
  change - (∫ t in (-T)..T, g t) = ∫ t in (-T)..T, g t at hrefl
  change (∫ t in (-T)..T, g t) = 0
  linarith

private theorem fourier_eq_cos_sub_sin (T : ℝ) (n : ℤ) (t : ℝ) :
    @fourier (T - (-T)) (-n) (t : AddCircle (T - (-T))) =
      (Real.cos (phase T n t) : ℂ) - (Real.sin (phase T n t) : ℂ) * Complex.I := by
  rw [fourier_coe_apply]
  have hphase : (2 * (Real.pi : ℂ) * Complex.I * ((-n : ℤ) : ℂ) * (t : ℂ) /
      ((T - (-T) : ℝ) : ℂ)) = -((phase T n t : ℝ) : ℂ) * Complex.I := by
    simp only [phase, Complex.ofReal_div, Complex.ofReal_mul, Complex.ofReal_intCast,
      Int.cast_neg, sub_neg_eq_add, ← two_mul T, Complex.ofReal_ofNat]
    by_cases hT : T = 0
    · simp [hT]
    · have hTc : (T : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hT
      field_simp [hTc]
  rw [hphase, Complex.exp_mul_I, Complex.cos_neg, Complex.sin_neg,
    ← Complex.ofReal_cos, ← Complex.ofReal_sin]
  ring

private theorem fourierCoeffOn_eq_sineMoment (T : ℝ) (hT : 0 < T) {f : ℝ → ℝ}
    (hf : MemLp f 2 (volume.restrict (Ioc (-T) T))) (hodd : Function.Odd f) (n : ℤ) :
    fourierCoeffOn (neg_lt_pos hT) (fun t => (f t : ℂ)) n =
      ((-(sineMoment T f n) / (2 * T) : ℝ) : ℂ) * Complex.I := by
  let μ := volume.restrict (Ioc (-T) T)
  have : IsFiniteMeasure μ := ⟨by simp [μ, Real.volume_Ioc]⟩
  have hfi : Integrable f μ := hf.integrable (by norm_num)
  have hc : Integrable (fun t : ℝ => Real.cos (phase T n t) * f t) μ := by
    apply hfi.bdd_mul (c := 1) (by unfold phase; fun_prop)
    exact Filter.Eventually.of_forall (fun t => by
      simpa only [Real.norm_eq_abs] using Real.abs_cos_le_one (phase T n t))
  have hs : Integrable (fun t : ℝ => Real.sin (phase T n t) * f t) μ := by
    apply hfi.bdd_mul (c := 1) (by unfold phase; fun_prop)
    exact Filter.Eventually.of_forall (fun t => by
      simpa only [Real.norm_eq_abs] using Real.abs_sin_le_one (phase T n t))
  have hci : IntervalIntegrable (fun t : ℝ => ((Real.cos (phase T n t) * f t : ℝ) : ℂ))
      volume (-T) T :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le (neg_lt_pos hT).le).2 hc.ofReal
  have hsi : IntervalIntegrable (fun t : ℝ => ((Real.sin (phase T n t) * f t : ℝ) : ℂ))
      volume (-T) T :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le (neg_lt_pos hT).le).2 hs.ofReal
  rw [fourierCoeffOn_eq_integral]
  have hintegrand (t : ℝ) :
      @fourier (T - (-T)) (-n) (t : AddCircle (T - (-T))) • (f t : ℂ) =
        ((Real.cos (phase T n t) * f t : ℝ) : ℂ) -
          ((Real.sin (phase T n t) * f t : ℝ) : ℂ) * Complex.I := by
    rw [fourier_eq_cos_sub_sin, smul_eq_mul]
    push_cast
    ring
  simp_rw [hintegrand]
  rw [intervalIntegral.integral_sub hci (hsi.mul_const _),
    intervalIntegral.integral_mul_const, intervalIntegral.integral_ofReal,
    intervalIntegral.integral_ofReal, cosMoment_eq_zero T f n hodd]
  unfold sineMoment
  simp only [Complex.ofReal_zero, zero_sub, sub_neg_eq_add, ← two_mul T, Complex.real_smul,
    Complex.ofReal_div, Complex.ofReal_one, Complex.ofReal_neg]
  ring

private theorem sineCoefficient_eq_interval (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ) (n : ℕ) :
    sineCoefficient T f n = sineMoment T f n / Real.sqrt T := by
  have hshape : (fun t : ℝ => zeroExtendedSine T n t * f t) =
      (Icc (-T) T).indicator (fun t : ℝ => (Real.sin (phase T n t) * f t) / Real.sqrt T) := by
    funext t
    by_cases ht : t ∈ Icc (-T) T <;>
      simp [zeroExtendedSine, phase, ht, div_mul_eq_mul_div]
  rw [sineCoefficient, hshape, integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (neg_lt_pos hT).le, intervalIntegral.integral_div]
  rfl

private theorem sineMoment_neg (T : ℝ) (f : ℝ → ℝ) (n : ℤ) :
    sineMoment T f (-n) = -sineMoment T f n := by
  have hp (t : ℝ) : phase T (-n) t = -phase T n t := by
    simp only [phase, Int.cast_neg]
    ring
  simp_rw [sineMoment, hp, Real.sin_neg, neg_mul, intervalIntegral.integral_neg]

private theorem norm_fourierCoeffOn_sq (T : ℝ) (hT : 0 < T) {f : ℝ → ℝ}
    (hf : MemLp f 2 (volume.restrict (Ioc (-T) T))) (hodd : Function.Odd f) (n : ℤ) :
    ‖fourierCoeffOn (neg_lt_pos hT) (fun t => (f t : ℂ)) n‖ ^ 2 =
      sineMoment T f n ^ 2 / (2 * T) ^ 2 := by
  rw [fourierCoeffOn_eq_sineMoment T hT hf hodd, norm_mul, Complex.norm_I, mul_one,
    Complex.norm_real, Real.norm_eq_abs, sq_abs, div_pow, neg_sq]

/-- A normalized sine coefficient has energy `4*T` times the energy of its
individual positive-frequency coefficient in normalized Haar measure. -/
theorem norm_fourierCoeffOn_nat_sq (T : ℝ) (hT : 0 < T) {f : ℝ → ℝ}
    (hf : MemLp f 2 (volume.restrict (Ioc (-T) T))) (hodd : Function.Odd f) (n : ℕ) :
    ‖fourierCoeffOn (neg_lt_pos hT) (fun t => (f t : ℂ)) (n : ℤ)‖ ^ 2 =
      sineCoefficient T f n ^ 2 / (4 * T) := by
  rw [norm_fourierCoeffOn_sq T hT hf hodd, sineCoefficient_eq_interval T hT, div_pow,
    Real.sq_sqrt hT.le]
  field_simp [hT.ne']
  ring

private theorem hasSum_positive_of_even_zero {a : ℤ → ℝ} {E : ℝ}
    (h : HasSum a E) (heven : Function.Even a) (hzero : a 0 = 0) :
    HasSum (fun n : ℕ => a ((n : ℤ) + 1)) (E / 2) := by
  have hpos : Summable (fun n : ℕ => a n) :=
    h.summable.comp_injective Nat.cast_injective
  have hshift : HasSum (fun n : ℕ => a ((n : ℤ) + 1)) (∑' n : ℕ, a n) := by
    simpa [hzero] using (hasSum_nat_add_iff' 1).mpr hpos.hasSum
  have hpaired := h.nat_add_neg_add_one
  change HasSum (fun n : ℕ => a (n : ℤ) + a (-((n : ℤ) + 1))) E at hpaired
  have hpaired' : HasSum (fun n : ℕ => a (n : ℤ) + a ((n : ℤ) + 1)) E := by
    exact hpaired.congr_fun (fun n => by rw [heven ((n : ℤ) + 1)])
  have hs := (hpos.hasSum.add hshift).unique hpaired'
  convert hshift using 1
  linarith

/-- The source-normalized sine coefficients exhaust the Lebesgue energy on
the symmetric interval for a square-integrable real odd function. -/
theorem hasSum_sineCoefficient_sq (T : ℝ) (hT : 0 < T) {f : ℝ → ℝ}
    (hf : MemLp f 2 (volume.restrict (Ioc (-T) T))) (hodd : Function.Odd f) :
    HasSum (fun n : ℕ => sineCoefficient T f (n + 1) ^ 2)
      (∫ t in (-T)..T, ‖f t‖ ^ 2) := by
  let a := fun n : ℤ => ‖fourierCoeffOn (neg_lt_pos hT) (fun t => (f t : ℂ)) n‖ ^ 2
  have hfC : MemLp (fun t => (f t : ℂ)) 2 (volume.restrict (Ioc (-T) T)) := hf.ofReal
  have hbase : HasSum a ((2 * T)⁻¹ * ∫ t in (-T)..T, ‖f t‖ ^ 2) := by
    simpa only [a, Complex.norm_real, sub_neg_eq_add, ← two_mul T, smul_eq_mul] using
      hasSum_sq_fourierCoeffOn (neg_lt_pos hT) hfC
  have heven : Function.Even a := by
    intro n
    simp only [a, norm_fourierCoeffOn_sq T hT hf hodd, sineMoment_neg, neg_sq]
  have hzero : a 0 = 0 := by
    simp [a, norm_fourierCoeffOn_sq T hT hf hodd, sineMoment, phase]
  have hscaled := (hasSum_positive_of_even_zero hbase heven hzero).mul_left (4 * T)
  have hscale (n : ℕ) : (4 * T) * a ((n : ℤ) + 1) = sineCoefficient T f (n + 1) ^ 2 := by
    have hnorm : a ((n : ℤ) + 1) = sineCoefficient T f (n + 1) ^ 2 / (4 * T) := by
      simpa only [a, Nat.cast_add, Nat.cast_one] using
        norm_fourierCoeffOn_nat_sq T hT hf hodd (n + 1)
    rw [hnorm, mul_div_cancel₀ _ (by positivity : 4 * T ≠ 0)]
  have hsum := hscaled.congr_fun (fun n => (hscale n).symm)
  convert hsum using 1
  field_simp [hT.ne']
  ring

/-- The finite source projection uses exactly the same positive coefficients. -/
@[simp] theorem sineCoordinates_eq_sineCoefficient (T : ℝ) (f : ℝ → ℝ) {M : ℕ} (i : Fin M) :
    sineCoordinates T M f i = sineCoefficient T f (i.val + 1) := rfl

/-- The whole-line source version for the actual zero extension. -/
theorem hasSum_source_sineCoefficient_sq (T : ℝ) (hT : 0 < T) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) :
    HasSum (fun n : ℕ => sineCoefficient T f (n + 1) ^ 2)
      (∫ t : ℝ, ‖f t‖ ^ 2) := by
  have hsum := hasSum_sineCoefficient_sq T hT (hf.restrict (s := Ioc (-T) T)) hodd
  have henergy : (∫ t in (-T)..T, ‖f t‖ ^ 2) = ∫ t : ℝ, ‖f t‖ ^ 2 := by
    rw [intervalIntegral.integral_of_le (neg_lt_pos hT).le, ← integral_Icc_eq_integral_Ioc,
      ← integral_indicator measurableSet_Icc]
    apply integral_congr_ae
    filter_upwards [] with t
    by_cases ht : t ∈ Icc (-T) T
    · simp [ht]
    · simp [ht, hsupport t ht]
  rwa [henergy] at hsum

/-- The source formula also holds for arbitrary representatives of a real odd
L² vector supported in the window, since antisymmetrization gives an odd
zero extension almost everywhere equal to the supplied representative. -/
theorem hasSum_source_sineCoefficient_sq_ae (T : ℝ) (hT : 0 < T) {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hodd : ∀ᵐ t : ℝ, f (-t) = -f t)
    (hsupport : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) :
    HasSum (fun n : ℕ => sineCoefficient T f (n + 1) ^ 2)
      (∫ t : ℝ, ‖f t‖ ^ 2) := by
  let g := fun t : ℝ => if t ∈ Icc (-T) T then (f t - f (-t)) / 2 else 0
  have hg_odd : Function.Odd g := by
    intro t
    have hmem : -t ∈ Icc (-T) T ↔ t ∈ Icc (-T) T := by
      constructor <;> intro h <;> exact ⟨by linarith [h.2], by linarith [h.1]⟩
    simp only [g, hmem, neg_neg]
    split_ifs <;> ring
  have hg_support (t : ℝ) (ht : t ∉ Icc (-T) T) : g t = 0 := by
    simp only [g, ht, ite_false]
  have hagree : g =ᵐ[volume] f := by
    filter_upwards [hodd, hsupport] with t htodd htsupp
    by_cases ht : t ∈ Icc (-T) T
    · simp only [g, ht, ite_true, htodd]
      ring
    · rw [hg_support t ht, htsupp ht]
  have hsum := hasSum_source_sineCoefficient_sq T hT (hf.ae_eq hagree.symm) hg_odd hg_support
  have henergy : (∫ t : ℝ, ‖g t‖ ^ 2) = ∫ t : ℝ, ‖f t‖ ^ 2 := by
    apply integral_congr_ae
    filter_upwards [hagree] with t ht
    rw [ht]
  rw [henergy] at hsum
  apply hsum.congr_fun
  intro n
  congr 1
  unfold sineCoefficient
  apply integral_congr_ae
  filter_upwards [hagree] with t ht
  rw [ht]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSineParseval
