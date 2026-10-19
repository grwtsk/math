import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
The literal fixed bump has a stronger support-edge scaling than a global fourth
derivative bound records. This exact algebra retains the weak derivative,
zero extension, signed pole subtraction, and physical normalization.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualEdgePolynomial

open Set Filter SourcePairing
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

noncomputable section

/-- The signed edge polynomial, with every radius correction retained. -/
def actualEdgePolynomial (A u : ℝ) : ℝ :=
  u ^ 2 * (2 - u / A) ^ 2 *
    (8 * (7 * (1 - u / A) ^ 2 - 1) - u ^ 2 * (2 - u / A) ^ 2 / 4)

/-- The exact physical test at the right support edge has its ninth-half scale. -/
theorem actual_dilationTest_edge_eq {A u : ℝ} (hA : 0 < A)
    (hu : 0 ≤ u) (huA : u ≤ 2 * A) :
    dilationTest explicitSecondDerivative A (A - u) =
      actualEdgePolynomial A u / (A ^ 4 * Real.sqrt A) := by
  have hm : A - u ∈ Icc (-A) A := ⟨by linarith, by linarith⟩
  rw [dilationTest, explicitSecondDerivative,
    scaledBump_eq_indicator A hA]
  simp only [indicator_of_mem hm, secondInterior, bumpInterior, actualEdgePolynomial]
  field_simp [ne_of_gt hA, ne_of_gt (Real.sqrt_pos.2 hA)]
  ring

/-- Multiplication exposes the true signed polynomial without changing the test. -/
theorem actual_dilationTest_edge_scaled_eq {A u : ℝ} (hA : 0 < A)
    (hu : 0 ≤ u) (huA : u ≤ 2 * A) :
    (A ^ 4 * Real.sqrt A) * dilationTest explicitSecondDerivative A (A - u) =
      actualEdgePolynomial A u := by
  rw [actual_dilationTest_edge_eq hA hu huA]
  have hp : A ^ 4 * Real.sqrt A ≠ 0 := by positivity
  field_simp

/-- The actual edge polynomial has a uniform envelope in the entire overlap. -/
theorem actualEdgePolynomial_abs_le {A u : ℝ} (hA : 0 < A)
    (hu : 0 ≤ u) (huA : u ≤ 2 * A) :
    |actualEdgePolynomial A u| ≤ 192 * u ^ 2 + 4 * u ^ 4 := by
  have hr0 : 0 ≤ u / A := div_nonneg hu hA.le
  have hr2 : u / A ≤ 2 := (div_le_iff₀ hA).2 (by linarith)
  have hs0 : 0 ≤ (1 - u / A) ^ 2 := sq_nonneg _
  have hs1 : (1 - u / A) ^ 2 ≤ 1 := by nlinarith
  have hz0 : 0 ≤ (2 - u / A) ^ 2 := sq_nonneg _
  have hz4 : (2 - u / A) ^ 2 ≤ 4 := by nlinarith
  have hb : |7 * (1 - u / A) ^ 2 - 1| ≤ 6 := by
    rw [abs_le]
    constructor <;> nlinarith
  have hsum := abs_sub (8 * (7 * (1 - u / A) ^ 2 - 1))
    (u ^ 2 * (2 - u / A) ^ 2 / 4)
  rw [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 8),
    abs_of_nonneg (by positivity : 0 ≤ u ^ 2 * (2 - u / A) ^ 2 / 4)] at hsum
  have hi : |8 * (7 * (1 - u / A) ^ 2 - 1) -
      u ^ 2 * (2 - u / A) ^ 2 / 4| ≤ 48 + u ^ 2 := by
    nlinarith [mul_le_mul_of_nonneg_left hz4 (sq_nonneg u)]
  unfold actualEdgePolynomial
  rw [abs_mul, abs_mul, abs_of_nonneg (sq_nonneg u),
    abs_of_nonneg (sq_nonneg (2 - u / A))]
  calc
    _ ≤ (u ^ 2 * (2 - u / A) ^ 2) * (48 + u ^ 2) :=
      mul_le_mul_of_nonneg_left hi (by positivity)
    _ ≤ (u ^ 2 * 4) * (48 + u ^ 2) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hz4 (sq_nonneg u)) (by positivity)
    _ = _ := by ring

/-- The literal signed test has a genuine full support-edge absolute budget. -/
theorem actual_dilationTest_edge_abs_le {A u : ℝ} (hA : 0 < A)
    (hu : 0 ≤ u) (huA : u ≤ 2 * A) :
    |dilationTest explicitSecondDerivative A (A - u)| ≤
      (192 * u ^ 2 + 4 * u ^ 4) / (A ^ 4 * Real.sqrt A) := by
  rw [actual_dilationTest_edge_eq hA hu huA, abs_div,
    abs_of_pos (by positivity : 0 < A ^ 4 * Real.sqrt A)]
  exact div_le_div_of_nonneg_right (actualEdgePolynomial_abs_le hA hu huA)
    (by positivity)

end
end FormalResearch.RiemannHypothesis.SourceActualEdgePolynomial
