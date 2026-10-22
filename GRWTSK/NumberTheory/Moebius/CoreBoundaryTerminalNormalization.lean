/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #639. Parent: draft PR #636 at
`17ac62555404f81434f9d7132fdcd4c3094fadae`.
-/
import GRWTSK.NumberTheory.Moebius.CoreBoundaryMertensSquareEnergy

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact rational formula for the common exceptional terminal drop. -/
theorem boundaryTerminalDrop_eq
    (j : ℕ) :
    boundaryTerminalDrop j =
      1 / ((((2 ^ (j + 1) - 1 : ℕ) : ℝ)) *
        (((2 ^ (j + 1) : ℕ) : ℝ))) := by
  unfold boundaryTerminalDrop
  apply reciprocalFirstDifference_eq
  positivity

/-- Rewriting the common terminal drop at the left dyadic scale
`X=2^j`. -/
theorem boundaryTerminalDrop_eq_leftScale
    (j : ℕ) :
    boundaryTerminalDrop j =
      1 / ((((2 * 2 ^ j - 1 : ℕ) : ℝ)) *
        (((2 * 2 ^ j : ℕ) : ℝ))) := by
  rw [boundaryTerminalDrop_eq]
  congr 3 <;> rw [Nat.pow_succ] <;> ring

/-- The doubled terminal drop is bounded by `X^{-2}`. -/
theorem two_mul_boundaryTerminalDrop_le_inv_sq
    (j : ℕ) :
    0 ≤ 2 * boundaryTerminalDrop j ∧
      2 * boundaryTerminalDrop j ≤
        (((2 ^ j : ℕ) : ℝ)⁻¹) ^ 2 := by
  let X : ℕ := 2 ^ j
  have hX : 1 ≤ X := by
    dsimp [X]
    positivity
  have hXR : (0 : ℝ) < X := by
    exact_mod_cast hX
  have h2X1 : X ≤ 2 * X - 1 := by omega
  rw [boundaryTerminalDrop_eq_leftScale]
  change 0 ≤
      2 * (1 / ((((2 * X - 1 : ℕ) : ℝ)) * (((2 * X : ℕ) : ℝ)))) ∧
    2 * (1 / ((((2 * X - 1 : ℕ) : ℝ)) * (((2 * X : ℕ) : ℝ)))) ≤
      ((X : ℝ)⁻¹) ^ 2
  constructor
  · positivity
  · have h2XR : (((2 * X : ℕ) : ℝ)) = 2 * (X : ℝ) := by
      norm_num
    rw [h2XR]
    have hden :
        (X : ℝ) * (X : ℝ) ≤
          (((2 * X - 1 : ℕ) : ℝ)) * (X : ℝ) := by
      apply mul_le_mul_of_nonneg_right
      · exact_mod_cast h2X1
      · positivity
    have hdenpos :
        0 < (((2 * X - 1 : ℕ) : ℝ)) * (X : ℝ) := by
      positivity
    calc
      2 * (1 /
          ((((2 * X - 1 : ℕ) : ℝ)) * (2 * (X : ℝ)))) =
        1 / ((((2 * X - 1 : ℕ) : ℝ)) * (X : ℝ)) := by
          field_simp
          ring
      _ ≤ 1 / ((X : ℝ) * (X : ℝ)) := by
          exact one_div_le_one_div_of_le
            (mul_pos hXR hXR) hden
      _ = ((X : ℝ)⁻¹) ^ 2 := by
          field_simp [ne_of_gt hXR]
          ring

/-- Squared normalization used by the quadratic boundary supplier. -/
theorem two_mul_boundaryTerminalDrop_sq_le_inv_fourth
    (j : ℕ) :
    (2 * boundaryTerminalDrop j) ^ 2 ≤
      (((2 ^ j : ℕ) : ℝ)⁻¹) ^ 4 := by
  have h := (two_mul_boundaryTerminalDrop_le_inv_sq j).2
  have hleft : 0 ≤ 2 * boundaryTerminalDrop j :=
    (two_mul_boundaryTerminalDrop_le_inv_sq j).1
  have hright :
      0 ≤ (((2 ^ j : ℕ) : ℝ)⁻¹) ^ 2 := by positivity
  have hsquare :
      (2 * boundaryTerminalDrop j) ^ 2 ≤
        ((((2 ^ j : ℕ) : ℝ)⁻¹) ^ 2) ^ 2 :=
    (sq_le_sq₀ hleft hright).2 h
  simpa [pow_mul] using hsquare

/-- On the two scales excluded by `j+2 <= 2^j`, the genuine exceptional
boundary set is empty. -/
theorem boundaryCoreDepths_eq_empty_of_lt_two
    {j : ℕ}
    (hj : j < 2) :
    boundaryCoreDepths j = ∅ := by
  have hjcases : j = 0 ∨ j = 1 := by omega
  rcases hjcases with rfl | rfl <;>
    ext t <;>
    simp [boundaryCoreDepths, coreLongDeepDepths,
      logarithmicShallowDepthCount, logarithmicShiftThreshold,
      harmonicShiftCount, harmonicShiftUpper, harmonicShiftLower]

/-- Hence the tail energy, and therefore the Cauchy product, vanishes on the
two excluded scales. -/
theorem boundaryTailSquareEnergy_eq_zero_of_lt_two
    {j : ℕ}
    (hj : j < 2) :
    boundaryTailSquareEnergy j = 0 := by
  unfold boundaryTailSquareEnergy boundaryTailMertens
  rw [boundaryCoreDepths_eq_empty_of_lt_two hj]
  simp

/-- The localized ordinary-Mertens energy controls the complete quadratic
boundary product after the exact terminal normalization. -/
theorem subpolynomialBoundaryQuadraticEnergyProduct_of_localized
    (hLocalized : SubpolynomialBoundaryLocalizedMertensSquareEnergy) :
    SubpolynomialBoundaryQuadraticEnergyProduct := by
  intro δ hδ
  obtain ⟨C, hC, hE⟩ := hLocalized δ hδ
  refine ⟨2 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j
  by_cases hj : j < 2
  · rw [boundaryTailSquareEnergy_eq_zero_of_lt_two hj]
    simp
    positivity
  · have hj2 : 2 ≤ j := Nat.le_of_not_gt hj
    have hHX :
        logarithmicShiftThreshold j ≤ 2 ^ j := by
      unfold logarithmicShiftThreshold
      exact nat_add_two_le_two_pow_of_two_le hj2
    let X : ℝ := ((2 ^ j : ℕ) : ℝ)
    have hX : 0 < X := by
      dsimp [X]
      positivity
    have hW :
        boundaryMovingWindowSquareEnergy j ≤
          2 * boundaryLocalizedMertensSquareEnergy j :=
      boundaryMovingWindowSquareEnergy_le_localized j
    have hT :
        boundaryTailSquareEnergy j ≤
          2 * boundaryLocalizedMertensSquareEnergy j :=
      boundaryTailSquareEnergy_le_localized hHX
    have hEnonneg :
        0 ≤ boundaryLocalizedMertensSquareEnergy j := by
      unfold boundaryLocalizedMertensSquareEnergy
      positivity
    have hWnonneg :
        0 ≤ boundaryMovingWindowSquareEnergy j := by
      unfold boundaryMovingWindowSquareEnergy
      positivity
    have hTnonneg :
        0 ≤ boundaryTailSquareEnergy j := by
      unfold boundaryTailSquareEnergy
      positivity
    have hdrop :
        (2 * boundaryTerminalDrop j) ^ 2 ≤ X⁻¹ ^ 4 := by
      simpa [X] using two_mul_boundaryTerminalDrop_sq_le_inv_fourth j
    have hprod :
        boundaryMovingWindowSquareEnergy j *
            boundaryTailSquareEnergy j ≤
          4 * boundaryLocalizedMertensSquareEnergy j ^ 2 := by
      calc
        boundaryMovingWindowSquareEnergy j *
            boundaryTailSquareEnergy j ≤
          (2 * boundaryLocalizedMertensSquareEnergy j) *
            (2 * boundaryLocalizedMertensSquareEnergy j) := by
              exact mul_le_mul hW hT hTnonneg
                (mul_nonneg (by norm_num) hEnonneg)
        _ = 4 * boundaryLocalizedMertensSquareEnergy j ^ 2 := by ring
    calc
      (2 * boundaryTerminalDrop j) ^ 2 *
          boundaryMovingWindowSquareEnergy j *
            boundaryTailSquareEnergy j ≤
        X⁻¹ ^ 4 *
          (4 * boundaryLocalizedMertensSquareEnergy j ^ 2) := by
            exact mul_le_mul hdrop hprod
              (mul_nonneg hWnonneg hTnonneg)
              (by positivity)
      _ ≤ X⁻¹ ^ 4 *
          (4 * (C * X ^ 2 * X ^ δ) ^ 2) := by
            apply mul_le_mul_of_nonneg_left
            · apply mul_le_mul_of_nonneg_left
              · exact (sq_le_sq₀ hEnonneg
                  (mul_nonneg
                    (mul_nonneg hC (by positivity))
                    (by positivity))).2 (hE j)
              · norm_num
            · positivity
      _ = ((2 * C) * X ^ δ) ^ 2 := by
            field_simp [ne_of_gt hX]
            ring
      _ = ((2 * C) * (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 := by
            rfl

/-- The deterministic normalization adapter from #634 is now constructed. -/
def boundaryLocalizedEnergyNormalizationAdapter :
    BoundaryLocalizedEnergyNormalizationAdapter where
  terminalDropNormalization := True
  toQuadratic := by
    intro hLocalized _h
    exact subpolynomialBoundaryQuadraticEnergyProduct_of_localized hLocalized

/-- Localized ordinary-Mertens square energy now directly supplies the signed
exceptional boundary packet. -/
theorem subpolynomialCoreBoundarySignedPacket_of_localizedMertensEnergy
    (hLocalized : SubpolynomialBoundaryLocalizedMertensSquareEnergy) :
    SubpolynomialCoreBoundarySignedPacket :=
  subpolynomialCoreBoundarySignedPacket_of_quadraticEnergy
    (subpolynomialBoundaryQuadraticEnergyProduct_of_localized hLocalized)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryTerminalDrop_eq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.two_mul_boundaryTerminalDrop_sq_le_inv_fourth
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialBoundaryQuadraticEnergyProduct_of_localized
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreBoundarySignedPacket_of_localizedMertensEnergy
