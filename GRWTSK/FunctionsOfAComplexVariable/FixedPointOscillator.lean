/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Tactic

/-!
# Accumulated errors of a fixed-point complex rotation

A unit complex multiplication preserves distance. The difference
between a decoded integer step and the literal rotation is the sum
of its local integer rounding error and the error in its one shared
complex multiplier. The bound grows linearly in the mode number.
A packed checker can supply the integer residual premises independently
of the analytic source for the multiplier.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Complex.FixedPointOscillator

/-- The exact complex state represented by two integer digits. -/
def decode (scale x y : ℤ) : ℂ :=
  ⟨(x:ℝ)/(scale:ℝ), (y:ℝ)/(scale:ℝ)⟩

/-- Real numerator of the local fixed-point rotation residual. -/
def residualRe (C c s x y X : ℤ) : ℤ := C*X-(c*x-s*y)

/-- Imaginary numerator of the local fixed-point rotation residual. -/
def residualIm (C c s x y Y : ℤ) : ℤ := C*Y-(s*x+c*y)

theorem round_error {B C r c s x y X Y : ℤ} (hB : 0 < B) (hC : 0 < C)
    (hRe : |residualRe C c s x y X| ≤ r)
    (hIm : |residualIm C c s x y Y| ≤ r) :
    ‖decode B X Y - decode C c s * decode B x y‖ ≤ 2*(r:ℝ)/((B:ℝ)*(C:ℝ)) := by
  have b : (0:ℝ) < (B:ℝ) := by exact_mod_cast hB
  have c₀ : (0:ℝ) < (C:ℝ) := by exact_mod_cast hC
  have hD := mul_pos b c₀
  have hre : (decode B X Y - decode C c s * decode B x y).re =
      (residualRe C c s x y X:ℝ)/((B:ℝ)*(C:ℝ)) := by
    simp only [decode, Complex.sub_re, Complex.mul_re, residualRe, Int.cast_sub, Int.cast_mul]
    field_simp [b.ne',c₀.ne']
  have him : (decode B X Y - decode C c s * decode B x y).im =
      (residualIm C c s x y Y:ℝ)/((B:ℝ)*(C:ℝ)) := by
    simp only [decode, Complex.sub_im, Complex.mul_im, residualIm, Int.cast_sub, Int.cast_mul,
      Int.cast_add]
    field_simp [b.ne',c₀.ne']
    ring
  refine (Complex.norm_le_abs_re_add_abs_im _).trans ?_
  rw [hre,him,abs_div,abs_div,abs_of_pos hD, ← add_div]
  exact div_le_div_of_nonneg_right
    (by
      have h₁ : |(residualRe C c s x y X:ℝ)| ≤ (r:ℝ) := by exact_mod_cast hRe
      have h₂ : |(residualIm C c s x y Y:ℝ)| ≤ (r:ℝ) := by exact_mod_cast hIm
      linarith only [h₁,h₂]) hD.le

/-- Unit multiplication propagates exact local residuals with a linear budget. -/
theorem power_error {a : ℕ → ℂ} {ξ : ℂ} {ε δ : ℝ} (hUnit : ‖ξ‖ = 1)
    (hInit : ‖a 0-1‖ ≤ ε) (hStep : ∀ k, ‖a (k+1)-ξ*a k‖ ≤ δ) (n : ℕ) :
    ‖a n-ξ^n‖ ≤ ε+(n:ℝ)*δ := by
  induction n with
  | zero => simpa using hInit
  | succ n ih =>
      rw [show a (n+1)-ξ^(n+1) = (a (n+1)-ξ*a n) + ξ*(a n-ξ^n) by rw [pow_succ']; ring]
      refine (norm_add_le _ _).trans ?_
      rw [norm_mul,hUnit,one_mul]
      have h := add_le_add (hStep n) ih
      push_cast
      linarith only [h]

/-- A single approximate coefficient and per-step rounding suffice
to bound the literal unit rotation. -/
theorem power_error_of_rounded {a : ℕ → ℂ} {ξ w : ℂ} {ε ρ ω R : ℝ}
    (hUnit : ‖ξ‖ = 1) (hInit : ‖a 0-1‖ ≤ ε) (hCoeff : ‖w-ξ‖ ≤ ω)
    (hMagnitude : ∀ k, ‖a k‖ ≤ R) (hRound : ∀ k, ‖a (k+1)-w*a k‖ ≤ ρ) (n : ℕ) :
    ‖a n-ξ^n‖ ≤ ε+(n:ℝ)*(ρ+ω*R) := by
  apply power_error hUnit hInit _ n
  intro k
  rw [show a (k+1)-ξ*a k = (a (k+1)-w*a k)+(w-ξ)*a k by ring]
  refine (norm_add_le _ _).trans ?_
  rw [norm_mul]
  exact add_le_add (hRound k)
    (mul_le_mul hCoeff (hMagnitude k) (norm_nonneg _) ((norm_nonneg _).trans hCoeff))

/-- Convert a certified integer oscillator trace to literal cosine and sine observations. -/
theorem trig_error {B C r c s : ℤ} {x y : ℕ → ℤ} {θ ε ω R : ℝ}
    (hB : 0 < B) (hC : 0 < C)
    (hInit : ‖decode B (x 0) (y 0)-1‖ ≤ ε)
    (hCoeff : ‖decode C c s-Complex.exp ((θ:ℂ)*Complex.I)‖ ≤ ω)
    (hMagnitude : ∀ k, ‖decode B (x k) (y k)‖ ≤ R)
    (hRe : ∀ k, |residualRe C c s (x k) (y k) (x (k+1))| ≤ r)
    (hIm : ∀ k, |residualIm C c s (x k) (y k) (y (k+1))| ≤ r) (n : ℕ) :
    let E := ε+(n:ℝ)*(2*(r:ℝ)/((B:ℝ)*(C:ℝ))+ω*R)
    |(x n:ℝ)/(B:ℝ)-Real.cos ((n:ℝ)*θ)| ≤ E ∧
      |(y n:ℝ)/(B:ℝ)-Real.sin ((n:ℝ)*θ)| ≤ E := by
  have h := power_error_of_rounded (Complex.norm_exp_ofReal_mul_I θ) hInit hCoeff hMagnitude
    (fun k => round_error hB hC (hRe k) (hIm k)) n
  have hpow : Complex.exp ((θ:ℂ)*Complex.I)^n =
      Complex.exp ((((n:ℝ)*θ:ℝ):ℂ)*Complex.I) := by
    rw [← Complex.exp_nat_mul]
    push_cast
    ring_nf
  rw [hpow] at h
  exact ⟨by simpa only [decode, Complex.sub_re, Complex.exp_ofReal_mul_I_re] using
    (Complex.abs_re_le_norm _).trans h,
    by simpa only [decode, Complex.sub_im, Complex.exp_ofReal_mul_I_im] using
      (Complex.abs_im_le_norm _).trans h⟩

end GRWTSK.Analysis.Complex.FixedPointOscillator
