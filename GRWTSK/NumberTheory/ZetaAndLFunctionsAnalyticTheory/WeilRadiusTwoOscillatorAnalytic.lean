/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionsOfAComplexVariable.FixedPointOscillator
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeDyadicRotation

/-!
# Literal radius-two oscillator coefficients and block errors

The one-mode phase uses the already enclosed literal prime logarithm.
Its rational Taylor observations supply one shared pair of integer
coefficients per prime power. A block starts at an independently
enclosed exact mode. The checked integer local residuals then yield
the literal sine and cosine at any mode in the block.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoOscillatorAnalytic

open GRWTSK.Analysis.Complex.FixedPointOscillator
open OddOutputTrace RadiusTwoPrimeObservations RadiusTwoPrimeSeedTrig
open RadiusTwoPrimeDyadicRotation

/-- The grid used for the common coefficients and the integer states. -/
def scale80 : ℤ := 2^80

/-- The literal phase per unit increase of the radius-two mode. -/
def angle (q : ℕ) : ℝ := Real.pi*(Real.log q/2)

theorem angle_mode (q n : ℕ) :
    (n:ℝ)*angle q = frequency 2 n*Real.log q := by
  unfold angle frequency
  ring

private def floor80 (x : ℚ) : ℤ := ⌊(2:ℚ)^80*x⌋

private theorem floor80_error (x : ℚ) :
    |(floor80 x:ℝ)/(scale80:ℝ)-(x:ℝ)| ≤ 1/(2:ℝ)^80 := by
  let y := (2:ℚ)^80*x
  have hLo := (Rat.cast_le (K := ℝ)).2 (Int.floor_le y)
  have hHi := (Rat.cast_lt (K := ℝ)).2 (Int.lt_floor_add_one y)
  have hy : (y:ℝ) = (2:ℝ)^80*(x:ℝ) := by push_cast [y]; rfl
  simp only [Rat.cast_intCast, Rat.cast_add, Rat.cast_one, hy] at hLo hHi
  have hs : (0:ℝ) < (2:ℝ)^80 := by positivity
  have hS : (scale80:ℝ) = (2:ℝ)^80 := by norm_num [scale80]
  rw [hS]
  change |((⌊y⌋:ℤ):ℝ)/(2:ℝ)^80-(x:ℝ)| ≤ _
  have hlo : ((⌊y⌋:ℤ):ℝ)/(2:ℝ)^80 ≤ x := by
    exact (div_le_iff₀ hs).2 (by rw [mul_comm (x:ℝ)]; exact hLo)
  have hhi : (x:ℝ) < (((⌊y⌋:ℤ):ℝ)+1)/(2:ℝ)^80 := by
    exact (lt_div_iff₀ hs).2 (by rw [mul_comm (x:ℝ)]; exact hHi)
  rw [add_div] at hhi
  rw [abs_le]
  exact ⟨by linarith only [hhi], by linarith only [hlo,show (0:ℝ) ≤ 1/(2:ℝ)^80 by positivity]⟩

/-- Real and imaginary digits of the common source coefficient. -/
def coefficient (q : ℕ) : ℤ × ℤ :=
  let p := primePhaseCenter q 1
  (floor80 (UnitWindowPrimeTrig.cosHat p), floor80 (UnitWindowPrimeTrig.sinHat p))

private theorem phase_error {q : ℕ} (hq₀ : 0 < q) (hq : q ≤ 54) :
    |Real.log q/2-(primePhaseCenter q 1:ℝ)| ≤ (1/2)*(1/10^17) := by
  have h := abs_log_sub_logHat_le hq₀ hq
  change |Real.log q-(logHat q:ℝ)| ≤ ((1/10^17:ℚ):ℝ) at h
  push_cast at h
  have hp : (primePhaseCenter q 1:ℝ) = 1/2*(logHat q:ℝ) := by norm_num [primePhaseCenter]
  rw [hp, show Real.log q/2-1/2*(logHat q:ℝ) = (Real.log q-(logHat q:ℝ))/2 by ring,
    abs_div, abs_of_pos (by norm_num : (0:ℝ) < 2)]
  exact (div_le_div_of_nonneg_right h (by norm_num)).trans_eq (by ring)

/-- The exact rounded coefficient is within the fixed complex norm
budget of the literal radius-two unit rotation. -/
theorem coefficient_error {q : ℕ} (hq₀ : 0 < q) (hq : q ≤ 54) :
    ‖decode scale80 (coefficient q).1 (coefficient q).2 -
      Complex.exp ((angle q:ℂ)*Complex.I)‖ ≤ 3/10^14 := by
  let p := primePhaseCenter q 1
  have h := UnitWindowPrimeTrig.trig_observation p (phase_error hq₀ hq)
  have hSin := h.1
  have hCos := h.2
  change |Real.sin (angle q)-(UnitWindowPrimeTrig.sinHat p:ℝ)| ≤ _ at hSin
  change |Real.cos (angle q)-(UnitWindowPrimeTrig.cosHat p:ℝ)| ≤ _ at hCos
  refine (Complex.norm_le_abs_re_add_abs_im _).trans ?_
  simp only [coefficient, decode, Complex.sub_re, Complex.sub_im,
    Complex.exp_ofReal_mul_I_re, Complex.exp_ofReal_mul_I_im]
  calc
    _ ≤ (1/(2:ℝ)^80 + (4*((1/2)*(1/10^17)) + 1/10^14)) +
        (1/(2:ℝ)^80 + (4*((1/2)*(1/10^17)) + 1/10^14)) := by
      apply add_le_add
      · refine (abs_sub_le _ (UnitWindowPrimeTrig.cosHat p:ℝ) _).trans ?_
        rw [abs_sub_comm (UnitWindowPrimeTrig.cosHat p:ℝ) (Real.cos (angle q))]
        exact add_le_add (floor80_error _) hCos
      · refine (abs_sub_le _ (UnitWindowPrimeTrig.sinHat p:ℝ) _).trans ?_
        rw [abs_sub_comm (UnitWindowPrimeTrig.sinHat p:ℝ) (Real.sin (angle q))]
        exact add_le_add (floor80_error _) hSin
    _ ≤ _ := by norm_num

/-- An archived source rotation may initialize any finite block. The
coordinates are cosine first and sine second. -/
theorem initial_error (sinTable cosTable : ℤ → ℚ)
    (hTable : TableSound sinTable cosTable) {q n : ℕ}
    (hq₀ : 0 < q) (hq : q ≤ 54) (hn : n ≤ 1200000) :
    let z := dyadicRotationCenter sinTable cosTable (primePhaseCenter q n)
    ‖(⟨(z.2:ℝ),(z.1:ℝ)⟩:ℂ)-Complex.exp ((((n:ℝ)*angle q:ℝ):ℂ)*Complex.I)‖ ≤
      4/10^9 := by
  obtain ⟨hSin,hCos⟩ := primeDyadicRotation_sound sinTable cosTable hTable hq₀ hq hn
  dsimp only at hSin hCos ⊢
  refine (Complex.norm_le_abs_re_add_abs_im _).trans ?_
  simp only [Complex.sub_re,Complex.sub_im,Complex.exp_ofReal_mul_I_re,
    Complex.exp_ofReal_mul_I_im,angle_mode]
  rw [abs_sub_comm _ (Real.cos (frequency 2 n*Real.log q)),
    abs_sub_comm _ (Real.sin (frequency 2 n*Real.log q))]
  exact (add_le_add hCos hSin).trans_eq (by ring)

private theorem finite_power_error {a : ℕ → ℂ} {ξ z : ℂ} {ε δ : ℝ}
    (hUnit : ‖ξ‖ = 1) (hInit : ‖a 0-z‖ ≤ ε) (n : ℕ)
    (hStep : ∀ j < n, ‖a (j+1)-ξ*a j‖ ≤ δ) :
    ‖a n-ξ^n*z‖ ≤ ε+(n:ℝ)*δ := by
  induction n with
  | zero => simpa using hInit
  | succ n ih =>
      have hPrev := ih (fun j hj => hStep j (Nat.lt_succ_of_lt hj))
      rw [show a (n+1)-ξ^(n+1)*z =
        (a (n+1)-ξ*a n)+ξ*(a n-ξ^n*z) by rw [pow_succ']; ring]
      refine (norm_add_le _ _).trans ?_
      rw [norm_mul,hUnit,one_mul]
      have h := add_le_add (hStep n (Nat.lt_succ_self n)) hPrev
      push_cast
      linarith only [h]

private theorem decode_magnitude {x y : ℤ} (hx : |x| ≤ 2*scale80) (hy : |y| ≤ 2*scale80) :
    ‖decode scale80 x y‖ ≤ 4 := by
  have hs : (0:ℝ) < (scale80:ℝ) := by norm_num [scale80]
  have hx' : |(x:ℝ)| ≤ 2*(scale80:ℝ) := by exact_mod_cast hx
  have hy' : |(y:ℝ)| ≤ 2*(scale80:ℝ) := by exact_mod_cast hy
  refine (Complex.norm_le_abs_re_add_abs_im _).trans ?_
  simp only [decode, abs_div, abs_of_pos hs, ← add_div]
  apply (div_le_iff₀ hs).2
  linarith only [hx',hy']

/-- Exact finite-block source error on each sine and cosine coordinate.
The only state observations are the initial enclosure and integer
bounds on the digits and local residuals. -/
theorem block_error {q start k : ℕ} {x y : ℕ → ℤ}
    (hq₀ : 0 < q) (hq : q ≤ 54) (hk : k ≤ 8192)
    (hInit : ‖decode scale80 (x 0) (y 0) -
      Complex.exp ((((start:ℝ)*angle q:ℝ):ℂ)*Complex.I)‖ ≤ 4/10^9)
    (hState : ∀ j < k, |x j| ≤ 2*scale80 ∧ |y j| ≤ 2*scale80)
    (hRe : ∀ j < k, |residualRe scale80 (coefficient q).1 (coefficient q).2
      (x j) (y j) (x (j+1))| ≤ scale80)
    (hIm : ∀ j < k, |residualIm scale80 (coefficient q).1 (coefficient q).2
      (x j) (y j) (y (j+1))| ≤ scale80) :
    |(x k:ℝ)/(scale80:ℝ)-Real.cos (frequency 2 (start+k)*Real.log q)| ≤ 5/10^9 ∧
      |(y k:ℝ)/(scale80:ℝ)-Real.sin (frequency 2 (start+k)*Real.log q)| ≤ 5/10^9 := by
  let a := fun j => decode scale80 (x j) (y j)
  let w := decode scale80 (coefficient q).1 (coefficient q).2
  let ξ := Complex.exp ((angle q:ℂ)*Complex.I)
  let z := Complex.exp ((((start:ℝ)*angle q:ℝ):ℂ)*Complex.I)
  have hs : 0 < scale80 := by norm_num [scale80]
  have hsR : (0:ℝ) < (scale80:ℝ) := by exact_mod_cast hs
  have hStep (j : ℕ) (hj : j < k) :
      ‖a (j+1)-ξ*a j‖ ≤ 2/(scale80:ℝ)+(3/10^14)*4 := by
    have hLocal := round_error hs hs (hRe j hj) (hIm j hj)
    have hR : 2*(scale80:ℝ)/((scale80:ℝ)*(scale80:ℝ)) = 2/(scale80:ℝ) := by
      field_simp [hsR.ne']
    rw [hR] at hLocal
    rw [show a (j+1)-ξ*a j = (a (j+1)-w*a j)+(w-ξ)*a j by ring]
    refine (norm_add_le _ _).trans ?_
    rw [norm_mul]
    exact add_le_add hLocal
      (mul_le_mul (coefficient_error hq₀ hq) (decode_magnitude (hState j hj).1 (hState j hj).2)
        (norm_nonneg _) (by norm_num))
  have hUnit : ‖ξ‖ = 1 := Complex.norm_exp_ofReal_mul_I _
  have h := finite_power_error hUnit hInit k hStep
  have hBound : (4/10^9:ℝ)+(k:ℝ)*(2/(scale80:ℝ)+(3/10^14)*4) ≤ 5/10^9 := by
    have hkR : (k:ℝ) ≤ 8192 := by exact_mod_cast hk
    calc
      _ ≤ (4/10^9:ℝ)+8192*(2/(scale80:ℝ)+(3/10^14)*4) :=
        add_le_add le_rfl (mul_le_mul_of_nonneg_right hkR (by positivity))
      _ ≤ _ := by norm_num [scale80]
  have hPhase : ξ^k*z =
      Complex.exp (((((start+k:ℕ):ℝ)*angle q:ℝ):ℂ)*Complex.I) := by
    dsimp [ξ,z]
    rw [← Complex.exp_nat_mul, ← Complex.exp_add]
    congr 1
    push_cast
    ring
  rw [hPhase] at h
  have hE := h.trans hBound
  exact ⟨by simpa only [a,decode,Complex.sub_re,Complex.exp_ofReal_mul_I_re,angle_mode] using
    (Complex.abs_re_le_norm _).trans hE,
    by simpa only [a,decode,Complex.sub_im,Complex.exp_ofReal_mul_I_im,angle_mode] using
      (Complex.abs_im_le_norm _).trans hE⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoOscillatorAnalytic
