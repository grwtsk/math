/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicFourier
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicPoincare

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

/-! # Counting-measure Parseval and the actual arithmetic cyclic energy

Every complex vector is retained. Squared Euclidean energy is the explicit
sum of squared coordinate norms, not the Pi sup norm. The Fourier transform
is unnormalized and every pairing/energy identity has the exact factor 1/N.
Variable conductances are compared through an explicit pointwise floor; they
are not asserted to be diagonal in the Fourier coordinates.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
Minimizing over all nonzero frequencies, the sharp mean-zero Poincare bound,
formal spectrum/perturbation APIs and infinite/physical limits remain open. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicFourierEnergy

open ArithmeticCyclicHamiltonian ArithmeticCyclicLaplacian
open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification

variable (N : ℕ) [hN : NeZero N]
include hN

theorem conjugate_dft (x : ZMod N → ℂ) (k : ZMod N) :
    conj (ZMod.dft x k) =
      ∑ i, conj (x i) * ArithmeticCyclicFourier.mode N k i := by
  simp [ZMod.dft_apply, smul_eq_mul, ArithmeticCyclicFourier.mode,
    ArithmeticCyclicFourier.character_neg_conj, map_sum, mul_comm]

/-- Polarized Parseval with the conjugate(x) times y convention. -/
theorem parseval_pairing (x y : ZMod N → ℂ) :
    (∑ i, conj (x i) * y i) =
      (N : ℂ)⁻¹ * ∑ k, conj (ZMod.dft x k) * ZMod.dft y k := by
  calc
    _ = ∑ i, conj (x i) *
        ((N : ℂ)⁻¹ * ∑ k, ArithmeticCyclicFourier.mode N k i * ZMod.dft y k) := by
      apply Finset.sum_congr rfl
      intro i _hi
      rw [← ArithmeticCyclicFourier.fourier_reconstruction]
    _ = (N : ℂ)⁻¹ * ∑ i, ∑ k,
        (conj (x i) * ArithmeticCyclicFourier.mode N k i) * ZMod.dft y k := by
      simp only [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _hi
      apply Finset.sum_congr rfl
      intro k _hk
      ring
    _ = (N : ℂ)⁻¹ * ∑ k, ∑ i,
        (conj (x i) * ArithmeticCyclicFourier.mode N k i) * ZMod.dft y k := by
      rw [Finset.sum_comm]
    _ = (N : ℂ)⁻¹ * ∑ k,
        (∑ i, conj (x i) * ArithmeticCyclicFourier.mode N k i) * ZMod.dft y k := by
      simp only [Finset.sum_mul]
    _ = _ := by simp_rw [← conjugate_dft]

theorem parseval_norm_sq (x : ZMod N → ℂ) :
    (∑ i, ‖x i‖ ^ 2) = (N : ℝ)⁻¹ * ∑ k, ‖ZMod.dft x k‖ ^ 2 := by
  have hs (z : ℂ) : conj z * z = ((‖z‖ ^ 2 : ℝ) : ℂ) := by
    rw [← Complex.normSq_eq_norm_sq, Complex.normSq_eq_conj_mul_self]
  have hc : (N : ℂ)⁻¹ = (((N : ℝ)⁻¹ : ℝ) : ℂ) := by simp
  have h := congrArg Complex.re (parseval_pairing N x x)
  simpa only [hs, hc, Complex.re_sum, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, mul_zero, sub_zero] using h

/-- Constant real conductance may be signed. No positivity is inferred here. -/
theorem laplacian_readout_fourier (a : ℝ) (x : ZMod N → ℂ) :
    complexReadout x (fun p => laplacian N (fun _ => a) p.1 p.2) =
      (N : ℂ)⁻¹ * ∑ k,
        ((a : ℂ) * ArithmeticCyclicFourier.cyclicSymbol N k) *
          ((‖ZMod.dft x k‖ ^ 2 : ℝ) : ℂ) := by
  rw [readout_eq_sum_mulVec, parseval_pairing]
  simp_rw [ArithmeticCyclicFourier.dft_laplacian]
  apply congrArg (fun z : ℂ => (N : ℂ)⁻¹ * z)
  apply Finset.sum_congr rfl
  intro k _hk
  rw [← Complex.normSq_eq_norm_sq, Complex.normSq_eq_conj_mul_self]
  ring

theorem laplacian_energy_fourier (a : ℝ) (x : ZMod N → ℂ) :
    (complexReadout x (fun p => laplacian N (fun _ => a) p.1 p.2)).re =
      (a / (N : ℝ)) * ∑ k,
        (ArithmeticCyclicFourier.cyclicSymbol N k).re * ‖ZMod.dft x k‖ ^ 2 := by
  have hc : (N : ℂ)⁻¹ = (((N : ℝ)⁻¹ : ℝ) : ℂ) := by simp
  calc
    _ = (N : ℝ)⁻¹ * ∑ k,
        a * ((ArithmeticCyclicFourier.cyclicSymbol N k).re * ‖ZMod.dft x k‖ ^ 2) := by
      have h := congrArg Complex.re (laplacian_readout_fourier N a x)
      simpa only [ArithmeticCyclicFourier.cyclicSymbol_eq_real, hc,
        Complex.re_sum, Complex.mul_re, Complex.ofReal_re,
        Complex.ofReal_im, zero_mul, mul_zero, sub_zero, mul_assoc] using h
    _ = _ := by
      rw [← Finset.mul_sum]
      ring

/-- Every pointwise lower bound gives an exact Fourier-energy lower bound.
Neither constant conductances nor a mean-zero restriction is imposed on x. -/
theorem conductance_floor_fourier (a : ZMod N → ℝ) (c : ℝ)
    (ha : ∀ i, c ≤ a i) (x : ZMod N → ℂ) :
    (c / (N : ℝ)) * ∑ k,
        (ArithmeticCyclicFourier.cyclicSymbol N k).re * ‖ZMod.dft x k‖ ^ 2 ≤
      (complexReadout x (fun p => laplacian N a p.1 p.2)).re := by
  have hg : ArithmeticCyclicPoincare.gradientEnergy N x =
      (N : ℝ)⁻¹ * ∑ k,
        (ArithmeticCyclicFourier.cyclicSymbol N k).re * ‖ZMod.dft x k‖ ^ 2 := by
    have h := laplacian_energy_fourier N 1 x
    simpa [laplacian_energy, ArithmeticCyclicPoincare.gradientEnergy, one_div] using h
  have h := ArithmeticCyclicPoincare.conductance_floor_energy N a c ha x
  simpa only [hg, div_eq_mul_inv, mul_assoc] using h

/-- The entire original arbitrary-label arithmetic family with its actual floor premise. -/
theorem arithmetic_energy_fourier_lower_bound (m : ZMod N → ℕ)
    (hm : ∀ i, 2 ≤ m i) (x : ZMod N → ℂ) :
    (Real.log 2 / (N : ℝ)) * ∑ k,
        (ArithmeticCyclicFourier.cyclicSymbol N k).re * ‖ZMod.dft x k‖ ^ 2 ≤
      (complexReadout x (fun p => arithmeticLaplacian N m p.1 p.2)).re := by
  exact conductance_floor_fourier N (arithmeticConductance N m) (Real.log 2)
    (fun i => ArithmeticCyclicPoincare.arithmeticConductance_log_two_floor N m i (hm i)) x

theorem arithmetic_energy_sine_lower_bound (m : ZMod N → ℕ)
    (hm : ∀ i, 2 ≤ m i) (x : ZMod N → ℂ) :
    (Real.log 2 / (N : ℝ)) * ∑ k : ZMod N,
        (4 * Real.sin (Real.pi * ((k.val : ℝ) / (N : ℝ))) ^ 2) *
          ‖ZMod.dft x k‖ ^ 2 ≤
      (complexReadout x (fun p => arithmeticLaplacian N m p.1 p.2)).re := by
  have hs (k : ZMod N) : (ArithmeticCyclicFourier.cyclicSymbol N k).re =
      4 * Real.sin (Real.pi * ((k.val : ℝ) / (N : ℝ))) ^ 2 := by
    rw [ArithmeticCyclicFourier.cyclicSymbol_eq_sine, Complex.ofReal_re]
  simpa only [hs] using arithmetic_energy_fourier_lower_bound N m hm x

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicFourierEnergy
