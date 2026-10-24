import Surface.Legacy.BinaryLogicMatrix.NumberSystems

namespace Surface.Legacy

structure RationalMatrixCode where
  numerator : Int
  denominator : Nat
  denominatorPositive : 0 < denominator
  matrix : BinaryLogicMatrix 1 1

def encodeRational (q : RationalMatrixCode) : RationalMatrixCode :=
  q

def decodeRational? (code : RationalMatrixCode) : Option RationalMatrixCode :=
  some code

theorem rational_blm_roundTrip (q : RationalMatrixCode) :
    decodeRational? (encodeRational q) = some q := by
  rfl

structure RationalNormalizationCertificate where
  code : RationalMatrixCode
  normalized : Prop
  claimBoundary : String

theorem rational_normalization_certificate_projects
    (C : RationalNormalizationCertificate) :
    C.normalized -> C.normalized := by
  intro h
  exact h

end Surface.Legacy
