/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239ProjectiveSourceChart

set_option autoImplicit false
noncomputable section

/-! Nonzero source representatives at infinity form one unit orbit.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem infinity_y_nonzero {F : Type*} [Field F] (P : Fin 3 → F)
    (hEq : (recordSourceCurve F).toProjective.Equation P)
    (hP : P≠0) (hZ : P 2=0) : P 1≠0 := by
  have hX : P 0=0 := WeierstrassCurve.Projective.X_eq_zero_of_Z_eq_zero hEq hZ
  intro hY
  apply hP
  funext i
  fin_cases i <;> simp [hX,hY,hZ]

theorem infinity_unit_representative {F : Type*} [Field F] (P : Fin 3 → F)
    (hEq : (recordSourceCurve F).toProjective.Equation P)
    (hP : P≠0) (hZ : P 2=0) :
    ∃ u : Fˣ, u • (![0,1,0] : Fin 3 → F)=P := by
  have hX : P 0=0 := WeierstrassCurve.Projective.X_eq_zero_of_Z_eq_zero hEq hZ
  have hY := infinity_y_nonzero P hEq hP hZ
  refine ⟨Units.mk0 (P 1) hY,?_⟩
  funext i
  fin_cases i <;> simp [Units.smul_def,hX,hZ]

theorem infinity_inverse_normalization {F : Type*} [Field F] (P : Fin 3 → F)
    (hEq : (recordSourceCurve F).toProjective.Equation P)
    (hP : P≠0) (hZ : P 2=0) :
    (P 1)⁻¹ • P=(![0,1,0] : Fin 3 → F) := by
  have hX : P 0=0 := WeierstrassCurve.Projective.X_eq_zero_of_Z_eq_zero hEq hZ
  have hY := infinity_y_nonzero P hEq hP hZ
  funext i
  fin_cases i <;> simp [hX,hZ,hY]

/- This proves the single infinity orbit for nonzero equation solutions
without assuming smoothness. It does not identify the nonsingular elliptic
point type at a bad prime. Quotient/affine cardinal assembly and actual
good-reduction discriminant hypotheses remain separate obligations. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
