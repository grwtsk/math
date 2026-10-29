import Mathematics.Relaxation.FixedPoint

/-! # Scoped stability certificates -/

namespace Mathematics.Relaxation

/--
Stability is indexed by one finite work package.  It creates no claim about
the undiscovered ecosystem or future source revisions.
-/
structure ScopedFixedPointCertificate
    (operator : Operator) where
  fixedPoint : FixedPoint operator
  scope : WorkPackage
  scope_matches : fixedPoint.state.workPackage = scope
  constraints_hold :
    SatisfiesAll operator.constraints fixedPoint.state
  certificateDigest : Digest
  globalCompletionNonclaim : Nonclaim

theorem ScopedFixedPointCertificate.source_is_unchanged
    {operator : Operator}
    (certificate : ScopedFixedPointCertificate operator) :
    (operator.step certificate.fixedPoint.state).ecosystemDigest =
      certificate.fixedPoint.state.ecosystemDigest :=
  (operator.source_preserved certificate.fixedPoint.state).1

end Mathematics.Relaxation
