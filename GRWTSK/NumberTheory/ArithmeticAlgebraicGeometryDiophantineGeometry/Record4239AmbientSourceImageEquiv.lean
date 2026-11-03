/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239AmbientProjectiveSourceMap

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact ambient source subtype, excluding the zero orbit and off-curve
classes. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
variable (F : Type*) [Field F]

def IsAmbientSourceClass (C : WeierstrassCurve.Projective.PointClass F) : Prop :=
  ∃ P : Fin 3 → F, (recordSourceCurve F).toProjective.Equation P ∧ P≠0 ∧
    Quotient.mk (MulAction.orbitRel Fˣ (Fin 3 → F)) P=C

def AmbientSourceClasses := {C : WeierstrassCurve.Projective.PointClass F // IsAmbientSourceClass F C}

def sourceToAmbientSubtype (q : ProjectiveSourceQuotient F) : AmbientSourceClasses F := by
  refine ⟨sourceToAmbientProjective F q,?_⟩
  obtain ⟨P,hEq,hP,hC⟩ := source_ambient_has_nonzero_equation_representative F q
  exact ⟨P,hEq,hP,hC.symm⟩

theorem sourceToAmbientSubtype_bijective : Function.Bijective (sourceToAmbientSubtype F) := by
  constructor
  · intro a b h
    apply sourceToAmbientProjective_injective F
    exact congrArg Subtype.val h
  · intro C
    obtain ⟨P,hEq,hP,hC⟩ := C.property
    refine ⟨Quotient.mk (sourceUnitSetoid F) ⟨P,hEq,hP⟩,?_⟩
    apply Subtype.ext
    exact hC

def sourceAmbientSubtypeEquiv : ProjectiveSourceQuotient F ≃ AmbientSourceClasses F :=
  Equiv.ofBijective (sourceToAmbientSubtype F) (sourceToAmbientSubtype_bijective F)

theorem actual_ambient_source_character_count [Fintype F]
    (h2 : (2 : F)≠0) (hodd : ringChar F≠2) :
    (Nat.card (AmbientSourceClasses F) : ℤ)=(Fintype.card F : ℤ)+1+
      ∑ x : F,quadraticChar F (recordFiberDiscriminant x) := by
  have hc := Nat.card_congr (sourceAmbientSubtypeEquiv F)
  rw [← hc]
  exact actual_projective_source_character_count F h2 hodd

/- Ambient source classes include singular equation points at bad primes.
Only a nonsingularity/good-reduction bridge can identify this exact subtype
with the elliptic point group needed for Frobenius/Euler factors. That
bridge and all global analytic BSD identities remain unsupplied. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
