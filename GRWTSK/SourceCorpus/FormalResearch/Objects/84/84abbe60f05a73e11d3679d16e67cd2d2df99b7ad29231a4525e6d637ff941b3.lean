import RootActualXiDampedSquareReadout

/-!
The full actual closed-seven return combines into a compact square head. The
actual signed damped primitive supplies an unconditional uniform logarithmic
deficiency bound for the positive Mangoldt square inventory. The lower head
is kept signed; this does not give a critical tail or absolute-average witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualXiCompactSquareBudget

open SourceActualXiDampedFiniteBound RootActualXiDampedSquareReadout
open RH16ActualPsiNegativeBlock

noncomputable section

/-- All original seven and gamma heads are retained in this real square expression. -/
def actualDampedXiCompactSevenCorrection (Y : ℝ) : ℝ :=
  (Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
    (1 / Real.sqrt 7 - 1 / Real.sqrt Y) ^ 2 + 2 * (1 - Real.sqrt 7 / Real.sqrt Y)

/-- The actual signed primitive has the compact closed square readout at every real cutoff. -/
theorem actualDampedXiFinitePrimitive_eq_compact_square {Y : ℝ} (hY : 7 ≤ Y) :
    (1 / 2 : ℝ) * actualDampedXiFinitePrimitive (Real.log Y) =
      actualDampedXiSquareWindowSeven Y - Real.log (Y / 7) +
        actualDampedXiCompactSevenCorrection Y := by
  rw [actualDampedXiFinitePrimitive_eq_square_readout hY]
  unfold actualDampedXiCompactSevenCorrection shiftedActualChebyshev
  have hp : 0 < Y := by linarith
  have hy := Real.sq_sqrt hp.le
  have h7 := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 7)
  have hsy : Real.sqrt Y ≠ 0 := (Real.sqrt_pos.mpr hp).ne'
  have hs7 : Real.sqrt (7 : ℝ) ≠ 0 := (Real.sqrt_pos.mpr (by norm_num)).ne'
  field_simp
  ring_nf
  simp only [hy, h7]
  ring

/-- A genuine uniform arithmetic bound keeps the logarithmic main and all signed heads together. -/
theorem actualDampedXiSquare_logarithmic_deficiency_abs_le {Y : ℝ} (hY : 7 ≤ Y) :
    |actualDampedXiSquareWindowSeven Y - Real.log (Y / 7) +
      actualDampedXiCompactSevenCorrection Y| ≤
        2 * (Real.log 4 + 4 + Real.log 2) +
          4 * RootActualXiExponentialEnvelope.actualXiExponentialEnvelopeConstant := by
  have ht : Real.log 7 ≤ Real.log Y := Real.log_le_log (by norm_num) hY
  have hJ := actualDampedXiFinitePrimitive_abs_le_budget ht
  rw [← actualDampedXiFinitePrimitive_eq_compact_square hY,
    abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 1 / 2)]
  calc
    _ ≤ (1 / 2 : ℝ) * actualDampedXiFiniteBudget :=
      mul_le_mul_of_nonneg_left hJ (by norm_num)
    _ = _ := by unfold actualDampedXiFiniteBudget; ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiCompactSquareBudget
