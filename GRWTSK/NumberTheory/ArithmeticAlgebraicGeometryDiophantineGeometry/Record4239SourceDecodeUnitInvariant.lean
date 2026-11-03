/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239ProjectiveSourceEncoding

set_option autoImplicit false
noncomputable section

/-! Source decoding is invariant under every unit scaling.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
variable {F : Type*} [Field F]

theorem source_decode_unit_invariant (P : Fin 3 → F) (u : Fˣ)
    (hEq : (recordSourceCurve F).toProjective.Equation P)
    (hScaled : (recordSourceCurve F).toProjective.Equation (u • P)) :
    decodeSourceRepresentative (u • P) hScaled=decodeSourceRepresentative P hEq := by
  unfold decodeSourceRepresentative
  by_cases hZ : P 2=0
  · have hs : (u • P) 2=0 := by simp [Units.smul_def,hZ]
    simp [hZ,hs]
  · have hs : (u • P) 2≠0 := by
      simpa only [Units.smul_def,Pi.smul_apply,smul_eq_mul] using mul_ne_zero u.ne_zero hZ
    have hx : (u • P) 0/(u • P) 2=P 0/P 2 := by
      change ((u : F)*P 0)/((u : F)*P 2)=P 0/P 2
      field_simp [u.ne_zero,hZ]
      <;> ring
    have hy : (u • P) 1/(u • P) 2=P 1/P 2 := by
      change ((u : F)*P 1)/((u : F)*P 2)=P 1/P 2
      field_simp [u.ne_zero,hZ]
      <;> ring
    simp only [dif_neg hZ,dif_neg hs,hx,hy]

theorem source_decode_unit_equivalent (P Q : Fin 3 → F)
    (hP : (recordSourceCurve F).toProjective.Equation P)
    (hQ : (recordSourceCurve F).toProjective.Equation Q)
    (hunit : ∃ u : Fˣ, u • P=Q) :
    decodeSourceRepresentative P hP=decodeSourceRepresentative Q hQ := by
  obtain ⟨u,hu⟩ := hunit
  subst Q
  exact (source_decode_unit_invariant P u hP hQ).symm

/- Restricting to nonzero equation representatives is required before
quotient counting. Unit-invariant decoding and canonical encoding provide
the quotient equivalence ingredients, not nonsingularity or good reduction.
The global analytic BSD bridges remain unsupplied. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
