/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.CriticalReflection
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Exact reflection geometry of disks centered on the critical line

Reuse the maintained criticalReflection = 1 - star. Conjugation alone and the
holomorphic map 1-z are different symmetries. No zero predicate or numerical
enclosure is defined here. All scripts remain SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED; invariance of a set alone does not fix every point of it.
-/
namespace GRWTSK.RiemannHypothesis.ReflectionDisks

/-- The fixed set is the whole vertical line, not the singleton fixed by 1-z. -/
theorem fixed_iff (z : ℂ) : criticalReflection z = z ↔ z.re = (1 / 2 : ℝ) := by
  constructor
  · intro h
    have hr := congrArg Complex.re h
    change 1 - z.re = z.re at hr
    linarith
  · intro hr
    apply Complex.ext
    · change 1 - z.re = z.re
      linarith
    · simp [criticalReflection]

/-- Reflection is an isometry because its translation cancels in a difference. -/
theorem sub_reflected (z c : ℂ) :
    criticalReflection z - criticalReflection c = -star (z - c) := by
  simp only [criticalReflection, star_sub]
  ring

theorem norm_sub_reflected (z c : ℂ) :
    ‖criticalReflection z - criticalReflection c‖ = ‖z - c‖ := by
  rw [sub_reflected, norm_neg, norm_star]

/-- Center-on-line is an actual hypothesis; off-line disks need not be invariant. -/
theorem norm_sub_fixed_center {c : ℂ} (hc : c.re = (1 / 2 : ℝ)) (z : ℂ) :
    ‖criticalReflection z - c‖ = ‖z - c‖ := by
  have h := norm_sub_reflected z c
  rwa [(fixed_iff c).mpr hc] at h

theorem mem_closedDisk_reflection_iff {c : ℂ} (hc : c.re = (1 / 2 : ℝ))
    (r : ℝ) (z : ℂ) :
    ‖criticalReflection z - c‖ ≤ r ↔ ‖z - c‖ ≤ r := by
  rw [norm_sub_fixed_center hc]

/-- No positivity assumption is needed for this identity. Conjugation transports
both the point AND the center, rather than fixing a positive-height disk. -/
theorem norm_sub_conjugated (z c : ℂ) : ‖star z - star c‖ = ‖z - c‖ := by
  rw [← star_sub, norm_star]

theorem norm_conjugate_sub_center (z c : ℂ) : ‖star z - c‖ = ‖z - star c‖ := by
  simpa only [star_star] using norm_sub_conjugated z (star c)

/-- A disk enclosure implies an ordinate enclosure, but not conversely. -/
theorem imaginary_enclosure {z c : ℂ} {r : ℝ} (h : ‖z - c‖ ≤ r) :
    |z.im - c.im| ≤ r := by
  simpa only [Complex.sub_im] using (Complex.abs_im_le_norm (z - c)).trans h

/-- On the line the complex distance really IS the ordinate distance. This
identity is used only AFTER the horizontal equality has been proved. -/
theorem norm_sub_eq_imaginary {z c : ℂ} (h : z.re = c.re) :
    ‖z - c‖ = |z.im - c.im| := by
  have he : z - c = ((z.im - c.im : ℝ) : ℂ) * Complex.I := by
    apply Complex.ext <;> simp [Complex.mul_re, Complex.mul_im, h]
  rw [he, norm_mul, Complex.norm_I, mul_one, Complex.norm_real, Real.norm_eq_abs]

end GRWTSK.RiemannHypothesis.ReflectionDisks
