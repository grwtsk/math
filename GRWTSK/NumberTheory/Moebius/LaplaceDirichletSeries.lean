/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.FiniteLaplaceSums
import GRWTSK.NumberTheory.Moebius.DiagonalEnergyBounds
import Mathlib.Analysis.PSeries
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-!
# original pickup Laplace exchange on the initial half-plane

The terms retain the actual signed Möbius coefficients and logarithmic arrival
gates. Absolute integrated-norm summability is used only for `1 / 2 < z.re`.
No polynomial pickup growth, half-plane continuation, or RH conclusion is asserted.

Research direction: R.A. Jacob Martone. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupLaplaceInfinite

open MeasureTheory Set ENNReal
open scoped ENNReal
open ArithmeticPickupSource ArithmeticPickupEnergy ArithmeticPickupDiagonal
open ArithmeticPickupLaplaceAtom ArithmeticPickupLaplaceSum

noncomputable section

def moebiusLaplaceTerm (n : ℕ) (z : ℂ) (t : ℝ) : ℂ :=
  (moebiusCoefficient n : ℂ) * laplaceResponse n z t

def atomMajorant (n : ℕ) (σ : ℝ) : ℝ → ℝ :=
  (Ioi (Real.log (n : ℝ))).indicator
    (fun t ↦ 2 * atomInverseHalf n * Real.exp (-σ * t))

theorem response_nonnegative {n : ℕ} (hn : 1 ≤ n) (t : ℝ) :
    0 ≤ response n t := by
  by_cases arrived : Real.log (n : ℝ) ≤ t
  · rw [response_of_arrived arrived]
    have nPositive : (0 : ℝ) < n :=
      Nat.cast_pos.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
    have half := exp_inverse_half (Real.log (n : ℝ))
    rw [Real.exp_log nPositive] at half
    have expUpper : Real.exp (-t / 2) ≤ (n : ℝ) ^ (-(1 / 2 : ℝ)) := by
      rw [half]
      apply Real.exp_le_exp.mpr
      linarith
    unfold responseKernel
    exact mul_nonneg zero_le_two (sub_nonneg.mpr expUpper)
  · rw [response_of_not_arrived arrived]

theorem response_upper {n : ℕ} (_hn : 1 ≤ n) (t : ℝ) :
    response n t ≤ 2 * atomInverseHalf n := by
  by_cases arrived : Real.log (n : ℝ) ≤ t
  · rw [response_of_arrived arrived]
    unfold responseKernel atomInverseHalf
    have positive := Real.exp_pos (-t / 2)
    linarith
  · rw [response_of_not_arrived arrived]
    exact mul_nonneg zero_le_two (Real.rpow_nonneg (Nat.cast_nonneg n) _)

theorem moebius_laplace_term_zero (z : ℂ) : moebiusLaplaceTerm 0 z = 0 := by
  funext t
  simp [moebiusLaplaceTerm, moebius_coefficient_zero]

theorem moebius_laplace_term_integrable (n : ℕ) {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (moebiusLaplaceTerm n z) (Ioi 0) := by
  rcases Nat.eq_zero_or_pos n with zero | positive
  · subst n
    rw [moebius_laplace_term_zero]
    exact integrable_zero _ _ _
  · exact (laplace_response_integrable positive hz).const_mul (moebiusCoefficient n : ℂ)

theorem norm_moebius_laplace_term_le {n : ℕ} (hn : 1 ≤ n) (z : ℂ) (t : ℝ) :
    ‖moebiusLaplaceTerm n z t‖ ≤ atomMajorant n z.re t := by
  rcases lt_trichotomy t (Real.log (n : ℝ)) with before | touching | after
  · rw [show moebiusLaplaceTerm n z t = 0 by
      simp [moebiusLaplaceTerm, laplaceResponse,
        response_of_not_arrived (not_le.mpr before)]]
    simp [atomMajorant, Set.indicator, not_lt.mpr before.le]
  · subst t
    simp [moebiusLaplaceTerm, laplaceResponse, response_touching_atom_zero hn,
      atomMajorant]
  · have normIdentity : ‖moebiusLaplaceTerm n z t‖ =
        |moebiusCoefficient n| * (Real.exp (-z.re * t) * response n t) := by
      simp [moebiusLaplaceTerm, laplaceResponse, Complex.norm_exp,
        Complex.norm_real, Real.norm_of_nonneg (response_nonnegative hn t)]
    rw [normIdentity]
    simp only [atomMajorant, Set.indicator, Set.mem_Ioi, if_pos after]
    calc
      _ ≤ 1 * (Real.exp (-z.re * t) * response n t) :=
        mul_le_mul_of_nonneg_right (moebius_coefficient_abs_le_one n)
          (mul_nonneg (Real.exp_pos _).le (response_nonnegative hn t))
      _ ≤ 2 * atomInverseHalf n * Real.exp (-z.re * t) := by
        have h := mul_le_mul_of_nonneg_left (response_upper hn t)
          (Real.exp_pos (-z.re * t)).le
        simpa only [one_mul, mul_comm, mul_left_comm, mul_assoc] using h

theorem atom_majorant_integrable (n : ℕ) {σ : ℝ} (hσ : 0 < σ) :
    IntegrableOn (atomMajorant n σ) (Ioi 0) := by
  have base : IntegrableOn (fun t ↦ 2 * atomInverseHalf n * Real.exp (-σ * t))
      (Ioi (Real.log (n : ℝ))) :=
    (integrableOn_exp_mul_Ioi (neg_neg_of_pos hσ) (Real.log (n : ℝ))).const_mul
      (2 * atomInverseHalf n)
  exact (base.integrable_indicator measurableSet_Ioi).integrableOn

theorem atom_majorant_integral {n : ℕ} (hn : 1 ≤ n) {σ : ℝ} (hσ : 0 < σ) :
    (∫ t in Ioi 0, atomMajorant n σ t) =
      (2 / σ) * (n : ℝ) ^ (-(σ + 1 / 2)) := by
  have nPositive : (0 : ℝ) < n :=
    Nat.cast_pos.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
  have logNonnegative : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have inclusion : Ioi (Real.log (n : ℝ)) ⊆ Ioi (0 : ℝ) :=
    fun _ ht ↦ lt_of_le_of_lt logNonnegative ht
  unfold atomMajorant
  rw [setIntegral_indicator measurableSet_Ioi, inter_eq_right.mpr inclusion,
    integral_const_mul, integral_exp_mul_Ioi (neg_neg_of_pos hσ)]
  have product : atomInverseHalf n * Real.exp (-σ * Real.log (n : ℝ)) =
      (n : ℝ) ^ (-(σ + 1 / 2)) := by
    unfold atomInverseHalf
    rw [Real.rpow_def_of_pos nPositive, Real.rpow_def_of_pos nPositive,
      ← Real.exp_add]
    congr 1
    ring
  simp only [neg_div_neg_eq]
  rw [← product]
  ring

theorem moebius_laplace_hasSum_pickup {t : ℝ} (ht : 0 ≤ t) (z : ℂ) :
    HasSum (fun n ↦ moebiusLaplaceTerm n z t)
      (Complex.exp (-z * (t : ℂ)) * (pickup t : ℂ)) := by
  have outside : ∀ n ∉ inventory t, moebiusLaplaceTerm n z t = 0 := by
    intro n hn
    rcases Nat.eq_zero_or_pos n with zero | positive
    · subst n
      exact congrFun (moebius_laplace_term_zero z) t
    · have notArrived : ¬ Real.log (n : ℝ) ≤ t :=
        fun arrived ↦ hn ((admitted_iff_arrived positive).mpr arrived)
      simp [moebiusLaplaceTerm, laplaceResponse, response_of_not_arrived notArrived]
  have finite : HasSum (fun n ↦ moebiusLaplaceTerm n z t)
      (∑ n ∈ inventory t, moebiusLaplaceTerm n z t) :=
    hasSum_sum_of_ne_finset_zero outside
  have expansion := congrFun (finite_laplace_signal_expansion (inventory t) z) t
  rw [finite_inventory_laplace_signal_eq_pickup ht le_rfl] at expansion
  change Complex.exp (-z * (t : ℂ)) * (pickup t : ℂ) =
    ∑ n ∈ inventory t, moebiusLaplaceTerm n z t at expansion
  rw [← expansion] at finite
  exact finite

theorem integrated_norm_moebius_laplace_term_le (n : ℕ) {z : ℂ} (hz : 0 < z.re) :
    (∫ t in Ioi 0, ‖moebiusLaplaceTerm n z t‖) ≤
      (2 / z.re) * (n : ℝ) ^ (-(z.re + 1 / 2)) := by
  rcases Nat.eq_zero_or_pos n with zero | positive
  · subst n
    simp only [moebius_laplace_term_zero, Pi.zero_apply, norm_zero, integral_zero]
    exact mul_nonneg (div_nonneg zero_le_two hz.le) (Real.rpow_nonneg (by simp) _)
  · calc
      _ ≤ ∫ t in Ioi 0, atomMajorant n z.re t :=
        integral_mono (moebius_laplace_term_integrable n hz).norm
          (atom_majorant_integrable n hz) (norm_moebius_laplace_term_le positive z)
      _ = _ := atom_majorant_integral positive hz

/-- Absolute integrated norms are summable only in the initial half-plane. -/
theorem summable_integrated_norm_moebius_laplace_term {z : ℂ} (hz : 1 / 2 < z.re) :
    Summable (fun n ↦ ∫ t in Ioi 0, ‖moebiusLaplaceTerm n z t‖) := by
  have positive : 0 < z.re := by linarith
  have exponent : -(z.re + 1 / 2) < -1 := by linarith
  exact Summable.of_nonneg_of_le
    (fun _ ↦ integral_nonneg (fun _ ↦ norm_nonneg _))
    (fun n ↦ integrated_norm_moebius_laplace_term_le n positive)
    (((Real.summable_nat_rpow).mpr exponent).mul_left (2 / z.re))

theorem original_pickup_laplace_integrable {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ ↦ Complex.exp (-z * (t : ℂ)) * (pickup t : ℂ)) (Ioi 0) := by
  have positive : 0 < z.re := by linarith
  have termsIntegrable := fun n ↦ moebius_laplace_term_integrable n positive
  have normsSummable := summable_integrated_norm_moebius_laplace_term hz
  have normIntegral (n : ℕ) :
      (∫⁻ t in Ioi 0, ‖moebiusLaplaceTerm n z t‖ₑ) =
        ‖∫ t in Ioi 0, ‖moebiusLaplaceTerm n z t‖‖ₑ := by
    dsimp [enorm]
    rw [lintegral_coe_eq_integral _ (termsIntegrable n).norm,
      coe_nnreal_eq, coe_nnnorm,
      Real.norm_of_nonneg (integral_nonneg (fun _ ↦ norm_nonneg _))]
    simp only [coe_nnnorm]
  have integratedNormsFinite : (∑' n, ∫⁻ t in Ioi 0, ‖moebiusLaplaceTerm n z t‖ₑ) ≠ ∞ := by
    simp_rw [normIntegral]
    exact ENNReal.tsum_coe_ne_top_iff_summable.2
      (NNReal.summable_coe.1 normsSummable.abs)
  have sumIntegrable : IntegrableOn (fun t ↦ ∑' n, moebiusLaplaceTerm n z t) (Ioi 0) := by
    refine ⟨AEStronglyMeasurable.tsum (fun n ↦ (termsIntegrable n).1), ?_⟩
    rw [hasFiniteIntegral_iff_enorm]
    calc
      _ ≤ ∫⁻ t in Ioi 0, ∑' n, ‖moebiusLaplaceTerm n z t‖ₑ :=
        lintegral_mono (fun _ ↦ enorm_tsum_le_tsum_enorm)
      _ = ∑' n, ∫⁻ t in Ioi 0, ‖moebiusLaplaceTerm n z t‖ₑ :=
        lintegral_tsum (fun n ↦ (termsIntegrable n).1.enorm)
      _ < ∞ := integratedNormsFinite.lt_top
  exact sumIntegrable.congr_fun
    (fun t ht ↦ (moebius_laplace_hasSum_pickup ht.le z).tsum_eq) measurableSet_Ioi

/-- The Bochner exchange uses individual integrability and summed integrated norms. -/
theorem original_pickup_laplace_integral_eq_tsum {z : ℂ} (hz : 1 / 2 < z.re) :
    (∫ t : ℝ in Ioi 0, Complex.exp (-z * (t : ℂ)) * (pickup t : ℂ)) =
      ∑' n, ∫ t in Ioi 0, moebiusLaplaceTerm n z t := by
  have positive : 0 < z.re := by linarith
  have exchange := integral_tsum_of_summable_integral_norm
    (fun n ↦ moebius_laplace_term_integrable n positive)
    (summable_integrated_norm_moebius_laplace_term hz)
  rw [exchange]
  exact setIntegral_congr_fun measurableSet_Ioi
    (fun t ht ↦ (moebius_laplace_hasSum_pickup ht.le z).tsum_eq.symm)

theorem moebius_laplace_term_integral (n : ℕ) {z : ℂ} (hz : 0 < z.re) :
    (∫ t in Ioi 0, moebiusLaplaceTerm n z t) =
      LSeries.term (fun k ↦ (moebiusCoefficient k : ℂ)) (z + 1 / 2) n /
        (z * (z + 1 / 2)) := by
  rcases Nat.eq_zero_or_pos n with zero | positive
  · subst n
    simp [moebius_laplace_term_zero]
  · unfold moebiusLaplaceTerm
    rw [integral_const_mul, laplace_response_integral_cpow positive hz,
      LSeries.term_def₀ (by simp [moebius_coefficient_zero])]
    ring

theorem original_pickup_laplace_integral_eq_LSeries {z : ℂ} (hz : 1 / 2 < z.re) :
    (∫ t : ℝ in Ioi 0, Complex.exp (-z * (t : ℂ)) * (pickup t : ℂ)) =
      LSeries (fun n ↦ (moebiusCoefficient n : ℂ)) (z + 1 / 2) /
        (z * (z + 1 / 2)) := by
  have positive : 0 < z.re := by linarith
  rw [original_pickup_laplace_integral_eq_tsum hz]
  simp_rw [moebius_laplace_term_integral _ positive]
  rw [tsum_div_const]
  rfl

theorem native_moebius_complex_coefficient (n : ℕ) :
    (moebiusCoefficient n : ℂ) = (ArithmeticFunction.moebius n : ℂ) := by
  simp [moebiusCoefficient]

/-- Genuine Mathlib Möbius reciprocal-zeta identity, on its actual absolute domain. -/
theorem native_moebius_series_zeta_identity {s : ℂ} (hs : 1 < s.re) :
    riemannZeta s * LSeries (fun n ↦ (moebiusCoefficient n : ℂ)) s = 1 := by
  simp_rw [native_moebius_complex_coefficient]
  rw [← LSeries_one_eq_riemannZeta hs]
  exact LSeries_one_mul_Lseries_moebius hs

/-- The initial original-source transform identity; no continuation is used. -/
theorem original_pickup_laplace_zeta_identity {z : ℂ} (hz : 1 / 2 < z.re) :
    z * (z + 1 / 2) * riemannZeta (z + 1 / 2) *
      (∫ t : ℝ in Ioi 0, Complex.exp (-z * (t : ℂ)) * (pickup t : ℂ)) = 1 := by
  have positive : 0 < z.re := by linarith
  have shiftPositive : 0 < (z + 1 / 2).re := by
    simp only [Complex.add_re]
    norm_num
    linarith
  have seriesDomain : 1 < (z + 1 / 2).re := by
    simp only [Complex.add_re]
    norm_num
    linarith
  have zNonzero : z ≠ 0 := by
    intro zero
    rw [zero] at positive
    norm_num at positive
  have shiftNonzero : z + 1 / 2 ≠ 0 := by
    intro zero
    rw [zero] at shiftPositive
    norm_num at shiftPositive
  have denominatorNonzero : z * (z + 1 / 2) ≠ 0 := mul_ne_zero zNonzero shiftNonzero
  rw [original_pickup_laplace_integral_eq_LSeries hz]
  calc
    _ = riemannZeta (z + 1 / 2) *
        LSeries (fun n ↦ (moebiusCoefficient n : ℂ)) (z + 1 / 2) := by
      calc
        _ = riemannZeta (z + 1 / 2) * (z * (z + 1 / 2) *
            (LSeries (fun n ↦ (moebiusCoefficient n : ℂ)) (z + 1 / 2) /
              (z * (z + 1 / 2)))) := by ring
        _ = _ := by rw [mul_div_cancel₀ _ denominatorNonzero]
    _ = 1 := native_moebius_series_zeta_identity seriesDomain

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupLaplaceInfinite
