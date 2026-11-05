/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.SymmetricApproximationTransfer
import Mathlib.NumberTheory.LSeries.RiemannZeta

/-!
# Exact critical-coordinate and source-return consumers

The coordinate z=-i(s-1/2) takes the critical line to the real axis. A known
right zero-free bound theta, together with reflection of the relevant zero
set, confines zeros to |Im z| <= theta-1/2. Consequently a real-zero limit
on any strictly larger central strip suffices. The 7/8 arithmetic below gives
3/8, but no OpenAI theorem is imported and no external dependency closure is
presumed checked. The full Hurwitz and spectral arguments remain in the note.

The zeta certificate deliberately compares with the actual riemannZeta s.
A comparison to Xi cannot be substituted without its gamma-factor bridge.
AI-assisted candidates; compilation/kernel/axiom audit NOT_RUN. No RH proof
or construction of all required certificates is asserted.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Zeta.CriticalStrip

def coordinate (s : ℂ) : ℂ := -Complex.I * (s - (1 / 2 : ℂ))

theorem coordinate_im (s : ℂ) : (coordinate s).im = (1 / 2 : ℝ) - s.re := by
  simp [coordinate, Complex.mul_im] <;> ring

theorem coordinate_real_iff (s : ℂ) :
    (coordinate s).im = 0 ↔ s.re = (1 / 2 : ℝ) := by
  rw [coordinate_im]
  constructor <;> intro h <;> linarith

/-- Z must be the correct reflection-stable zero set, not all zeta zeros including
trivial ones. The result does not prove the reflection property or exclusion. -/
theorem zero_real_part_bounds {Z : ℂ → Prop} {theta : ℝ}
    (reflection : ∀ s, Z s → Z (1 - s))
    (right : ∀ s, theta < s.re → ¬ Z s)
    {s : ℂ} (hs : Z s) : 1 - theta ≤ s.re ∧ s.re ≤ theta := by
  have upper : s.re ≤ theta := le_of_not_gt (fun h => right s h hs)
  have reflected : (1 - s).re ≤ theta :=
    le_of_not_gt (fun h => right (1 - s) h (reflection s hs))
  simp only [Complex.sub_re, Complex.one_re] at reflected
  constructor <;> linarith

/-- The convergence strip must be strictly wider than the surviving closed zero band. -/
theorem zero_coordinate_inside {Z : ℂ → Prop} {theta b : ℝ}
    (reflection : ∀ s, Z s → Z (1 - s))
    (right : ∀ s, theta < s.re → ¬ Z s)
    (width : theta - (1 / 2 : ℝ) < b)
    {s : ℂ} (hs : Z s) : |(coordinate s).im| < b := by
  obtain ⟨lower, upper⟩ := zero_real_part_bounds reflection right hs
  rw [coordinate_im, abs_lt]
  constructor <;> linarith

theorem seven_eighths_bandwidth :
    (7 / 8 : ℝ) - 1 / 2 = 3 / 8 := by norm_num

/-- An explicit, source-exact local consumer, not an all-points existence assertion. -/
theorem riemannZeta_ne_zero_of_transform_certificate
    (s : ℂ) {F K U : ℂ} {q C R d E : ℝ}
    (center : ‖GRWTSK.Analysis.Division.residual F U 1‖ ≤ q)
    (spectral : ‖F - K‖ ≤ C * R / d)
    (trial : ‖K - riemannZeta s‖ ≤ E)
    (budget : q + (C * R / d + E) * ‖U‖ < 1) : riemannZeta s ≠ 0 :=
  GRWTSK.Analysis.Approximation.nonzero_of_complete_transform_certificate
    center spectral trial budget

/-- For a non-self-dual pair, nonvanishing of its product rules out zeros of either
factor. Constructing the paired spectral approximation is a separate problem. -/
theorem paired_nonvanishing {a b : ℂ} (h : a * b ≠ 0) : a ≠ 0 ∧ b ≠ 0 := by
  constructor
  · intro ha
    apply h
    simp [ha]
  · intro hb
    apply h
    simp [hb]

end GRWTSK.NumberTheory.Zeta.CriticalStrip
