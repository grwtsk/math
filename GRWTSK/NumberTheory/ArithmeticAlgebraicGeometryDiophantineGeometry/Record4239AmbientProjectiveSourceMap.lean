/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239ProjectiveSourceCharacterCount

set_option autoImplicit false
noncomputable section

/-! Source unit quotient maps faithfully into Mathlib ambient point classes.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
variable (F : Type*) [Field F]

def sourceToAmbientProjective : ProjectiveSourceQuotient F →
    WeierstrassCurve.Projective.PointClass F :=
  Quotient.lift
    (fun P => Quotient.mk (MulAction.orbitRel Fˣ (Fin 3 → F)) P.val)
    (by
      intro P Q h
      obtain ⟨u,hu⟩ := h
      apply Quotient.sound
      apply MulAction.mem_orbit_iff.mpr
      refine ⟨u⁻¹,?_⟩
      rw [← hu]
      simp)

theorem sourceToAmbientProjective_injective : Function.Injective (sourceToAmbientProjective F) := by
  intro a b
  refine Quotient.inductionOn₂ a b ?_
  intro P Q h
  change Quotient.mk (MulAction.orbitRel Fˣ (Fin 3 → F)) P.val=
    Quotient.mk (MulAction.orbitRel Fˣ (Fin 3 → F)) Q.val at h
  have hrel := Quotient.exact h
  obtain ⟨u,hu⟩ := MulAction.mem_orbit_iff.mp hrel
  apply Quotient.sound
  refine ⟨u⁻¹,?_⟩
  rw [← hu]
  simp

theorem source_ambient_has_nonzero_equation_representative (q : ProjectiveSourceQuotient F) :
    ∃ P : Fin 3 → F, (recordSourceCurve F).toProjective.Equation P ∧ P≠0 ∧
      sourceToAmbientProjective F q=Quotient.mk (MulAction.orbitRel Fˣ (Fin 3 → F)) P := by
  refine Quotient.inductionOn q ?_
  intro P
  exact ⟨P.val,P.property.1,P.property.2,rfl⟩

/- The ambient quotient includes the zero orbit and points off the curve;
this injective source map retains the exact nonzero equation restriction.
It does not identify every source orbit with a nonsingular elliptic point
at bad reduction. Good reduction and global analytic BSD remain missing. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
