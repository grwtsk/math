/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddShiftEnergy
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.QuadraticCertificateCore

set_option autoImplicit false
noncomputable section

/-!
# Norm and translation form of the literal odd sine trial

The basis is the zero-extended normalized sine from `WeilOddSineProjection`.
At zero shift the diagonal integral equals one by a sine-squared primitive,
and distinct modes are orthogonal by the existing correlation computation.
Finite linearity gives the norm and translated correlation of the actual
trial. The prime contraction uses Young's inequality on the whole line and
translation invariance, keeping the arithmetic sign and the original
von Mangoldt support. This is the prime part of Connes–Consani–Moscovici,
arXiv:2511.22755v1, (3.19)–(3.20), as normalized in the supplied periodic
boundary note.

These statements evaluate the finite synthesis and bound its literal prime
form. Completeness of the basis, the operator domain, and the archimedean
high-block estimate require separate results. Independent analytical review
and novelty assessment are pending.
-/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSineForm

open MeasureTheory Set OddRootProjection OddOutputTrace OddPrimeRow OddShiftEnergy LowSchur
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open scoped Interval

theorem sineCorrelation_self_zero (T : ℝ) (hT : 0 < T) {n : ℕ} (hn : 0 < n) :
    sineCorrelation T n n 0 = 1 := by
  rw [sineCorrelation_eq_interval T 0 n n hT le_rfl (by linarith)]
  simp only [sub_zero, add_zero, ← pow_two]
  let w := frequency T n
  have hw : 0 < w := by
    have hn' : (0 : ℝ) < n := by exact_mod_cast hn
    unfold w frequency
    positivity
  let F := fun t : ℝ => (t / 2 - Real.sin (2 * w * t) / (4 * w)) / T
  have hderiv (t : ℝ) : HasDerivAt F (Real.sin (w * t) ^ 2 / T) t := by
    have hlin := (hasDerivAt_id t).const_mul (2 * w)
    apply ((((hasDerivAt_id t).div_const 2).sub (hlin.sin.div_const (4 * w))).div_const T).congr_deriv
    have hcos : Real.cos (2 * w * t) = 1 - 2 * Real.sin (w * t) ^ 2 := by
      rw [show 2 * w * t = 2 * (w * t) by ring, Real.cos_two_mul']
      linarith [Real.sin_sq_add_cos_sq (w * t)]
    simp only [id_eq, mul_one, hcos]
    field_simp [hw.ne', hT.ne']
    ring
  have hcont : Continuous (fun t : ℝ => Real.sin (w * t) ^ 2 / T) := by fun_prop
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hderiv t)
    (hcont.intervalIntegrable _ _)]
  have hphase : 2 * w * T = ((2 * n : ℕ) : ℝ) * Real.pi := by
    unfold w frequency
    push_cast
    field_simp [hT.ne']
  have hneg : 2 * w * (-T) = -(((2 * n : ℕ) : ℝ) * Real.pi) := by rw [mul_neg, hphase]
  dsimp [F]
  rw [hphase, hneg, Real.sin_neg, Real.sin_nat_mul_pi, neg_zero, zero_div, sub_zero, sub_zero]
  field_simp [hT.ne']
  ring

/-- The literal finite trial in the sine coordinates of the bordered source. -/
def finiteSine {M : ℕ} (T : ℝ) (x : Fin M → ℝ) (t : ℝ) : ℝ :=
  ∑ i, x i * zeroExtendedSine T (i.val + 1) t

private theorem finiteSine_product_eq_sum {M : ℕ} (T r : ℝ) (x y : Fin M → ℝ) (t : ℝ) :
    finiteSine T x t * finiteSine T y (t + r) =
      ∑ i : Fin M, ∑ j : Fin M, (x i * y j) *
        (zeroExtendedSine T (i.val + 1) t * zeroExtendedSine T (j.val + 1) (t + r)) := by
  unfold finiteSine
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  ring

theorem integrable_finiteSine_product {M : ℕ} (T r : ℝ) (x y : Fin M → ℝ) :
    Integrable (fun t : ℝ => finiteSine T x t * finiteSine T y (t + r)) := by
  simp_rw [finiteSine_product_eq_sum]
  exact integrable_finsetSum _ (fun i _ => integrable_finsetSum _ (fun j _ =>
    (integrable_sine_product T r (i.val + 1) (j.val + 1)).const_mul (x i * y j)))

theorem integral_finiteSine_product {M : ℕ} (T r : ℝ) (x y : Fin M → ℝ) :
    (∫ t : ℝ, finiteSine T x t * finiteSine T y (t + r)) =
      ∑ i : Fin M, ∑ j : Fin M, (x i * y j) *
        sineCorrelation T (i.val + 1) (j.val + 1) r := by
  simp_rw [finiteSine_product_eq_sum]
  rw [integral_finsetSum _ (fun i _ => integrable_finsetSum _ (fun j _ =>
    (integrable_sine_product T r (i.val + 1) (j.val + 1)).const_mul (x i * y j)))]
  apply Finset.sum_congr rfl
  intro i _
  rw [integral_finsetSum _ (fun j _ =>
    (integrable_sine_product T r (i.val + 1) (j.val + 1)).const_mul (x i * y j))]
  simp only [integral_const_mul, sineCorrelation]

/-- The Euclidean norm of the trial coefficients is its whole-line Lebesgue norm. -/
theorem integral_finiteSine_sq {M : ℕ} (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) :
    (∫ t : ℝ, (finiteSine T x t) ^ 2) = ∑ i, (x i) ^ 2 := by
  have hGram (i j : Fin M) :
      sineCorrelation T (i.val + 1) (j.val + 1) 0 = if i = j then 1 else 0 := by
    by_cases hij : i = j
    · subst j
      simpa only [ite_eq_left True.intro, Nat.succ_eq_add_one] using
        sineCorrelation_self_zero T hT (Nat.succ_pos i.val)
    · rw [ite_eq_right hij]
      exact sineCorrelation_zero_shift T hT (fun h => hij (Fin.ext (by omega)))
  have h := integral_finiteSine_product T 0 x x
  simp only [add_zero, ← pow_two, hGram] at h
  rw [h]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.sum_eq_single i]
  · simp [pow_two]
  · intro j _ hji
    simp [Ne.symm hji]
  · simp

/-- A translated whole-line correlation is bounded by the actual squared norm. -/
theorem abs_integral_mul_translate_le_sq (f : ℝ → ℝ) (r : ℝ)
    (hf : Integrable (fun t : ℝ => (f t) ^ 2)) :
    |∫ t : ℝ, f t * f (t + r)| ≤ ∫ t : ℝ, (f t) ^ 2 := by
  have hshift : Integrable (fun t : ℝ => (f (t + r)) ^ 2) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hf
  have hbound (t : ℝ) : ‖f t * f (t + r)‖ ≤ ((f t) ^ 2 + (f (t + r)) ^ 2) / 2 := by
    rw [Real.norm_eq_abs, abs_mul]
    nlinarith [sq_nonneg (|f t| - |f (t + r)|), sq_abs (f t), sq_abs (f (t + r))]
  calc
    _ ≤ ∫ t : ℝ, ((f t) ^ 2 + (f (t + r)) ^ 2) / 2 := by
      simpa only [Real.norm_eq_abs, Pi.add_apply] using
        (norm_integral_le_of_norm_le ((hf.add hshift).div_const 2)
          (Filter.Eventually.of_forall hbound))
    _ = _ := by
      rw [integral_div, integral_add hf hshift, integral_add_right_eq_self (fun t : ℝ => (f t) ^ 2) r]
      ring

/-- Real prime energy of a whole-line function, in particular a zero-extended trial. -/
def primeEnergy (T : ℝ) (f : ℝ → ℝ) : ℝ :=
  2 * ∑ q ∈ activePrimePowers T, primeWeight q * (∫ t : ℝ, f t * f (t + Real.log q))

theorem abs_primeEnergy_le (T : ℝ) (f : ℝ → ℝ)
    (hf : Integrable (fun t : ℝ => (f t) ^ 2)) :
    |primeEnergy T f| ≤ primeMass T * ∫ t : ℝ, (f t) ^ 2 := by
  rw [primeEnergy, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * ∑ q ∈ activePrimePowers T, |primeWeight q * (∫ t : ℝ, f t * f (t + Real.log q))| :=
      mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ 2 * ∑ q ∈ activePrimePowers T, primeWeight q * (∫ t : ℝ, (f t) ^ 2) := by
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      apply Finset.sum_le_sum
      intro q _
      rw [abs_mul, abs_of_nonneg (primeWeight_nonneg q)]
      exact mul_le_mul_of_nonneg_left
        (abs_integral_mul_translate_le_sq _ _ hf) (primeWeight_nonneg q)
    _ = _ := by rw [primeMass, ← Finset.sum_mul]; ring

private theorem sum_shiftEntry_eq_correlation {M : ℕ} (T r : ℝ) (x : Fin M → ℝ) :
    (∑ i : Fin M, ∑ j : Fin M, (x i * x j) *
      sineShiftEntry T (i.val + 1) (j.val + 1) r) =
      2 * ∫ t : ℝ, finiteSine T x t * finiteSine T x (t + r) := by
  have hswap :
      (∑ i : Fin M, ∑ j : Fin M, (x i * x j) * sineCorrelation T (j.val + 1) (i.val + 1) r) =
        ∑ i : Fin M, ∑ j : Fin M, (x i * x j) * sineCorrelation T (i.val + 1) (j.val + 1) r := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    rw [mul_comm (x j) (x i)]
  simp only [sineShiftEntry, mul_add, Finset.sum_add_distrib]
  rw [hswap, integral_finiteSine_product]
  ring

/-- The prime matrix uses the complete support inventory in the literal core. -/
def primeMatrix (T : ℝ) (M : ℕ) : Matrix (Fin M) (Fin M) ℝ :=
  fun i j => ∑ q ∈ activePrimePowers T,
    primeWeight q * sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log q)

theorem primeMatrix_quadratic_eq {M : ℕ} (T : ℝ) (x : Fin M → ℝ) :
    quadratic (primeMatrix T M) x = primeEnergy T (finiteSine T x) := by
  unfold primeEnergy
  have hsum : quadratic (primeMatrix T M) x =
      ∑ i : Fin M, ∑ j : Fin M, ∑ q ∈ activePrimePowers T,
        primeWeight q * ((x i * x j) * sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log q)) := by
    simp only [quadratic, primeMatrix, Matrix.mulVec, dotProduct, Finset.mul_sum, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    apply Finset.sum_congr rfl
    intro q _
    ring
  rw [hsum]
  calc
    _ = ∑ i : Fin M, ∑ q ∈ activePrimePowers T, ∑ j : Fin M,
        primeWeight q * ((x i * x j) * sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log q)) := by
      apply Finset.sum_congr rfl
      intro i _
      exact Finset.sum_comm
    _ = ∑ q ∈ activePrimePowers T, ∑ i : Fin M, ∑ j : Fin M,
        primeWeight q * ((x i * x j) * sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log q)) :=
      Finset.sum_comm
    _ = _ := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro q _
      calc
        _ = ∑ i : Fin M, primeWeight q * ∑ j : Fin M, (x i * x j) *
            sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log q) := by
          simp only [Finset.mul_sum]
        _ = primeWeight q * ∑ i : Fin M, ∑ j : Fin M, (x i * x j) *
            sineShiftEntry T (i.val + 1) (j.val + 1) (Real.log q) :=
          (Finset.mul_sum _ _ _).symm
        _ = _ := by rw [sum_shiftEntry_eq_correlation]; ring

/-- Both signs of the prime form are controlled by the full prime mass. -/
theorem abs_primeMatrix_quadratic_le {M : ℕ} (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) :
    |quadratic (primeMatrix T M) x| ≤ primeMass T * ∑ i, (x i) ^ 2 := by
  have hf : Integrable (fun t : ℝ => (finiteSine T x t) ^ 2) := by
    simpa only [add_zero, ← pow_two] using integrable_finiteSine_product T 0 x x
  rw [primeMatrix_quadratic_eq, ← integral_finiteSine_sq T hT]
  exact abs_primeEnergy_le T (finiteSine T x) hf

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSineForm
