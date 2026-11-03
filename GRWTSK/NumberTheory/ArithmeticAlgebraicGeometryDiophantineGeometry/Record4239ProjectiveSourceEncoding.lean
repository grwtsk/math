/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239AffineRepresentativeNormalization

set_option autoImplicit false
noncomputable section

/-! Source affine-plus-infinity encoding, before quotient cardinality.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
variable {F : Type*} [Field F]

def encodeSourcePoint : Option (RecordAffinePoints F) → (Fin 3 → F)
  | none => ![0,1,0]
  | some xy => ![xy.1,xy.2.val,1]

theorem encode_source_equation (Q : Option (RecordAffinePoints F)) :
    (recordSourceCurve F).toProjective.Equation (encodeSourcePoint Q) := by
  cases Q with
  | none => exact record_projective_infinity
  | some xy => exact (record_projective_affine_chart xy.1 xy.2.val).mpr xy.2.property

theorem encode_source_nonzero (Q : Option (RecordAffinePoints F)) : encodeSourcePoint Q≠0 := by
  cases Q with
  | none => intro h; have hh := congrFun h 1; simpa [encodeSourcePoint] using hh
  | some xy => intro h; have hh := congrFun h 2; simpa [encodeSourcePoint] using hh

def decodeSourceRepresentative (P : Fin 3 → F)
    (hEq : (recordSourceCurve F).toProjective.Equation P) : Option (RecordAffinePoints F) :=
  if hZ : P 2=0 then none else
    some ⟨P 0/P 2,⟨P 1/P 2,affine_normalized_source_solution P hEq hZ⟩⟩

theorem decode_encode_source (Q : Option (RecordAffinePoints F)) :
    decodeSourceRepresentative (encodeSourcePoint Q) (encode_source_equation Q)=Q := by
  cases Q with
  | none => simp [decodeSourceRepresentative,encodeSourcePoint]
  | some xy =>
    rcases xy with ⟨x,y,hy⟩
    simp [decodeSourceRepresentative,encodeSourcePoint]

theorem decode_source_unit_representative (P : Fin 3 → F)
    (hEq : (recordSourceCurve F).toProjective.Equation P) (hP : P≠0) :
    ∃ u : Fˣ, u • encodeSourcePoint (decodeSourceRepresentative P hEq)=P := by
  by_cases hZ : P 2=0
  · simpa [decodeSourceRepresentative,encodeSourcePoint,hZ] using
      infinity_unit_representative P hEq hP hZ
  · simpa [decodeSourceRepresentative,encodeSourcePoint,hZ] using
      affine_unit_representative P hZ

/- decode is total on equation representatives, but the unit-representative
result explicitly excludes the zero vector. Unit invariance and quotient
cardinality still need assembly; singular reductions cannot be promoted
to the nonsingular elliptic point type or good-prime Frobenius data. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
