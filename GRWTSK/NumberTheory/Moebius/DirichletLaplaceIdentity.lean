/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license.
Source-specific CCC continuation; local conditional candidate, RH remains open. -/
import GRWTSK.NumberTheory.Moebius.PrimitiveRegularity
import GRWTSK.Analysis.Moebius.LaplaceTransform
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.LSeries.SumCoeff
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Initial transform of the fixed closed-prefix task pickup

Human mathematical direction: R.A. Jacob Martone. Implementation: OpenAI Codex.
This source-specific reproduction uses the literal task Moebius coefficients,
closed real floor, velocity and whole pickup. Dirichlet inversion and an
absolutely integrable triangular Fubini kernel pay the exact initial transform;
no arithmetic growth premise, source supplier, or native physical Gram is used.
The private recovery receipt records the source derivation and its identity.
-/

set_option autoImplicit false

noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC.PickupInitialTransform

open MeasureTheory Set Filter Asymptotics
open scoped Topology LSeries.notation ArithmeticFunction.Moebius

/-- The literal integer coefficients, cast through the prescribed real row. -/
def complexMoebius (n : ℕ) : ℂ := (moebiusReal n : ℂ)

theorem complexMoebius_eq (n : ℕ) :
    complexMoebius n = (ArithmeticFunction.moebius n : ℂ) := by
  simp [complexMoebius, moebiusReal]

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

/-- Every coefficient remains in the exact closed floor prefix. -/
theorem complexMoebius_prefix (x : ℝ) :
    (∑ n ∈ Finset.Icc 1 ⌊x⌋₊, complexMoebius n) = (mertensPrefix x : ℂ) := by
  simp [mertensPrefix, complexMoebius]

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
  simpa [Real.rpow_one, Real.norm_eq_abs,
    Complex.norm_real, abs_of_nonneg hn] using
      (mertensPrefix_abs_le hn)

/-- Exact Mellin representation of the original closed arithmetic recording. -/
theorem mertensPrefix_mellin {s : ℂ} (hs : 1 < s.re) :
    (∫ x in Ioi (1 : ℝ), (mertensPrefix x : ℂ) * (x : ℂ) ^ (-(s + 1))) =
      1 / (s * riemannZeta s) := by
  have hs0 : s ≠ 0 := Complex.ne_zero_of_re_pos (by linarith)
  have hz := riemannZeta_ne_zero_of_one_lt_re hs
  have hab := LSeries_eq_mul_integral complexMoebius (show (0 : ℝ) ≤ 1 by norm_num)
    hs (complexMoebius_summable hs) complexMoebius_prefix_bigO
  simp_rw [complexMoebius_prefix] at hab
  rw [complexMoebius_LSeries hs] at hab
  apply (eq_div_iff (mul_ne_zero hs0 hz)).2
  calc
    (∫ x in Ioi (1 : ℝ), (mertensPrefix x : ℂ) * (x : ℂ) ^ (-(s + 1))) *
        (s * riemannZeta s) =
      (1 / riemannZeta s) * riemannZeta s := by
        rw [← mul_assoc, mul_comm _ s, ← hab]
    _ = 1 := by field_simp

/-- Exponential change of variables returns the same closed recording. -/
theorem mertensPrefix_laplace {s : ℂ} (hs : 1 < s.re) :
    (∫ u in Ioi (0 : ℝ), Complex.exp (-s * u) *
      (mertensPrefix (Real.exp u) : ℂ)) = 1 / (s * riemannZeta s) := by
  rw [← mertensPrefix_mellin hs]
  have hsub := integral_comp_exp_Ioi
    (fun x : ℝ => (mertensPrefix x : ℂ) * (x : ℂ) ^ (-(s + 1))) 0
  simp only [Real.exp_zero] at hsub
  rw [← hsub]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro u _
  change Complex.exp (-s * (u : ℂ)) * (mertensPrefix (Real.exp u) : ℂ) =
    Real.exp u • ((mertensPrefix (Real.exp u) : ℂ) *
      (Real.exp u : ℂ) ^ (-(s + 1)))
  rw [Complex.cpow_def_of_ne_zero (by exact_mod_cast (Real.exp_ne_zero u)),
    ← Complex.ofReal_log (Real.exp_pos u).le, Real.log_exp,
    RCLike.real_smul_eq_coe_mul]
  change Complex.exp (-s * (u : ℂ)) * (mertensPrefix (Real.exp u) : ℂ) =
    (Real.exp u : ℂ) * ((mertensPrefix (Real.exp u) : ℂ) *
      Complex.exp ((u : ℂ) * -(s + 1)))
  rw [Complex.ofReal_exp u]
  have hexp : Complex.exp (u : ℂ) * Complex.exp ((u : ℂ) * -(s + 1)) =
      Complex.exp (-s * u) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  rw [mul_left_comm (Complex.exp (u : ℂ)), hexp, mul_comm]

/-- The density has the actual initial reciprocal-zeta transform. -/
theorem pickupVelocity_laplace {z : ℂ} (hz : (1 / 2 : ℝ) < z.re) :
    (∫ u in Ioi (0 : ℝ), Complex.exp (-z * u) * (pickupVelocity u : ℂ)) =
      1 / ((z + 1 / 2) * riemannZeta (z + 1 / 2)) := by
  rw [← mertensPrefix_laplace (s := z + 1 / 2) (by simp; linarith)]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro u _
  simp only [pickupVelocity, Complex.ofReal_mul, Complex.ofReal_exp]
  rw [← mul_assoc, ← Complex.exp_add]
  congr 2
  push_cast
  ring

/-- The actual primitive is returned by an integrable triangular kernel. -/
def pickupTriangle (z : ℂ) (p : ℝ × ℝ) : ℂ :=
  {p : ℝ × ℝ | p.2 ≤ p.1}.indicator
    (fun p => Complex.exp (-z * p.1) * (pickupVelocity p.2 : ℂ)) p

theorem pickupTriangle_measurable (z : ℂ) : Measurable (pickupTriangle z) := by
  unfold pickupTriangle
  apply Measurable.indicator
  · exact (show Measurable (fun p : ℝ × ℝ => Complex.exp (-z * p.1)) by fun_prop).mul
      (Complex.measurable_ofReal.comp (pickupVelocity_measurable.comp measurable_snd))
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
      ‖Complex.exp (-z * p.1) * (pickupVelocity p.2 : ℂ)‖ =
          Real.exp (-z.re * p.1) * |pickupVelocity p.2| := by
        simp [Complex.norm_exp, Complex.mul_re, Complex.norm_real, Real.norm_eq_abs]
      _ ≤ Real.exp (-z.re * p.1) * Real.exp (p.2 / 2) :=
        mul_le_mul_of_nonneg_left (pickupVelocity_abs_le p.2) (Real.exp_pos _).le
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
      Complex.exp (-z * t) * (wholePickup t : ℂ) := by
  have heq : (fun u : ℝ => pickupTriangle z (t, u)) =
      (Iic t).indicator (fun u => Complex.exp (-z * t) * (pickupVelocity u : ℂ)) := by
    funext u
    rfl
  rw [heq, setIntegral_indicator measurableSet_Iic, Ioi_inter_Iic, integral_const_mul]
  congr 1
  unfold wholePickup
  rw [intervalIntegral.integral_of_le ht.le]
  exact integral_complex_ofReal

theorem pickupTriangle_density_integral {z : ℂ} (hz : (1 / 2 : ℝ) < z.re)
    (u : ℝ) (hu : 0 < u) :
    (∫ t in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
      z⁻¹ * (Complex.exp (-z * u) * (pickupVelocity u : ℂ)) := by
  have heq : (fun t : ℝ => pickupTriangle z (t, u)) =
      (Ici u).indicator (fun t => Complex.exp (-z * t) * (pickupVelocity u : ℂ)) := by
    funext t
    rfl
  have hi : Ioi (0 : ℝ) ∩ Ici u = Ici u :=
    Set.inter_eq_right.mpr (fun t ht => hu.trans_le ht)
  rw [heq, setIntegral_indicator measurableSet_Ici, hi, integral_Ici_eq_integral_Ioi,
    integral_mul_const, integral_exp_mul_complex_Ioi (a := -z) (by simp; linarith)]
  ring

/-- The first primitive contributes its genuine factor `1 / z`; the proof
swaps an absolutely integrable triangle and does not differentiate at jumps. -/
theorem wholePickup_laplace {z : ℂ} (hz : (1 / 2 : ℝ) < z.re) :
    (∫ t in Ioi (0 : ℝ), Complex.exp (-z * t) * (wholePickup t : ℂ)) =
      1 / (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) := by
  have hs := integral_integral_swap (f := fun t u : ℝ => pickupTriangle z (t, u))
    (pickupTriangle_integrable hz)
  change (∫ t in Ioi (0 : ℝ), ∫ u in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
    (∫ u in Ioi (0 : ℝ), ∫ t in Ioi (0 : ℝ), pickupTriangle z (t, u)) at hs
  have hleft : (∫ t in Ioi (0 : ℝ), ∫ u in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
      (∫ t in Ioi (0 : ℝ), Complex.exp (-z * t) * (wholePickup t : ℂ)) :=
    setIntegral_congr_fun measurableSet_Ioi (fun t ht => pickupTriangle_time_integral z t ht)
  have hright : (∫ u in Ioi (0 : ℝ), ∫ t in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
      z⁻¹ * (∫ u in Ioi (0 : ℝ), Complex.exp (-z * u) * (pickupVelocity u : ℂ)) := by
    rw [← integral_const_mul]
    exact setIntegral_congr_fun measurableSet_Ioi
      (fun u hu => pickupTriangle_density_integral hz u hu)
  rw [hleft, hright, pickupVelocity_laplace hz] at hs
  exact hs.trans (by simp [div_eq_mul_inv, mul_inv_rev, mul_comm, mul_left_comm])

/-- The exact source input required by the fixed signed-pickup RH consumer. -/
theorem initial_transform {z : ℂ} (hz : (1 / 2 : ℝ) < z.re) :
    signedPickupLaplace z =
      1 / (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) := by
  simpa only [signedPickupLaplace] using wholePickup_laplace hz

end GRWTSK.RiemannHypothesis.CCC.PickupInitialTransform
