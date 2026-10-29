/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib finite sums and interval integration retain upstream attribution
and Apache-2.0 licenses. -/
import GRWTSK.MeasureAndIntegration.IntervalMeanVariance
import Mathlib.Algebra.Order.BigOperators.Ring.Finset

/-!
# Concrete uniform-bin projection energies

The finite features are the literal integrals divided by the square root of
bin length; their squared energy is written without square roots. Residuals
are actual centered integrals. Orthogonality is proved binwise, and no mixed
term or signed coefficient is removed by fiat.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.Analysis.Integration.UniformBinProjection
open GRWTSK.Analysis.Integration.IntervalMeanVariance

def width (T : ℝ) (m : ℕ) : ℝ := T / (m : ℝ)
def cut (T : ℝ) (m j : ℕ) : ℝ := (j : ℝ) * width T m
def binIntegral (f : ℝ → ℝ) (T : ℝ) (m j : ℕ) : ℝ :=
  ∫ x in cut T m j..cut T m (j + 1), f x
def featureEnergy (f : ℝ → ℝ) (T : ℝ) (m : ℕ) : ℝ :=
  ∑ j ∈ Finset.range m, (binIntegral f T m j) ^ 2 / width T m
def residualEnergy (f : ℝ → ℝ) (T : ℝ) (m : ℕ) : ℝ :=
  ∑ j ∈ Finset.range m, variance f (cut T m j) (cut T m (j + 1))

theorem width_positive {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    0 < width T m := div_pos hT (by exact_mod_cast hm)

@[simp] theorem cut_zero (T : ℝ) (m : ℕ) : cut T m 0 = 0 := by simp [cut]

theorem cut_last (T : ℝ) {m : ℕ} (hm : 0 < m) : cut T m m = T := by
  unfold cut width
  field_simp [show (m : ℝ) ≠ 0 by exact_mod_cast hm.ne']

@[simp] theorem cut_difference (T : ℝ) (m j : ℕ) :
    cut T m (j + 1) - cut T m j = width T m := by unfold cut; push_cast; ring

theorem cut_lt {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) (j : ℕ) :
    cut T m j < cut T m (j + 1) := by
  have h := width_positive hT hm
  have he := cut_difference T m j
  linarith

theorem cut_mem {T : ℝ} {m j : ℕ} (hT : 0 ≤ T) (hm : 0 < m) (hj : j ≤ m) :
    cut T m j ∈ Icc 0 T := by
  have hw : 0 ≤ width T m := div_nonneg hT (Nat.cast_nonneg _)
  constructor
  · exact mul_nonneg (Nat.cast_nonneg _) hw
  · calc
      cut T m j ≤ cut T m m := mul_le_mul_of_nonneg_right (by exact_mod_cast hj) hw
      _ = T := cut_last T hm

/-- Adjacent integration is telescoped before changing the source. -/
theorem sum_bin_integrals {g : ℝ → ℝ} (hg : ∀ a b, IntervalIntegrable g volume a b)
    (T : ℝ) {m : ℕ} (hm : 0 < m) :
    (∑ j ∈ Finset.range m, binIntegral g T m j) = ∫ x in (0 : ℝ)..T, g x := by
  have ht (n : ℕ) : (∑ j ∈ Finset.range n, binIntegral g T m j) =
      ∫ x in cut T m 0..cut T m n, g x := by
    induction n with
    | zero => simp
    | succ n ih =>
      rw [Finset.sum_range_succ, ih]
      exact intervalIntegral.integral_add_adjacent_intervals (hg _ _) (hg _ _)
  simpa only [cut_zero, cut_last T hm] using ht m

/-- Exact Pythagoras for the finite interval-mean projection. -/
theorem energy_split {f : ℝ → ℝ} (hf : Continuous f)
    {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    (∫ x in (0 : ℝ)..T, f x ^ 2) = featureEnergy f T m + residualEnergy f T m := by
  rw [← sum_bin_integrals (fun a b => (hf.pow 2).intervalIntegrable a b) T hm]
  unfold featureEnergy residualEnergy
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j _
  rw [variance_eq (cut_lt hT hm j) (hf.intervalIntegrable _ _) ((hf.pow 2).intervalIntegrable _ _),
    cut_difference]
  unfold binIntegral
  ring

theorem residualEnergy_nonnegative {f : ℝ → ℝ} {T : ℝ} {m : ℕ}
    (hT : 0 < T) (hm : 0 < m) : 0 ≤ residualEnergy f T m :=
  Finset.sum_nonneg (fun j _ => variance_nonnegative (cut_lt hT hm j).le)

theorem residualEnergy_le_derivative {f g : ℝ → ℝ}
    (hf : Continuous f)
    (hg : ∀ a b, IntervalIntegrable g volume a b)
    (hg2 : ∀ a b, IntervalIntegrable (fun x => g x ^ 2) volume a b)
    (hp : ∀ x y, f y - f x = ∫ z in x..y, g z)
    {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    residualEnergy f T m ≤ T ^ 2 / (8 * (m : ℝ) ^ 2) * (∫ x in (0 : ℝ)..T, g x ^ 2) := by
  calc
    _ ≤ ∑ j ∈ Finset.range m,
        width T m ^ 2 / 8 * binIntegral (fun x => g x ^ 2) T m j := by
      apply Finset.sum_le_sum
      intro j _
      simpa only [cut_difference, binIntegral] using
        variance_le_derivative_energy hf hg hg2 hp (cut_lt hT hm j)
    _ = width T m ^ 2 / 8 * (∫ x in (0 : ℝ)..T, g x ^ 2) := by
      rw [← Finset.mul_sum, sum_bin_integrals hg2 T hm]
    _ = _ := by unfold width; ring

theorem residualEnergy_le_lipschitz {f : ℝ → ℝ} (hf : Continuous f)
    {T L : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) (hL : 0 ≤ L)
    (hlip : ∀ x ∈ Icc 0 T, ∀ y ∈ Icc 0 T, |f x - f y| ≤ L * |x - y|) :
    residualEnergy f T m ≤ L ^ 2 * T ^ 3 / (12 * (m : ℝ) ^ 2) := by
  have hcell (j : ℕ) (hj : j < m) :
      variance f (cut T m j) (cut T m (j + 1)) ≤ L ^ 2 * width T m ^ 3 / 12 := by
    apply (variance_le_lipschitz hf (cut_lt hT hm j) hL ?_).trans_eq
      (by rw [cut_difference])
    intro x hx y hy
    have ha := cut_mem hT.le hm (show j ≤ m by omega)
    have hb := cut_mem hT.le hm (show j + 1 ≤ m by omega)
    exact hlip x ⟨ha.1.trans hx.1, hx.2.trans hb.2⟩ y ⟨ha.1.trans hy.1, hy.2.trans hb.2⟩
  calc
    _ ≤ ∑ _j ∈ Finset.range m, L ^ 2 * width T m ^ 3 / 12 :=
      Finset.sum_le_sum (fun j hj => hcell j (Finset.mem_range.mp hj))
    _ = _ := by
      simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul, width]
      field_simp [show (m : ℝ) ≠ 0 by exact_mod_cast hm.ne']
      <;> ring

/-- Fixed-inventory source equality is needed only on the actual recording interval. -/
theorem residualEnergy_congr_on {f g : ℝ → ℝ} {T : ℝ} {m : ℕ}
    (hT : 0 < T) (hm : 0 < m) (hfg : ∀ x ∈ Icc 0 T, f x = g x) :
    residualEnergy f T m = residualEnergy g T m := by
  apply Finset.sum_congr rfl
  intro j hj
  apply variance_congr
  intro x hx
  rw [uIcc_of_le (cut_lt hT hm j).le] at hx
  have hj' := Finset.mem_range.mp hj
  exact hfg x ⟨(cut_mem hT.le hm (by omega : j ≤ m)).1.trans hx.1,
    hx.2.trans (cut_mem hT.le hm (by omega : j + 1 ≤ m)).2⟩

section FiniteFamily
variable {I : Type*}

theorem mean_sum (s : Finset I) (a : I → ℝ) (f : I → ℝ → ℝ)
    (hf : ∀ i ∈ s, Continuous (f i)) (u v : ℝ) :
    mean (fun x => ∑ i ∈ s, a i * f i x) u v = ∑ i ∈ s, a i * mean (f i) u v := by
  unfold mean
  rw [intervalIntegral.integral_finsetSum]
  · simp_rw [intervalIntegral.integral_const_mul]
    rw [Finset.sum_div]
    apply Finset.sum_congr rfl
    intro i _
    ring
  · intro i hi
    exact ((hf i hi).const_mul (a i)).intervalIntegrable _ _

/-- Cauchy--Schwarz is applied after forming the signed centered functions. -/
theorem variance_sum_le (s : Finset I) (a : I → ℝ) (f : I → ℝ → ℝ)
    (hf : ∀ i ∈ s, Continuous (f i)) {u v : ℝ} (huv : u < v) :
    variance (fun x => ∑ i ∈ s, a i * f i x) u v ≤
      (∑ i ∈ s, a i ^ 2) * ∑ i ∈ s, variance (f i) u v := by
  have hc : Continuous (fun x => ∑ i ∈ s, a i * f i x) :=
    continuous_finsetSum s (fun i hi => (hf i hi).const_mul _)
  have hr (x : ℝ) : (∑ i ∈ s, a i * f i x) -
      mean (fun x => ∑ i ∈ s, a i * f i x) u v =
        ∑ i ∈ s, a i * (f i x - mean (f i) u v) := by
    rw [mean_sum s a f hf, ← Finset.sum_sub_distrib]
    exact Finset.sum_congr rfl (fun i _ => by ring)
  calc
    _ ≤ ∫ x in u..v, (∑ i ∈ s, a i ^ 2) *
        ∑ i ∈ s, (f i x - mean (f i) u v) ^ 2 := by
      apply intervalIntegral.integral_mono_on huv.le
        (((hc.sub continuous_const).pow 2).intervalIntegrable _ _)
        ((continuous_const.mul (continuous_finsetSum s (fun i hi =>
          ((hf i hi).sub continuous_const).pow 2))).intervalIntegrable _ _)
      intro x _
      change ((∑ i ∈ s, a i * f i x) - mean (fun x => ∑ i ∈ s, a i * f i x) u v) ^ 2 ≤ _
      rw [hr]
      exact Finset.sum_mul_sq_le_sq_mul_sq s a (fun i => f i x - mean (f i) u v)
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, intervalIntegral.integral_finsetSum]
      · rfl
      · intro i hi
        exact (((hf i hi).sub continuous_const).pow 2).intervalIntegrable _ _

theorem residualEnergy_sum_le (s : Finset I) (a : I → ℝ) (f : I → ℝ → ℝ)
    (hf : ∀ i ∈ s, Continuous (f i)) {T : ℝ} {m : ℕ} (hT : 0 < T) (hm : 0 < m) :
    residualEnergy (fun x => ∑ i ∈ s, a i * f i x) T m ≤
      (∑ i ∈ s, a i ^ 2) * ∑ i ∈ s, residualEnergy (f i) T m := by
  calc
    _ ≤ ∑ j ∈ Finset.range m, (∑ i ∈ s, a i ^ 2) *
        ∑ i ∈ s, variance (f i) (cut T m j) (cut T m (j + 1)) :=
      Finset.sum_le_sum (fun j _ => variance_sum_le s a f hf (cut_lt hT hm j))
    _ = _ := by
      rw [← Finset.mul_sum, Finset.sum_comm]
      rfl
end FiniteFamily

end GRWTSK.Analysis.Integration.UniformBinProjection
