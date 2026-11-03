/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239ProjectiveSourceQuotient
import Mathlib.Data.Fintype.Option

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact finite nonzero projective source quotient count. Good reduction
is not inferred. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem projective_source_card_eq_affine_add_one (F : Type*) [Field F] [Fintype F] :
    Nat.card (ProjectiveSourceQuotient F)=Nat.card (RecordAffinePoints F)+1 := by
  classical
  letI : Fintype (RecordAffinePoints F) := by unfold RecordAffinePoints; infer_instance
  rw [projective_source_cardinality]
  simp only [Nat.card_eq_fintype_card,Fintype.card_option]

theorem actual_projective_source_character_count (F : Type*) [Field F] [Fintype F]
    (h2 : (2 : F)≠0) (hodd : ringChar F≠2) :
    (Nat.card (ProjectiveSourceQuotient F) : ℤ)=(Fintype.card F : ℤ)+1+
      ∑ x : F, quadraticChar F (recordFiberDiscriminant x) := by
  rw [projective_source_card_eq_affine_add_one,Nat.cast_add,Nat.cast_one,
    record_actual_affine_point_count h2 hodd]
  ring

theorem actual_prime_source_count_identification (p : ℕ) [Fact (Nat.Prime p)] :
    Nat.card (ProjectiveSourceQuotient (ZMod p))=recordLocalSourcePointCount p := by
  exact projective_source_card_eq_affine_add_one (ZMod p)

/- This supplies the actual source quotient behind the previously literal
'affine count plus one' number. Identification with ambient projective
classes and the nonsingular reduction of the rational elliptic curve is
still required for a good-prime Euler-factor claim. Bad-prime and global
analytic BSD identities remain unsupplied. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
