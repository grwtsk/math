/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenOscillatoryResidual
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.RiemannHypothesis

def reciprocalOnePlus (t : ℝ) : ℝ := 1 / (1 + t)

theorem reciprocalOnePlus_antitoneOn :
    AntitoneOn reciprocalOnePlus (Set.Icc (0 : ℝ) 1) := by
  intro a ha b hb hab
  unfold reciprocalOnePlus
  exact one_div_le_one_div_of_le (by linarith [ha.1]) (by linarith)

theorem reciprocalOnePlus_zero : reciprocalOnePlus 0 = 1 := by
  norm_num [reciprocalOnePlus]

theorem reciprocalOnePlus_one : reciprocalOnePlus 1 = 1 / 2 := by
  norm_num [reciprocalOnePlus]

/-- Real version of the constant harmonic residual. -/
def greenConstantHarmonicResidualReal (X : ℕ) : ℝ :=
  (∫ t in (0 : ℝ)..1, reciprocalOnePlus t) -
    ∑ j ∈ Finset.Icc 1 X,
      (1 / (X : ℝ)) * reciprocalOnePlus (greenRightMeshPoint X j)

/-- The complex constant residual is the coercion of the real one. -/
theorem greenConstantHarmonicResidual_eq_ofReal
    (X : ℕ) :
    greenConstantHarmonicResidual X =
      (greenConstantHarmonicResidualReal X : ℂ) := by
  unfold greenConstantHarmonicResidual greenConstantHarmonicResidualReal
    reciprocalOnePlus greenRightMeshPoint
  rw [← ofReal_intervalIntegral]
  push_cast
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  push_cast
  ring

/-- Monotone right-endpoint quadrature error bound. -/
theorem greenConstantHarmonicResidualReal_nonneg_le
    {X : ℕ} (hX : 1 ≤ X) :
    0 ≤ greenConstantHarmonicResidualReal X ∧
      greenConstantHarmonicResidualReal X ≤ 1 / (2 * (X : ℝ)) := by
  have hXr : (0 : ℝ) < X := by exact_mod_cast hX
  -- Rescale t=u/X. The right-endpoint sum is the antitone right sum
  -- for u ↦ 1/(X+u), while the left sum differs by exactly
  -- (1/X) * (g(0)-g(1)) = 1/(2X).
  let g : ℝ → ℝ := fun u => 1 / ((X : ℝ) + u)
  have hg : AntitoneOn g (Set.Icc (0 : ℝ) X) := by
    intro a ha b hb hab
    dsimp [g]
    exact one_div_le_one_div_of_le (by linarith) (by linarith)
  have hright :=
    hg.sum_le_integral_Ico (a := 0) (b := X) (by omega)
  have hleft :=
    hg.integral_le_sum_Ico (a := 0) (b := X) (by omega)
  -- Convert the scaled integral and the two integer sums back to the
  -- original mesh. The gap between left and right sums telescopes.
  have hgap :
      (∑ j ∈ Finset.range X, g j) -
        (∑ j ∈ Finset.range X, g (j + 1)) =
      1 / (X : ℝ) - 1 / (2 * (X : ℝ)) := by
    rw [Finset.sum_range_sub_sum_range_add_one]
    dsimp [g]
    norm_num
    field_simp
    ring
  unfold greenConstantHarmonicResidualReal
  have hscale :
      (∫ t in (0 : ℝ)..1, reciprocalOnePlus t) =
        ∫ u in (0 : ℝ)..(X : ℝ), g u := by
    rw [← intervalIntegral.integral_comp_mul_deriv
      (f := reciprocalOnePlus) (a := (0 : ℝ)) (b := 1)
      (c := (0 : ℝ)) (d := (X : ℝ))]
    · simp [g, reciprocalOnePlus]
      field_simp
      ring
    · positivity
  rw [hscale]
  have hsum :
      (∑ j ∈ Finset.Icc 1 X,
        (1 / (X : ℝ)) * reciprocalOnePlus (greenRightMeshPoint X j)) =
      ∑ j ∈ Finset.range X, g (j + 1) := by
    rw [Finset.sum_Icc_eq_sum_range]
    apply Finset.sum_congr rfl
    intro j hj
    simp [g, reciprocalOnePlus, greenRightMeshPoint]
    field_simp
    ring
  rw [hsum]
  constructor
  · linarith
  · linarith [hgap]

theorem norm_greenConstantHarmonicResidual_le
    {X : ℕ} (hX : 1 ≤ X) :
    ‖greenConstantHarmonicResidual X‖ ≤ 1 / (2 * (X : ℝ)) := by
  rw [greenConstantHarmonicResidual_eq_ofReal]
  rw [Complex.norm_real, Real.norm_eq_abs]
  have h := greenConstantHarmonicResidualReal_nonneg_le hX
  rw [abs_of_nonneg h.1]
  exact h.2

end GRWTSK.RiemannHypothesis
