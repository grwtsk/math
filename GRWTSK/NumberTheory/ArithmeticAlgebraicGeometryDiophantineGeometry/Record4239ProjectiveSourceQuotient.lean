/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239SourceDecodeUnitInvariant

set_option autoImplicit false
noncomputable section

/-! Nonzero equation representatives modulo literal unit scaling.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
variable (F : Type*) [Field F]

def NonzeroSourceRepresentative :=
  {P : Fin 3 → F // (recordSourceCurve F).toProjective.Equation P ∧ P≠0}

def sourceUnitSetoid : Setoid (NonzeroSourceRepresentative F) where
  r P Q := ∃ u : Fˣ, u • P.val=Q.val
  iseqv := by
    constructor
    · intro P
      exact ⟨1,one_smul _ _⟩
    · intro P Q h
      obtain ⟨u,hu⟩ := h
      refine ⟨u⁻¹,?_⟩
      rw [← hu]
      simp
    · intro P Q R hPQ hQR
      obtain ⟨u,hu⟩ := hPQ
      obtain ⟨v,hv⟩ := hQR
      exact ⟨v*u,by rw [mul_smul,hu,hv]⟩

def ProjectiveSourceQuotient := Quotient (sourceUnitSetoid F)

def sourceQuotientDecode : ProjectiveSourceQuotient F → Option (RecordAffinePoints F) :=
  Quotient.lift (fun P => decodeSourceRepresentative P.val P.property.1)
    (fun P Q h => source_decode_unit_equivalent P.val Q.val P.property.1 Q.property.1 h)

def sourceQuotientEncode (Q : Option (RecordAffinePoints F)) : ProjectiveSourceQuotient F :=
  Quotient.mk (sourceUnitSetoid F)
    ⟨encodeSourcePoint Q,encode_source_equation Q,encode_source_nonzero Q⟩

def sourceProjectiveAffineInfinityEquiv :
    ProjectiveSourceQuotient F ≃ Option (RecordAffinePoints F) where
  toFun := sourceQuotientDecode F
  invFun := sourceQuotientEncode F
  left_inv q := by
    refine Quotient.inductionOn q ?_
    intro P
    apply Quotient.sound
    exact decode_source_unit_representative P.val P.property.1 P.property.2
  right_inv Q := decode_encode_source Q

theorem projective_source_cardinality :
    Nat.card (ProjectiveSourceQuotient F)=Nat.card (Option (RecordAffinePoints F)) := by
  exact Nat.card_congr (sourceProjectiveAffineInfinityEquiv F)

/- The quotient retains every nonzero equation solution, including singular
ones at bad reduction. Identification with Mathlib's ambient projective
point classes and the nonsingular elliptic point type remains separate.
Neither good reduction nor a global analytic BSD statement is inferred. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
