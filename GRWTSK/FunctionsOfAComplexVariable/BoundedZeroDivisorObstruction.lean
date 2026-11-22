/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import Mathlib.Analysis.Analytic.Order
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Bounded zero-divisor data do not determine global real-rootedness

Multiplication by `z^2 + a^2`, for real `a > R >= 0`, preserves every
zero and its analytic order in the closed radius-`R` disk, but inserts zeros
at `I*a` and `-I*a`. Evenness is preserved as well. If the original entire
function has only real zeros, the inserted zero at `I*a` was not a source zero.

Consumer: hostile control for finite spectral validation in grwtsk/math#124.
The result concerns entire functions. It does NOT construct a second zeta
function, preserve Euler products or arithmetic explicit formulas, refute RH,
or rule out a finite verification combined with a proved global tail theorem.
It also does not preserve measured nonzero function values in the disk.

The proof compares actual `analyticOrderAt`, not just an ordinate projection
or a selected list of roots. Source argument and evidence disposition are in
the accompanying provenance record. New-source elaboration, kernel replay,
axiom audit, and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.ComplexAnalysis.BoundedZeroDivisorObstruction

/-- An even polynomial with a pair of purely imaginary zeros. -/
def escapeFactor (a : ℝ) (z : ℂ) : ℂ := z ^ 2 + (a : ℂ) ^ 2

/-- Insert the escaping quadratic factor without changing the source variable. -/
def escaped (f : ℂ → ℂ) (a : ℝ) (z : ℂ) : ℂ := escapeFactor a z * f z

theorem escapeFactor_differentiable (a : ℝ) :
    Differentiable ℂ (escapeFactor a) := by
  unfold escapeFactor
  fun_prop

theorem escaped_differentiable {f : ℂ → ℂ} (hf : Differentiable ℂ f) (a : ℝ) :
    Differentiable ℂ (escaped f a) :=
  (escapeFactor_differentiable a).mul hf

/-- The inserted factor is a unit at every point of norm less than `a`. -/
theorem escapeFactor_ne_zero {a : ℝ} {z : ℂ} (ha : ‖z‖ < a) :
    escapeFactor a z ≠ 0 := by
  intro hz
  have hz' : z ^ 2 + (a : ℂ) ^ 2 = 0 := hz
  have heq : z ^ 2 = -(a : ℂ) ^ 2 := by
    calc
      z ^ 2 = (z ^ 2 + (a : ℂ) ^ 2) - (a : ℂ) ^ 2 := by ring
      _ = -(a : ℂ) ^ 2 := by rw [hz']; ring
  have hnorm := congrArg norm heq
  have hsquare : ‖z‖ ^ 2 = a ^ 2 := by
    simpa [norm_pow, norm_neg, Complex.norm_real, Real.norm_eq_abs, sq_abs] using hnorm
  have hapos : 0 < a := (norm_nonneg z).trans_lt ha
  have hlt : ‖z‖ * ‖z‖ < a * a := by
    calc
      ‖z‖ * ‖z‖ ≤ ‖z‖ * a := mul_le_mul_of_nonneg_left ha.le (norm_nonneg z)
      _ < a * a := mul_lt_mul_of_pos_right ha hapos
  exact (ne_of_lt hlt) (by simpa only [pow_two] using hsquare)

/-- Exact zero-set preservation on any disk avoiding the inserted roots. -/
theorem escaped_eq_zero_iff {f : ℂ → ℂ} {a : ℝ} {z : ℂ} (ha : ‖z‖ < a) :
    escaped f a z = 0 ↔ f z = 0 := by
  change escapeFactor a z * f z = 0 ↔ f z = 0
  constructor
  · intro hz
    exact (mul_eq_zero.mp hz).resolve_left (escapeFactor_ne_zero ha)
  · intro hz
    rw [hz, mul_zero]

/-- Exact preservation of every local multiplicity, including zero-free points. -/
theorem analyticOrderAt_escaped {f : ℂ → ℂ} (hf : Differentiable ℂ f)
    {a : ℝ} {z : ℂ} (ha : ‖z‖ < a) :
    analyticOrderAt (escaped f a) z = analyticOrderAt f z := by
  change analyticOrderAt ((escapeFactor a) * f) z = analyticOrderAt f z
  rw [analyticOrderAt_mul ((escapeFactor_differentiable a).analyticAt z) (hf.analyticAt z),
    ((escapeFactor_differentiable a).analyticAt z).analyticOrderAt_eq_zero.mpr
      (escapeFactor_ne_zero ha), zero_add]

theorem escapeFactor_at_I_mul (a : ℝ) :
    escapeFactor a (Complex.I * (a : ℂ)) = 0 := by
  unfold escapeFactor
  calc
    (Complex.I * (a : ℂ)) ^ 2 + (a : ℂ) ^ 2 =
        (Complex.I * Complex.I) * (a : ℂ) ^ 2 + (a : ℂ) ^ 2 := by ring
    _ = 0 := by rw [Complex.I_mul_I]; ring

/-- Evenness, a common symmetry of spectral models, does not remove the obstruction. -/
theorem escaped_even {f : ℂ → ℂ} (hf : ∀ z, f (-z) = f z) (a : ℝ) :
    ∀ z, escaped f a (-z) = escaped f a z := by
  intro z
  simp only [escaped, escapeFactor, neg_sq, hf z]

/-- Every bounded disk admits an entire alternative with precisely the same
local zero orders there and a genuinely new nonreal zero beyond the bound.
No arithmetic identity of the original source is asserted for the alternative. -/
theorem exists_same_disk_divisor_with_nonreal_zero
    {f : ℂ → ℂ} (hf : Differentiable ℂ f)
    (hreal : ∀ z, f z = 0 → z.im = 0) (R : ℝ) (hR : 0 ≤ R) :
    ∃ g : ℂ → ℂ, Differentiable ℂ g ∧
      (∀ z, ‖z‖ ≤ R → analyticOrderAt g z = analyticOrderAt f z) ∧
      ∃ w : ℂ, R < ‖w‖ ∧ w.im ≠ 0 ∧ f w ≠ 0 ∧ g w = 0 := by
  let a : ℝ := R + 1
  let w : ℂ := Complex.I * (a : ℂ)
  have ha : 0 < a := by dsimp [a]; linarith
  have hRa : R < a := by dsimp [a]; linarith
  have hwim : w.im = a := by simp [w, Complex.mul_im]
  have hwne : w.im ≠ 0 := by rw [hwim]; exact ne_of_gt ha
  have hwnorm : ‖w‖ = a := by
    simp [w, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos ha]
  refine ⟨escaped f a, escaped_differentiable hf a, ?_, w, ?_, hwne, ?_, ?_⟩
  · intro z hz
    exact analyticOrderAt_escaped hf (hz.trans_lt hRa)
  · rw [hwnorm]
    exact hRa
  · intro hfw
    exact hwne (hreal w hfw)
  · change escapeFactor a (Complex.I * (a : ℂ)) * f w = 0
    rw [escapeFactor_at_I_mul, zero_mul]

end GRWTSK.Analysis.ComplexAnalysis.BoundedZeroDivisorObstruction
