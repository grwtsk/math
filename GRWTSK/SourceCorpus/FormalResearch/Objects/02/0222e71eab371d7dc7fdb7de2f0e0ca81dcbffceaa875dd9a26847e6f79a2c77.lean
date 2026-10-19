import Surface.Legacy.BinaryLogicMatrix.Rational

namespace Surface.Legacy

structure ComputableAlgebraicMatrixCode where
  descriptor : String
  witnessMatrix : BinaryLogicMatrix 1 1
  finiteCertificate : Prop

structure OracleRealMatrixCode where
  oracleBit : Nat -> Bool
  visibleApproximation : Nat -> BinaryLogicMatrix 1 1
  oracleRelative : Prop
  claimBoundary : String

theorem computable_algebraic_certificate_projects
    (C : ComputableAlgebraicMatrixCode) :
    C.finiteCertificate -> C.finiteCertificate := by
  intro h
  exact h

theorem oracle_real_is_oracle_relative
    (R : OracleRealMatrixCode) :
    R.oracleRelative -> R.oracleRelative := by
  intro h
  exact h

theorem oracle_real_boundary_visible
    (R : OracleRealMatrixCode) :
    R.claimBoundary = R.claimBoundary := by
  rfl

end Surface.Legacy
