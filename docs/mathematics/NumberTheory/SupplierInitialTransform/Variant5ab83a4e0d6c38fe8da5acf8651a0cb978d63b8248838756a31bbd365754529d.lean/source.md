# Complete source: GRWTSK.NumberTheory.SupplierInitialTransform.Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee5f8f7b558558efc67fb6d3ed965de56892e501` · SHA-256 `5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.LSeries.SumCoeff
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.MeasureTheory.Integral.Prod

/-!
# The initial transform of the original Möbius pickup

The coefficients and closed prefix below are the actual `realMoebius` and
`arithmeticRecording` of `OriginalSignedSupplier`. No scalar coefficient or
integer endpoint is changed. This module pays the reciprocal Möbius series
and the closed-prefix Mellin return directly from Mathlib's convolution and
Abel summation theorems.

Research direction: grwtsk contributors. Formal implementation: OpenAI Codex.
-/

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.SupplierInitialTransform

open MeasureTheory Set Filter Asymptotics
open scoped Topology LSeries.notation ArithmeticFunction.Moebius
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel
open OriginalSignedSupplier

/-- The literal integer coefficients, cast through the prescribed real row. -/
def complexMoebius (n : ℕ) : ℂ := (realMoebius n : ℂ)

theorem complexMoebius_eq (n : ℕ) :
    complexMoebius n = (ArithmeticFunction.moebius n : ℂ) := by
  simp [complexMoebius, realMoebius]

theorem complexMoebius_summable {s : ℂ} (hs : 1 < s.re) :
    LSeriesSummable complexMoebius s := by
  simpa only [funext complexMoebius_eq] using
    (ArithmeticFunction.LSeriesSummable_moebius_iff.mpr hs)

/-- Dirichlet inversion retains every Möbius coefficient. -/
theorem complexMoebius_LSeries {s : ℂ} (hs : 1 < s.re) :
    LSeries complexMoebius s = 1 / riemannZeta s := by
  have hz := riemannZeta_ne_zero_of_one_lt_re hs
  have hm := LSeries_one_mul_Lseries_moebius hs
  rw [LSeries_one_eq_riemannZeta hs] at hm
  apply (eq_div_iff hz).2
  simpa only [funext complexMoebius_eq, mul_comm] using hm

/-- The zero coefficient is retained before converting the closed prefix. -/
theorem complexMoebius_prefix (x : ℝ) :
    (∑ n ∈ Finset.Icc 1 ⌊x⌋₊, complexMoebius n) = (arithmeticRecording x : ℂ) := by
  unfold arithmeticRecording mertens
  rw [← Finset.insert_Icc_add_one_left_eq_Icc (Nat.zero_le ⌊x⌋₊)]
  rw [Finset.sum_insert (by simp only [Finset.mem_Icc]; omega), realMoebius_zero, zero_add]
  simp [complexMoebius]

theorem complexMoebius_prefix_bigO :
    (fun n : ℕ => ∑ k ∈ Finset.Icc 1 n, complexMoebius k)
      =O[atTop] (fun n : ℕ => (n : ℝ) ^ (1 : ℝ)) := by
  apply IsBigO.of_bound 1
  apply Filter.Eventually.of_forall
  intro n
  have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  have hp := complexMoebius_prefix (n : ℝ)
  simp only [Nat.floor_natCast] at hp
  rw [hp]
  simpa [arithmeticRecording, Real.rpow_one, Real.norm_eq_abs,
    Complex.norm_real, abs_of_nonneg hn] using
      (GRWTSK.RiemannHypothesis.Conversation.SmallDivisorBound.mertens_abs_le hn)

/-- Exact Mellin representation of the original closed arithmetic recording. -/
theorem arithmeticRecording_mellin {s : ℂ} (hs : 1 < s.re) :
    (∫ x in Ioi (1 : ℝ), (arithmeticRecording x : ℂ) * (x : ℂ) ^ (-(s + 1))) =
      1 / (s * riemannZeta s) := by
  have hs0 : s ≠ 0 := Complex.ne_zero_of_re_pos (by linarith)
  have hz := riemannZeta_ne_zero_of_one_lt_re hs
  have hab := LSeries_eq_mul_integral complexMoebius (show (0 : ℝ) ≤ 1 by norm_num)
    hs (complexMoebius_summable hs) complexMoebius_prefix_bigO
  simp_rw [complexMoebius_prefix] at hab
  rw [complexMoebius_LSeries hs] at hab
  apply (eq_div_iff (mul_ne_zero hs0 hz)).2
  calc
    (∫ x in Ioi (1 : ℝ), (arithmeticRecording x : ℂ) * (x : ℂ) ^ (-(s + 1))) *
        (s * riemannZeta s) =
      (1 / riemannZeta s) * riemannZeta s := by
        rw [← mul_assoc, mul_comm _ s, ← hab]
    _ = 1 := by field_simp

/-- Exponential change of variables returns the same closed recording. -/
theorem arithmeticRecording_laplace {s : ℂ} (hs : 1 < s.re) :
    (∫ u in Ioi (0 : ℝ), Complex.exp (-s * u) *
      (arithmeticRecording (Real.exp u) : ℂ)) = 1 / (s * riemannZeta s) := by
  rw [← arithmeticRecording_mellin hs]
  have hsub := integral_comp_exp_Ioi
    (fun x : ℝ => (arithmeticRecording x : ℂ) * (x : ℂ) ^ (-(s + 1))) 0
  simp only [Real.exp_zero] at hsub
  rw [← hsub]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro u _
  change Complex.exp (-s * (u : ℂ)) * (arithmeticRecording (Real.exp u) : ℂ) =
    Real.exp u • ((arithmeticRecording (Real.exp u) : ℂ) *
      (Real.exp u : ℂ) ^ (-(s + 1)))
  rw [Complex.cpow_def_of_ne_zero (by exact_mod_cast (Real.exp_ne_zero u)),
    ← Complex.ofReal_log (Real.exp_pos u).le, Real.log_exp,
    RCLike.real_smul_eq_coe_mul]
  change Complex.exp (-s * (u : ℂ)) * (arithmeticRecording (Real.exp u) : ℂ) =
    (Real.exp u : ℂ) * ((arithmeticRecording (Real.exp u) : ℂ) *
      Complex.exp ((u : ℂ) * -(s + 1)))
  rw [Complex.ofReal_exp u]
  have hexp : Complex.exp (u : ℂ) * Complex.exp ((u : ℂ) * -(s + 1)) =
      Complex.exp (-s * u) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  rw [mul_left_comm (Complex.exp (u : ℂ)), hexp, mul_comm]

/-- The density has the actual initial reciprocal-zeta transform. -/
theorem pickupDensity_laplace {z : ℂ} (hz : (1 / 2 : ℝ) < z.re) :
    (∫ u in Ioi (0 : ℝ), Complex.exp (-z * u) * (pickupDensity u : ℂ)) =
      1 / ((z + 1 / 2) * riemannZeta (z + 1 / 2)) := by
  rw [← arithmeticRecording_laplace (s := z + 1 / 2) (by simp; linarith)]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro u _
  simp only [pickupDensity, Complex.ofReal_mul, Complex.ofReal_exp]
  rw [← mul_assoc, ← Complex.exp_add]
  congr 2
  push_cast
  ring

/-- The actual primitive is returned by an integrable triangular kernel. -/
def pickupTriangle (z : ℂ) (p : ℝ × ℝ) : ℂ :=
  {p : ℝ × ℝ | p.2 ≤ p.1}.indicator
    (fun p => Complex.exp (-z * p.1) * (pickupDensity p.2 : ℂ)) p

theorem pickupTriangle_measurable (z : ℂ) : Measurable (pickupTriangle z) := by
  unfold pickupTriangle
  apply Measurable.indicator
  · exact (show Measurable (fun p : ℝ × ℝ => Complex.exp (-z * p.1)) by fun_prop).mul
      (Complex.measurable_ofReal.comp (pickupDensity_measurable.comp measurable_snd))
  · exact measurableSet_le measurable_snd measurable_fst

/-- A separable exponential majorant pays the actual Fubini interchange. -/
theorem pickupTriangle_integrable {z : ℂ} (hz : (1 / 2 : ℝ) < z.re) :
    Integrable (pickupTriangle z)
      ((volume.restrict (Ioi (0 : ℝ))).prod (volume.restrict (Ioi (0 : ℝ)))) := by
  let ε : ℝ := (z.re - 1 / 2) / 2
  have hε : 0 < ε := by dsimp [ε]; linarith
  have heq : z.re = 1 / 2 + 2 * ε := by dsimp [ε]; ring
  have ht := integrableOn_exp_mul_Ioi (a := -ε) (by linarith) 0
  apply (ht.mul_prod ht).mono' (pickupTriangle_measurable z).aestronglyMeasurable
  apply ae_of_all
  intro p
  by_cases hp : p.2 ≤ p.1
  · have hp' : p ∈ {p : ℝ × ℝ | p.2 ≤ p.1} := hp
    rw [pickupTriangle, Set.indicator_of_mem hp']
    calc
      ‖Complex.exp (-z * p.1) * (pickupDensity p.2 : ℂ)‖ =
          Real.exp (-z.re * p.1) * |pickupDensity p.2| := by
        simp [Complex.norm_exp, Complex.mul_re, Complex.norm_real, Real.norm_eq_abs]
      _ ≤ Real.exp (-z.re * p.1) * Real.exp (p.2 / 2) :=
        mul_le_mul_of_nonneg_left (pickupDensity_abs_le p.2) (Real.exp_pos _).le
      _ ≤ Real.exp (-ε * p.1) * Real.exp (-ε * p.2) := by
        rw [← Real.exp_add, ← Real.exp_add]
        apply Real.exp_le_exp.mpr
        have hm : 0 ≤ (1 / 2 + ε) * (p.1 - p.2) :=
          mul_nonneg (by linarith) (sub_nonneg.mpr hp)
        rw [heq]
        nlinarith
  · have hp' : p ∉ {p : ℝ × ℝ | p.2 ≤ p.1} := hp
    rw [pickupTriangle, Set.indicator_of_notMem hp', norm_zero]
    positivity

theorem pickupTriangle_time_integral (z : ℂ) (t : ℝ) (ht : 0 < t) :
    (∫ u in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
      Complex.exp (-z * t) * (pickup t : ℂ) := by
  have heq : (fun u : ℝ => pickupTriangle z (t, u)) =
      (Iic t).indicator (fun u => Complex.exp (-z * t) * (pickupDensity u : ℂ)) := by
    funext u
    rfl
  rw [heq, setIntegral_indicator measurableSet_Iic, Ioi_inter_Iic, integral_const_mul]
  congr 1
  unfold pickup
  rw [max_eq_right ht.le, intervalIntegral.integral_of_le ht.le]
  exact integral_complex_ofReal

theorem pickupTriangle_density_integral {z : ℂ} (hz : (1 / 2 : ℝ) < z.re)
    (u : ℝ) (hu : 0 < u) :
    (∫ t in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
      z⁻¹ * (Complex.exp (-z * u) * (pickupDensity u : ℂ)) := by
  have heq : (fun t : ℝ => pickupTriangle z (t, u)) =
      (Ici u).indicator (fun t => Complex.exp (-z * t) * (pickupDensity u : ℂ)) := by
    funext t
    rfl
  have hi : Ioi (0 : ℝ) ∩ Ici u = Ici u :=
    Set.inter_eq_right.mpr (fun t ht => hu.trans_le ht)
  rw [heq, setIntegral_indicator measurableSet_Ici, hi, integral_Ici_eq_integral_Ioi,
    integral_mul_const, integral_exp_mul_complex_Ioi (a := -z) (by simp; linarith)]
  ring

/-- The first primitive contributes its genuine factor `1 / z`; the proof
swaps an absolutely integrable triangle and does not differentiate at jumps. -/
theorem pickup_laplace {z : ℂ} (hz : (1 / 2 : ℝ) < z.re) :
    (∫ t in Ioi (0 : ℝ), Complex.exp (-z * t) * (pickup t : ℂ)) =
      1 / (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) := by
  have hs := integral_integral_swap (f := fun t u : ℝ => pickupTriangle z (t, u))
    (pickupTriangle_integrable hz)
  change (∫ t in Ioi (0 : ℝ), ∫ u in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
    (∫ u in Ioi (0 : ℝ), ∫ t in Ioi (0 : ℝ), pickupTriangle z (t, u)) at hs
  have hleft : (∫ t in Ioi (0 : ℝ), ∫ u in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
      (∫ t in Ioi (0 : ℝ), Complex.exp (-z * t) * (pickup t : ℂ)) :=
    setIntegral_congr_fun measurableSet_Ioi (fun t ht => pickupTriangle_time_integral z t ht)
  have hright : (∫ u in Ioi (0 : ℝ), ∫ t in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
      z⁻¹ * (∫ u in Ioi (0 : ℝ), Complex.exp (-z * u) * (pickupDensity u : ℂ)) := by
    rw [← integral_const_mul]
    exact setIntegral_congr_fun measurableSet_Ioi
      (fun u hu => pickupTriangle_density_integral hz u hu)
  rw [hleft, hright, pickupDensity_laplace hz] at hs
  exact hs.trans (by simp [div_eq_mul_inv, mul_inv_rev, mul_comm, mul_left_comm])

end FormalResearch.RiemannHypothesis.Conversation.SupplierInitialTransform
```
