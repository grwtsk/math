/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239InfinityRepresentativeNormalization

set_option autoImplicit false
noncomputable section

/-! Exact affine-chart unit normalization and canonical representative
uniqueness. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem affine_inverse_normalization {F : Type*} [Field F] (P : Fin 3 → F)
    (hZ : P 2≠0) :
    (P 2)⁻¹ • P=(![P 0/P 2,P 1/P 2,1] : Fin 3 → F) := by
  funext i
  fin_cases i <;> simp [div_eq_mul_inv,mul_comm,hZ]

theorem affine_unit_representative {F : Type*} [Field F] (P : Fin 3 → F)
    (hZ : P 2≠0) :
    ∃ u : Fˣ, u • (![P 0/P 2,P 1/P 2,1] : Fin 3 → F)=P := by
  refine ⟨Units.mk0 (P 2) hZ,?_⟩
  funext i
  fin_cases i <;> simp [Units.smul_def,div_eq_mul_inv,hZ,mul_assoc,mul_left_comm,mul_comm]

theorem affine_normalized_source_solution {F : Type*} [Field F] (P : Fin 3 → F)
    (hEq : (recordSourceCurve F).toProjective.Equation P) (hZ : P 2≠0) :
    (P 1/P 2)^2+(P 0/P 2)*(P 1/P 2)=
      (P 0/P 2)^3-(A : F)*(P 0/P 2)+(B : F) :=
  (record_projective_nonzero_chart P hZ).mp hEq

theorem normalized_affine_unit_unique {F : Type*} [Field F]
    (P Q : Fin 3 → F) (hP : P 2=1) (hQ : Q 2=1)
    (u : Fˣ) (hu : u • P=Q) : P=Q := by
  have hz := congrFun hu 2
  have hu1 : (u : F)=1 := by simpa [Units.smul_def,hP,hQ] using hz
  funext i
  have hi := congrFun hu i
  simpa [Units.smul_def,hu1] using hi

/- The Z=1 canonical representatives are unique in each unit orbit; the
Z=0 branch was separately normalized to [0:1:0]. Packaging these two
branches into the actual nonzero projective quotient equivalence remains.
Nonsingularity/good reduction and global analytic BSD are not inferred. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
