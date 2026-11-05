/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.MultiplicativeResidual
import Mathlib.Tactic

/-!
# Symmetrization and complete transform error transport

Connes arXiv:2602.04022v1 Sections 6.4-6.6: a prolate trial function need not
already be exactly invariant under u -> 1/u. Its even part has transform
(F(z)+F(-z))/2 and retains convergence to an even target. The algebra below
is the transform-side part; the Fourier-integral identity is proved in the
research note, not silently assumed to be kernel-checked here.

Reuse: the actual complete-residual consumer in MultiplicativeResidual at
math 24541f93fec792a2eb7ca5fd22ebb99341e158d2. No new invertibility axiom,
new error model, or finite-field-to-zeta identification is introduced.
AI-assisted candidates. Compilation/kernel checking/axiom audit: NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Approximation

/-- Even part in the Fourier variable. -/
def evenPart (f : ℂ → ℂ) (z : ℂ) : ℂ := (f z + f (-z)) / 2

theorem evenPart_neg (f : ℂ → ℂ) (z : ℂ) : evenPart f (-z) = evenPart f z := by
  simp [evenPart, add_comm]

/-- Symmetrization must retain the error on both sides of the strip. -/
theorem evenPart_error {f g : ℂ → ℂ} {z : ℂ} {ep em : ℝ}
    (even : g (-z) = g z)
    (plus : ‖f z - g z‖ ≤ ep) (minus : ‖f (-z) - g (-z)‖ ≤ em) :
    ‖evenPart f z - g z‖ ≤ (ep + em) / 2 := by
  have he : evenPart f z - g z = ((f z - g z) + (f (-z) - g (-z))) / 2 := by
    rw [even]
    dsimp [evenPart]
    ring
  rw [he, norm_div]
  have ht : ‖(2 : ℂ)‖ = (2 : ℝ) := by norm_num
  rw [ht]
  exact div_le_div_of_nonneg_right ((norm_add_le _ _).trans (add_le_add plus minus))
    (by norm_num)

/-- Matching the trial norm only multiplies the ground transform by a nonzero scalar. -/
theorem rescaling_preserves_zeros (c : ℂ) (hc : c ≠ 0) (f : ℂ → ℂ) (z : ℂ) :
    c * f z = 0 ↔ f z = 0 := by simp [hc]

/-- Retain both the spectral comparison and the trial-to-target approximation. -/
theorem complete_transform_error {F K X : ℂ} {C R d E : ℝ}
    (spectral : ‖F - K‖ ≤ C * R / d) (trial : ‖K - X‖ ≤ E) :
    ‖F - X‖ ≤ C * R / d + E := by
  calc
    ‖F - X‖ = ‖(F - K) + (K - X)‖ := by congr 1; ring
    _ ≤ ‖F - K‖ + ‖K - X‖ := norm_add_le _ _
    _ ≤ C * R / d + E := add_le_add spectral trial

/-- A source-exact consumer, reusing the repository's existing strict residual
criterion. The analytic construction of F,K,U and all bounds remains explicit. -/
theorem nonzero_of_complete_transform_certificate {F K X U : ℂ} {q C R d E : ℝ}
    (center : ‖GRWTSK.Analysis.Division.residual F U 1‖ ≤ q)
    (spectral : ‖F - K‖ ≤ C * R / d) (trial : ‖K - X‖ ≤ E)
    (budget : q + (C * R / d + E) * ‖U‖ < 1) : X ≠ 0 := by
  have comparison : ‖X - F‖ ≤ C * R / d + E := by
    rw [norm_sub_rev]
    exact complete_transform_error spectral trial
  apply GRWTSK.Analysis.Division.nonzero_of_evaluation_enclosure
    (a₀ := F) (u₀ := U) (u := U) (ε := q) (η := C * R / d + E) (θ := 0)
  · exact center
  · exact comparison
  · simp
  · simpa using budget

end GRWTSK.Analysis.Approximation
