/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSharpPoincare
import Mathlib.Order.Filter.AtTopBot.Archimedean
import Mathlib.Topology.Algebra.Order.Field

set_option autoImplicit false
noncomputable section
open Filter
open scoped BigOperators Topology

/-! # Fixed-conductance cycle coefficients in the volume limit

The actual first complex character tests every proposed mean-zero lower bound.
For any fixed real conductance its Rayleigh quotient tends to zero with N.
For the original arithmetic conductances, the admissible labels all equal to 2
give exactly 2 * log 2. This counterfamily rules out a positive constant valid
simultaneously for EVERY size and EVERY admissible arithmetic label family.
It does not claim decay for each individual variable-conductance family, whose
weights may grow with N, or construct an infinite operator or continuum limit.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicVolumeLimit

open ArithmeticCyclicHamiltonian ArithmeticCyclicLaplacian
open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification

theorem angle_tendsto_zero :
    Tendsto (fun N : ℕ => Real.pi / (N : ℝ)) atTop (𝓝 0) :=
  tendsto_const_nhds.div_atTop tendsto_natCast_atTop_atTop

theorem cycle_factor_tendsto_zero :
    Tendsto (fun N : ℕ => 4 * Real.sin (Real.pi / (N : ℝ)) ^ 2) atTop (𝓝 0) := by
  have hs : Tendsto (fun N : ℕ => Real.sin (Real.pi / (N : ℝ))) atTop (𝓝 0) := by
    simpa only [Real.sin_zero] using
      (Real.continuous_sin.tendsto 0).comp angle_tendsto_zero
  simpa only [zero_pow (by decide : 2 ≠ 0), mul_zero] using
    (tendsto_const_nhds.mul (hs.pow 2) :
      Tendsto (fun N : ℕ => (4 : ℝ) * Real.sin (Real.pi / (N : ℝ)) ^ 2)
        atTop (𝓝 (4 * (0 : ℝ) ^ 2)))

theorem scaled_cycle_factor_tendsto_zero (a : ℝ) :
    Tendsto (fun N : ℕ => a * (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2))
      atTop (𝓝 0) := by
  simpa only [mul_zero] using
    (tendsto_const_nhds.mul cycle_factor_tendsto_zero :
      Tendsto (fun N : ℕ => a * (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2))
        atTop (𝓝 (a * 0)))

section FiniteCycle

variable (N : ℕ) [hNz : NeZero N]
include hNz

theorem constant_mode_rayleigh (hN : 3 ≤ N) (a : ℝ) :
    (complexReadout (ArithmeticCyclicFourier.mode N (1 : ZMod N))
      (fun p => laplacian N (fun _ => a) p.1 p.2)).re /
        (∑ i, ‖ArithmeticCyclicFourier.mode N (1 : ZMod N) i‖ ^ 2) =
      a * (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2) := by
  rw [ArithmeticCyclicSharpPoincare.one_mode_energy N hN a,
    ArithmeticCyclicSharpPoincare.mode_norm_sq]
  exact mul_div_cancel_right₀ _ (by exact_mod_cast NeZero.ne N)

theorem constant_conductance_upper_bound (hN : 3 ≤ N) (a b : ℝ)
    (hb : ∀ x : ZMod N → ℂ, (∑ i, x i) = 0 →
      b * (∑ i, ‖x i‖ ^ 2) ≤
        (complexReadout x (fun p => laplacian N (fun _ => a) p.1 p.2)).re) :
    b ≤ a * (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2) := by
  have h := hb (ArithmeticCyclicFourier.mode N (1 : ZMod N))
    (ArithmeticCyclicSharpPoincare.one_mode_mean_zero N hN)
  rw [ArithmeticCyclicSharpPoincare.one_mode_energy N hN a,
    ArithmeticCyclicSharpPoincare.mode_norm_sq] at h
  have hn : 0 < (N : ℝ) := by exact_mod_cast NeZero.pos N
  exact (mul_le_mul_right hn).mp h

theorem arithmetic_two_conductance :
    arithmeticConductance N (fun _ => 2) = fun _ => 2 * Real.log 2 := by
  funext i
  simpa only [pow_one] using
    ArithmeticCyclicFourier.prime_power_conductance N 2 Nat.prime_two
      (fun _ => 1) (fun _ => by decide) i

theorem arithmetic_two_laplacian :
    arithmeticLaplacian N (fun _ => 2) = laplacian N (fun _ => 2 * Real.log 2) := by
  change laplacian N (arithmeticConductance N (fun _ => 2)) = _
  rw [arithmetic_two_conductance]

theorem arithmetic_two_mode_rayleigh (hN : 3 ≤ N) :
    (complexReadout (ArithmeticCyclicFourier.mode N (1 : ZMod N))
      (fun p => arithmeticLaplacian N (fun _ => 2) p.1 p.2)).re /
        (∑ i, ‖ArithmeticCyclicFourier.mode N (1 : ZMod N) i‖ ^ 2) =
      (2 * Real.log 2) * (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2) := by
  rw [arithmetic_two_laplacian]
  exact constant_mode_rayleigh N hN (2 * Real.log 2)

end FiniteCycle

theorem no_positive_uniform_constant_conductance_bound (a b : ℝ) (hb : 0 < b) :
    ¬ (∀ (N : ℕ) [NeZero N], 3 ≤ N →
      ∀ x : ZMod N → ℂ, (∑ i, x i) = 0 →
        b * (∑ i, ‖x i‖ ^ 2) ≤
          (complexReadout x (fun p => laplacian N (fun _ => a) p.1 p.2)).re) := by
  intro h
  have he : ∀ᶠ N : ℕ in atTop,
      a * (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2) < b :=
    (tendsto_order.mp (scaled_cycle_factor_tendsto_zero a)).2 b hb
  obtain ⟨N, hN, hsmall⟩ := ((eventually_ge_atTop 3).and he).exists
  letI : NeZero N := ⟨by omega⟩
  exact (not_le_of_gt hsmall) (constant_conductance_upper_bound N hN a b (h N hN))

theorem arithmetic_two_coefficient_tendsto_zero :
    Tendsto (fun N : ℕ => (2 * Real.log 2) *
      (4 * Real.sin (Real.pi / (N : ℝ)) ^ 2)) atTop (𝓝 0) :=
  scaled_cycle_factor_tendsto_zero (2 * Real.log 2)

/-- A counterexample to a bound uniform in BOTH size and admissible labels.
It is not a claim about every separately chosen variable-conductance sequence. -/
theorem no_positive_uniform_arithmetic_bound (b : ℝ) (hb : 0 < b) :
    ¬ (∀ (N : ℕ) [NeZero N], 3 ≤ N →
      ∀ m : ZMod N → ℕ, (∀ i, 2 ≤ m i) →
      ∀ x : ZMod N → ℂ, (∑ i, x i) = 0 →
        b * (∑ i, ‖x i‖ ^ 2) ≤
          (complexReadout x (fun p => arithmeticLaplacian N m p.1 p.2)).re) := by
  intro h
  apply no_positive_uniform_constant_conductance_bound (2 * Real.log 2) b hb
  intro N _hNz hN x hx
  have ht := h N hN (fun _ => 2) (fun _ => Nat.le_refl 2) x hx
  rwa [arithmetic_two_laplacian N] at ht

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicVolumeLimit
