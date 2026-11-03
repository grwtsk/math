/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib variable changes retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239CompletedSquarePointTransport

set_option autoImplicit false
noncomputable section

/-!
# Actual admissible short-model change for record 4239

The inverse coordinate map is x=X/36-1/12 and
y=Y/216-X/72+1/24. This is an admissible change of the actual native
Weierstrass curve, with the same literal shortA and shortB used by the
finite descent source. Ellipticity is inherited, not assumed afresh.
No rational-point additive equivalence or global descent map is constructed
here. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

def nativeShortChange : WeierstrassCurve.VariableChange ℚ :=
  ⟨Units.mk0 (1 / 6 : ℚ) (by norm_num), -(1 / 12 : ℚ),
    -(1 / 2 : ℚ), (1 / 24 : ℚ)⟩

def nativeShortCurve : WeierstrassCurve ℚ := nativeShortChange • nativeCurve

theorem nativeShortCurve_eq : nativeShortCurve =
    { a₁ := 0, a₂ := 0, a₃ := 0, a₄ := (shortA : ℚ), a₆ := (shortB : ℚ) } := by
  ext <;> norm_num [nativeShortCurve, nativeShortChange, nativeCurve,
    WeierstrassCurve.variableChange_def, shortA, shortB, A, B]

noncomputable instance : nativeShortCurve.IsElliptic := by
  change (nativeShortChange • nativeCurve).IsElliptic
  infer_instance

instance : nativeShortCurve.IsCharNeTwoNF where
  a₁ := by rw [nativeShortCurve_eq]; rfl
  a₃ := by rw [nativeShortCurve_eq]; rfl

theorem nativeShort_inverse_coordinate_recovery (X Y : ℚ) :
    36 * (X / 36 - 1 / 12) + 3 = X ∧
      108 * (2 * (Y / 216 - X / 72 + 1 / 24) + (X / 36 - 1 / 12)) = Y := by
  constructor <;> ring

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
