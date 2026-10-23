/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
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
  -- Compare each cell integral with its right and left endpoint rectangles.
  have hcell (j : ℕ) (hj : j ∈ Finset.Icc 1 X) :
      (1 / (X : ℝ)) * reciprocalOnePlus (greenRightMeshPoint X j) ≤
        ∫ t in ((j - 1 : ℕ) : ℝ) / X..(j : ℝ) / X,
          reciprocalOnePlus t ∧
      (∫ t in ((j - 1 : ℕ) : ℝ) / X..(j : ℝ) / X,
          reciprocalOnePlus t) ≤
        (1 / (X : ℝ)) *
          reciprocalOnePlus (((j - 1 : ℕ) : ℝ) / X) := by
    have hjI := Finset.mem_Icc.mp hj
    have hab :
        (((j - 1 : ℕ) : ℝ) / X) ≤ ((j : ℝ) / X) := by
      gcongr
      exact_mod_cast Nat.sub_le j 1
    have hwidth :
        (j : ℝ) / X - ((j - 1 : ℕ) : ℝ) / X = 1 / X := by
      push_cast
      rw [Nat.cast_sub hjI.1]
      field_simp
      ring
    constructor
    · rw [← hwidth]
      apply intervalIntegral.mul_le_integral_of_le
      · positivity
      · intro t ht
        apply reciprocalOnePlus_antitoneOn
        · constructor <;> linarith
        · constructor <;> linarith [hjI.2]
        · exact ht.2
    · rw [← hwidth]
      apply intervalIntegral.integral_le_mul_of_le
      · positivity
      · intro t ht
        apply reciprocalOnePlus_antitoneOn
        · constructor <;> linarith
        · constructor <;> linarith [hjI.2]
        · exact ht.1
  -- Summing the cell inequalities and telescoping endpoint rectangles gives
  -- the claimed half-mesh bound.
  sorry

theorem norm_greenConstantHarmonicResidual_le
    {X : ℕ} (hX : 1 ≤ X) :
    ‖greenConstantHarmonicResidual X‖ ≤ 1 / (2 * (X : ℝ)) := by
  rw [greenConstantHarmonicResidual_eq_ofReal]
  rw [Complex.norm_real, Real.norm_eq_abs]
  have h := greenConstantHarmonicResidualReal_nonneg_le hX
  rw [abs_of_nonneg h.1]
  exact h.2

end GRWTSK.RiemannHypothesis
