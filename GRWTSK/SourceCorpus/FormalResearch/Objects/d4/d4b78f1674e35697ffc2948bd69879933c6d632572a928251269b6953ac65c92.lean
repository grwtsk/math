import Surface.Arithmetic.EllipticCurve.BSD
import Surface.Arithmetic.EllipticCurve.BSD.Flow

namespace Surface.Arithmetic.EllipticCurve.BSD

/-!
# BSD readiness gate

This gate is separate from the zeta spectral-readiness gate.  It tracks whether
the BSD statement/support interface is adequately formalized and separately
records whether a Prop-valued smooth BSD theorem input is available.
-/

/-- BSD-specific readiness checklist. -/
structure BSDReadiness where
  ellipticCurveFormalized : Bool
  groupLawCertified : Bool
  pointCountingCertified : Bool
  lFunctionInterface : Bool
  analyticContinuationCertificate : Bool
  orderOfVanishingCertificate : Bool
  mordellWeilCertificate : Bool
  topologicalEmbeddingCertificate : Bool
  rankLoopCertificate : Bool
  bsdStatementFormalized : Bool
  theoremSeed : BSDTheoremSeed

/-- Statement/support readiness does not require a certificate for BSD itself. -/
def BSDReadiness.statementSupportReady
    (R : BSDReadiness) :
    Bool :=
  R.ellipticCurveFormalized &&
  R.groupLawCertified &&
  R.pointCountingCertified &&
  R.lFunctionInterface &&
  R.analyticContinuationCertificate &&
  R.orderOfVanishingCertificate &&
  R.mordellWeilCertificate &&
  R.topologicalEmbeddingCertificate &&
  R.rankLoopCertificate &&
  R.bsdStatementFormalized

/-- Full theorem readiness additionally requires a smooth Prop-valued theorem seed. -/
def BSDReadiness.theoremReady
    (R : BSDReadiness) :
    Prop :=
  R.theoremSeed.theoremInputAvailable ∧
    R.theoremSeed.smoothTheoremInputAvailable

/-- Full theorem readiness is proof-valued, not Boolean-valued. -/
def BSDReadiness.ready
    (R : BSDReadiness) :
    Prop :=
  R.statementSupportReady = true ∧ R.theoremReady

/-- Current honest BSD theorem seed: no BSD certificate has been supplied. -/
def currentBSDTheoremSeed :
    BSDTheoremSeed where
  theoremInputAvailable := False
  smoothTheoremInputAvailable := False
  sourceDescription :=
    "No BSDCertificate has been supplied for the current readiness dashboard."
  boundary := [
    "BSD theorem readiness is Prop-valued.",
    "The current Surface arithmetic layer can state BSD, but does not certify it.",
    "Current theorem readiness also lacks the smooth BSD input gate."
  ]

/-- Current honest BSD readiness state. -/
def currentBSDReadiness :
    BSDReadiness where
  ellipticCurveFormalized := true
  groupLawCertified := false
  pointCountingCertified := true
  lFunctionInterface := true
  analyticContinuationCertificate := false
  orderOfVanishingCertificate := false
  mordellWeilCertificate := false
  topologicalEmbeddingCertificate := false
  rankLoopCertificate := false
  bsdStatementFormalized := true
  theoremSeed := currentBSDTheoremSeed

theorem currentBSDTheoremSeed_not_available :
    ¬ currentBSDTheoremSeed.theoremInputAvailable := by
  intro h
  exact h

theorem currentBSDTheoremSeed_not_smooth :
    ¬ currentBSDTheoremSeed.smoothTheoremInputAvailable := by
  intro h
  exact h

/-- The current BSD readiness gate is not ready. -/
theorem currentBSDReadiness_not_ready :
    ¬ BSDReadiness.ready
      currentBSDReadiness := by
  intro h
  exact currentBSDTheoremSeed_not_available h.2.1

/-- The current statement/support gate is also not complete. -/
theorem currentBSDStatementSupport_not_ready :
    BSDReadiness.statementSupportReady
      currentBSDReadiness = false := by
  decide

end Surface.Arithmetic.EllipticCurve.BSD
