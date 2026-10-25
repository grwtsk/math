/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicLaplacian
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.Order.BigOperators.Ring.Finset

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

/-! # A coarse explicit finite-volume arithmetic Poincare bound

Path telescoping and finite Cauchy-Schwarz give the constant a_min/N^2 on the
entire mean-zero sector. The actual arithmetic weights admit the floor log 2
when every site label is at least 2. The coefficient decays with the volume;
it is not the sharp Fourier value 4 sin^2(pi/N), nor a continuum mass.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicPoincare

open ArithmeticCyclicLaplacian
open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification

variable (N : ℕ) [hN : NeZero N]
include hN

/-- Squared Euclidean energy is written explicitly, without using the Pi sup norm. -/
def vertexEnergy (x : ZMod N → ℂ) : ℝ := ∑ i, ‖x i‖ ^ 2

def gradientEnergy (x : ZMod N → ℂ) : ℝ := ∑ i, ‖x i - x (i + 1)‖ ^ 2

theorem sum_range_zmod (f : ZMod N → ℝ) :
    (∑ k ∈ Finset.range N, f (k : ZMod N)) = ∑ i, f i := by
  rw [Finset.sum_range]
  have he (i : Fin N) : (i.val : ZMod N) = (ZMod.finEquiv N) i := by
    cases N with
    | zero => exact (NeZero.ne 0 rfl).elim
    | succ n =>
      change (i.val : Fin (n + 1)) = i
      exact Fin.cast_val_eq_self i
  simp_rw [he]
  exact (ZMod.finEquiv N).toEquiv.sum_comp f

theorem norm_sub_origin_le_gradient_sum (x : ZMod N → ℂ) (i : ZMod N) :
    ‖x i - x 0‖ ≤ ∑ j, ‖x j - x (j + 1)‖ := by
  have ht : (∑ k ∈ Finset.range i.val,
      (x (k : ZMod N) - x ((k + 1 : ℕ) : ZMod N))) = x 0 - x i := by
    simpa only [Nat.cast_zero, ZMod.natCast_zmod_val] using
      Finset.sum_range_sub' (fun k : ℕ => x (k : ZMod N)) i.val
  calc
    _ = ‖∑ k ∈ Finset.range i.val,
        (x (k : ZMod N) - x ((k + 1 : ℕ) : ZMod N))‖ := by rw [ht, norm_sub_rev]
    _ ≤ ∑ k ∈ Finset.range i.val,
        ‖x (k : ZMod N) - x ((k + 1 : ℕ) : ZMod N)‖ := norm_sum_le _ _
    _ ≤ ∑ k ∈ Finset.range N,
        ‖x (k : ZMod N) - x ((k + 1 : ℕ) : ZMod N)‖ := by
      apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono (ZMod.val_lt i).le)
      intro k _hk _hnot
      exact norm_nonneg _
    _ = _ := by
      simpa only [Nat.cast_add, Nat.cast_one] using
        sum_range_zmod N (fun j => ‖x j - x (j + 1)‖)

theorem gradient_sum_sq_le (x : ZMod N → ℂ) :
    (∑ j, ‖x j - x (j + 1)‖) ^ 2 ≤ (N : ℝ) * gradientEnergy N x := by
  have h := Finset.sum_mul_sq_le_sq_mul_sq Finset.univ
    (fun _ : ZMod N => (1 : ℝ)) (fun j => ‖x j - x (j + 1)‖)
  simpa [gradientEnergy, ZMod.card] using h

theorem norm_sub_origin_sq_le (x : ZMod N → ℂ) (i : ZMod N) :
    ‖x i - x 0‖ ^ 2 ≤ (N : ℝ) * gradientEnergy N x := by
  have hp := norm_sub_origin_le_gradient_sum N x i
  have hs : 0 ≤ ∑ j, ‖x j - x (j + 1)‖ := Finset.sum_nonneg (fun _ _ => norm_nonneg _)
  have hb : ‖x i - x 0‖ ^ 2 ≤ (∑ j, ‖x j - x (j + 1)‖) ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hp) (add_nonneg hs (norm_nonneg (x i - x 0)))]
  exact hb.trans (gradient_sum_sq_le N x)

/-- The constant-shift identity keeps both real and imaginary coordinates. -/
theorem sum_norm_sq_sub_const (x : ZMod N → ℂ) (c : ℂ) :
    (∑ i, ‖x i - c‖ ^ 2) = vertexEnergy N x + (N : ℝ) * ‖c‖ ^ 2 -
      2 * ((∑ i, x i) * conj c).re := by
  simp only [vertexEnergy, ← Complex.normSq_eq_norm_sq, Complex.normSq_sub,
    Finset.sum_sub_distrib, Finset.sum_add_distrib, Finset.sum_const,
    Finset.card_univ, ZMod.card, nsmul_eq_mul, ← Finset.mul_sum,
    ← Complex.re_sum, ← Finset.sum_mul]

theorem vertexEnergy_le_shifted (x : ZMod N → ℂ) (hx : ∑ i, x i = 0) :
    vertexEnergy N x ≤ ∑ i, ‖x i - x 0‖ ^ 2 := by
  have h := sum_norm_sq_sub_const N x (x 0)
  rw [hx, zero_mul, Complex.zero_re, mul_zero, sub_zero] at h
  have hc : 0 ≤ (N : ℝ) * ‖x 0‖ ^ 2 := mul_nonneg (Nat.cast_nonneg _) (sq_nonneg _)
  linarith

/-- A coarse bound on the full mean-zero sector; no Fourier sharpness is claimed. -/
theorem mean_zero_energy_le (x : ZMod N → ℂ) (hx : ∑ i, x i = 0) :
    vertexEnergy N x ≤ (N : ℝ) ^ 2 * gradientEnergy N x := by
  calc
    _ ≤ ∑ i, ‖x i - x 0‖ ^ 2 := vertexEnergy_le_shifted N x hx
    _ ≤ ∑ _i : ZMod N, (N : ℝ) * gradientEnergy N x :=
      Finset.sum_le_sum (fun i _hi => norm_sub_origin_sq_le N x i)
    _ = _ := by simp [ZMod.card]; ring

theorem conductance_floor_energy (a : ZMod N → ℝ) (c : ℝ)
    (ha : ∀ i, c ≤ a i) (x : ZMod N → ℂ) :
    c * gradientEnergy N x ≤ (complexReadout x (fun p => laplacian N a p.1 p.2)).re := by
  rw [gradientEnergy, Finset.mul_sum, laplacian_energy]
  exact Finset.sum_le_sum (fun i _hi => mul_le_mul_of_nonneg_right (ha i) (sq_nonneg _))

theorem weighted_mean_zero_energy (a : ZMod N → ℝ) (c : ℝ) (hc : 0 ≤ c)
    (ha : ∀ i, c ≤ a i) (x : ZMod N → ℂ) (hx : ∑ i, x i = 0) :
    c * vertexEnergy N x ≤
      (N : ℝ) ^ 2 * (complexReadout x (fun p => laplacian N a p.1 p.2)).re := by
  calc
    _ ≤ c * ((N : ℝ) ^ 2 * gradientEnergy N x) :=
      mul_le_mul_of_nonneg_left (mean_zero_energy_le N x hx) hc
    _ = (N : ℝ) ^ 2 * (c * gradientEnergy N x) := by ring
    _ ≤ _ := mul_le_mul_of_nonneg_left (conductance_floor_energy N a c ha x) (sq_nonneg _)

theorem poincare_lower_bound (a : ZMod N → ℝ) (c : ℝ) (hc : 0 ≤ c)
    (ha : ∀ i, c ≤ a i) (x : ZMod N → ℂ) (hx : ∑ i, x i = 0) :
    (c / (N : ℝ) ^ 2) * vertexEnergy N x ≤
      (complexReadout x (fun p => laplacian N a p.1 p.2)).re := by
  have hNpos : 0 < (N : ℝ) := Nat.cast_pos.mpr (NeZero.pos N)
  rw [div_mul_eq_mul_div]
  apply (div_le_iff₀ (sq_pos_of_pos hNpos)).mpr
  simpa only [mul_comm] using weighted_mean_zero_energy N a c hc ha x hx

theorem poincare_coefficient_positive (c : ℝ) (hc : 0 < c) :
    0 < c / (N : ℝ) ^ 2 :=
  div_pos hc (sq_pos_of_pos (Nat.cast_pos.mpr (NeZero.pos N)))

theorem arithmeticConductance_log_two_floor (m : ZMod N → ℕ)
    (i : ZMod N) (hm : 2 ≤ m i) : Real.log 2 ≤ arithmeticConductance N m i := by
  have hn : 2 ≤ UniqueFactorizationMonoid.radical (m i) := Nat.two_le_radical_iff.mpr hm
  have hr : (2 : ℝ) ≤ (UniqueFactorizationMonoid.radical (m i) : ℝ) := by exact_mod_cast hn
  have hl := Real.log_le_log (by norm_num : (0 : ℝ) < 2) hr
  have hv : 0 ≤ ArithmeticFunction.vonMangoldt (m i) := ArithmeticFunction.vonMangoldt_nonneg
  unfold arithmeticConductance
  linarith

/-- Demonstrated quantitative application to the entire actual arithmetic family. -/
theorem arithmetic_poincare_lower_bound (m : ZMod N → ℕ) (hm : ∀ i, 2 ≤ m i)
    (x : ZMod N → ℂ) (hx : ∑ i, x i = 0) :
    (Real.log 2 / (N : ℝ) ^ 2) * vertexEnergy N x ≤
      (complexReadout x (fun p => arithmeticLaplacian N m p.1 p.2)).re := by
  exact poincare_lower_bound N (arithmeticConductance N m) (Real.log 2)
    (Real.log_pos (by norm_num : (1 : ℝ) < 2)).le
    (fun i => arithmeticConductance_log_two_floor N m i (hm i)) x hx

theorem arithmetic_poincare_coefficient_positive : 0 < Real.log 2 / (N : ℝ) ^ 2 :=
  poincare_coefficient_positive N (Real.log 2) (Real.log_pos (by norm_num : (1 : ℝ) < 2))

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicPoincare
