# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.C89e9350ee4bbf1c33d5IntegerWitnessTransfer.Variant7b9c163dcb30eb911f50016893779976f2d1c3394fd70d7a2f3b0bc9b8a9dc3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e15a99ad92fb3c9217e2e798f843ae4b7735d31c` · SHA-256 `7b9c163dcb30eb911f50016893779976f2d1c3394fd70d7a2f3b0bc9b8a9dc3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualArithmeticCalibration

/-!
Exact all-real eventual witness transfer for the independently specified integer
Mangoldt-minus-one inventory. No witness is constructed. The existing residual
and finite-prefix all-scale consumers are reused without changing their target.
Direction: grwtsk contributors. Scratch proof: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.IntegerWitnessTransfer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual
open ActualIntegerInventory ActualArithmeticCalibration

/-- An arbitrary finite real upper budget for the literal actual integer sum. -/
def IntegerTailUpperBound : Prop :=
  ∃ K R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → integerJ A ≤ K

theorem calibration_at_radius {R A : ℝ} (hR : 1 ≤ R) (hRA : R ≤ A) :
    |mertensResidual A-integerJ A-(riemannZeta (1/2)).re| ≤ 260/R^2 := by
  have hp : 0 < R := by linarith
  have hs : R^2 ≤ A^2 := by nlinarith
  exact (actual_calibration_260 (hR.trans hRA)).trans
    (div_le_div_of_nonneg_left (by norm_num) (sq_pos_of_pos hp) hs)

theorem residual_le_integer {R A : ℝ} (hR : 1 ≤ R) (hRA : R ≤ A) :
    mertensResidual A ≤ integerJ A+(riemannZeta (1/2)).re+260/R^2 := by
  have h := (abs_le.mp (calibration_at_radius hR hRA)).2
  linarith

theorem integer_le_residual {R A : ℝ} (hR : 1 ≤ R) (hRA : R ≤ A) :
    integerJ A ≤ mertensResidual A-(riemannZeta (1/2)).re+260/R^2 := by
  have h := (abs_le.mp (calibration_at_radius hR hRA)).1
  linarith

theorem residual_bound_at_radius {K R : ℝ} (hR : 1 ≤ R)
    (hJ : ∀ A : ℝ, R ≤ A → integerJ A ≤ K) :
    ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ K+(riemannZeta (1/2)).re+260/R^2 := by
  intro A hRA
  have h := residual_le_integer hR hRA
  linarith [hJ A hRA]

theorem integer_bound_at_radius {B R : ℝ} (hR : 1 ≤ R)
    (hr : ∀ A : ℝ, R ≤ A → mertensResidual A ≤ B) :
    ∀ A : ℝ, R ≤ A →
      integerJ A ≤ B-(riemannZeta (1/2)).re+260/R^2 := by
  intro A hRA
  have h := integer_le_residual hR hRA
  linarith [hr A hRA]

theorem integer_tail_iff_nonnegative_budget : IntegerTailUpperBound ↔
    ∃ K : ℝ, 0 ≤ K ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → integerJ A ≤ K := by
  constructor
  · rintro ⟨K,R,hR,hJ⟩
    exact ⟨max 0 K, le_max_left _ _, R,hR,
      fun A hRA => (hJ A hRA).trans (le_max_right _ _)⟩
  · rintro ⟨K,_,R,hR,hJ⟩
    exact ⟨K,R,hR,hJ⟩

theorem residual_tail_of_integer_tail (h : IntegerTailUpperBound) :
    MertensResidualTailUpperBound := by
  obtain ⟨K,R,hR,hJ⟩ := h
  refine ⟨max 0 (K+(riemannZeta (1/2)).re+260/R^2),le_max_left _ _,R,hR,?_⟩
  intro A hRA
  exact (residual_bound_at_radius hR hJ A hRA).trans (le_max_right _ _)

theorem integer_tail_of_residual_tail (h : MertensResidualTailUpperBound) :
    IntegerTailUpperBound := by
  obtain ⟨B,_,R,hR,hr⟩ := h
  exact ⟨B-(riemannZeta (1/2)).re+260/R^2,R,hR,integer_bound_at_radius hR hr⟩

theorem integer_tail_iff_residual_tail :
    IntegerTailUpperBound ↔ MertensResidualTailUpperBound :=
  ⟨residual_tail_of_integer_tail,integer_tail_of_residual_tail⟩

theorem estimate_of_integer_tail (h : IntegerTailUpperBound) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail (residual_tail_of_integer_tail h)

theorem estimate_of_integer_bound_at_radius {K R : ℝ} (hR : 1 ≤ R)
    (hJ : ∀ A : ℝ, R ≤ A → integerJ A ≤ K) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_integer_tail ⟨K,R,hR,hJ⟩

#print axioms IntegerTailUpperBound
#print axioms calibration_at_radius
#print axioms residual_le_integer
#print axioms integer_le_residual
#print axioms residual_bound_at_radius
#print axioms integer_bound_at_radius
#print axioms integer_tail_iff_nonnegative_budget
#print axioms residual_tail_of_integer_tail
#print axioms integer_tail_of_residual_tail
#print axioms integer_tail_iff_residual_tail
#print axioms estimate_of_integer_tail
#print axioms estimate_of_integer_bound_at_radius
#print axioms estimate_of_mertens_residual_tail
end ContinuousResearch.IntegerWitnessTransfer
```
