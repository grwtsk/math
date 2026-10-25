/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicFourierEnergy
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

/-! # The sharp finite cycle factor on the entire complex mean-zero sector

The minimum ranges over EVERY nonzero frequency. Both halves of the sine
interval are treated explicitly. The first character mode attains the unit
cycle factor, so no larger uniform unit-cycle constant is possible.
For variable conductances this is a lower bound through a pointwise floor,
not a claim of equality with their actual first positive eigenvalue. In the
arithmetic application the floor log2 need not itself be optimal.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No formal operator spectrum API, continuum limit or physical mass gap is supplied. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSharpPoincare

open ArithmeticCyclicHamiltonian ArithmeticCyclicLaplacian
open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification

variable (N : ℕ) [hNz : NeZero N]
include hNz

theorem base_sine_positive (hN : 3 ≤ N) : 0 < Real.sin (Real.pi / (N : ℝ)) := by
  have hn : 0 < (N : ℝ) := by exact_mod_cast NeZero.pos N
  have hnr : (3 : ℝ) ≤ N := by exact_mod_cast hN
  apply Real.sin_pos_of_pos_of_lt_pi (div_pos Real.pi_pos hn)
  apply (div_lt_iff₀ hn).mpr
  nlinarith [Real.pi_pos, mul_nonneg Real.pi_pos.le (sub_nonneg.mpr hnr)]

theorem mode_sine_lower_bound (hN : 3 ≤ N) (k : ZMod N) (hk : k ≠ 0) :
    Real.sin (Real.pi / (N : ℝ)) ≤
      Real.sin (Real.pi * ((k.val : ℝ) / (N : ℝ))) := by
  have hn : 0 < (N : ℝ) := by
    exact_mod_cast (Nat.lt_of_lt_of_le (by decide : 0 < 3) hN)
  have hn0 : (N : ℝ) ≠ 0 := ne_of_gt hn
  have hl : 1 ≤ k.val := ZMod.val_pos.mpr hk
  have hu : k.val + 1 ≤ N := Nat.succ_le_iff.mpr (ZMod.val_lt k)
  have hlr : (1 : ℝ) ≤ k.val := by exact_mod_cast hl
  have hur : (k.val : ℝ) + 1 ≤ N := by exact_mod_cast hu
  have he : (Real.pi / (N : ℝ)) * N = Real.pi := by field_simp [hn0]
  have ht : (Real.pi * ((k.val : ℝ) / (N : ℝ))) * N = Real.pi * k.val := by
    field_simp [hn0]
  have hlow : Real.pi / (N : ℝ) ≤ Real.pi * ((k.val : ℝ) / (N : ℝ)) := by
    apply (mul_le_mul_right hn).mp
    rw [he, ht]
    nlinarith [mul_nonneg Real.pi_pos.le (sub_nonneg.mpr hlr)]
  have href : Real.pi / (N : ℝ) ≤ Real.pi - Real.pi * ((k.val : ℝ) / (N : ℝ)) := by
    apply (mul_le_mul_right hn).mp
    rw [he, sub_mul, ht]
    nlinarith [mul_nonneg Real.pi_pos.le (sub_nonneg.mpr hur)]
  have he0 : 0 ≤ Real.pi / (N : ℝ) := (div_pos Real.pi_pos hn).le
  have hehalf : -(Real.pi / 2) ≤ Real.pi / (N : ℝ) := by linarith [Real.pi_pos]
  by_cases hhalf : Real.pi * ((k.val : ℝ) / (N : ℝ)) ≤ Real.pi / 2
  · exact Real.sin_le_sin_of_le_of_le_pi_div_two hehalf hhalf hlow
  · have hreflect : Real.pi - Real.pi * ((k.val : ℝ) / (N : ℝ)) ≤ Real.pi / 2 := by
      linarith
    have h := Real.sin_le_sin_of_le_of_le_pi_div_two hehalf hreflect href
    rwa [Real.sin_pi_sub] at h

theorem nonzero_symbol_lower_bound (hN : 3 ≤ N) (k : ZMod N) (hk : k ≠ 0) :
    4 * Real.sin (Real.pi / (N : ℝ)) ^ 2 ≤
      (ArithmeticCyclicFourier.cyclicSymbol N k).re := by
  rw [ArithmeticCyclicFourier.cyclicSymbol_eq_sine, Complex.ofReal_re]
  have h := mode_sine_lower_bound N hN k hk
  have h0 := (base_sine_positive N hN).le
  have hprod := mul_nonneg (sub_nonneg.mpr h) (add_nonneg (h0.trans h) h0)
  nlinarith

theorem symbol_at_one (hN : 3 ≤ N) :
    (ArithmeticCyclicFourier.cyclicSymbol N (1 : ZMod N)).re =
      4 * Real.sin (Real.pi / (N : ℝ)) ^ 2 := by
  have hne : N ≠ 1 := by omega
  simp [ArithmeticCyclicFourier.cyclicSymbol_eq_sine, ZMod.val_one'' hne,
    div_eq_mul_inv]

theorem cycle_coefficient_positive (hN : 3 ≤ N) :
    0 < 4 * Real.sin (Real.pi / (N : ℝ)) ^ 2 :=
  mul_pos (by norm_num) (pow_pos (base_sine_positive N hN) 2)

theorem mean_zero_spectral_sum_lower_bound (hN : 3 ≤ N) (x : ZMod N → ℂ)
    (hx : (∑ i, x i) = 0) :
    (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2) * (∑ k, ‖ZMod.dft x k‖ ^ 2) ≤
      ∑ k, (ArithmeticCyclicFourier.cyclicSymbol N k).re * ‖ZMod.dft x k‖ ^ 2 := by
  have hz := (ArithmeticCyclicFourier.mean_zero_iff_dft_zero N x).mp hx
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro k _hk
  by_cases hk : k = 0
  · subst k
    simp [hz]
  · exact mul_le_mul_of_nonneg_right (nonzero_symbol_lower_bound N hN k hk)
      (sq_nonneg _)

/-- The full complex mean-zero family and the nonnegative floor are explicit. -/
theorem sharp_cycle_poincare (hN : 3 ≤ N) (a : ZMod N → ℝ) (c : ℝ)
    (hc : 0 ≤ c) (ha : ∀ i, c ≤ a i) (x : ZMod N → ℂ)
    (hx : (∑ i, x i) = 0) :
    (c * (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2)) * (∑ i, ‖x i‖ ^ 2) ≤
      (complexReadout x (fun p => laplacian N a p.1 p.2)).re := by
  have hn : 0 < (N : ℝ) := by exact_mod_cast NeZero.pos N
  calc
    _ = (c / (N : ℝ)) *
        ((4 * Real.sin (Real.pi / (N : ℝ)) ^ 2) * (∑ k, ‖ZMod.dft x k‖ ^ 2)) := by
      rw [ArithmeticCyclicFourierEnergy.parseval_norm_sq]
      simp only [div_eq_mul_inv]
      ring
    _ ≤ (c / (N : ℝ)) *
        (∑ k, (ArithmeticCyclicFourier.cyclicSymbol N k).re * ‖ZMod.dft x k‖ ^ 2) :=
      mul_le_mul_of_nonneg_left (mean_zero_spectral_sum_lower_bound N hN x hx)
        (div_nonneg hc hn.le)
    _ ≤ _ := ArithmeticCyclicFourierEnergy.conductance_floor_fourier N a c ha x

/-- Sharp cycle factor; the arithmetic conductance floor is not claimed optimal. -/
theorem arithmetic_poincare_cycle_bound (hN : 3 ≤ N) (m : ZMod N → ℕ)
    (hm : ∀ i, 2 ≤ m i) (x : ZMod N → ℂ) (hx : (∑ i, x i) = 0) :
    (Real.log 2 * (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2)) * (∑ i, ‖x i‖ ^ 2) ≤
      (complexReadout x (fun p => arithmeticLaplacian N m p.1 p.2)).re := by
  exact sharp_cycle_poincare N hN (arithmeticConductance N m) (Real.log 2)
    (Real.log_nonneg (by norm_num))
    (fun i => ArithmeticCyclicPoincare.arithmeticConductance_log_two_floor N m i (hm i)) x hx

theorem mode_norm_sq (k : ZMod N) :
    (∑ i, ‖ArithmeticCyclicFourier.mode N k i‖ ^ 2) = (N : ℝ) := by
  simp [ArithmeticCyclicFourier.mode, ZMod.stdAddChar_apply, Circle.norm_coe, ZMod.card]

theorem one_mode_mean_zero (hN : 3 ≤ N) :
    (∑ i, ArithmeticCyclicFourier.mode N (1 : ZMod N) i) = 0 := by
  have hk : (1 : ZMod N) ≠ 0 := by
    intro hz
    have hv := (ZMod.val_eq_zero (1 : ZMod N)).mpr hz
    rw [ZMod.val_one'' (by omega : N ≠ 1)] at hv
    omega
  exact ArithmeticCyclicFourier.mode_sum_zero N 1 hk

theorem one_mode_energy (hN : 3 ≤ N) (a : ℝ) :
    (complexReadout (ArithmeticCyclicFourier.mode N (1 : ZMod N))
      (fun p => laplacian N (fun _ => a) p.1 p.2)).re =
        (a * (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2)) *
          (∑ i, ‖ArithmeticCyclicFourier.mode N (1 : ZMod N) i‖ ^ 2) := by
  rw [ArithmeticCyclicFourierEnergy.laplacian_energy_fourier, mode_norm_sq]
  have hs : (∑ k, (ArithmeticCyclicFourier.cyclicSymbol N k).re *
        ‖ZMod.dft (ArithmeticCyclicFourier.mode N (1 : ZMod N)) k‖ ^ 2) =
      (ArithmeticCyclicFourier.cyclicSymbol N (1 : ZMod N)).re * (N : ℝ) ^ 2 := by
    calc
      _ = ∑ k : ZMod N, if k = 1 then
          (ArithmeticCyclicFourier.cyclicSymbol N (1 : ZMod N)).re * (N : ℝ) ^ 2 else 0 := by
        apply Finset.sum_congr rfl
        intro k _hk
        by_cases hk : k = 1
        · subst k
          simp [ArithmeticCyclicFourier.dft_mode]
        · simp [ArithmeticCyclicFourier.dft_mode, hk]
      _ = _ := by simp
  rw [hs, symbol_at_one N hN]
  have hn : (N : ℝ) ≠ 0 := by exact_mod_cast NeZero.ne N
  field_simp [hn] <;> ring

/-- Every uniform unit-cycle mean-zero bound is at most this cycle factor. -/
theorem unweighted_constant_upper_bound (hN : 3 ≤ N) (b : ℝ)
    (hb : ∀ x : ZMod N → ℂ, (∑ i, x i) = 0 →
      b * (∑ i, ‖x i‖ ^ 2) ≤
        (complexReadout x (fun p => laplacian N (fun _ => 1) p.1 p.2)).re) :
    b ≤ 4 * Real.sin (Real.pi / (N : ℝ)) ^ 2 := by
  have h := hb (ArithmeticCyclicFourier.mode N (1 : ZMod N)) (one_mode_mean_zero N hN)
  rw [one_mode_energy N hN 1] at h
  have hn : 0 < (N : ℝ) := by exact_mod_cast NeZero.pos N
  have h' : b * (N : ℝ) ≤ (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2) * (N : ℝ) := by
    simpa only [mode_norm_sq, one_mul] using h
  exact (mul_le_mul_right hn).mp h'

theorem positive_floor_cycle_coefficient (hN : 3 ≤ N) (c : ℝ) (hc : 0 < c) :
    0 < c * (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2) :=
  mul_pos hc (cycle_coefficient_positive N hN)

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSharpPoincare
