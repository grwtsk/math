import Surface.Core.ComplexAnalysis.FiniteHoleGeometry
import Surface.Core.ComplexAnalysis.RectangleContour
import Mathlib.MeasureTheory.Integral.CurveIntegral.Poincare
import Mathlib.Tactic

/-!
# CA-03 branch F2/F3b: seam-cell bridge

This scratch branch isolates the exact algebra needed to pass from four smooth
side-to-arc homotopies to an equality of the two complete contour integrals.
It deliberately does not introduce a canonical theorem.

The intended geometry is a centered axis-aligned square and four circular
arcs.  For each cell, the Poincare homotopy theorem retains the two radial
connector integrals.  Consecutive cells use the same connector with the same
orientation on opposite sides of their equations.  The theorem below proves
that these four seam terms cancel exactly.
-/

namespace Surface.Core.ComplexAnalysis.CA03Scratch.BranchSeamCell

noncomputable section

open Filter Set Complex
open scoped Interval Pointwise Topology unitInterval

/-! Scratch files are checked directly with `lake env lean`, so they are not
available as Lake modules to one another.  The two small F1 definitions needed
below are repeated here rather than adding scratch code to the production
library search path. -/

/-- The complex one-form `f(z) dz`. -/
def coefficientOneForm (f : ℂ → ℂ) : ℂ → ℂ →L[ℂ] ℂ :=
  (ContinuousLinearMap.smulRightL ℂ ℂ ℂ 1) ∘ f

/-- F1's checked specialization of the Poincare homotopy theorem. -/
theorem curveIntegral_coefficientOneForm_homotopy
    {a b c d : ℂ} {γ₁ : Path a b} {γ₂ : Path c d}
    {t : Set ℂ} {f : ℂ → ℂ}
    (φ : (γ₁ : C(I, ℂ)).Homotopy γ₂)
    (hφt : ∀ x ∈ Ioo 0 1, ∀ y ∈ Ioo 0 1, φ (x, y) ∈ t)
    (hd : DifferentiableOn ℂ f t)
    (hfc : ContinuousOn f (closure t))
    (hφsmooth : ContDiffOn ℝ 2
      (fun xy : ℝ × ℝ ↦ IccExtend zero_le_one (φ.extend xy.1) xy.2)
      (Icc 0 1)) :
    curveIntegral (coefficientOneForm f) γ₁ +
        curveIntegral (coefficientOneForm f) (φ.evalAt 1) =
    curveIntegral (coefficientOneForm f) γ₂ +
        curveIntegral (coefficientOneForm f) (φ.evalAt 0) := by
  let D : ℂ → ℂ →L[ℝ] ℂ →L[ℂ] ℂ := fun z ↦
    (ContinuousLinearMap.toSpanSingleton ℂ
      ((1 : ℂ →L[ℂ] ℂ).smulRight (derivWithin f t z))).restrictScalars ℝ
  apply φ.curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt
    (dω := D) hφt
  · intro z hz
    simpa [coefficientOneForm, D] using
      ((ContinuousLinearMap.smulRightL ℂ ℂ ℂ 1).hasFDerivAt
        |>.comp_hasDerivWithinAt z (hd z hz).hasDerivWithinAt
        |>.hasFDerivWithinAt |>.restrictScalars ℝ)
  · exact (ContinuousLinearMap.smulRightL ℂ ℂ ℂ 1).continuous.comp_continuousOn hfc
  · intro z hz u hu v hv
    simp [D]
    ring
  · exact hφsmooth

/-- Four `C²` side-to-arc homotopies cancel their transverse seam paths.

The outer paths `o₀,...,o₃` and inner paths `i₀,...,i₃` are cyclically
oriented in the same direction.  Thus `φk.evalAt 1` is the outgoing radial
seam of cell `k`, while `φ(k+1).evalAt 0` is the same seam as the incoming
edge of the next cell.  The four `hseam` hypotheses are path-integral
identifications; in a concrete radial construction they follow by path
extensionality.

This theorem is the analytic-and-algebraic core of the proposed F2 bridge:
each cell is discharged by the checked Poincare theorem, not by a certificate
or a geometric-homology assertion. -/
theorem four_seam_cells_cancel
    {a₀ a₁ a₂ a₃ b₀ b₁ b₂ b₃ : ℂ}
    {o₀ : Path a₀ a₁} {o₁ : Path a₁ a₂}
    {o₂ : Path a₂ a₃} {o₃ : Path a₃ a₀}
    {i₀ : Path b₀ b₁} {i₁ : Path b₁ b₂}
    {i₂ : Path b₂ b₃} {i₃ : Path b₃ b₀}
    {t : Set ℂ} {f : ℂ → ℂ}
    (φ₀ : (o₀ : C(I, ℂ)).Homotopy i₀)
    (φ₁ : (o₁ : C(I, ℂ)).Homotopy i₁)
    (φ₂ : (o₂ : C(I, ℂ)).Homotopy i₂)
    (φ₃ : (o₃ : C(I, ℂ)).Homotopy i₃)
    (hφ₀t : ∀ x ∈ Ioo 0 1, ∀ y ∈ Ioo 0 1, φ₀ (x, y) ∈ t)
    (hφ₁t : ∀ x ∈ Ioo 0 1, ∀ y ∈ Ioo 0 1, φ₁ (x, y) ∈ t)
    (hφ₂t : ∀ x ∈ Ioo 0 1, ∀ y ∈ Ioo 0 1, φ₂ (x, y) ∈ t)
    (hφ₃t : ∀ x ∈ Ioo 0 1, ∀ y ∈ Ioo 0 1, φ₃ (x, y) ∈ t)
    (hd : DifferentiableOn ℂ f t)
    (hc : ContinuousOn f (closure t))
    (hφ₀smooth : ContDiffOn ℝ 2
      (fun xy : ℝ × ℝ ↦ IccExtend zero_le_one (φ₀.extend xy.1) xy.2)
      (Icc 0 1))
    (hφ₁smooth : ContDiffOn ℝ 2
      (fun xy : ℝ × ℝ ↦ IccExtend zero_le_one (φ₁.extend xy.1) xy.2)
      (Icc 0 1))
    (hφ₂smooth : ContDiffOn ℝ 2
      (fun xy : ℝ × ℝ ↦ IccExtend zero_le_one (φ₂.extend xy.1) xy.2)
      (Icc 0 1))
    (hφ₃smooth : ContDiffOn ℝ 2
      (fun xy : ℝ × ℝ ↦ IccExtend zero_le_one (φ₃.extend xy.1) xy.2)
      (Icc 0 1))
    (hseam₀₁ :
      curveIntegral (coefficientOneForm f) (φ₀.evalAt 1) =
        curveIntegral (coefficientOneForm f) (φ₁.evalAt 0))
    (hseam₁₂ :
      curveIntegral (coefficientOneForm f) (φ₁.evalAt 1) =
        curveIntegral (coefficientOneForm f) (φ₂.evalAt 0))
    (hseam₂₃ :
      curveIntegral (coefficientOneForm f) (φ₂.evalAt 1) =
        curveIntegral (coefficientOneForm f) (φ₃.evalAt 0))
    (hseam₃₀ :
      curveIntegral (coefficientOneForm f) (φ₃.evalAt 1) =
        curveIntegral (coefficientOneForm f) (φ₀.evalAt 0)) :
    curveIntegral (coefficientOneForm f) o₀ +
          curveIntegral (coefficientOneForm f) o₁ +
        curveIntegral (coefficientOneForm f) o₂ +
      curveIntegral (coefficientOneForm f) o₃ =
    curveIntegral (coefficientOneForm f) i₀ +
          curveIntegral (coefficientOneForm f) i₁ +
        curveIntegral (coefficientOneForm f) i₂ +
      curveIntegral (coefficientOneForm f) i₃ := by
  have h₀ := curveIntegral_coefficientOneForm_homotopy
    φ₀ hφ₀t hd hc hφ₀smooth
  have h₁ := curveIntegral_coefficientOneForm_homotopy
    φ₁ hφ₁t hd hc hφ₁smooth
  have h₂ := curveIntegral_coefficientOneForm_homotopy
    φ₂ hφ₂t hd hc hφ₂smooth
  have h₃ := curveIntegral_coefficientOneForm_homotopy
    φ₃ hφ₃t hd hc hφ₃smooth
  rw [hseam₀₁] at h₀
  rw [hseam₁₂] at h₁
  rw [hseam₂₃] at h₂
  rw [hseam₃₀] at h₃
  linear_combination h₀ + h₁ + h₂ + h₃

/-! ## Concrete normalization probes

Straight square sides are already supported by `curveIntegral_segment`.
The following checked identity is the normalization formula used for each
outer side.  It makes the remaining work explicit: one must prove the sum of
these four normalized segment integrals is `rectangleBoundaryIntegral`, and
the sum of the four standard arc integrals is `circleIntegral`.
-/

theorem coefficientOneForm_curveIntegral_segment (f : ℂ → ℂ) (a b : ℂ) :
    curveIntegral (coefficientOneForm f) (.segment a b) =
      ∫ u : ℝ in 0..1, f (AffineMap.lineMap a b u) * (b - a) := by
  rw [curveIntegral_segment]
  apply intervalIntegral.integral_congr
  intro u _
  simp [coefficientOneForm, mul_comm]

/-!
## Exact remaining goal

`four_seam_cells_cancel` closes the Poincare stack and all radial-seam
obligations.  The circular CA-03 target is not closed in this branch because
the concrete geometry still needs three kernel proofs:

1. construct four `C²` radial homotopies from the oriented square segments to
   four standard quarter-circle paths, with the open homotopy image outside
   the deleted closed disk;
2. identify the four shared radial connectors by path extensionality; and
3. normalize the four segment integrals to `rectangleBoundaryIntegral` and
   the four standard arc integrals to `circleIntegral`.

The last normalization is not available as a named curve-integral
reparameterization theorem in the pinned library.  It must be proved from
`curveIntegral_eq_intervalIntegral_deriv` and interval-integral substitution.
Accordingly this scratch file does **not** inhabit
`SingleHoleExcisionStatement` and makes no homology or homeomorphism claim.
-/

#print axioms four_seam_cells_cancel
#print axioms coefficientOneForm_curveIntegral_segment

end

end Surface.Core.ComplexAnalysis.CA03Scratch.BranchSeamCell
