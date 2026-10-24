import Mathematics.Oracle.Naming.CyclicCharacters
import Mathematics.Oracle.Naming.RotationSignal
import Mathematics.Oracle.Naming.TwistedRotationCohomology

/-!
# Rotation-equivariant naming acceptance

This certificate joins the four independently checked layers without
identifying them: a cyclic orbit witness, an all-face Banach equality, a
twisted event-cohomology witness, and exact canonical naming IR agreement.
-/

namespace Mathematics.Oracle.Naming

variable {n : Nat} [NeZero n]
variable {B : Type*} [NormedAddCommGroup B] [NormedSpace ℝ B] [CompleteSpace B]

/-- Stabilizer membership for the accepted all-face signal. -/
def FaceSignalTurnStabilizes
    (turn : ZMod n) (signal : CubicalFaceSignal n B) : Prop :=
  ∀ face, signal (rotateFace turn face) = signal face

/-- Complete certificate required in addition to a base Oracle/model suture. -/
structure RotationEquivariantNamingSuture (n : Nat) (B : Type*)
    [NeZero n] [NormedAddCommGroup B] [NormedSpace ℝ B] [CompleteSpace B] where
  base : NamingSuture
  rotation : AdmissibleBanachRotation n B
  oracleSignal : CubicalFaceSignal n B
  modelSignal : CubicalFaceSignal n B
  allFacesAgree :
    allDegreeSutured rotation oracleSignal modelSignal
  degreeWeight : Nat → ℝ
  degreeWeightPositive : ∀ k, 0 < degreeWeight k
  eventChange : TwistedOneCochain n B
  eventClosed : TwistedOneCocycle eventChange
  eventExact : TwistedOneCoboundary eventChange
  cycleHolonomy : ZMod n
  cycleHolonomyInStabilizer :
    FaceSignalTurnStabilizes cycleHolonomy modelSignal

/--
The complete naming-suture theorem: one admissible global turn gives exact
all-face equality and zero quantitative residual; the event change is both
closed and exact in the twisted complex; cycle holonomy stabilizes the
accepted signal; and canonical `ElementNameIR` equality is inherited from the
closed-candidate proposal agreement.
-/
theorem rotation_equivariant_naming_suture
    (certificate : RotationEquivariantNamingSuture n B) :
    allDegreeSutured certificate.rotation
        certificate.oracleSignal certificate.modelSignal ∧
      allFaceDirichletResidual 2 certificate.degreeWeight
        certificate.rotation certificate.oracleSignal certificate.modelSignal = 0 ∧
      TwistedOneCocycle certificate.eventChange ∧
      TwistedOneCoboundary certificate.eventChange ∧
      TwistedH1.classOf certificate.eventChange certificate.eventClosed =
        TwistedH1.zero ∧
      FaceSignalTurnStabilizes certificate.cycleHolonomy
        certificate.modelSignal ∧
      certificate.base.model.value = certificate.base.oracle.value := by
  refine ⟨certificate.allFacesAgree, ?_, certificate.eventClosed,
    certificate.eventExact, ?_, certificate.cycleHolonomyInStabilizer, ?_⟩
  · exact dirichletEnergy_zero_of_allDegreeSutured
      2 (by decide) certificate.degreeWeight certificate.rotation
      certificate.oracleSignal certificate.modelSignal certificate.allFacesAgree
  · exact
      (TwistedH1.classOf_eq_zero_iff
        certificate.eventChange certificate.eventClosed).2 certificate.eventExact
  · exact certificate.base.agreement.2

end Mathematics.Oracle.Naming
