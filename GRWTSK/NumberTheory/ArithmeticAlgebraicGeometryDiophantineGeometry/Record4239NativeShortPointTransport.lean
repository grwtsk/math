/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib point types retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239NativeShortModel

set_option autoImplicit false
noncomputable section

/-!
# All native points transported to the literal short equation

The same source coordinates X=36x+3, Y=108(2y+x) map every actual
nonsingular native point, including infinity, to the source-identified
short model. This is a function on actual point carriers, not yet an
additive homomorphism or a global square-class descent construction.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem nativeShortEquation_iff (X Y : ℚ) :
    nativeShortCurve.toAffine.Equation X Y ↔
      Y ^ 2 = X ^ 3 + (shortA : ℚ) * X + (shortB : ℚ) := by
  rw [nativeShortCurve_eq]
  simp [WeierstrassCurve.Affine.equation_iff]

theorem nativeShort_coordinate_iff (x y : ℚ) :
    nativeCurve.toAffine.Equation x y ↔
      nativeShortCurve.toAffine.Equation (36 * x + 3) (108 * (2 * y + x)) := by
  rw [nativeEquation_iff, nativeShortEquation_iff]
  have hid : (108 * (2 * y + x)) ^ 2 -
      ((36 * x + 3) ^ 3 + (shortA : ℚ) * (36 * x + 3) + (shortB : ℚ)) =
      46656 * (y ^ 2 + x * y - x ^ 3 + (A : ℚ) * x - (B : ℚ)) := by
    norm_num [shortA, shortB, A, B]
    ring
  unfold OnRecordModel
  constructor <;> intro h <;> nlinarith [hid]

def nativeToShortPoint : nativeCurve.toAffine.Point → nativeShortCurve.toAffine.Point
  | .zero => .zero
  | .some x y h =>
      .some (36 * x + 3) (108 * (2 * y + x))
        (WeierstrassCurve.Affine.equation_iff_nonsingular.mp
          ((nativeShort_coordinate_iff x y).mp
            (WeierstrassCurve.Affine.equation_iff_nonsingular.mpr h)))

@[simp] theorem nativeToShortPoint_zero : nativeToShortPoint 0 = 0 := rfl

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
