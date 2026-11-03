/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.Record4239LocalSourceTraceCoefficient
import Mathlib.AlgebraicGeometry.EllipticCurve.Projective.Basic

set_option autoImplicit false
noncomputable section

/-! Exact projective source chart. Nonsingularity and good reduction are
not inferred from chart equations. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

/-- Coefficientwise integral source model over the specified field. -/
def recordSourceCurve (F : Type*) [Field F] : WeierstrassCurve F where
  a₁ := 1
  a₂ := 0
  a₃ := 0
  a₄ := -(A : F)
  a₆ := (B : F)

theorem record_projective_affine_chart {F : Type*} [Field F] (x y : F) :
    (recordSourceCurve F).toProjective.Equation ![x,y,1] ↔
      y^2+x*y=x^3-(A : F)*x+(B : F) := by
  rw [WeierstrassCurve.Projective.equation_iff]
  simp [recordSourceCurve,sub_eq_zero]
  <;> ring_nf

theorem record_projective_infinity {F : Type*} [Field F] :
    (recordSourceCurve F).toProjective.Equation ![0,1,0] := by
  exact WeierstrassCurve.Projective.equation_zero

theorem record_projective_nonzero_chart {F : Type*} [Field F]
    (P : Fin 3 → F) (hZ : P 2≠0) :
    (recordSourceCurve F).toProjective.Equation P ↔
      (P 1/P 2)^2+(P 0/P 2)*(P 1/P 2)=
        (P 0/P 2)^3-(A : F)*(P 0/P 2)+(B : F) := by
  rw [WeierstrassCurve.Projective.equation_of_Z_ne_zero hZ]
  simp [WeierstrassCurve.Affine.equation_iff',recordSourceCurve,sub_eq_zero]
  <;> ring_nf

/- Projective representatives must be nonzero and quotiented by units.
The raw equation also admits the zero vector, which cannot be counted as
an infinity point. A quotient-cardinality equivalence and nonsingularity
of the reduced model are still required before the source count is a
Frobenius coefficient. Bad-prime/global analytic bridges remain missing. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
