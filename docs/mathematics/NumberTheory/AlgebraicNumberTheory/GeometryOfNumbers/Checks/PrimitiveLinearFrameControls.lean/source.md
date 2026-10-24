# Complete source: GRWTSK.GeometryOfNumbers.Checks.PrimitiveLinearFrameControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4302e76045511a68dc4c817b0ffaa0d5cfa6d467` · SHA-256 `43e27ee0ecbeb2ed3ce79426e1d56e705d5ce72482d620bc75643e1084efa497`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI. -/
import GRWTSK.GeometryOfNumbers.PrimitiveLinearScaledArea
import GRWTSK.GeometryOfNumbers.Checks.PrimitiveLinearBoxControls
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Controls for the unimodular frame and anisotropic area bridge

These controls check orientation, determinant, exact scaled area, and the
lopsided-coordinate denominators while retaining the separation between an
algebraic frame certificate and the still-open finite point-count estimate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.GeometryOfNumbers.Checks.PrimitiveLinearFrameControls

open Matrix
open scoped Matrix
open GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount
open GRWTSK.GeometryOfNumbers.PrimitiveLinearUnimodularFrame
open GRWTSK.GeometryOfNumbers.PrimitiveLinearScaledArea
open GRWTSK.GeometryOfNumbers.Checks.PrimitiveLinearBoxControls

noncomputable section

/-- For `a=b=c=1`, the two explicit kernel vectors have cross product
`(-1,-1,1)`. -/
theorem unit_cross_orientation_control :
    firstKernelVector unitData ⨯₃ secondKernelVector unitData =
      ![(-1 : ℤ), -1, 1] := by
  rw [first_cross_second]
  norm_num [normalVector, unitData]

/-- The completed integral frame is exactly unimodular. -/
theorem unit_frame_determinant_control :
    Matrix.det (kernelFrameMatrix unitData) = -1 :=
  kernelFrameMatrix_det unitData

/-- The determinant is a unit, so the frame completion has no hidden integer
index. -/
theorem unit_frame_determinant_unit_control :
    IsUnit (Matrix.det (kernelFrameMatrix unitData)) :=
  kernelFrameMatrix_det_isUnit unitData

/-- Exact normal square for the symmetric two-box. -/
theorem unit_scaledNormalSq_control :
    scaledNormalSq unitData = 12 := by
  norm_num [scaledNormalSq, unitData]

/-- Exact box volume for the symmetric two-box. -/
theorem unit_boxVolume_control :
    boxVolume unitData = 8 := by
  norm_num [boxVolume, unitData]

/-- Exact scaled parallelogram area squared: `12/8^2 = 3/16`. -/
theorem unit_scaledAreaSq_control :
    scaledAreaSq unitData = (3 / 16 : ℝ) := by
  rw [scaledAreaSq_eq_scaledNormalSq_div]
  norm_num [unit_scaledNormalSq_control, unit_boxVolume_control]

/-- The exact denominator lower bound specializes to `1/4`. -/
theorem unit_normalized_height_control :
    (1 / 4 : ℝ) ≤ scaledArea unitData := by
  simpa [unitData, Data.scaleHeight, boxVolume] using
    normalizedHeight_le_scaledArea unitData

/-- The lopsided example retains three different transformed normal
coordinates. -/
theorem lopsided_scaled_cross_control :
    scaledNormalCross lopsidedData =
      ![-(1 / 101 : ℝ), -(1 / 10100 : ℝ), (1 / 100 : ℝ)] := by
  norm_num [scaledNormalCross, lopsidedData]

/-- Replacing the lopsided scaling by one cube denominator would alter the
actual cross-product coordinates. -/
theorem cube_denominator_substitution_rejected :
    scaledNormalCross lopsidedData ≠
      ![-(1 / 101 ^ 2 : ℝ), -(1 / 101 ^ 2 : ℝ), (1 / 101 ^ 2 : ℝ)] := by
  intro h
  have h0 := congrFun h 0
  norm_num [scaledNormalCross, lopsidedData] at h0

/-- A unimodular frame and a nonzero area still do not prove the missing
absolute-constant point-count inequality. -/
theorem frame_not_finite_count_bound_control :
    Matrix.det (kernelFrameMatrix unitData) = -1 ∧
      0 < scaledAreaSq unitData ∧
      ¬ unitData.PrimitiveLinearBoxBoundAt 0 := by
  exact ⟨kernelFrameMatrix_det unitData,
    scaledAreaSq_pos unitData,
    named_bound_not_automatic_control⟩

/-- The squared denominator bridge is strict data, not an asymptotic slogan. -/
theorem lopsided_squared_bridge_control :
    ((lopsidedData.scaleHeight : ℕ) : ℝ) ^ 2 ≤
      scaledAreaSq lopsidedData * boxVolume lopsidedData ^ 2 :=
  scaleHeight_sq_le_scaledAreaSq_mul_boxVolume_sq lopsidedData

end
end GRWTSK.GeometryOfNumbers.Checks.PrimitiveLinearFrameControls
```
