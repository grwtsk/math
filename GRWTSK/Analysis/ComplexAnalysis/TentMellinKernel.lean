/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Real.TentWeight
import GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false

/-!
# Mellin transform and inverse-square height decay of a normalized tent

The kernel is defined using integrals, not totalized division at z=0 or z=-1.
The quotient formula is proved only off those two parameters. The height bound
keeps the true horizontal bound beta; beta=1/2 is never assumed.

The source is the classical first-Riesz second-difference kernel, normalized
by the radius. See Dudek--Grenie--Molteni, arXiv:1503.05403v2, pp. 2--3.
Only the kernel algebra/analysis is supplied here, not Perron inversion, the
complete zeta explicit formula, a zero-counting theorem or a zero-list audit.
Source draft for #189/#261; NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel

open MeasureTheory Set
open scoped Interval BigOperators
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.Real.TentWeight

noncomputable section

/-- The exact affine combination of four independently defined integrals. -/
def tentKernel (x h : ℝ) (z : ℂ) : ℂ :=
  (kernel (x - h) x (z + 1) - ((x - h : ℝ) : ℂ) * kernel (x - h) x z +
    ((x + h : ℝ) : ℂ) * kernel x (x + h) z - kernel x (x + h) (z + 1)) / (h : ℂ)

theorem density_add_one {t : ℝ} (ht : 0 < t) (z : ℂ) :
    density (z + 1) t = (t : ℂ) * density z t := by
  have ht0 : (t : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt ht
  have hleft : density (z + 1) t = logPower t z := by
    simp [density, logPower]
  rw [hleft, density_eq_logPower_div ht]
  field_simp [ht0]

theorem logPower_add_one {t : ℝ} (ht : 0 < t) (z : ℂ) :
    logPower t (z + 1) = (t : ℂ) * logPower t z := by
  unfold logPower
  rw [add_mul, one_mul, Complex.exp_add, exp_real_log ht, mul_comm]

/-- The defined kernel really integrates the same tent on its two affine pieces. -/
theorem tentKernel_eq_split_integral (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (z : ℂ) :
    tentKernel x h z =
      (∫ t in (x - h)..x, (tent x h t : ℂ) * density z t) +
      (∫ t in x..(x + h), (tent x h t : ℂ) * density z t) := by
  have hx : 1 < x := by linarith
  have hab : x - h ≤ x := by linarith
  have hbc : x ≤ x + h := by linarith
  have hleft :
      (∫ t in (x - h)..x, (tent x h t : ℂ) * density z t) =
        ((h : ℂ)⁻¹) *
          (kernel (x - h) x (z + 1) - ((x - h : ℝ) : ℂ) * kernel (x - h) x z) := by
    calc
      _ = ∫ t in (x - h)..x, ((h : ℂ)⁻¹) *
          (density (z + 1) t - ((x - h : ℝ) : ℂ) * density z t) := by
        apply intervalIntegral.integral_congr
        intro t ht
        dsimp only
        have ht' : t ∈ Set.Icc (x - h) x := (uIcc_of_le hab) ▸ ht
        have ht0 : 0 < t := (lt_trans zero_lt_one ha).trans_le ht'.1
        rw [tent_on_left x h t hh ht'.1 ht'.2, density_add_one ht0]
        push_cast
        field_simp [ne_of_gt hh]
      _ = _ := by
        rw [intervalIntegral.integral_const_mul,
          intervalIntegral.integral_sub (density_intervalIntegrable ha hab (z + 1))
            ((density_intervalIntegrable ha hab z).const_mul ((x - h : ℝ) : ℂ)),
          intervalIntegral.integral_const_mul]
        rfl
  have hright :
      (∫ t in x..(x + h), (tent x h t : ℂ) * density z t) =
        ((h : ℂ)⁻¹) *
          (((x + h : ℝ) : ℂ) * kernel x (x + h) z - kernel x (x + h) (z + 1)) := by
    calc
      _ = ∫ t in x..(x + h), ((h : ℂ)⁻¹) *
          (((x + h : ℝ) : ℂ) * density z t - density (z + 1) t) := by
        apply intervalIntegral.integral_congr
        intro t ht
        dsimp only
        have ht' : t ∈ Set.Icc x (x + h) := (uIcc_of_le hbc) ▸ ht
        have ht0 : 0 < t := (lt_trans zero_lt_one hx).trans_le ht'.1
        rw [tent_on_right x h t hh ht'.1 ht'.2, density_add_one ht0]
        push_cast
        field_simp [ne_of_gt hh]
      _ = _ := by
        rw [intervalIntegral.integral_const_mul,
          intervalIntegral.integral_sub
            ((density_intervalIntegrable hx hbc z).const_mul ((x + h : ℝ) : ℂ))
            (density_intervalIntegrable hx hbc (z + 1)),
          intervalIntegral.integral_const_mul]
        rfl
  rw [hleft, hright]
  unfold tentKernel
  ring

/-- The two apparent parameter poles are excluded only in this quotient representation. -/
theorem tentKernel_eq_quotient (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (z : ℂ) (hz : z ≠ 0) (hz1 : z + 1 ≠ 0) :
    tentKernel x h z =
      (logPower (x + h) (z + 1) - 2 * logPower x (z + 1) +
        logPower (x - h) (z + 1)) / ((h : ℂ) * z * (z + 1)) := by
  have hx : 1 < x := by linarith
  have hab : x - h ≤ x := by linarith
  have hbc : x ≤ x + h := by linarith
  have hapos : 0 < x - h := by linarith
  have hxpos : 0 < x := by linarith
  have hbpos : 0 < x + h := by linarith
  have hh0 : (h : ℂ) ≠ 0 := by exact_mod_cast ne_of_gt hh
  rw [tentKernel, kernel_eq_quotient ha hab hz1, kernel_eq_quotient ha hab hz,
    kernel_eq_quotient hx hbc hz, kernel_eq_quotient hx hbc hz1]
  simp only [logPower_add_one hapos, logPower_add_one hxpos, logPower_add_one hbpos,
    Complex.ofReal_sub, Complex.ofReal_add]
  field_simp [hz, hz1, hh0]
  ring

/-- No critical-line assumption: every endpoint retains beta+1 growth. -/
theorem norm_tent_numerator_le (x h β : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hβ : 0 ≤ β) (z : ℂ) (hz : z.re ≤ β) :
    ‖logPower (x + h) (z + 1) - 2 * logPower x (z + 1) +
      logPower (x - h) (z + 1)‖ ≤ 4 * Real.exp ((β + 1) * Real.log (x + h)) := by
  have hbound : ∀ t : ℝ, 1 < t → t ≤ x + h →
      ‖logPower t (z + 1)‖ ≤ Real.exp ((β + 1) * Real.log (x + h)) := by
    intro t ht htb
    have hz' : (z + 1).re ≤ β + 1 := by simpa using add_le_add_right hz 1
    apply (norm_logPower_le ht.le hz').trans
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_left
      (Real.log_le_log (lt_trans zero_lt_one ht) htb) (by linarith)
  have hb := hbound (x + h) (by linarith) le_rfl
  have hx := hbound x (by linarith) (by linarith)
  have hl := hbound (x - h) ha (by linarith)
  have htri := (norm_add_le
    (logPower (x + h) (z + 1) - 2 * logPower x (z + 1))
    (logPower (x - h) (z + 1))).trans
      (add_le_add (norm_sub_le
        (logPower (x + h) (z + 1)) (2 * logPower x (z + 1))) (le_refl _))
  rw [norm_mul] at htri
  norm_num only [Complex.norm_ofNat] at htri
  linarith

/-- Inverse-square height decay is derived, not supplied as an error-budget field.
It applies to off-line parameters as long as their true real parts obey beta. -/
theorem norm_tentKernel_le_inverse_height_sq (x h β : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hβ : 0 ≤ β)
    (z : ℂ) (hz : z.re ≤ β) (hγ : z.im ≠ 0) :
    ‖tentKernel x h z‖ ≤
      (4 * Real.exp ((β + 1) * Real.log (x + h))) / (h * z.im ^ 2) := by
  have hz0 : z ≠ 0 := by intro he; apply hγ; simp [he]
  have hz1 : z + 1 ≠ 0 := by
    intro he
    have him := congrArg Complex.im he
    apply hγ
    simpa using him
  have hden : 0 < h * ‖z‖ * ‖z + 1‖ :=
    mul_pos (mul_pos hh (norm_pos_iff.mpr hz0)) (norm_pos_iff.mpr hz1)
  have hsmall : 0 < h * z.im ^ 2 := mul_pos hh (sq_pos_of_ne_zero hγ)
  have hnormprod : z.im ^ 2 ≤ ‖z‖ * ‖z + 1‖ := by
    have hzN := Complex.abs_im_le_norm z
    have hz1N : |z.im| ≤ ‖z + 1‖ := by
      simpa using Complex.abs_im_le_norm (z + 1)
    have hp := mul_le_mul hzN hz1N (abs_nonneg z.im) (norm_nonneg z)
    simpa only [← sq, sq_abs] using hp
  have hdenle : h * z.im ^ 2 ≤ h * ‖z‖ * ‖z + 1‖ := by
    simpa only [mul_assoc] using mul_le_mul_of_nonneg_left hnormprod hh.le
  rw [tentKernel_eq_quotient x h hh ha z hz0 hz1, norm_div, norm_mul, norm_mul,
    Complex.norm_of_nonneg hh.le]
  apply (div_le_div_iff₀ hden hsmall).2
  calc
    _ ≤ (4 * Real.exp ((β + 1) * Real.log (x + h))) * (h * z.im ^ 2) :=
      mul_le_mul_of_nonneg_right (norm_tent_numerator_le x h β hh ha hβ z hz) hsmall.le
    _ ≤ _ := mul_le_mul_of_nonneg_left hdenle (by positivity)

/-- The pole at parameter one yields the radius, not the diameter. -/
theorem tentKernel_one (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    tentKernel x h 1 = (h : ℂ) := by
  have hpow : ∀ t : ℝ, 0 < t → logPower t (2 : ℂ) = (t : ℂ) ^ 2 := by
    intro t ht
    have h₁ : logPower t (1 : ℂ) = (t : ℂ) := by
      simpa [logPower] using exp_real_log ht
    have h₂ := logPower_add_one ht (1 : ℂ)
    norm_num at h₂
    rw [h₂, h₁]
    ring
  rw [tentKernel_eq_quotient x h hh ha 1 (by norm_num) (by norm_num)]
  norm_num only [one_add_one_eq_two, mul_one]
  rw [hpow (x + h) (by linarith), hpow x (by linarith), hpow (x - h) (by linarith)]
  push_cast
  field_simp [ne_of_gt hh]
  ring

/-- Finite multiplicity-weighted tails inherit inverse-square height decay.
The finite family is not a complete zero divisor; completeness and an infinite
inverse-height-square sum estimate remain separate analytic obligations. -/
theorem finite_weighted_tail_bound (x h β : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hβ : 0 ≤ β)
    {ι : Type*} (S : Finset ι) (m : ι → ℕ) (ρ : ι → ℂ)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β)
    (hγ : ∀ j ∈ S, (ρ j).im ≠ 0) :
    ‖∑ j ∈ S, (m j : ℂ) * tentKernel x h (ρ j)‖ ≤
      (4 * Real.exp ((β + 1) * Real.log (x + h)) / h) *
        ∑ j ∈ S, (m j : ℝ) / (ρ j).im ^ 2 := by
  calc
    _ ≤ ∑ j ∈ S, ‖(m j : ℂ) * tentKernel x h (ρ j)‖ := norm_sum_le _ _
    _ ≤ ∑ j ∈ S,
        (4 * Real.exp ((β + 1) * Real.log (x + h)) / h) *
          ((m j : ℝ) / (ρ j).im ^ 2) := by
      apply Finset.sum_le_sum
      intro j hj
      have hb := mul_le_mul_of_nonneg_left
        (norm_tentKernel_le_inverse_height_sq x h β hh ha hβ
          (ρ j) (hρ j hj) (hγ j hj))
        (Nat.cast_nonneg (m j) : (0 : ℝ) ≤ m j)
      calc
        _ ≤ (m j : ℝ) *
            (4 * Real.exp ((β + 1) * Real.log (x + h)) / (h * (ρ j).im ^ 2)) := by
          simpa [norm_mul] using hb
        _ = _ := by ring
    _ = _ := by rw [Finset.mul_sum]


end
end GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
