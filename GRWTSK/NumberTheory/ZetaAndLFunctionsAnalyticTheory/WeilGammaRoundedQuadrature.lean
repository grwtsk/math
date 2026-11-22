/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaRationalWeights
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteSineGammaQuadrature

/-!
# Rational gamma coefficients with a complete physical rounding charge

Only the gamma panel and separated-tail coefficients are replaced. The lag
coordinates, translations, original finite sine, and complete prime/pole part
retain their meanings. Coefficient rounding is charged against the FULL L2
norm. It is additional to the existing near-zero and mesh approximation.
The preceding module supplies the coefficient enclosures at logarithmic lags.
No finite sample is substituted for an L2 norm or a universal source sign.

SOURCE_PROOF_CANDIDATE. Lean elaboration, exact types, kernel replay,
transitive axiom audit, certified source evaluation and review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaRoundedQuadrature

open TranslationCutoffs TranslationEnergyDomain GammaCutoffResidual
open GammaGeometricQuadrature GammaBochnerRow FiniteSineGammaQuadrature
open FiniteSineOperator

/-- Exact translations with finite rational panel coefficients. -/
def roundedMiddle (x : ℕ → ℝ) (N : ℕ) (weights : ℕ → ℚ) (f : Physical) : Physical :=
  ∑ i ∈ Finset.range N,
    (weights i : ℝ) • symmetricDifference f ((x i + x (i + 1)) / 2)

/-- The ENTIRE separated tail remains a physical mass coefficient. -/
def roundedRow (T : ℝ) (x : ℕ → ℝ) (N : ℕ) (weights : ℕ → ℚ)
    (tail : ℚ) (f : Physical) : Physical :=
  physicalWindow T (roundedMiddle x N weights f) + (2 * (tail : ℝ)) • f

def coefficientCharge (N : ℕ) (errors : ℕ → ℝ) (tailError : ℝ) : ℝ :=
  4 * (∑ i ∈ Finset.range N, errors i) + 2 * tailError

/-- Panel errors control the complete row, not just retained coefficients. -/
theorem middle_rounding_error_le (x : ℕ → ℝ) (N : ℕ) (weights : ℕ → ℚ)
    (errors : ℕ → ℝ) (f : Physical)
    (hw : ∀ i < N, |cellWeight (x i) (x (i + 1)) - (weights i : ℝ)| ≤ errors i) :
    ‖midpointRow x N f - roundedMiddle x N weights f‖ ≤
      (4 * ∑ i ∈ Finset.range N, errors i) * ‖f‖ := by
  have hid : midpointRow x N f - roundedMiddle x N weights f =
      ∑ i ∈ Finset.range N,
        (cellWeight (x i) (x (i + 1)) - (weights i : ℝ)) •
          symmetricDifference f ((x i + x (i + 1)) / 2) := by
    simp only [midpointRow, roundedMiddle, panelRow, ← Finset.sum_sub_distrib, sub_smul]
  rw [hid]
  calc
    _ ≤ ∑ i ∈ Finset.range N,
        ‖(cellWeight (x i) (x (i + 1)) - (weights i : ℝ)) •
          symmetricDifference f ((x i + x (i + 1)) / 2)‖ := norm_sum_le _ _
    _ ≤ ∑ i ∈ Finset.range N, errors i * (4 * ‖f‖) := by
      apply Finset.sum_le_sum
      intro i hi
      have hb := hw i (Finset.mem_range.mp hi)
      rw [norm_smul, Real.norm_eq_abs]
      exact mul_le_mul hb (symmetricDifference_norm_le_mass f _)
        (norm_nonneg _) ((abs_nonneg _).trans hb)
    _ = _ := by rw [← Finset.sum_mul]; ring

/-- Both the middle coefficients and the far coefficient are charged. -/
theorem row_rounding_error_le (T : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (weights : ℕ → ℚ) (tail : ℚ) (errors : ℕ → ℝ) (tailError : ℝ) (f : Physical)
    (hw : ∀ i < N, |cellWeight (x i) (x (i + 1)) - (weights i : ℝ)| ≤ errors i)
    (hb : |tailWeight (x N) - (tail : ℝ)| ≤ tailError) :
    ‖quadratureRow T x N f - roundedRow T x N weights tail f‖ ≤
      coefficientCharge N errors tailError * ‖f‖ := by
  have hm := middle_rounding_error_le x N weights errors f hw
  have hp := (physicalWindow_norm_le T _).trans hm
  have ht : ‖(2 * (tailWeight (x N) - (tail : ℝ))) • f‖ ≤ 2 * tailError * ‖f‖ := by
    rw [norm_smul, Real.norm_eq_abs, abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    exact mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hb (by norm_num)) (norm_nonneg _)
  have hid : quadratureRow T x N f - roundedRow T x N weights tail f =
      physicalWindow T (midpointRow x N f - roundedMiddle x N weights f) +
        (2 * (tailWeight (x N) - (tail : ℝ))) • f := by
    simp only [quadratureRow, roundedRow, map_sub, mul_sub, sub_smul]
    abel
  rw [hid]
  exact (norm_add_le _ _).trans (by unfold coefficientCharge; nlinarith)

/-- Add the unchanged signed prime/pole remainder to the rational-coefficient row. -/
def roundedOutput {M : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (weights : ℕ → ℚ) (tail : ℚ) (a : Fin M → ℝ) : Physical :=
  roundedRow T x N weights tail (finiteInput T a : Physical) + primePolePart T β a

/-- Exact arithmetic-source output; all three errors remain distinct. -/
theorem finiteOutput_error_le_rounded {M : ℕ}
    (T : ℝ) (hT : 0 < T) (β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (weights : ℕ → ℚ) (tail : ℚ) (errors : ℕ → ℝ) (tailError : ℝ)
    (a : Fin M → ℝ) {mesh : ℝ}
    (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N)
    (hmesh : 0 ≤ mesh) (hwidth : ∀ i < N, x (i + 1) - x i ≤ mesh * x i)
    (hw : ∀ i < N, |cellWeight (x i) (x (i + 1)) - (weights i : ℝ)| ≤ errors i)
    (hb : |tailWeight (x N) - (tail : ℝ)| ≤ tailError) :
    ‖(finiteOutput T hT β a : Physical) - roundedOutput T β x N weights tail a‖ ≤
      (x 0 + (x 0) ^ 2 + 5 * mesh) * slopeBound T a +
        coefficientCharge N errors tailError * ‖finiteInput T a‖ := by
  have hq := finiteOutput_error_le T hT β x N a hx hx0 hfar hmesh hwidth
  have hc : ‖approximateOutput T β x N a - roundedOutput T β x N weights tail a‖ ≤
      coefficientCharge N errors tailError * ‖finiteInput T a‖ := by
    rw [approximateOutput, roundedOutput, add_sub_add_right_eq_sub]
    exact row_rounding_error_le T x N weights tail errors tailError _ hw hb
  exact (norm_sub_le (finiteOutput T hT β a : Physical)
    (approximateOutput T β x N a) (roundedOutput T β x N weights tail a)).trans
      (add_le_add hq hc)

/-- The exact previously constructed physical operator is the consumer. -/
theorem sourceOperator_error_le_rounded {M : ℕ}
    (T : ℝ) (hT : 0 < T) (β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (weights : ℕ → ℚ) (tail : ℚ) (errors : ℕ → ℝ) (tailError : ℝ)
    (a : Fin M → ℝ) {mesh : ℝ}
    (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N)
    (hmesh : 0 ≤ mesh) (hwidth : ∀ i < N, x (i + 1) - x i ≤ mesh * x i)
    (hw : ∀ i < N, |cellWeight (x i) (x (i + 1)) - (weights i : ℝ)| ≤ errors i)
    (hb : |tailWeight (x N) - (tail : ℝ)| ≤ tailError) :
    ‖(PhysicalSourceOperator.sourceOperator T β hT (finiteDomain T hT β a) : Physical) -
      roundedOutput T β x N weights tail a‖ ≤
      (x 0 + (x 0) ^ 2 + 5 * mesh) * slopeBound T a +
        coefficientCharge N errors tailError * ‖finiteInput T a‖ := by
  rw [sourceOperator_finiteDomain]
  exact finiteOutput_error_le_rounded T hT β x N weights tail errors tailError a
    hx hx0 hfar hmesh hwidth hw hb

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaRoundedQuadrature
