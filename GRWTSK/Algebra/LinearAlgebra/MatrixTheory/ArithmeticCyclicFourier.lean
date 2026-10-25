/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicLaplacian
import Mathlib.Analysis.Fourier.ZMod

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

/-! # Exact finite Fourier coordinates for the cyclic Laplacian

These are the actual additive characters of ZMod N and Mathlib's invertible
discrete Fourier transform, with counting-measure normalization. Every complex
vector is reconstructed; no selected-mode restriction replaces the full space.
Constant real conductance is an explicit premise of diagonalization. The
arithmetic application allows arbitrary positive prime-power exponents at the
sites of a single prime, where the actual conductance is constant.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
The exact mode values do not yet prove the minimum over nonzero frequencies,
Parseval's identity, the sharp mean-zero inequality for variable conductances,
an operator spectrum API, or any infinite-volume/physical identification. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicFourier

open ArithmeticCyclicHamiltonian ArithmeticCyclicLaplacian

variable (N : ℕ) [hN : NeZero N]
include hN

def mode (k i : ZMod N) : ℂ := ZMod.stdAddChar (i * k)

def cyclicSymbol (k : ZMod N) : ℂ :=
  2 - ZMod.stdAddChar k - ZMod.stdAddChar (-k)

theorem mode_at_zero (k : ZMod N) : mode N k 0 = 1 := by
  simp [mode]

theorem mode_ne_zero (k : ZMod N) : mode N k ≠ 0 := by
  intro h
  have hz := congrFun h 0
  simpa [mode] using hz

theorem mode_forward (k i : ZMod N) :
    mode N k (i + 1) = ZMod.stdAddChar k * mode N k i := by
  simp only [mode, add_mul, one_mul, AddChar.map_add_eq_mul]
  ring

theorem mode_backward (k i : ZMod N) :
    mode N k (i - 1) = ZMod.stdAddChar (-k) * mode N k i := by
  have hi : (i - 1) * k = i * k + -k := by ring
  simp only [mode, hi, AddChar.map_add_eq_mul]
  ring

theorem mode_sum_zero (k : ZMod N) (hk : k ≠ 0) : ∑ i, mode N k i = 0 := by
  simpa only [mode, hk, if_false] using
    AddChar.sum_mulShift k (ZMod.isPrimitive_stdAddChar N)

theorem character_neg_conj (k : ZMod N) :
    ZMod.stdAddChar (-k) = conj (ZMod.stdAddChar k) := by
  rw [ZMod.stdAddChar_apply, AddChar.map_neg_eq_inv, Circle.coe_inv_eq_conj,
    ZMod.stdAddChar_apply]

theorem cyclicSymbol_eq_real (k : ZMod N) :
    cyclicSymbol N k = ((2 - 2 * (ZMod.stdAddChar k).re : ℝ) : ℂ) := by
  rw [cyclicSymbol, character_neg_conj]
  apply Complex.ext <;> simp <;> ring

theorem cyclicSymbol_re_nonnegative (k : ZMod N) : 0 ≤ (cyclicSymbol N k).re := by
  have hn : ‖ZMod.stdAddChar k‖ = 1 := by
    rw [ZMod.stdAddChar_apply, Circle.norm_coe]
  have hr := Complex.re_le_norm (ZMod.stdAddChar k)
  rw [cyclicSymbol_eq_real, Complex.ofReal_re]
  linarith

theorem cyclicSymbol_eq_sine (k : ZMod N) :
    cyclicSymbol N k =
      ((4 * Real.sin (Real.pi * ((k.val : ℝ) / (N : ℝ))) ^ 2 : ℝ) : ℂ) := by
  have hr : (ZMod.stdAddChar k).re =
      Real.cos (2 * Real.pi * ((k.val : ℝ) / (N : ℝ))) := by
    rw [ZMod.stdAddChar_apply, ZMod.toCircle_eq_circleExp, Circle.coe_exp,
      Complex.exp_mul_I]
    simp
  rw [cyclicSymbol_eq_real, hr]
  congr 1
  rw [show 2 * Real.pi * ((k.val : ℝ) / (N : ℝ)) =
    2 * (Real.pi * ((k.val : ℝ) / (N : ℝ))) by ring,
    Real.cos_two_mul_eq_one_sub]
  ring

theorem laplacian_mode (a : ℝ) (k : ZMod N) :
    (laplacian N (fun _ => a)).mulVec (mode N k) =
      ((a : ℂ) * cyclicSymbol N k) • mode N k := by
  funext i
  simp only [laplacian_mulVec, mode_forward, mode_backward, Pi.smul_apply,
    smul_eq_mul, cyclicSymbol]
  ring

theorem dft_forward (x : ZMod N → ℂ) (k : ZMod N) :
    ZMod.dft (fun i => x (i + 1)) k =
      ZMod.stdAddChar k * ZMod.dft x k := by
  simp only [ZMod.dft_apply, smul_eq_mul, Finset.mul_sum]
  refine Fintype.sum_equiv (Equiv.addRight (1 : ZMod N)) _ _ ?_
  intro i
  change ZMod.stdAddChar (-(i * k)) * x (i + 1) =
    ZMod.stdAddChar k * (ZMod.stdAddChar (-((i + 1) * k)) * x (i + 1))
  rw [show -(i * k) = k + -((i + 1) * k) by ring, AddChar.map_add_eq_mul]
  ring

theorem dft_backward (x : ZMod N → ℂ) (k : ZMod N) :
    ZMod.dft (fun i => x (i - 1)) k =
      ZMod.stdAddChar (-k) * ZMod.dft x k := by
  simp only [ZMod.dft_apply, smul_eq_mul, Finset.mul_sum]
  refine Fintype.sum_equiv (Equiv.addRight (-1 : ZMod N)) _ _ ?_
  intro i
  change ZMod.stdAddChar (-(i * k)) * x (i - 1) =
    ZMod.stdAddChar (-k) * (ZMod.stdAddChar (-((i - 1) * k)) * x (i - 1))
  rw [show -(i * k) = -k + -((i - 1) * k) by ring, AddChar.map_add_eq_mul]
  ring

theorem dft_mode (k j : ZMod N) :
    ZMod.dft (mode N k) j = if j = k then (N : ℂ) else 0 := by
  have hs := AddChar.sum_mulShift (k - j) (ZMod.isPrimitive_stdAddChar N)
  have heq : (k - j = 0) ↔ j = k := by
    rw [sub_eq_zero, eq_comm]
  rw [ZMod.dft_apply]
  simp only [mode, smul_eq_mul]
  calc
    _ = ∑ i : ZMod N, ZMod.stdAddChar (i * (k - j)) := by
      apply Finset.sum_congr rfl
      intro i _hi
      rw [← AddChar.map_add_eq_mul]
      congr 1
      ring
    _ = _ := by simpa only [heq, ZMod.card] using hs

/-- Complete Fourier multiplier identity, for every complex vector. -/
theorem dft_laplacian (a : ℝ) (x : ZMod N → ℂ) (k : ZMod N) :
    ZMod.dft ((laplacian N (fun _ => a)).mulVec x) k =
      ((a : ℂ) * cyclicSymbol N k) * ZMod.dft x k := by
  have hvec : (laplacian N (fun _ => a)).mulVec x =
      (a : ℂ) • ((2 : ℂ) • x - (fun i => x (i + 1)) - (fun i => x (i - 1))) := by
    funext i
    simp only [laplacian_mulVec, Pi.smul_apply, Pi.sub_apply, smul_eq_mul]
    ring
  rw [hvec, map_smul, map_sub, map_sub, map_smul]
  simp only [Pi.smul_apply, Pi.sub_apply, smul_eq_mul]
  rw [dft_forward, dft_backward, cyclicSymbol]
  ring

/-- The inverse has exactly the counting-measure factor 1/N. -/
theorem fourier_reconstruction (x : ZMod N → ℂ) (i : ZMod N) :
    x i = (N : ℂ)⁻¹ * ∑ k, mode N k i * ZMod.dft x k := by
  have h := congrFun ((ZMod.dft (N := N) (E := ℂ)).symm_apply_apply x) i
  rw [ZMod.invDFT_apply] at h
  simpa only [mode, smul_eq_mul, mul_comm] using h.symm

theorem mean_zero_iff_dft_zero (x : ZMod N → ℂ) :
    (∑ i, x i) = 0 ↔ ZMod.dft x 0 = 0 := by
  rw [ZMod.dft_apply_zero]

/-- Exact eigen-equation in all Fourier coordinates; no spectral-support truncation. -/
theorem eigen_equation_iff (a : ℝ) (μ : ℂ) (x : ZMod N → ℂ) :
    (laplacian N (fun _ => a)).mulVec x = μ • x ↔
      ∀ k, ((a : ℂ) * cyclicSymbol N k - μ) * ZMod.dft x k = 0 := by
  constructor
  · intro h k
    have hf := congrFun (congrArg (ZMod.dft (N := N) (E := ℂ)) h) k
    rw [dft_laplacian, map_smul] at hf
    change ((a : ℂ) * cyclicSymbol N k) * ZMod.dft x k = μ * ZMod.dft x k at hf
    rw [sub_mul, hf, sub_self]
  · intro h
    apply (ZMod.dft (N := N) (E := ℂ)).injective
    funext k
    rw [dft_laplacian, map_smul]
    change ((a : ℂ) * cyclicSymbol N k) * ZMod.dft x k = μ * ZMod.dft x k
    exact sub_eq_zero.mp (by simpa only [sub_mul] using h k)

/-- The same arithmetic family as before, with an explicit single-prime specialization.
Positive exponents may vary arbitrarily between sites. -/
theorem prime_power_conductance (p : ℕ) (hp : p.Prime) (e : ZMod N → ℕ)
    (he : ∀ i, 0 < e i) (i : ZMod N) :
    arithmeticConductance N (fun j => p ^ e j) i = 2 * Real.log p := by
  rw [arithmeticConductance,
    ArithmeticFeatureGram.vonMangoldt_prime_power hp (he i),
    ArithmeticFeatureGram.radical_prime_power hp (he i)]
  ring

theorem prime_power_arithmetic_dft (p : ℕ) (hp : p.Prime) (e : ZMod N → ℕ)
    (he : ∀ i, 0 < e i) (x : ZMod N → ℂ) (k : ZMod N) :
    ZMod.dft ((arithmeticLaplacian N (fun j => p ^ e j)).mulVec x) k =
      (((2 * Real.log p : ℝ) : ℂ) * cyclicSymbol N k) * ZMod.dft x k := by
  have ha : arithmeticConductance N (fun j => p ^ e j) = fun _ => 2 * Real.log p := by
    funext i
    exact prime_power_conductance N p hp e he i
  change ZMod.dft ((laplacian N (arithmeticConductance N (fun j => p ^ e j))).mulVec x) k = _
  rw [ha]
  exact dft_laplacian N (2 * Real.log p) x k

theorem prime_power_arithmetic_mode (p : ℕ) (hp : p.Prime) (e : ZMod N → ℕ)
    (he : ∀ i, 0 < e i) (k : ZMod N) :
    (arithmeticLaplacian N (fun j => p ^ e j)).mulVec (mode N k) =
      (((2 * Real.log p : ℝ) : ℂ) * cyclicSymbol N k) • mode N k := by
  have ha : arithmeticConductance N (fun j => p ^ e j) = fun _ => 2 * Real.log p := by
    funext i
    exact prime_power_conductance N p hp e he i
  change (laplacian N (arithmeticConductance N (fun j => p ^ e j))).mulVec (mode N k) = _
  rw [ha]
  exact laplacian_mode N (2 * Real.log p) k

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicFourier
