/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiWeilSquareMass
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Quantitative detection of nonreal ordinates by two odd dipoles

With transform convention exp(i z t), the odd measure (δ₁ − δ₋₁)/2 has
multiplier i sin z. Its real coordinate and that of its dilation by two
give a uniform lower bound for the displacement of z from the real axis.
Applying the bound to (s − 1/2)/i gives a two-frequency criterion directly
on Mathlib's zeta zeros. These measures are distributional probes.
-/

noncomputable section
namespace GRWTSK.XiWeilOddDipole

/-- Real coordinate of the Fourier multiplier of the odd dipole at ±1. -/
def dipole (z : ℂ) : ℝ := (Complex.I * Complex.sin z).re

theorem dipole_eq (z : ℂ) : dipole z = -(Real.cos z.re * Real.sinh z.im) := by
  rw [dipole, Complex.I_mul_re, Complex.sin_eq]
  simp [← Complex.ofReal_sin, ← Complex.ofReal_cos, ← Complex.ofReal_sinh,
    ← Complex.ofReal_cosh, Complex.mul_im]

/-- An exact sum-of-squares remainder for the pair of dipole observations. -/
theorem two_dipole_identity (z : ℂ) :
    64 * (dipole z ^ 2 + dipole (2 * z) ^ 2) - 31 * Real.sinh z.im ^ 2 =
      (Real.sinh z.im * (32 * Real.cos z.re ^ 2 - 15)) ^ 2 +
        256 * ((2 * Real.cos z.re ^ 2 - 1) * Real.sinh z.im ^ 2) ^ 2 := by
  rw [dipole_eq, dipole_eq]
  have hr : (2 * z).re = 2 * z.re := by simp [two_mul]
  have hi : (2 * z).im = 2 * z.im := by simp [two_mul]
  rw [hr, hi, Real.cos_two_mul, Real.sinh_two_mul]
  ring_nf
  rw [Real.cosh_sq]
  ring

/-- The same two fixed frequencies detect every nonreal ordinate. -/
theorem two_dipole_lower_bound (z : ℂ) :
    31 * Real.sinh z.im ^ 2 ≤ 64 * (dipole z ^ 2 + dipole (2 * z) ^ 2) := by
  have h := two_dipole_identity z
  linarith only [h, sq_nonneg (Real.sinh z.im * (32 * Real.cos z.re ^ 2 - 15)),
    sq_nonneg ((2 * Real.cos z.re ^ 2 - 1) * Real.sinh z.im ^ 2)]

private theorem sinh_zero_iff (x : ℝ) : Real.sinh x = 0 ↔ x = 0 := by
  rw [Real.sinh_eq]
  simp [sub_eq_zero]
  constructor <;> intro h <;> linarith

theorem dipoles_vanish_iff (z : ℂ) :
    dipole z = 0 ∧ dipole (2 * z) = 0 ↔ z.im = 0 := by
  constructor
  · rintro ⟨h₁, h₂⟩
    have h := two_dipole_lower_bound z
    rw [h₁, h₂] at h
    apply (sinh_zero_iff _).mp
    nlinarith only [h, sq_nonneg (Real.sinh z.im)]
  · intro h
    simp [dipole_eq, Complex.mul_im, h]

/-- The imaginary part of this ordinate is the horizontal zeta displacement. -/
def ordinate (s : ℂ) : ℂ := (s - 1 / 2) / Complex.I

theorem ordinate_im (s : ℂ) : (ordinate s).im = 1 / 2 - s.re := by
  simp [ordinate, Complex.div_I, Complex.mul_im]

/-- Mathlib RH is equivalent to vanishing of these two real observations
at every nontrivial zero. The all-zero vanishing is the remaining premise. -/
theorem riemannHypothesis_iff_dipoles_vanish :
    _root_.RiemannHypothesis ↔ ∀ (s : ℂ), riemannZeta s = 0 →
      (¬∃ n : ℕ, s = -2 * (n + 1)) → s ≠ 1 →
        dipole (ordinate s) = 0 ∧ dipole (2 * ordinate s) = 0 := by
  constructor
  · intro hRH s hz hn h₁
    apply (dipoles_vanish_iff _).mpr
    rw [ordinate_im, hRH s hz hn h₁, sub_self]
  · intro h s hz hn h₁
    have he := (dipoles_vanish_iff _).mp (h s hz hn h₁)
    rw [ordinate_im] at he
    exact (sub_eq_zero.mp he).symm


/-- Eighth power of the compact box multiplier, including its value at zero. -/
def splineWindow (z : ℂ) : ℂ := if z = 0 then 1 else (Complex.sin z / z) ^ 8

/-- First and third derivative multipliers of the same box convolution window,
up to independent overall signs that do not affect real-coordinate vanishing. -/
def firstProbe (z : ℂ) : ℂ := Complex.I * z * splineWindow z
def thirdProbe (z : ℂ) : ℂ := firstProbe z * z ^ 2

private theorem splineWindow_nonzero {z : ℂ} (hz : z.im ≠ 0) : splineWindow z ≠ 0 := by
  have hz0 : z ≠ 0 := fun h => hz (by simp [h])
  have hsin : Complex.sin z ≠ 0 := by
    intro hs
    apply hz
    apply (dipoles_vanish_iff z).mp
    simp [dipole, hs, Complex.sin_two_mul]
  simp [splineWindow, hz0, hsin]

private theorem window_on_real (x : ℝ) : (splineWindow x).im = 0 := by
  by_cases hx : x = 0
  · simp [splineWindow, hx]
  · rw [splineWindow, ite_eq_right (by exact_mod_cast hx), ← Complex.ofReal_sin,
      ← Complex.ofReal_div, ← Complex.ofReal_pow]
    rfl

private theorem window_on_imaginary (y : ℝ) (hy : y ≠ 0) :
    splineWindow ((y : ℂ) * Complex.I) = (((Real.sinh y / y) ^ 8 : ℝ) : ℂ) := by
  have h : (y : ℂ) * Complex.I ≠ 0 := mul_ne_zero (by exact_mod_cast hy) Complex.I_ne_zero
  rw [splineWindow, ite_eq_right h, Complex.sin_mul_I, mul_div_mul_right _ _ Complex.I_ne_zero,
    ← Complex.ofReal_sinh, ← Complex.ofReal_div, ← Complex.ofReal_pow]

/-- Two fixed, decaying entire multipliers already detect every nonreal
ordinate. Identifying these expressions with the physical spline derivatives
is a separate Fourier-transform statement. -/
theorem spline_probes_vanish_iff (z : ℂ) :
    (firstProbe z).re = 0 ∧ (thirdProbe z).re = 0 ↔ z.im = 0 := by
  constructor
  · rintro ⟨h₁, h₃⟩
    by_contra hy
    have hz : z ≠ 0 := fun h => hy (by simp [h])
    have hF : firstProbe z ≠ 0 :=
      mul_ne_zero (mul_ne_zero Complex.I_ne_zero hz) (splineWindow_nonzero hy)
    have hFi : (firstProbe z).im ≠ 0 := by
      intro hi
      exact hF (Complex.ext h₁ hi)
    have hz2 : (z ^ 2).im = 0 := by
      simp only [thirdProbe, Complex.mul_re, h₁, zero_mul, zero_sub, neg_eq_zero,
        mul_eq_zero, hFi, false_or] at h₃
      exact h₃
    have hxy : z.re * z.im = 0 := by
      simp only [pow_two, Complex.mul_im] at hz2
      linarith
    have hx : z.re = 0 := (mul_eq_zero.mp hxy).resolve_right hy
    have hzi : z = (z.im : ℂ) * Complex.I := by
      apply Complex.ext <;> simp [hx]
    have he : (splineWindow z).im = 0 := by
      rw [hzi, window_on_imaginary _ hy, Complex.ofReal_im]
    have he' : (splineWindow z).re ≠ 0 := by
      intro hr
      exact splineWindow_nonzero hy (Complex.ext hr he)
    rw [firstProbe, Complex.mul_re, Complex.I_mul_re, he, mul_zero, sub_zero] at h₁
    exact (mul_ne_zero (neg_ne_zero.mpr hy) he') h₁
  · intro hy
    have hzr : z = (z.re : ℂ) := by
      apply Complex.ext <;> simp [hy]
    have he : (splineWindow z).im = 0 := by
      rw [hzr, window_on_real]
    have h₁ : (firstProbe z).re = 0 := by
      simp [firstProbe, Complex.mul_re, hy, he]
    exact ⟨h₁, by simp [thirdProbe, Complex.mul_re, Complex.mul_im, pow_two, hy, h₁]⟩

/-- RH is equivalent to joint pointwise vanishing of the two fixed spline
multipliers' real parts on the nontrivial zeros of the actual zeta function. -/
theorem riemannHypothesis_iff_spline_probes_vanish :
    _root_.RiemannHypothesis ↔ ∀ (s : ℂ), riemannZeta s = 0 →
      (¬∃ n : ℕ, s = -2 * (n + 1)) → s ≠ 1 →
        (firstProbe (ordinate s)).re = 0 ∧ (thirdProbe (ordinate s)).re = 0 := by
  simp only [spline_probes_vanish_iff, ordinate_im, sub_eq_zero, eq_comm (a := (1 / 2 : ℝ))]
  rfl


/-- Nontrivial zeros exactly as quantified in the Mathlib RH definition. -/
abbrev NontrivialZero := {s : ℂ // riemannZeta s = 0 ∧
  (¬∃ n : ℕ, s = -2 * (n + 1)) ∧ s ≠ 1}

/-- The signed square series for a single probe takes its upper triangle value. -/
def Saturates (m : NontrivialZero → ℕ) (F : ℂ → ℂ) : Prop :=
  (∑' s : NontrivialZero, (m s : ℂ) * (-(F (ordinate s) ^ 2))).re =
    ∑' s : NontrivialZero, ‖(m s : ℂ) * (-(F (ordinate s) ^ 2))‖

/-- For positive multiplicities and convergent sampled square families, just
two saturation equalities are equivalent to the native zeta-zero assertion.
The convergence hypotheses prevent Lean's default divergent sum from
satisfying a vacuous equality. -/
theorem riemannHypothesis_iff_spline_saturation (m : NontrivialZero → ℕ)
    (hm : ∀ s, 0 < m s)
    (h₁ : Summable fun s : NontrivialZero => (m s : ℂ) * (-(firstProbe (ordinate s) ^ 2)))
    (h₃ : Summable fun s : NontrivialZero => (m s : ℂ) * (-(thirdProbe (ordinate s) ^ 2))) :
    _root_.RiemannHypothesis ↔ Saturates m firstProbe ∧ Saturates m thirdProbe := by
  unfold Saturates
  rw [XiWeilSquareMass.saturation_iff_re_zero h₁ hm,
    XiWeilSquareMass.saturation_iff_re_zero h₃ hm, riemannHypothesis_iff_spline_probes_vanish]
  constructor
  · intro h
    exact ⟨fun s => (h s s.property.1 s.property.2.1 s.property.2.2).1,
      fun s => (h s s.property.1 s.property.2.1 s.property.2.2).2⟩
  · intro h s hz hn hne
    exact ⟨h.1 ⟨s, hz, hn, hne⟩, h.2 ⟨s, hz, hn, hne⟩⟩

end GRWTSK.XiWeilOddDipole
